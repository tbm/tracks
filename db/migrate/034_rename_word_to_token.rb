class RenameWordToToken < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :users, 'word', 'token' #bug in sqlite requires column names as strings
  end

  def self.down
    rename_column :users, 'token', 'word' #bug in sqlite requires column names as strings
  end
end
