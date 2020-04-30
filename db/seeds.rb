# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Création de 3 villes
paris = City.create(name: "Paris", zip_code: "75000")
lille = City.create(name: "Lille", zip_code: "59000")
lyon = City.create(name: "Lyon", zip_code: "69000")
puts "3 villes ajoutés"
#Création de 2 docteurs et 3 patients dans la BDD
greg_de_paris = Doctor.new(first_name: "Grégory", last_name: "House", specialty: "Neurochirurgien")
greg_de_paris.city = paris
greg_de_paris.save
bruce_de_lille = Doctor.new(first_name: "Bruce", last_name: "Banner", specialty: "Radiologue")
bruce_de_lille.city = lille
bruce_de_lille.save
louis_de_paris = Doctor.new(first_name: "Louis", last_name: "Pasteur", specialty: "Virologue")
louis_de_paris.city = paris
louis_de_paris.save
emmett_de_lyon = Doctor.new(first_name: "Emmett", last_name: "Brown", specialty: "Futurologue")
emmett_de_lyon.city = lyon
emmett_de_lyon.save
puts "4 docteurs ajoutés avec leur ville"
allison = Patient.new(first_name: "Allison", last_name: "Cameron")
allison.city = paris
allison.save
pepper = Patient.new(first_name: "Pepper", last_name: "Pots")
pepper.city = lille
pepper.save
franky = Patient.new(first_name: "Franky", last_name: "Vincent")
franky.city = lyon
franky.save
puts "3 patients ajoutés avec leur ville"


#Création de 4 rendez-vous dans la BDD

appointment1 = Appointment.new(date: '2020-05-11 10:30:00')
appointment1.doctor = Doctor.find_by(last_name: "House")
appointment1.patient = Patient.find_by(last_name: "Pots")
appointment1.city = paris
appointment1.save

appointment2 = Appointment.new(date: '2020-05-11 14:00:00')
appointment2.doctor = Doctor.find_by(last_name: "House")
appointment2.patient = Patient.find_by(last_name: "Cameron")
appointment2.city = paris
appointment2.save

appointment3 = Appointment.new(date: '2020-05-11 14:00:00')
appointment3.doctor = Doctor.find_by(last_name: "Banner")
appointment3.patient = Patient.find_by(last_name: "Pots")
appointment3.city = lille
appointment3.save

appointment4 = Appointment.new(date: '2020-06-16 15:00:00')
appointment4.doctor = Doctor.find_by(last_name: "Banner")
appointment4.patient = Patient.find_by(last_name: "Vincent")
appointment4.city = lille
appointment4.save

puts "4 rendez-vous ajoutés avec leur ville"