class AddQuestionsToQuestionnaire < ActiveRecord::Migration
  def change
    add_column :questionnaires, :q1, :string
    add_column :questionnaires, :q2, :string
    add_column :questionnaires, :q3, :string
    add_column :questionnaires, :q4, :string
    add_column :questionnaires, :q5, :string
    add_column :questionnaires, :q6, :string
    add_column :questionnaires, :q7, :string
    add_column :questionnaires, :q8, :string
    add_column :questionnaires, :q9, :string
    add_column :questionnaires, :q10, :string
  end
end
