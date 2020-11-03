namespace :pick do
  # rake pick_winner
  #rake pick:winner 冒号代表命名空间
  task :winner => :environment do
    user =  User.first
    puts "Winner: #{user.name}"
  end

  task :prize => :environment do
    product =  Product.first
    puts "Prize: #{product.name}"
  end

  task :all => [:prize, :winner]
end
