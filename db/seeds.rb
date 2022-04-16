puts "🌱 Seeding..."
# Seed your database here

b1 = Baby.create(name: "Emma", sex: "Girl", baby_image_url: "https://media.istockphoto.com/photos/baby-girl-in-studio-shot-picture-id675896464?k=20&m=675896464&s=612x612&w=0&h=R3MOppjfZNAEHXVDrUJEjkF2vZZqj0Rg4iv5wbq26X0=", birthday: "2022-2-14")

Milestone.create(development: "Fisrt smile!", baby_id: b1.id )
Appointment.create(date: "2022-3-14", time: "12:00", doctor_name: "Dr. Acosta", notes: "1 month checkup", baby_id: b1.id )
Immunization.create(vaccine: "MMR", date: "2022-3-14", baby_id: b1.id )


puts "✅ Done seeding!"
