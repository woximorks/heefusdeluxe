* Simple Calendar and supporting gems
    * Initial Install and Setup
        - Gems added to gemfile (bootstrap, dartsass-sprockets, simple_calendar)
        - css converted to sass
        - Import related files on application.scss
        - https://github.com/twbs/bootstrap-rubygem
        - https://github.com/excid3/simple_calendar
    * Create the UpcomingShow scaffold
        - rails g scaffold UpcomingShow name start_time:datetime end_time:datetime
        - added as a resource to routes file
    * Put the calendar on it's own page - calendar.html.erb
        - Set route to /calendar
        - Added calendar to pages controller, set upcoming_shows to display on that calendar
    

--------------------------------------

* Previous Commits

    * You get on Heroku now
        - https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-procfile
        - https://stackoverflow.com/questions/46020753/the-asset-logo-png-is-not-present-in-the-asset-pipeline

    * Initial Framework
        * Database Models
            - rails g model Project project_title project_description:text project_image project_url
            - rails g model InfoCard info_card_title info_card_description:text info_card_image info_card_url
            - template SQL file attached to update the DB appropriately

        * Controller File
            - rails g controller Pages home about portfolio
                - Added references within this controller to the corresponding models created

        * Routes and Related info
            - set home as the route for index page
                - set other routes appropriately /home, /about, /portfolio so that those URLs take you to the corresponding page

        * Front End
            - very basic CSS applied for image sizing
            - /about and /portfolio reference and display info_cards and projects DB info respectively
                - Links to index also added
            - Test images (logo, testimage1) added
    
    * Initial Commit
        - https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-new-or-upgrade-an-existing-rails-app