puts "🌱 Seeding spices..."

Task.destroy_all
Category.destroy_all

category1 = Category.create(name: 'Work')
category2 = Category.create(name: 'Personal')
category3 = Category.create(name: 'Errands')
category4 = Category.create(name: 'Health')
category5 = Category.create(name: 'Study')

Task.create(title: 'Finish project', description: 'Complete the final report', category: category1)
Task.create(title: 'Exercise', description: 'Go for a run', category: category2)
Task.create(title: 'Grocery shopping', description: 'Buy fruits and vegetables', category: category3)
Task.create(title: 'Pay bills', description: 'Clear pending utility bills', category: category3)


puts "✅ Done seeding!"
