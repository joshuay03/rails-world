class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :bio
      t.string :location
      t.string :github_url
      t.string :linkedin_url
      t.string :twitter_url
      t.boolean :is_public, default: false, null: false
      t.references :profileable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
