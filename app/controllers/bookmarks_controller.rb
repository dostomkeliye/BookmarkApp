class BookmarksController < ApplicationController

	def index
		@bookmarks = Bookmark.all
	end

	def new
		@bookmark=Bookmark.new
	end

	def create
		@bookmark=Bookmark.create(bookmark_params)
		redirect_to action: :index
	end



	private
	def bookmark_params
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)	
	end


end