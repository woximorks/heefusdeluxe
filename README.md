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

--------------------------------------

* Previous Commits
    
    * Initial Commit
        - https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-new-or-upgrade-an-existing-rails-app