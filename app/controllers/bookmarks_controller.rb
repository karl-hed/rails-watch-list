class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :destroy]

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # raise
    # @list = Bookmark.find(params[:list_id])
    # @movie =
    list_id = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_bookmarks_path(list_id), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
