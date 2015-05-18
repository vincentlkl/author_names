class CreateQuestionnaireLinks < ActiveRecord::Migration
  def change
    create_table :questionnaire_links do |t|
      t.references   :questionnaire, index: true
      t.references   :question, index: true
      t.string       :position
      t.timestamps
    end
  end
end
