class CreateResults < ActiveRecord::Migration
  def change
    create_table(:results) do |t|
      t.column(:place_id, :integer)
      t.column(:user_id, :integer)
      t.column(:timestamp, :timestamp)
      t.column(:test_date, :date)
      t.column(:lab, :string)
      t.column(:over_limit, :boolean)
    end
  end
end
