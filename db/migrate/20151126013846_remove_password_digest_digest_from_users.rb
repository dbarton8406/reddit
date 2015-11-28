class RemovePasswordDigestDigestFromUsers < ActiveRecord::Migration
  def change
      remove_column :users, :password_digest_digest, :string
  end
end
