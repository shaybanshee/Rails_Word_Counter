class CreateWordcounts < ActiveRecord::Migration[5.1]
  def change
    create_table :wordcounts do |t|
      t.text :text

      t.timestamps
    end
  end
end
