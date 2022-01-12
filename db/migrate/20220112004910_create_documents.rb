class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :tittle
      t.text :content

      t.timestamps
    end
  end
end
