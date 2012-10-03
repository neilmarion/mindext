class CompositionsController < ApplicationController
  # GET /compositions
  # GET /compositions.json
  def index
    @new_composition = Composition.new
    @compositions = Composition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compositions }
    end
  end

  # GET /compositions/1
  # GET /compositions/1.json
  def show
    @composition = Composition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @composition }
    end
  end

  # GET /compositions/new
  # GET /compositions/new.json
  def new
    @composition = Composition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @composition }
    end
  end

  # GET /compositions/1/edit
  def edit
    @composition = Composition.find(params[:id])
  end

  # POST /compositions
  # POST /compositions.json
  def create
    @composition = Composition.new(params[:composition])

    respond_to do |format|
      if @composition.save
        format.html { redirect_to @composition, notice: 'Composition was successfully created.' }
        format.json { render json: @composition, status: :created, location: @composition }
      else
        format.html { render action: "new" }
        format.json { render json: @composition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compositions/1
  # PUT /compositions/1.json
  def update
    @composition = Composition.find(params[:id])

    respond_to do |format|
      if @composition.update_attributes(params[:composition])
        format.html { redirect_to @composition, notice: 'Composition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @composition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compositions/1
  # DELETE /compositions/1.json
  def destroy
    @composition = Composition.find(params[:id])
    @composition.destroy

    respond_to do |format|
      format.html { redirect_to compositions_url }
      format.json { head :no_content }
    end
  end
end
