class AddUserTypeToUsers < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TYPE UserType AS ENUM ('ADMINISTRATOR', 'AUTHOR', 'EDITHOR', 'CONTRIBUTOR', 'SUBSCRIBER');
    SQL

    add_column :user, :type, :UserType, index: true
  end

  def down
    remove_column :user, :type

    execute <<-SQL
      DROP TYPE UserType;
    SQL
  end
end
