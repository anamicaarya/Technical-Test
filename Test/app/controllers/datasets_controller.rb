class DatasetsController < ApplicationController
#  require 'csv'

  include DatasetsHelper
  def index
    @datasets = Dataset.all
    respond_to do |format|
      format.html
      format.json do
        render json: @datasets, status: :ok
      end
     end
  end

  def show
    @dataset = Dataset.find(params[:id])
    render json: @dataset, status: :ok
  end

  def preview
      @dataset = Dataset.find(params[:id])
      respond_to do |format|
        format.html
        format.csv do
          data = FileContents(@dataset.file_path)
          render csv: data, status: :ok
        end
        format.json do
          data = CSV_To_JSON(@dataset.file_path)
          render json: data, status: :ok
        end
      end


  end


  def new
  @dataset = Dataset.new
  end

  def create
    @dataset = Dataset.new(dataset_params)
    if @dataset.save
      redirect_to datasets_path
    else
      render :new
    end
  end

def edit
  @dataset = Dataset.find(params[:id])
end

def update
  @dataset = Dataset.find(params[:id])
  if @dataset.update(dataset_params)
    redirect_to datasets_path
  else
    render :edit
  end
end

def destroy
  @dataset = Dataset.find(params[:id])
  @dataset.destroy
  redirect_to datasets_path
end

#endpoint `PUT /data_sets/:id/generate
def generate

end

private
def dataset_params
      params.require(:dataset).permit(:title ,:file_path)
end

def is_int(str)
  # Check if a string should be an integer
  return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
end

end
