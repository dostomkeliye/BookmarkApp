class BookmarksController < ApplicationController
	before_action :find_bookmark, only: [:show, :edit, :update, :destroy]
	def index
		@bookmarks = Bookmark.order(:title)
	end

	def new
		@bookmark=Bookmark.new
	end

	def create
		@bookmark=Bookmark.create(bookmark_params)
		redirect_to action: :index
	end

	def destroy
		@bookmark.destroy
		redirect_to action: :index
	end


	def edit	
	end

	def update
		@bookmark=Bookmark.find(params[:id])
		@bookmark.update_attributes(bookmark_params)
		redirect_to action: :index
	end

	def show
		
	end



	private

	def find_bookmark
		@bookmark=Bookmark.find(params[:id])
	end

	def bookmark_params
		#binding.pry
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)	
	end


end