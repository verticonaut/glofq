class CreateGlossaries < ActiveRecord::Migration
  def change
    create_table :glossaries do |t|

      t.timestamps null: false
    end
  end
end
