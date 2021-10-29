# frozen_string_literal: true
# Assets belongs to parent and author
# at any given time, one parent can only have one active asset

class AssetsController < ApplicationController
  def index
    # this action is VERY slow, let's figure out why

    # What makes it slow:
    # 1/ is the loop necessary or can we remove it? (have the seralization being done in SQL instead of in the app)
    # 2/ author dependency to fetch another table instead of a single table (knowing that parent.id was less efficient than parent_id)
    # 3/ use include
    # 4/ how to concatenate `full_size`

    # (150k assets) memory swap (heroku) that's why we used find_in_batches

    # SELECT * FROM assets WHERE active IS TRUE AND created_at > '2021-10-27' ORDER BY id ASC;
    collection = Asset.where(active: true).where('created_at > ?', 2.days.ago).order('id ASC').find_in_batches.map do |asset|
      {
        title: asset.title,
        full_size: "#{asset.width}x#{asset.height}px",
        parent_id: asset.parent_id,
        author: asset.author.name
      }
    end

    render json: collection
  end

  def activate
    asset = Asset.find(params[:id])

    activate_asset(asset)

    redirect_to asset, notice: 'Asset activé'
  end

  def deactivate
    asset = Asset.find(params[:id])

    asset.update(active: false)
    AssetMailer.deactivated(asset).deliver_now

    redirect_to asset, notice: 'Asset desactivé'
  end

  def activate_asset
    asset.update(active: true)
    asset.parent.assets.each do |other_asset|
      next unless other_asset.active?
      next if other_asset == asset

      other_asset.update(active: false)
    end
    AssetMailer.activated(asset).deliver_now
  end
end
