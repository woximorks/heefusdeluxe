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
  
  def calendar
    start_date = params.fetch(:start_date, Date.today).to_date
    @upcoming_shows = UpcomingShow.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

end
