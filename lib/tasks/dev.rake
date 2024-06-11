namespace :dev do
  desc "TODO"
  task setup: :environment do
    puts "Iniciando Cadastro"
    10.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(1.years.ago, 1.years.ago)
      )
    end
    puts "Cadastro Realizado"
  end

end
