class EventAttandeesController < ApplicationController
  before_action :set_event
  before_action :set_event_attandee, only: [:update]

  def create
    @event_attandee = current_user.event_attandees.build(create_event_attandee_params)

    if @event_attandee.save
      redirect_to @event, notice: 'Event Attandee was successfully created.'
    else
      respond_to { |format| format.js }
    end
  end

  def update
    if @event_attandee.update(update_event_attandee_params)
      redirect_to @event, notice: 'Event Attandee was successfully updated.'
    else
      respond_to { |format| format.js }
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_event_attandee
    @event_attandee = current_user.event_attandees.find(params[:id])
  end

  def create_event_attandee_params
    params.require(:event_attandee).permit(:status, :comment).merge(event: @event)
  end

  def update_event_attandee_params
    params.require(:event_attandee).permit(:status, :comment)
  end
end
