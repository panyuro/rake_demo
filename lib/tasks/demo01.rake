task :greet do
  puts 'hello World!'
end

# 在调用ask之前叠加了greet
task :ask => :greet do
  puts 'what are you?'
end