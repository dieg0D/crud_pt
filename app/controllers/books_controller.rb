class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
    @oi = "opafsaasf"
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
    
  end

  def show
  end

  def update
    
    if @book.update(book_params)
      redirect_to @book 
    else
      render :edit 
    end
   
  end

  def destroy
    @book.destroy
      redirect_to books_url 
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:name, :author, :description)
    end
end
