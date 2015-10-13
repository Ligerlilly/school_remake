class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :number, :integer
      t.column :title, :string
      t.column :content, :text
      
      t.timestamps null: false
    end
  end
end
