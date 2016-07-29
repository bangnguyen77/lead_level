class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.column(:user_name, :string)
      t.column(:password, :string)
    end
  end
end
