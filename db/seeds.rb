require 'faker'

Production.destroy_all
CrewMember.destroy_all

5.times{Production.create(title:Faker::Movie.title, genre:Faker::Types.rb_string, budget:Faker::Number.number(digits: 4), ongoing:Faker::Boolean.boolean)}
10.times{CrewMember.create(name:Faker::Name.name, job_title:Faker::Lorem.word, production:Production.all.sample)}