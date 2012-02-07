class Eventos2sController < ApplicationController
  # GET /eventos2s
  # GET /eventos2s.json
  def index
    @eventos2s = Eventos2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eventos2s }
    end
  end

  # GET /eventos2s/1
  # GET /eventos2s/1.json
  def show
    @eventos2 = Eventos2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eventos2 }
    end
  end

  # GET /eventos2s/new
  # GET /eventos2s/new.json
  def new
    @eventos2 = Eventos2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eventos2 }
    end
  end

  # GET /eventos2s/1/edit
  def edit
    @eventos2 = Eventos2.find(params[:id])
  end

  # POST /eventos2s
  # POST /eventos2s.json
  def create
    @eventos2 = Eventos2.new(params[:eventos2])

    respond_to do |format|
      if @eventos2.save
        format.html { redirect_to @eventos2, notice: 'Eventos2 was successfully created.' }
        format.json { render json: @eventos2, status: :created, location: @eventos2 }
      else
        format.html { render action: "new" }
        format.json { render json: @eventos2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eventos2s/1
  # PUT /eventos2s/1.json
  def update
    @eventos2 = Eventos2.find(params[:id])

    respond_to do |format|
      if @eventos2.update_attributes(params[:eventos2])
        format.html { redirect_to @eventos2, notice: 'Eventos2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eventos2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventos2s/1
  # DELETE /eventos2s/1.json
  def destroy
    @eventos2 = Eventos2.find(params[:id])
    @eventos2.destroy

    respond_to do |format|
      format.html { redirect_to eventos2s_url }
      format.json { head :ok }
    end
  end
end
