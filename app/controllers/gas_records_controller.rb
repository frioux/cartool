class GasRecordsController < ApplicationController
  layout 'default'
  before_filter :login_required
  # GET /gas_records
  # GET /gas_records.xml
  def index
    @gas_records = current_user.gas_records

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gas_records }
    end
  end

  # GET /gas_records/1
  # GET /gas_records/1.xml
  def show
    @gas_record = current_user.gas_records.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gas_record }
    end
  end

  # GET /gas_records/new
  # GET /gas_records/new.xml
  def new
    @gas_record = GasRecord.new({:user_id => current_user.id})

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gas_record }
    end
  end

  # GET /gas_records/1/edit
  def edit
    @gas_record = current_user.gas_records.find(params[:id])
  end

  # POST /gas_records
  # POST /gas_records.xml
  def create
    @gas_record = GasRecord.new(params[:gas_record])
    throw "unowned gas record" unless user.cars.include? @gas_record.car

    respond_to do |format|
      if @gas_record.save
        flash[:notice] = 'GasRecord was successfully created.'
        format.html { redirect_to(@gas_record) }
        format.xml  { render :xml => @gas_record, :status => :created, :location => @gas_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gas_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gas_records/1
  # PUT /gas_records/1.xml
  def update
    @gas_record = current_user.gas_records.find(params[:id])

    respond_to do |format|
      if @gas_record.update_attributes(params[:gas_record])
        flash[:notice] = 'GasRecord was successfully updated.'
        format.html { redirect_to(@gas_record) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gas_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_records/1
  # DELETE /gas_records/1.xml
  def destroy
    @gas_record = current_user.gas_records.find(params[:id])
    @gas_record.destroy

    respond_to do |format|
      format.html { redirect_to(gas_records_url) }
      format.xml  { head :ok }
    end
  end
end
