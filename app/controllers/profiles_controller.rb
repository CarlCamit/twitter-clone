class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :edit, :update, :destroy]

    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
    end

    def show
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user

        respond_to do |format|
            if @profile.save
                format.html { redirect_to @profile, notice: "Profile was successfully created" } 
            else
                format.html { render :new } 
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @profile.update(profile_params)
                format.html { redirect_to profiles_url, notice: "Profile was successfully updated" } 
            else
                format.html { render :edit } 
            end
        end
    end

    def destroy
        @profile.destroy
        respond_to do |format|
          format.html { redirect_to profiles_url, notice: "Profile was successfully deleted" }
        end
    end

    private

    def set_profile
        @profile = Profile.find(params[:id])
    end

    def profile_params
        params.require(:profile).permit(:avatarPhoto, :headerPhoto, :name, :biography, :location, :website, :themeColor, :birthday)
    end
end