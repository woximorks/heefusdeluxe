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
    project_title: "Template Title",
    project_url: "templateurl.com",
    project_image_url: "templatelogo",
    project_description: "Templatedescription"
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
    info_card_description: "Template info card",
    info_card_image_url: "templateinfocard",
    info_card_type: "template"
}
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