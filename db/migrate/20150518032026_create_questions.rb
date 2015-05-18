class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string   :name
      t.string   :type
      t.timestamps
    end
  end
end
