class WordcounterController < ApplicationController
	def show
    @post = Wordcount.find(params[:id])
  end

	def new
  end

  def index
    @articles = Article.all
  end




	def create
	  @post = Wordcount.new(wordcount_params)
	 
	  @post.save
	  redirect_to wordcounter_url(id: @post.id)  
	end
	 
	private
	  def wordcount_params
	    params.require(:wordcounter).permit(:text)
	  end
end
