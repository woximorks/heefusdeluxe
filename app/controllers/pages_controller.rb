class PagesController < ApplicationController
  def home
    @projects = Project.all
    @info_cards = InfoCard.all
  end

  def about
  end

  def portfolio
  end
end
