class UploadController < ApplicationController
  def new
  end

  def create
    file_data = params[:upload][:datafile]
    file_name = file_data.original_filename
    file_folder = "public/data"

    # create the file path
    file_path = File.join(file_folder, file_name)

    # write the file
    File.open(file_path, "wb") { |f| f.write(file_data.read) }
    redirect_to "/upload/new"
  end
end
