# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

center1 = Center.create(name: 'Centro Rancagua', location: 'Av Alberto Einstein 1234')
terapist1 = Terapist.create(name: 'Julio Tobar', medicalSpecialty: 'Ansiedad', center_id: center1.id)
terapist2 = Terapist.create(name: 'Rebeca Olivares', medicalSpecialty: 'TCAs', center_id: center1.id)

center2 = Center.create(name: 'Centro San Fernando', location: 'Calle El Álamo 32')
terapist3 = Terapist.create(name: 'Alejandro Yáñez', medicalSpecialty: 'Bipolaridad', center_id: center2.id)
terapist4 = Terapist.create(name: 'Alexa Speak', medicalSpecialty: 'Depresión', center_id: center.id)

user1 = User.create(
          name: 'Jaime Tobar',
          rut: '12120819-9', 
          phone: '+56949521243', 
          email: 'j.tobar@gmail.com', 
          password: 'myshot', 
          password_confirmation: 'myshot'
        )

user2 = User.create(
          name: 'Admin SicoApp',
          rut: '1222333-4', 
          phone: '+5691111111', 
          email: 'admin@app.cl', 
          password: 'admin123', 
          password_confirmation: 'admin123'
        )

appointment = Appointment.create(
                date: Date.today,
                hour: '15:00'
                terapist_id: terapist1.id,
                user_id = user1.id
              )