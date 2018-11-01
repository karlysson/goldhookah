class ClientEventsController < ApplicationController
  before_action :set_client_event, only: [:show, :edit, :update, :destroy]
  layout "backoffice"

  # GET /client_events
  # GET /client_events.json
  def index
    @client_events = ClientEvent.all
  end

  # GET /client_events/1
  # GET /client_events/1.json
  def show
  end

  # GET /client_events/new
  def new
    @client_event = ClientEvent.new
  end

  # GET /client_events/1/edit
  def edit
  end

  # POST /client_events
  # POST /client_events.json
  def create
    @client_event = ClientEvent.new(client_event_params)

    respond_to do |format|
      if @client_event.save
        format.html { redirect_to @client_event, notice: 'Client event was successfully created.' }
        format.json { render :show, status: :created, location: @client_event }
      else
        format.html { render :new }
        format.json { render json: @client_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_events/1
  # PATCH/PUT /client_events/1.json
  def update
    respond_to do |format|
      if @client_event.update(client_event_params)
        format.html { redirect_to @client_event, notice: 'Client event was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_event }
      else
        format.html { render :edit }
        format.json { render json: @client_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_events/1
  # DELETE /client_events/1.json
  def destroy
    @client_event.destroy
    respond_to do |format|
      format.html { redirect_to client_events_url, notice: 'Client event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_event
      @client_event = ClientEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_event_params
      params.require(:client_event).permit(:event_id, :client_id, :payment_method_id, :ticket_id)
    end
end
