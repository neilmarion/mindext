class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.text :content

      t.timestamps
    end
  end
end
