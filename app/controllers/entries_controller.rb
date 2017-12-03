class EntriesController < ApplicationController

  def new
    @entry = Entry.new
    # @journals = Journal.all
  end

  def create
    @entry = Entry.new(entry_params)
    puts entry_params
    puts @entry
    @journal = Journal.find(params[:journal][:journal_id])
    @entry.journal = @journal
    if @entry.valid?
      @entry.save
      redirect_to journal_path(@journal)
    else
      render :new
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
  end

  def update
  end

  def entry_params
    params.require(:entry).permit(
      :title,
      :content,
      :journal,
      :date)
  end

end
