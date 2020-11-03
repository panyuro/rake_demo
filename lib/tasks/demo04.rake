namespace :pick2 do
  task winner: :environment do
    user = pick(User)
    user.name = 'lili'
    puts "Winner: #{user.name}"
  end

  task prize: :environment do
    puts "Prize: #{pick(Product).name}"
  end

  task all: %i[prize winner]

  def pick(model_class)
    model_class.first
  end
end
