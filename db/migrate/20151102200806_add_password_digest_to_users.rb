class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest_digest, :string
    User.find_each do |u|
      u.password_digest = u[:password_digest]
      u.save!
    end
  end
