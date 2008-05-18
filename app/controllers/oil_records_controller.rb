class OilRecordsController < ApplicationController
  layout 'default'
  before_filter :login_required, :except => :show
  # GET /oil_records
  # GET /oil_records.xml
  def index
    @oil_records = current_user.oil_records

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @oil_records }
    end
  end

  # GET /oil_records/1
  # GET /oil_records/1.xml
  def show
    @oil_record = current_user.oil_records.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @oil_record }
    end
  end

  # GET /oil_records/new
  # GET /oil_records/new.xml
  def new
    @oil_record = OilRecord.new({:user => current_user})

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @oil_record }
    end
  end

  # GET /oil_records/1/edit
  def edit
    @oil_record = current_user.oil_records.find(params[:id])
  end

  # POST /oil_records
  # POST /oil_records.xml
  def create
    @oil_record = OilRecord.new(params[:oil_record])
    throw "unowned oil record" unless current_user.cars.include? @oil_record.car

    respond_to do |format|
      if @oil_record.save
        flash[:notice] = 'OilRecord was successfully created.'
        format.html { redirect_to(@oil_record) }
        format.xml  { render :xml => @oil_record, :status => :created, :location => @oil_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @oil_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oil_records/1
  # PUT /oil_records/1.xml
  def update
    @oil_record = current_user.oil_records.find(params[:id])

    respond_to do |format|
      if @oil_record.update_attributes(params[:oil_record])
        flash[:notice] = 'OilRecord was successfully updated.'
        format.html { redirect_to(@oil_record) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @oil_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /oil_records/1
  # DELETE /oil_records/1.xml
  def destroy
    @oil_record = current_user.oil_records.find(params[:id])
    @oil_record.destroy

    respond_to do |format|
      format.html { redirect_to(oil_records_url) }
      format.xml  { head :ok }
    end
  end
end
