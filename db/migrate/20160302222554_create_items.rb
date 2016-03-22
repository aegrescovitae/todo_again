class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps null: false
      t.belongs_to :list
    end
  end
end
