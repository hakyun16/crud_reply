class CommentController < ApplicationController
  def reply_create
    editor = params[:reply_editor]
    content = params[:reply_content]
    board_id = params[:board_id]
    
    table = Reply.new
    
    table.editor = editor
    table.content = content
    table.board_id = board_id
    
    table.save
    
    redirect_to "/board/show/#{params[:board_id]}"
    
  end

  def reply_delete
    reply = Reply.find(params[:id])
    reply.destroy
    
    redirect_to :back
  end
end
