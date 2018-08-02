namespace :reminder do
  desc 'daily reminder for user'
  task :remind_6am => :environment do
    RemindUsers.new('6 am').send_messages
  end

  task :remind_noon => :environment do
    RemindUsers.new('noon').send_messages
  end

  task :remind_6pm => :environment do
    RemindUsers.new('6 pm').send_messages
  end

  task :remind_now => :environment do
    RemindUsers.new('now').send_messages
  end
end
