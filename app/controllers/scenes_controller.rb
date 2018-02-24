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
    @user = User.find(params[:user_id])
    if @user.scenes.last
      @scene_number = @user.scenes.last.id + 1
    else
      @scene_number = 1
    end
    @scene_name = "Scene #{@scene_number.to_s}"
    @scene = Scene.create(user_id: params[:user_id], name: @scene_name, gallery_id: params[:gallery_id], image: params[:image])
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

  def destroy
    @scene = Scene.find_by(id: params[:id])
    if @scene.destroy
      @user = User.find_by(id: params[:user_id])
      @scenes = @user.scenes
      render json: @scenes
    else
      render json: {errors: @scenes.errors.full_messages}, status: 422
    end
  end

end
