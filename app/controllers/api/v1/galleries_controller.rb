class Api::V1::GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
    render json: @galleries
  end

  def show
    @gallery = Gallery.find_by(id: params[:id])
    render json: @gallery
  end

  def create
    @gallery = Gallery.new(user_id: params[:user_id], gallery_name: params[:gallery_name], dim_x: params[:dim_x], dim_y: params[:dim_y], dim_z: params[:dim_z], floor_texture: params[:floor_texture], wall_color: params[:wall_color])
    if @gallery.save
      render json: @gallery
    else
      render json: {errors: @gallery.errors.full_messages}, status: 422
    end
  end

  def update
    @gallery = Gallery.find_by(id: params[:id])
    if @gallery.update(gallery_name: params[:gallery_name], dim_x: params[:dim_x], dim_y: params[:dim_y], dim_z: params[:dim_z], floor_texture: params[:floor_texture], wall_color: params[:wall_color])
      render json: @gallery
    else
      render json: {errors: @gallery.errors.full_messages}, status: 422
    end
  end

  def destroy
    @gallery = Gallery.find_by(id: params[:id])
    if @gallery.destroy
      render json: {}, status: 200
    else
      render json: {errors: @gallery.errors.full_messages}, status: 422
    end
  end

end
