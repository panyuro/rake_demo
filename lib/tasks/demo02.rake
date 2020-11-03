namespace :demo do
  desc 'Demo Running a rake task'
  task say_hello: :environment do
    puts 'Hello world'
  end
end