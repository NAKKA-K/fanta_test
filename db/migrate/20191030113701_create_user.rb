class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :permissions

      t.timestamps
    end

    create_table :characters do |t|
      t.string :name
      t.string :image_src

      t.timestamps
    end

    create_table :parties do |t|
      t.references :user_id, foreign_key: true
      t.references :character1, foreign_key: { to_table: :characters }
      t.references :character2, foreign_key: { to_table: :characters }
      t.references :character3, foreign_key: { to_table: :characters }
      t.references :character4, foreign_key: { to_table: :characters }

      t.timestamps
    end

    create_table :battle_logs do |t|
      t.integer :score
      t.integer :damage
      t.references :party_id, foreign_key: true

      t.timestamps
    end
  end
end
