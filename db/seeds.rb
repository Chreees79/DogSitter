# CREATION OF CITIES --------------------------------------

=begin 50.times do
  City.create(name: Faker::Address.city)
end  
=end

# CREATION OF DOGS --------------------------------------

=begin
100.times do
  Dog.create(name: Faker::Creature::Dog.name, city: City.all.sample)
end
=end

# CREATION OF DOGSITTERS ----------------------------------

=begin
8.times do
  Dogsitter.create(name: Faker::Name.first_name, city: City.all.sample)
end
=end

# CREATION OF STROLLS -------------------------------------

=begin 
200.times do
  Stroll.create(dogsitter: Dogsitter.all.sample, dog: Dog.all.sample, city: City.all.sample, date: Faker::Date.forward(days: 365))
end
=end

#  TEST -----------------------------------------------

=begin
Stroll.where(Dogsitter_id: 7).each do |stroll|
  puts stroll.date
end

Stroll.where(Dogsitter_id: 7).each do |x|
  puts x.dog.name
end
=end
