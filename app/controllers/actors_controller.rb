class ActorsController < ApplicationController
  def get_one_actor
    find_actor = Actor.find_by(id: 6)
    render json: {actor: find_actor}
  end
end
