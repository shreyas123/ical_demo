class Event1sController < ApplicationController
  # GET /event1s
  # GET /event1s.xml
  def index
    @event1s = Event1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event1s }
    end
  end

  # GET /event1s/1
  # GET /event1s/1.xml
  def show
    @event1 = Event1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event1 }
    end
  end

  # GET /event1s/new
  # GET /event1s/new.xml
  def new
    @event1 = Event1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event1 }
    end
  end

  # GET /event1s/1/edit
  def edit
    @event1 = Event1.find(params[:id])
  end

  # POST /event1s
  # POST /event1s.xml
  def create
    @event1 = Event1.new(params[:event1])

    respond_to do |format|
      if @event1.save
        format.html { redirect_to(@event1, :notice => 'Event1 was successfully created.') }
        format.xml  { render :xml => @event1, :status => :created, :location => @event1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event1s/1
  # PUT /event1s/1.xml
  def update
    @event1 = Event1.find(params[:id])

    respond_to do |format|
      if @event1.update_attributes(params[:event1])
        format.html { redirect_to(@event1, :notice => 'Event1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event1s/1
  # DELETE /event1s/1.xml
  def destroy
    @event1 = Event1.find(params[:id])
    @event1.destroy

    respond_to do |format|
      format.html { redirect_to(event1s_url) }
      format.xml  { head :ok }
    end
  end
end
