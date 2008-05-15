class OilTypesController < ApplicationController
  before_filter :login_required, :except => :show
  layout 'default'
  # GET /oil_types
  # GET /oil_types.xml
  def index
    @oil_types = OilType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @oil_types }
    end
  end

  # GET /oil_types/1
  # GET /oil_types/1.xml
  def show
    @oil_type = OilType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @oil_type }
    end
  end

  # GET /oil_types/new
  # GET /oil_types/new.xml
  def new
    @oil_type = OilType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @oil_type }
    end
  end

  # GET /oil_types/1/edit
  def edit
    @oil_type = OilType.find(params[:id])
  end

  # POST /oil_types
  # POST /oil_types.xml
  def create
    @oil_type = OilType.new(params[:oil_type])

    respond_to do |format|
      if @oil_type.save
        flash[:notice] = 'OilType was successfully created.'
        format.html { redirect_to(@oil_type) }
        format.xml  { render :xml => @oil_type, :status => :created, :location => @oil_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @oil_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oil_types/1
  # PUT /oil_types/1.xml
  def update
    @oil_type = OilType.find(params[:id])

    respond_to do |format|
      if @oil_type.update_attributes(params[:oil_type])
        flash[:notice] = 'OilType was successfully updated.'
        format.html { redirect_to(@oil_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @oil_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /oil_types/1
  # DELETE /oil_types/1.xml
  def destroy
    @oil_type = OilType.find(params[:id])
    @oil_type.destroy

    respond_to do |format|
      format.html { redirect_to(oil_types_url) }
      format.xml  { head :ok }
    end
  end
end
