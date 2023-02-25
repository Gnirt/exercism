=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
class PhoneNumber
  
  def self.clean(phone)
    clean_phone = phone.scan(/\d+/).join
    if clean_phone.length == 11 && clean_phone[0] == '1'
      clean_phone[0] = ''
    end
    return nil if ['0', '1'].include? clean_phone[0]
    return nil if ['0', '1'].include? clean_phone[3]
    return nil if clean_phone.length != 10
    clean_phone
  end
end
