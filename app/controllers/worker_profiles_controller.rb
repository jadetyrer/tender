class WorkerProfilesController < ApplicationController
  before_action :set_worker_profile, only: [:show, :edit, :update, :download_resume, :download_document]
  
  def new
  end 
  
  def create
    @worker_profile = current_worker.create_worker_profile(worker_profile_params)
    redirect_to worker_profile_path(current_worker)
  end

  def edit
    
  end

  def update
    if(@worker_profile.update(worker_profile_params))
    redirect_to @worker_profile
    else 
      render :edit
    end 

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
    @worker = Worker.find(params[:id]) if params[:id] 
    @worker ||= current_worker
    @worker_profile = @worker.worker_profile || @worker.build_worker_profile
  end

end

