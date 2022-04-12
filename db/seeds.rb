puts "🌱 Seeding..."
# Seed your database here

b1 = Baby.create(name: "Emma", sex: "Girl", baby_image_url: "https://images.unsplash.com/photo-1546015720-b8b30df5aa27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80", birthday: "2022-2-14")


Milestone.create(development: "Fisrt smile!", baby_id: b1.id )



puts "✅ Done seeding!"
