class BethelstudentsController < ApplicationController
  # GET /bethelstudents
  # GET /bethelstudents.json
  def index
    @bethelstudents = Bethelstudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bethelstudents }
    end
  end

  # GET /bethelstudents/1
  # GET /bethelstudents/1.json
  def show
    @bethelstudent = Bethelstudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bethelstudent }
    end
  end

  # GET /bethelstudents/new
  # GET /bethelstudents/new.json
  def new
    @bethelstudent = Bethelstudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bethelstudent }
    end
  end

  # GET /bethelstudents/1/edit
  def edit
    @bethelstudent = Bethelstudent.find(params[:id])
  end

  # POST /bethelstudents
  # POST /bethelstudents.json
  def create
    @bethelstudent = Bethelstudent.new(params[:bethelstudent])

    respond_to do |format|
      if @bethelstudent.save
        format.html { redirect_to @bethelstudent, notice: 'Bethelstudent was successfully created.' }
        format.json { render json: @bethelstudent, status: :created, location: @bethelstudent }
      else
        format.html { render action: "new" }
        format.json { render json: @bethelstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bethelstudents/1
  # PUT /bethelstudents/1.json
  def update
    @bethelstudent = Bethelstudent.find(params[:id])

    respond_to do |format|
      if @bethelstudent.update_attributes(params[:bethelstudent])
        format.html { redirect_to @bethelstudent, notice: 'Bethelstudent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bethelstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bethelstudents/1
  # DELETE /bethelstudents/1.json
  def destroy
    @bethelstudent = Bethelstudent.find(params[:id])
    @bethelstudent.destroy

    respond_to do |format|
      format.html { redirect_to bethelstudents_url }
      format.json { head :no_content }
    end
  end
end
