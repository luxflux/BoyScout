class CreateGoodDeeds < ActiveRecord::Migration
  def change
    create_table :good_deeds do |t|
      t.string :title
      t.references :good_guy, index: true

      t.timestamps
    end
  end
end
