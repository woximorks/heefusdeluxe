# README

1 - Creating the site framework with initial emphasis on the Portfolio / Project section, putting some projects on the home page through the seed file

- 1.1 Created some starting pages (about, home, portfolio)
    rails g controller Pages home about portfolio

- 1.2 created project structure
    rails g scaffold Project project_title project_url project_description:text project_image_url

- 1.3 Projects display within the portfolio
    See updates to the home.html.erb view file
    And pages_controller (@projects = Project.all)

- 1.4 Set route for home page to be root page

- 1.5 Seed database with 3 projects (https://ninjadevel.com/seeding-database-ruby-on-rails/)
    See updates to the seeds.rb file, run rails db:seed to pull this data
    The 3 images added will also correspond to the project_image_url for now, as seen on the view file
        <%= image_tag("#{project.project_image_url}") %>

--------------------------------------

2 - Creating the about section on the homepage

- 2.1 Created the info card structure
    rails g scaffold InfoCard info_card_title info_card_description:text info_card_image_url info_card_type

- 2.2 Updated seeds file with some starter info
    Added to seeds.rb file to update as necessary

--------------------------------------

3 - Creating blog section, some homepage cleanup

- 3.1 created the blog or related article section
    rails g scaffold Article article_title article_body:text article_description article_image_url

- 3.2 Same as 2.2, starter info added to seeds file

- 3.3 Cleaned up the homepage by adding some divs for now

--------------------------------------

4 - Using the Devise gem to authenticate users
    https://gorails.com/episodes/authenticating-blog-admin-pages

- 4.1 Adding Devise
    bundle add devise
    rails g devise:install (also added  to development.rb and alerts / notices to application view file manually)

- 4.2 Creating the devise user model
    rails g devise User

- 4.3 Updated related files so that new users cannot be created
    removed :registerable from user model
    added logic to home.html.erb for the user to log out if they are signed in (and some other commented out logic that would allow user to do other things if registerable was still a thing)

- 4.4 Updated seeds.rb file to create a dummy user for testing purposes

- 4.5 Updated the Articles view files to ensure the user is logged in before changes can be made, or new articles published
    Adding <% if user_signed_in? %> to index.html.erb, show.html.erb

- 4.6 Updated articles_controller to ensure user is logged for Article edit pages
    before_action :authenticate_user!, except: [:index, :show]

--------------------------------------

5 - Front end display organization

- 5.1 Homepage view updates
    Updated article on homepage view to add a link to the actual article
    <%= link_to "...Keep Reading", article %>
    added ul > li as required to ensure the items are displaying with correct spacing and line breaks
    Added some h3 tags with short descriptions for each individual section
    Reversed the order of the articles and how they display so that the newest article shows first

- 5.2 Updated article show view to additionally add a link to go back home
    <%= link_to "Home", root_path %>

- 5.3 Set some standard image widths of 500px across all of the uploaded images

- 5.4 Added to seeds.rb 
    Updated some of the descriptions in the seeds.rb file to more accurately depict actual sizing requirements
    Added some additional articles that populate

--------------------------------------

6 Using this repository as a template

- 6.1 git clone git@github.com:[repo owner/repo name]

- 6.2 mv getawd heefusdeluxe

- 6.3 git remote remove origin

- 6.4 git remote add origin git@github.com:[repo owner/repo name]