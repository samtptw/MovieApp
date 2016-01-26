class MoviesController < ApplicationController
  def index
    @movies=Movie.all              #找所有電影
  end
  def show                         #找出特定movie中所有actors
    @movie=Movie.find(params[:id])  #由Movie model中找出id丟至@movie array中
    @actors=@movie.actors           #由@movie array中找出其中之actors 丟至@actors中
  end
end
