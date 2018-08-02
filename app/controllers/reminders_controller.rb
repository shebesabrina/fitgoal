class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  def index
    @reminders = Reminder.all
    if @reminders.length.zero?
      flash[:alert] = 'You have no reminders. Create one now to get started.'
    end
  end

  def show
  end

  def new
    @reminder = current_user.reminders.new
  end

  def edit
  end

  def create
    # @reminder = Reminder.create!(reminder_params)
    @reminder = current_user.reminders.create(reminder_params)
    # binding.pry
    # @reminder.remind_user
    respond_to do |format|
      if @reminder.save
        format.html { redirect_to @reminder, notice: 'Reminder was successfully created.' }
        format.json { render :show, status: :created, location: @reminder }
      else
        format.html { render :new }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reminder.update(reminder_params)
        format.html { redirect_to @reminder, notice: 'Reminder was successfully updated.' }
        format.json { render :show, status: :ok, location: @reminder }
      else
        format.html { render :edit }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reminder.destroy
    respond_to do |format|
      format.html { redirect_to reminders_url, notice: 'Reminder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_reminder
      @reminder = Reminder.find(params[:id])
    end

    def reminder_params
      params.require(:reminder).permit(:phone_number, :set_at)
    end
end
