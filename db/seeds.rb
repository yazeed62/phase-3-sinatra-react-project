puts "🌱 Seeding spices..."

Task.destroy_all
Category.destroy_all

category1 = Category.create(name: 'Work')
category2 = Category.create(name: 'Personal')
category3 = Category.create(name: 'Errands')

puts "✅ Done seeding!"
