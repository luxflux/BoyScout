class CreateGoodGuys < ActiveRecord::Migration
  def change
    create_table :good_guys do |t|
      t.string :name

      t.timestamps
    end
  end
end
