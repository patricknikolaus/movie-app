class ActorsController < ApplicationController
  def show
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)
    render json: actor.as_json
  end
end
