class GasVendorsController < ApplicationController
  layout 'default'
  before_filter :login_required, :except => :show
  # GET /gas_vendors
  # GET /gas_vendors.xml
  def index
    @gas_vendors = GasVendor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gas_vendors }
    end
  end

  # GET /gas_vendors/1
  # GET /gas_vendors/1.xml
  def show
    @gas_vendor = GasVendor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gas_vendor }
    end
  end

  # GET /gas_vendors/new
  # GET /gas_vendors/new.xml
  def new
    @gas_vendor = GasVendor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gas_vendor }
    end
  end

  # GET /gas_vendors/1/edit
  def edit
    @gas_vendor = GasVendor.find(params[:id])
  end

  # POST /gas_vendors
  # POST /gas_vendors.xml
  def create
    @gas_vendor = GasVendor.new(params[:gas_vendor])

    respond_to do |format|
      if @gas_vendor.save
        flash[:notice] = 'GasVendor was successfully created.'
        format.html { redirect_to(@gas_vendor) }
        format.xml  { render :xml => @gas_vendor, :status => :created, :location => @gas_vendor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gas_vendor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gas_vendors/1
  # PUT /gas_vendors/1.xml
  def update
    @gas_vendor = GasVendor.find(params[:id])

    respond_to do |format|
      if @gas_vendor.update_attributes(params[:gas_vendor])
        flash[:notice] = 'GasVendor was successfully updated.'
        format.html { redirect_to(@gas_vendor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gas_vendor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_vendors/1
  # DELETE /gas_vendors/1.xml
  def destroy
    @gas_vendor = GasVendor.find(params[:id])
    @gas_vendor.destroy

    respond_to do |format|
      format.html { redirect_to(gas_vendors_url) }
      format.xml  { head :ok }
    end
  end
end
