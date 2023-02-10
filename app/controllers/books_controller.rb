class BooksController < ApplicationController
  def new
    #viewへ渡す為のインスタンス変数に空のModelオブジェクトを生成する。
    @book=Book.new
  end

  def create
  #データを受け取り新規登録するためのインスタンス作成
  book=Book.new(books_params)
  #データをデータベースに保存するためのsaveメソッド実行
  book.save
  #Top画面へリダイレクト
  redirect_to'/'
  end

  def index
  @books=Book.all
  end

  def show
 @book = Book.find(params[:id])
  end

  def edit
  end


private
#ストロングパラメータ
def book_params
  params.require(:book).permit(:title,:body)
end
end