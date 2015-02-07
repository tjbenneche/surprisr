class AddQuestionnaireIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :q_id, :integer
  end
end
