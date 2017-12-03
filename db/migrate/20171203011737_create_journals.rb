class CreateJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :content
      t.datetime :date
      t.timestamps
    end
  end
end
