class FavoritesController < ApplicationController

  def create
    book = Book.find(params[:post_image_id])
    favorite = current_user.favorites.new(post_image_id: book.id)
    favorite.save
    redirect_to book_path(book)
  end

  def destroy
    book =Book.find(params[:post_image_id])
    favorite = current_user.favorites.find_by(post_image_id: book.id)
    favorite.destroy
    redirect_to book_path(book)
  end

end
