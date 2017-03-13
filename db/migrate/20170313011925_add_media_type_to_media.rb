class AddMediaTypeToMedia < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TYPE MediaType AS ENUM ('IMAGE', 'MOVIE', 'SOUND');
    SQL

    add_column :media, :type, :MediaType, index: true
  end

  def down
    remove_column :media, :type

    execute <<-SQL
      DROP TYPE MediaType;
    SQL
  end
end
