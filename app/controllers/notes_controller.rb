class NotesController < ApplicationController

  before_action :find_note, only:[:show, :edit, :update, :destroy]


  def index
    # @notes = Note.all
    @notes = Note.order(id: :desc)

  end
  
  def edit
  end
  
  def update
    # title = params[:title]
    # content = params[:content]
    # note = Note.new(params[:note])

    if @note.update(note_params)
      redirect_to "/notes"
    else
      #待處理
      # redirect_to "/notes/new"
      render :edit
      
    end
  end

  def new
    @note = Note.new
  end
  
  def show
  end
  
  def create
    # title = params[:title]
    # content = params[:content]
    # note = Note.new(params[:note])
    @note = Note.new(note_params)

    if @note.save
      redirect_to "/notes"
    else
      #待處理
      # redirect_to "/notes/new"
      render :new
    end
  end

  def destroy
    @note.destroy
    redirect_to "/notes"
  end
  private
  def note_params
    params.require(:note).permit(:title,:content)
  end
  def find_note
    @note = Note.find(params[:id])
  end
end
