class MakePlaces < ActiveRecord::Migration
  def change
    create_table(:places) do |t|
      t.column(:address_line1, :string)
      t.column(:address_line2, :string)
      t.column(:city, :string)
      t.column(:zipcode, :integer)
      t.column(:state, :string)
      t.column(:user_id, :integer)
      t.column(:name, :string)
      t.column(:contact_id, :integer)
      t.column(:rating, :string)
    end
  end
end
