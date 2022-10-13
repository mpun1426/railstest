class CreateNaomarus < ActiveRecord::Migration[6.1]
  def change
    create_table :naomarus do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :introduction

      t.timestamps
    end
  end
end
