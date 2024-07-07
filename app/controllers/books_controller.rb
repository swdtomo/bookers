class BooksController < ApplicationController
  def new
   @book = Book.new
  end

  def create
    @book = Book.new(list_params)
   if @book.save
      flash[:success] = "Book was successfully created."
    redirect_to book_url(@book)
   else
     @books = Book.all
    render :index
   end
  end


  def index
    @books = Book.all
    @book = Book.new
  end
#def newの記述をこっちに持ってきた

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(list_params)
    flash[:success] = "Book was successfully updated."
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:success] = "Book was successfully destroyed."
    redirect_to '/books'
  end

  private
  #ストロングパラメータ「:book」であってるか？（:list）かも
  def list_params
   params[:book].present? ? params.require(:book).permit(:title, :body) : {}
  end
end