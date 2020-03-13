class WorkerProfilesController < ApplicationController
  before_action :set_worker_profile, only: [:show, :edit, :update, :download_resume, :download_document]
  
  def new
  end 
  
  def create
    @worker_profile = current_worker.create_worker_profile(worker_profile_params)
    redirect_to worker_dashboard_path
  end

  def edit
    
  end

  def update
    @worker_profile.update!(worker_profile_params)
    redirect_to worker_dashboard_path

  end 


  def download_resume
    send_data @worker_profile.resume.download, filename: 'resume.pdf'
  end 

  def download_document
    send_data @worker_profile.document.download, filename: 'document.pdf'
  end 

  private
  def worker_profile_params
    params.require(:worker_profile).permit(:first_name, :last_name, :bio, :photo, :resume, :document, :city, :number, :country)
  end

  def set_worker_profile
    if user_signed_in?
    @worker_profile = WorkerProfile.find(params[:id])
    else
    @worker_profile ||= current_worker.worker_profile || current_worker.build_worker_profile
    end 
  end

end

