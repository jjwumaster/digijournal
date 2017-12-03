class DeleteTitleDateContentFromJournals < ActiveRecord::Migration[5.1]
  def change
    rename_column :journals, :title, :name
    remove_column :journals, :content
    remove_column :journals, :date
  end
end
