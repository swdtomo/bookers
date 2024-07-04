class BooksController < ApplicationController
  def new
   @book = Book.new
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to root_url
  end
   #topに戻る設定したけど、editとbackが表示されるようにしたい(保存中redirect_to root_url)
   

  def index
    @books = Book.all
    @book = Book.new
  end
#def newの記述をこっちに持ってきた

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  #ストロングパラメータ「:book」であってるか？（:list）かも
  def list_params
   params.require(:book).permit(:title, :body)
  end
end