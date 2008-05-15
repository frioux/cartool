class GasTypesController < ApplicationController
  before_filter :login_required, :except => :show
  layout 'default'
  # GET /gas_types
  # GET /gas_types.xml
  def index
    @gas_types = GasType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gas_types }
    end
  end

  # GET /gas_types/1
  # GET /gas_types/1.xml
  def show
    @gas_type = GasType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gas_type }
    end
  end

  # GET /gas_types/new
  # GET /gas_types/new.xml
  def new
    @gas_type = GasType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gas_type }
    end
  end

  # GET /gas_types/1/edit
  def edit
    @gas_type = GasType.find(params[:id])
  end

  # POST /gas_types
  # POST /gas_types.xml
  def create
    @gas_type = GasType.new(params[:gas_type])

    respond_to do |format|
      if @gas_type.save
        flash[:notice] = 'GasType was successfully created.'
        format.html { redirect_to(@gas_type) }
        format.xml  { render :xml => @gas_type, :status => :created, :location => @gas_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gas_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gas_types/1
  # PUT /gas_types/1.xml
  def update
    @gas_type = GasType.find(params[:id])

    respond_to do |format|
      if @gas_type.update_attributes(params[:gas_type])
        flash[:notice] = 'GasType was successfully updated.'
        format.html { redirect_to(@gas_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gas_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_types/1
  # DELETE /gas_types/1.xml
  def destroy
    @gas_type = GasType.find(params[:id])
    @gas_type.destroy

    respond_to do |format|
      format.html { redirect_to(gas_types_url) }
      format.xml  { head :ok }
    end
  end
end
