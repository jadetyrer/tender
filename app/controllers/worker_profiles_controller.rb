class WorkerProfilesController < ApplicationController
  before_action :set_worker_profile, only: [:edit, :update, :download_resume, :download_document]
  
  def new
  end 
  
  def create
    @worker_profile = current_worker.create_worker_profile(worker_profile_params)
    redirect_to edit_worker_profile_path(current_worker)
  end

  def edit
  end

  def update
    @worker_profile.update(worker_profile_params)

    redirect_to @worker_profile
  end 


  def download_resume
    send_data @worker_profile.resume.download, filename: 'resume.pdf'
  end 

  def download_document
    send_data @worker_profile.document.download, filename: 'document.pdf'
  end 

  private
  def worker_profile_params
    params.require(:worker_profile).permit(:first_name, :last_name, :bio, :photo, :resume, :document)
  end

  def set_worker_profile
    @worker_profile = current_worker.worker_profile
  end

end

