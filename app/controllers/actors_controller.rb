class ActorsController < ApplicationController
  def index
    @actors=Actor.all               #找所有actors
  end
  def show                         #找特定actor所演的所有movie
    @actor=Actor.find(params[:id])  #由Actor model 中找出特定actor, 丟至@actor array中
    @movies=@actor.movies           #由特定@actor array找出所有movie, 丟至@movie array中
  end
end
