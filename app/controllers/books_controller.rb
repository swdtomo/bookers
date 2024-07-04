class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new (list_params)
    book.save
    #topに戻る設定したけど、editとbackが表示されるようにしたい
    redirect_to root_url
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
   params.require(:book).permit(:title, :body)
  end
end