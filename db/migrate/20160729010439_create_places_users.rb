class CreatePlacesUsers < ActiveRecord::Migration
  def change
    create_table(:places_users) do |t|
      t.column(:place_id, :integer)
      t.column(:user_id, :integer)
    end
  end
end
