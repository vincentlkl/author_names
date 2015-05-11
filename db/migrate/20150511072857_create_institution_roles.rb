class CreateInstitutionRoles < ActiveRecord::Migration
  def change
    create_table :institution_roles do |t|
      t.references :institution, :index => true
      t.references :user, :index => true
      t.integer    :role
      t.timestamps 
    end
  end
end
