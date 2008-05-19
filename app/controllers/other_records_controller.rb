class OtherRecordsController < ApplicationController
  before_filter :login_required
  layout "default"
  # GET /other_records
  # GET /other_records.xml
  def index
    @other_records = current_user.other_records

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @other_records }
    end
  end

  # GET /other_records/1
  # GET /other_records/1.xml
  def show
    @other_record = current_user.other_records.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @other_record }
    end
  end

  # GET /other_records/new
  # GET /other_records/new.xml
  def new
    @other_record = OtherRecord.new({:user => current_user})

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @other_record }
    end
  end

  # GET /other_records/1/edit
  def edit
    @other_record = current_user.other_records.find(params[:id])
  end

  # POST /other_records
  # POST /other_records.xml
  def create
    @other_record = OtherRecord.new(params[:other_record])

    respond_to do |format|
      if @other_record.save
        flash[:notice] = 'OtherRecord was successfully created.'
        format.html { redirect_to(@other_record) }
        format.xml  { render :xml => @other_record, :status => :created, :location => @other_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @other_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /other_records/1
  # PUT /other_records/1.xml
  def update
    @other_record = current_user.other_records.find(params[:id])

    respond_to do |format|
      if @other_record.update_attributes(params[:other_record])
        flash[:notice] = 'OtherRecord was successfully updated.'
        format.html { redirect_to(@other_record) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @other_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /other_records/1
  # DELETE /other_records/1.xml
  def destroy
    @other_record = current_user.other_records.find(params[:id])
    @other_record.destroy

    respond_to do |format|
      format.html { redirect_to(other_records_url) }
      format.xml  { head :ok }
    end
  end
end
