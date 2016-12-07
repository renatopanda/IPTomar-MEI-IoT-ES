class DocumentsController < ApplicationController


def index
    @documents = Document.all
end

def show
    @document = Document.find(params[:id])
end

def edit
    @document = Document.find(params[:id])
end

def new
    @document = Document.new
end

def update
    @document = Document.find(params[:id])
 
  if @document.update(document_params)
    redirect_to documents_path
  else
    render 'edit'
  end
end

def create
    @document = Document.new(document_params)
 if @document.save
  redirect_to documents_path
  else
      render 'new'
end
end

def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path
end

private
def document_params
    params.require(:document).permit(:description, :date, :local)
end

end