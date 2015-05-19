class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :questionnaire, index: true
      t.hstore :questions, index: true
      t.timestamps
    end
  end
end
