# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

# for user
user = User.create(email: 'admin@gmail.com', password: 'boston', password_confirmation: 'boston', role: "superadmin")
institution = Institution.create(name: 'SuperAdminCompany', company_type: 'library')
user.build_institution_role({role: "admin", institution: institution})
user.save!
