class UserMessagesController < ApplicationController
  before_action :set_user_message, only: [:show, :edit, :update, :destroy]

  # GET /user_messages
  # GET /user_messages.json
  def index
    @user_messages = UserMessage.all
  end

  # GET /user_messages/1
  # GET /user_messages/1.json
  def show
  end

  # GET /user_messages/new
  def new
    @user_message = UserMessage.new
  end

  # GET /user_messages/1/edit
  def edit
  end

  # POST /user_messages
  # POST /user_messages.json
  def create
    @user_message = UserMessage.new(user_message_params)

    respond_to do |format|
      if @user_message.save
        format.html { redirect_to @user_message, notice: 'User message was successfully created.' }
        format.json { render :show, status: :created, location: @user_message }
      else
        format.html { render :new }
        format.json { render json: @user_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_messages/1
  # PATCH/PUT /user_messages/1.json
  def update
    respond_to do |format|
      if @user_message.update(user_message_params)
        format.html { redirect_to @user_message, notice: 'User message was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_message }
      else
        format.html { render :edit }
        format.json { render json: @user_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_messages/1
  # DELETE /user_messages/1.json
  def destroy
    @user_message.destroy
    respond_to do |format|
      format.html { redirect_to user_messages_url, notice: 'User message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_message
      @user_message = UserMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_message_params
      params.require(:user_message).permit(:name, :email, :message)
    end
end
