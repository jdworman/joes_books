class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_dropdown, only: [:new, :edit]

  def report
      @books = Book.hard_cover
  end

  def index
    @books = Book.paginate(page: params[:page])
  end

  def show; end

  def new
    @book = Book.new
    # @book.authors_book.build
  end

  def edit; end

  def create
    @book = Book.new(book_params)


    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.'}
        format.json { render :show, status: :created, location: @book }
      else
        set_dropdown
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        set_dropdown
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def set_dropdown
    @authors = Author.all
    @formats = Format.all
  end

  def book_params
    params.require(:book).permit(:title, :release_date, :base_price, :format_id, :image, book_authors_attributes: [:id, :book_id, :author_id])
  end
end
