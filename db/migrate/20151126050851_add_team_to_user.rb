class AddTeamToUser < ActiveRecord::Migration
  def change
    add_column :users, :teams, :string
  end
end
