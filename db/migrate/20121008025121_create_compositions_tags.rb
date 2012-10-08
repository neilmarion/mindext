class CreateCompositionsTags < ActiveRecord::Migration
  def change
    create_table :compositions_tags do |t|
      t.belongs_to :composition
      t.belongs_to :tag

      t.timestamps
    end
    add_index :compositions_tags, :composition_id
    add_index :compositions_tags, :tag_id
  end
end
