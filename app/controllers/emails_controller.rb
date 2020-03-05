class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Cannabis.buzzword, body: Faker::Lorem.paragraph)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def show
    @emails = Email.all
    @email = Email.find_by(id: params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find_by(id: params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
    @email.destroy
  end
end
