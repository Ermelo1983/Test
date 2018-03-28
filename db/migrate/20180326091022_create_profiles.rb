class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.date :date_of_birth
      t.string :street
      t.string :house_number
      t.string :zip_or_postal_code
      t.string :town
      t.string :country
      t.string :language
      t.string :profile_picture_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
