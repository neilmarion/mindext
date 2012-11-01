class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @compositions = @tag.compositions
    
    respond_to do |format|
      format.js # show.html.erb
      format.json { render json: @compositions }
    end
  end
end
