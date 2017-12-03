class JournalsController < ApplicationController

  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def create

    @journal = Journal.create(journal_params)
    redirect_to user_path(@journal.user)
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries.order(date: :desc)
  end

  def edit
  end

  def update
  end

  def journal_params
    params.require(:journal).permit(:name, :user_id)
  end

end
