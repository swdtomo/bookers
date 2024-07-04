class ListsController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = List.new (list_params)
    list.save
    #「'/top'」ではなく、「'/'」だけでいいかも？
    redirect_to '/'
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  #ストロングパラメータ「:book」であってるか？（:list）かも
  def list_params
   params.require(:list).permit(:title, :body)
  end
end
