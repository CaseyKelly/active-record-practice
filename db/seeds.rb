# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@companies = 30.times.map do
  {
    name: Faker::Company.name,
    suffix: Faker::Company.suffix,
    catch_phrase: Faker::Company.catch_phrase,
    email: Faker::Internet.email,
    start_date: Faker::Date.backward(900),
    product: Faker::Commerce.product_name,
    industry: %w[Tech Medical Education Finance].sample
  }
end


@employees = 150.times.map do
  {
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     email: Faker::Internet.email,
     company_id: (1..30).to_a.sample,
     title: %w[CEO JuniorDev SeniorDev Intern].sample
   }
end

@employees.each do |person|
  Employee.create(:first_name => person[:first_name], :last_name => person[:last_name], :email => person[:email], :company_id => person[:company_id], :title => person[:title])
end

@companies.each do |company|
  Company.create(:name => company[:name], :suffix => company[:suffix], :catch_phrase => company[:catch_phrase], :email => company[:email], :start_date => company[:start_date], :product => company[:product], :industry => company[:industry])
end

Employee.create(:first_name => "Chad", :last_name => "Chadwick", :email => "chad@chad.com", :company_id => (1..10).to_a.sample)
Employee.create(:first_name => "Chad", :last_name => "Chadwick", :email => "chad@chad.com", :company_id => (1..10).to_a.sample)
Employee.create(:first_name => "Chad", :last_name => "Chadwick", :email => "chad@chad.com", :company_id => (1..10).to_a.sample)
Employee.create(:first_name => "Chad", :last_name => "Chadwick", :email => "chad@chad.com", :company_id => (1..10).to_a.sample)

Employee.create(:first_name => "Bobby", :last_name => "Wilson", :email => "bobby@wilson.com", :company_id => (1..10).to_a.sample, :title => "Noob")
