class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    actor.save
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.title = params[:title] || actor.title
    actor.year = params[:year] || actor.year
    actor.plot = params[:plot] || actor.plot
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: {message: "You just deleted this actor!", actor: actor.as_json}
  end
end
