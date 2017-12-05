class ScenesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @scenes = @user.scenes
    render json: @scenes
  end

  def show
    @scene = Scene.find_by(id: params[:id])
    render json: @scene
  end

  def create
    @scene = Scene.create(user_id: params[:user_id], name: params[:name], gallery_id: params[:gallery_id])
    params[:artworks].each do |artwork|
      @scene_artwork = SceneArtwork.create(
      artwork_id: artwork["artwork_id"],
      scene_id: @scene.id,
      position_x: artwork["position_x"],
      position_y: artwork["position_y"],
      position_z: artwork["position_z"]
      )
    end

    if @scene.persisted?
      render json: @scene
    else
      render json: {errors: @scene.errors.full_messages}, status: 422
    end
  end

end
