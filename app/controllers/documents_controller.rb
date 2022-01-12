class DocumentsController < ApplicationController
  before_action :find_document, only: [:edit, :update, :show, :destroy]

  def index
    @docs = Document.all.order("created_at DESC")
  end

  def show
  end

  def new
    @document = Document.new
  end
  
  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

    def find_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:tittle, :content)
    end
  
end
