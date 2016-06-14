namespace :test do
  task all: [:rubocop, :foodcritic, :kitchen]

  desc 'Run integration tests using TestKitchen'
  task :kitchen do
    sh 'bundle exec kitchen test -d always'
  end

  desc 'Lint the cookbook using FoodCritic'
  task :foodcritic do
    sh 'bundle exec foodcritic -f any -P -R roles'
  end

  desc 'Lint the ruby code using rubocop'
  task :rubocop do
    sh 'bundle exec rubocop --display-cop-names'
  end
end

task default: 'test:all'
