class BookCommentsController < ApplicationController
  def create
    book_comment = BookComment.new(book_comment_params)
    book_comment.save
    redirect_to books_path
end


def destroy
end

private
def book_comment_params
    params.require(:book_comment).permit(:comment)
end



end
