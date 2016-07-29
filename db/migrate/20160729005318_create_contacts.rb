class CreateContacts < ActiveRecord::Migration
  def change
    create_table(:contacts) do |t|
      t.column(:first_name, :string)
      t.column(:last_name, :string)
      t.column(:email_address, :string)
      t.column(:phone_number, :integer)
      t.column(:address_line1, :string)
      t.column(:address_line2, :string)
      t.column(:city, :string)
      t.column(:zipcode, :integer)
      t.column(:state, :string)
      t.column(:user_id, :integer)  
    end
  end
end
