
namespace :import do
  desc 'import beginner 5k plan'
  task :beginner_5k_plan => :environment do
    reader = PlanCSVReader.new('app/data/beginner_5k_plan.csv')
  end
end
