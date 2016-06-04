namespace :test do
  task all: [:rubocop, :foodcritic, :unit, :integration]

  desc 'Run unit tests using ChefSpec'
  task :unit do
    cookbooks = Dir.glob('cookbooks/*').select { |f| File.directory? f }
    cookbooks.each do |cookbook|
      Dir.chdir cookbook do
        sh 'chef exec rspec'
      end
    end
    sh 'chef exec rspec'
  end

  desc 'Run integration tests using TestKitchen'
  task :integration do
    sh 'kitchen verify'
  end

  desc 'Lint the cookbook using FoodCritic'
  task :foodcritic do
    sh 'foodcritic -f any -B cookbooks -P -R roles'
  end

  desc 'Lint the ruby code using rubocop'
  task :rubocop do
    sh 'rubocop'
  end
end

task default: 'test:all'
