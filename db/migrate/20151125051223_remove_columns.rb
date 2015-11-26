class RemoveColumns < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.remove :password
      t.remove :password_digest
    end
  end
end
