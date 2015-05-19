class AddInstitutionIdToQuestionnaire < ActiveRecord::Migration
  def change
    add_reference :questionnaires, :institution, index: true
    add_reference :questions, :institution, index: true
  end
end
