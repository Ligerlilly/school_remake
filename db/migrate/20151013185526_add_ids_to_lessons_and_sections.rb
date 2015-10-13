class AddIdsToLessonsAndSections < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :integer
    add_column :sections, :chapter_id, :integer
  end
end
