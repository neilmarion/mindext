class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :content

      t.timestamps
    end
  end
end
