class BooksController < ApplicationController

  def new
    #viewへ渡す為のインスタンス変数に空のModelオブジェクトを生成する。
    @book=Book.new
  end

  def create
  #データを受け取り新規登録するためのインスタンス作成
  @book=Book.new(book_params)
  #データをデータベースに保存するためのsaveメソッド実行
  if @book.save
  #Top画面へリダイレクト
  redirect_to book_path(@book.id)
  flash[:notice] = "Book was succesfully created."
  else
  @books=Book.all
  render:index
  end
  end

  def index
  @books = Book.all
  @book =Book.new
  end



  def show
  @book= Book.find(params[:id])
  end

  def edit
  @book = Book.find(params[:id])
  end

  def update
  @book = Book.find(params[:id])
  if @book.update(book_params)
  redirect_to book_path(@book.id)
  else
  @books=Book.all
  render :edit
  end
  end

 def destroy
  book=Book.find(params[:id])
  book.destroy
  redirect_to books_path
  flash[:notice] = "Book was succesfully destroyed."
 end


private
#ストロングパラメータ
def book_params
  params.require(:book).permit(:title,:body)
end
end