class RemoveOrderIdFromQuestionnaire < ActiveRecord::Migration
  def change
    remove_column :questionnaires, :order_id
  end
end
