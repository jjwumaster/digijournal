class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :content
      t.datetime :date
      t.belongs_to :journal, foreign_key: true

      t.timestamps
    end
  end
end
