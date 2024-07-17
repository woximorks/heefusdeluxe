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
