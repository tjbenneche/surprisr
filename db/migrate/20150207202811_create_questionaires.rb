class CreateQuestionaires < ActiveRecord::Migration
  def change
    create_table :questionaires do |t|
      t.string :order_id
      t.text :name

      t.timestamps
    end
  end
end
