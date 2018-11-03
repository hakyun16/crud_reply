class BoardController < ApplicationController
  def index
    @content_all = Board.all
  end

  def show
    @content = Board.find(params[:id])
  end

  def new
  end

  def create
    title = params[:title]
    editor = params[:editor]
    content = params[:content]
    
    table = Board.new
    
    table.title = title
    table.editor = editor
    table.content = content
    
    table.save
    
    redirect_to '/'
  end

  def edit
   @content = Board.find(params[:id])
  end

  def update
    content = Board.find(params[:id])
    content.title = params[:title]
    content.editor = params[:editor]
    content.content = params[:content]
    
    content.save
    
    redirect_to "/board/show/#{content.id}"
  end

  def delete
    delete_content = Board.find(params[:id])
    delete_content.destroy
    
    redirect_to '/'
  end
end
