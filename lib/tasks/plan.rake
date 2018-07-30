#5k Training
namespace :import do
  desc 'import beginner 5k plan'
  task :beginner_5k_plan => :environment do
    reader = PlanCSVReader.new('app/data/beginner_5k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import intermediate 5k plan'
  task :intermediate_5k_plan => :environment do
    reader = PlanCSVReader.new('app/data/intermediate_5k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import advanced 5k plan'
  task :advanced_5k_plan => :environment do
    reader = PlanCSVReader.new('app/data/advanced_5k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import walker 5k plan'
  task :walker_5k_plan => :environment do
    reader = PlanCSVReader.new('app/data/walker_5k.csv').csv_to_plan
  end
end

#8k Training
namespace :import do
  desc 'import beginner 8k plan'
  task :beginner_8k_plan => :environment do
    reader = PlanCSVReader.new('app/data/beginner_8k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import intermediate 8k plan'
  task :intermediate_8k_plan => :environment do
    reader = PlanCSVReader.new('app/data/intermediate_8k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import advanced 8k plan'
  task :advanced_8k_plan => :environment do
    reader = PlanCSVReader.new('app/data/advanced_8k.csv').csv_to_plan
  end
end

#10k Training
namespace :import do
  desc 'import beginner 10k plan'
  task :beginner_10k_plan => :environment do
    reader = PlanCSVReader.new('app/data/beginner_10k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import intermediate 10k plan'
  task :intermediate_10k_plan => :environment do
    reader = PlanCSVReader.new('app/data/intermediate_10k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import advanced 10k plan'
  task :advanced_10k_plan => :environment do
    reader = PlanCSVReader.new('app/data/advanced_10k.csv').csv_to_plan
  end
end

namespace :import do
  desc 'import walker 10k plan'
  task :walker_10k_plan => :environment do
    reader = PlanCSVReader.new('app/data/walker_10k.csv').csv_to_plan
  end
end
