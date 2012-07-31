class DataProvidersController < ApplicationController
  # GET /data_providers
  # GET /data_providers.json
  def index
    @data_providers = DataProvider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data_providers }
    end
  end

  # GET /data_providers/1
  # GET /data_providers/1.json
  def show
    @data_provider = DataProvider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @data_provider }
    end
  end

  # GET /data_providers/new
  # GET /data_providers/new.json
  def new
    @data_provider = DataProvider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @data_provider }
    end
  end

  # GET /data_providers/1/edit
  def edit
    @data_provider = DataProvider.find(params[:id])
  end

  # POST /data_providers
  # POST /data_providers.json
  def create
    @data_provider = DataProvider.new(params[:data_provider])

    respond_to do |format|
      if @data_provider.save
        format.html { redirect_to @data_provider, notice: 'Data provider was successfully created.' }
        format.json { render json: @data_provider, status: :created, location: @data_provider }
      else
        format.html { render action: "new" }
        format.json { render json: @data_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /data_providers/1
  # PUT /data_providers/1.json
  def update
    @data_provider = DataProvider.find(params[:id])

    respond_to do |format|
      if @data_provider.update_attributes(params[:data_provider])
        format.html { redirect_to @data_provider, notice: 'Data provider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @data_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_providers/1
  # DELETE /data_providers/1.json
  def destroy
    @data_provider = DataProvider.find(params[:id])
    @data_provider.destroy

    respond_to do |format|
      format.html { redirect_to data_providers_url }
      format.json { head :no_content }
    end
  end
end
