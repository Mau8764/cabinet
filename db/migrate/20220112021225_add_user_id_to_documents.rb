class AddUserIdToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :user_id, :integer
  end
end
