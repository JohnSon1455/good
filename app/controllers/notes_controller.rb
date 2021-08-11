class NotesController < ApplicationController
    def index
      @notes = Note.all
        
    end
   
    def new
      @note = Note.new
    end
   
    def show
      @note = Note.find(params[:d])
    end
   
    def create
      # title = params[:title]
      # content = params[:content]
      # note = Note.new(params[:note])
      clean_note = params.require(:note).permit(:title,:content)
      @note = Note.new(clean_note)

      if @note.save
        redirect_to "/notes"
      else
        #待處理
        # redirect_to "/notes/new"
        render :new
        
      end
    end
end
