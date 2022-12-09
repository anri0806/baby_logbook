puts "🌱 Seeding..."
# Seed your database here

u1 = User.create(username: "steph0408", password: "12345", password_confirmation: "12345")

b1 = Baby.create(name: "Emma", sex: "Girl", baby_image_url: "https://media.istockphoto.com/photos/baby-girl-in-studio-shot-picture-id675896464?k=20&m=675896464&s=612x612&w=0&h=R3MOppjfZNAEHXVDrUJEjkF2vZZqj0Rg4iv5wbq26X0=", birthday: "2020-2-14", user_id: u1.id)

Milestone.create(development: "Fisrt smile!", notes: "She smiled at mommy and daddy for the first time!", date: "2020-4-1",  baby_id: b1.id )
Milestone.create(development: "Took first steps.", notes: "She took 3 steps on her own!", date: "2021-3-1",  baby_id: b1.id )
Appointment.create(date: "2022-3-14", time: "12:00", doctor_name: "Dr. Acosta", notes: "1 month checkup", baby_id: b1.id )
Immunization.create(vaccine: "MMR", date: "2022-3-14", baby_id: b1.id )


puts "✅ Done seeding!"
