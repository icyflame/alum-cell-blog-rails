class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :name
      # t.string :email
      t.integer :designation
      t.string :verification_string, default: "2d93c1ceffaseb438623953aasf5e1bef3f54dcda39"
      t.boolean :verified, default: false

      t.timestamps
    end
  end
end
