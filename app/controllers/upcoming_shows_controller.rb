class UpcomingShowsController < ApplicationController
  before_action :set_upcoming_show, only: %i[ show edit update destroy ]

  # GET /upcoming_shows or /upcoming_shows.json
  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @upcoming_shows = UpcomingShow.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  # GET /upcoming_shows/1 or /upcoming_shows/1.json
  def show
  end

  # GET /upcoming_shows/new
  def new
    @upcoming_show = UpcomingShow.new
  end

  # GET /upcoming_shows/1/edit
  def edit
  end

  # POST /upcoming_shows or /upcoming_shows.json
  def create
    @upcoming_show = UpcomingShow.new(upcoming_show_params)

    respond_to do |format|
      if @upcoming_show.save
        format.html { redirect_to @upcoming_show, notice: "Upcoming show was successfully created." }
        format.json { render :show, status: :created, location: @upcoming_show }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @upcoming_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upcoming_shows/1 or /upcoming_shows/1.json
  def update
    respond_to do |format|
      if @upcoming_show.update(upcoming_show_params)
        format.html { redirect_to @upcoming_show, notice: "Upcoming show was successfully updated." }
        format.json { render :show, status: :ok, location: @upcoming_show }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @upcoming_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upcoming_shows/1 or /upcoming_shows/1.json
  def destroy
    @upcoming_show.destroy!

    respond_to do |format|
      format.html { redirect_to upcoming_shows_path, status: :see_other, notice: "Upcoming show was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upcoming_show
      @upcoming_show = UpcomingShow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def upcoming_show_params
      params.require(:upcoming_show).permit(:name, :start_time, :end_time)
    end
end
