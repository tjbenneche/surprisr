class RenameQuestionairestoQuestionnaires < ActiveRecord::Migration
  def self.up
    rename_table :questionaires, :questionnaires
  end

  def self.down
    rename_table :questionnaires, :questionaires
  end
end
