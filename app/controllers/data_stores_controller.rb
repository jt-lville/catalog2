class DataStoresController < ApplicationController
  # GET /data_stores
  # GET /data_stores.json
  def index
    @data_stores = DataStore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data_stores }
    end
  end

  # GET /data_stores/1
  # GET /data_stores/1.json
  def show
    @data_store = DataStore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @data_store }
    end
  end

  # GET /data_stores/new
  # GET /data_stores/new.json
  def new
    @data_store = DataStore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @data_store }
    end
  end

  # GET /data_stores/1/edit
  def edit
    @data_store = DataStore.find(params[:id])
  end

  # POST /data_stores
  # POST /data_stores.json
  def create
    @data_source = DataSource.find(params[:data_source_id])

    @data_store = @data_source.data_stores.create(params[:data_store])

    redirect_to data_source_path(@data_source)
  end

  # PUT /data_stores/1
  # PUT /data_stores/1.json
  def update
    @data_store = DataStore.find(params[:id])

    respond_to do |format|
      if @data_store.update_attributes(params[:data_store])
        format.html { redirect_to @data_store.data_source, notice: 'Data store was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @data_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_stores/1
  # DELETE /data_stores/1.json
  def destroy
    @data_store = DataStore.find(params[:id])
    @data_store.destroy

    respond_to do |format|
      format.html { redirect_to data_sources_url }
      format.json { head :no_content }
    end
  end
end
