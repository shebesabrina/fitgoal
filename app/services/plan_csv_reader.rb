require 'csv'

class PlanCSVReader
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def csv_to_plan
    plan = CSV.open(file_path, headers: true, header_converters: :symbol)
    specific_plan = Plan.create(name: file_path.split("/").last.sub(".csv", ""))
    plan.each do |row|
      day_workout = row

      Day.create!(workout: day_workout[:mon], plan: specific_plan)
      Day.create!(workout: day_workout[:tue], plan: specific_plan)
      Day.create!(workout: day_workout[:wed], plan: specific_plan)
      Day.create!(workout: day_workout[:thu], plan: specific_plan)
      Day.create!(workout: day_workout[:fri], plan: specific_plan)
      Day.create!(workout: day_workout[:sat], plan: specific_plan)
      Day.create!(workout: day_workout[:sun], plan: specific_plan)
    end
  end
end
