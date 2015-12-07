class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :project
      t.string :project_url
      t.string :version
      t.datetime :release_date_time
      t.string :release_url
      t.string :ysi_config_url

      t.timestamps null: false
    end
  end
end
