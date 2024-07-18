# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Project.create!([{
    project_title: "Close Enough Fabrication",
    project_url: "cefab-offroad.com",
    project_image_url: "cefablogo",
    project_description: "lorem ipsum"
},
{
    project_title: "Beard Industries",
    project_url: "beardindustries.com",
    project_image_url: 'beardlogo',
    project_description: "lorem beardsum"
},
{
    project_title: "WhackAMole",
    project_url: "https://master.d2rge8c7efug7r.amplifyapp.com/",
    project_image_url: "whackamolelogo",
    project_description: "Lorem guacamole"
}
=begin
Here have a template

{
    project_title: "",
    project_url: "",
    project_image_url: "",
    project_description: ""
}
=end
])

InfoCard.create!([{
    info_card_title: "Basic Info",
    info_card_description: "My name is Aaron, and I reside in Washington state. I recently graduated from Western Governors University with a degree in Business Administration - IT Management. I am continuing to supplement this education with a variety of web based programming certifications such as freeCodeCamp and Codecademy, alongside the use of web programming in a real world setting, through the creation of programs, applications, and websites. When I'm not behind a computer, I might be spending time with my son Ryder, or out enjoying the Pacific Northwest on my Paddleboard.",
    info_card_image_url: "about1",
    info_card_type: "about"
},
{
    info_card_title: "Professionally Speaking",
    info_card_description: "My time at MoxiWorks is spent troubleshooting and escalating platform related bugs to our engineering team. My knowledge surrounding the use of Moxi itself, our database, API, Datadog, Ruby on Rails, and the ability to navigate and understand developer tools within the web browser has proven effective when determining how to escalate tickets through engineering while in this role. I am also responsible for managing related story tickets, tracking issues as they come in and organizing / linking these as related within Jira or Asana in some way.",
    info_card_image_url: "about2",
    info_card_type: "about"
},
{
    info_card_title: "Wrapping Up",
    info_card_description: "Check out my instagram (@closeenoughfabrication) or my Youtube channel (@awdevelopment) to learn a bit more about me. The portfolio section contains some of my recent projects I've been working on, with an initial emphasis on very basic HTML / CSS / JavaScript principles, and more recently how to apply some of this same logic using Ruby on Rails as a framework. I'll also continue to update that portfolio section regularly with new projects as I continue my development journey, using Rails and other languages or frameworks as necessary.",
    info_card_image_url: "about3",
    info_card_type: "about"
},

=begin
{
    info_card_title: "",
    info_card_description: "",
    info_card_image_url: "",
    info_card_type: ""
}
=end
])

Article.create!([{
    article_title: "Blog Basics",
    article_description: "This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog1"
}

=begin
{
    article_title: "",
    article_description: "",
    article_body: "",
    article_image_url: "",
}
=end
])


user = User.where(email: "test@test.com").first_or_initialize
user.update!(
    password: "password",
    password_confirmation: "password"
)