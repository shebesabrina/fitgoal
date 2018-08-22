## FitGoal

FitGoal is an application to help you train for a new race or improve your running skills. When log in and sign up for a running plan you'll have the option to pick a running distance, and your level of running skills. Once you have selected your plan you'll have a planned running calendar that will show you which day you need to run or work out and for how long. If you'd like you can also set up text message notifications. 

FitGoal was built using Ruby on Rails, Javascript Full calendar, Twilio for text messaging, and utilizes Strava's API for OAuth login. 

Ruby version 2.4.1

* The production application is located on: https://fitgoals.herokuapp.com/

After you've cloned down and ran `bundle` set up the database:

```
rake db:create
rake db:migrate
```

To add your application.yml for api token for [strava](https://developers.strava.com/) and [twilio](https://www.twilio.com/try-twilio)

`bundle exec figaro install`

* To view the test suite: RSpec 
To run the test suite: `rspec`. The test suite makes use of FactoryBot for object creation and webmock for limiting the number of API calls.
