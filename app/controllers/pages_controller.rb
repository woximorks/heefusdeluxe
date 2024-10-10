class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def about
    @info_cards = InfoCard.all
  end

  def portfolio
    @projects = Project.all
  end
end
