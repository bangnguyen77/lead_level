require("spec_helper")

describe(Place) do
  describe("#users") do
    it("has many users") do
      test_place = Place.create({:address_line1 => "400 SW 6th Avenue"})
      test_user1 = User.create({:user_name => "Molly", :password => "1234567"})
      test_user2 = User.create({:user_name => "Holly", :password => "1234567"})
      test_place.users.push(test_user1, test_user2)
      expect(test_place.users()).to(eq([test_user1, test_user2]))
    end
  end

  describe("#results") do
    it("has many results") do
      test_place = Place.create({:address_line1 => "400 SW 6th Avenue", :city => 'Portland', :state => 'Oregon'})
      test_result = Result.create({:lab => "Pixis Laboratory", :over_limit => "true", :place_id => test_place.id(), :test_date => "2016-07-29", :user_id => 4})
      test_place.results.push(test_result)
      expect(test_place.results()).to(eq([test_result]))
    end
  end

  describe("#contact") do
    it("belongs to a contact") do
      test_contact = Contact.create({:email_address => "abc@example.com"})
      test_place = Place.create({:address_line1 => "400 SW 6th Avenue", :city => "Portland", :state => "Oregon", :contact_id => test_contact.id()})
      expect(test_place.contact()).to(eq(test_contact))
    end
  end
end
