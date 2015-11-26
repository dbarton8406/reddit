class RemoveColumns < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.remove :password
    end
  end
end
