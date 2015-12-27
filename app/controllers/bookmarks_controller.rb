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

	def destroy
		@bookmark=Bookmark.find(params[:id])
		@bookmark.destroy
		redirect_to action: :index
	end


	private
	def bookmark_params
		#binding.pry
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)	
	end


end