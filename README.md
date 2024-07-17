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