class DocumentaryFilmsController < ApplicationController
def index
    @documentary = DocumentaryFilm.all
  end

  def create
    @documentary = DocumentaryFilm.new(documentaryFilms_params)
    if @documentary.save
      redirect_to documentary_films_index_path
      else
      render :new
      end
  end

  def new
    @documentary = DocumentaryFilm.new
  end

  def documentaryFilms_params
    params.require(:documentary_film).permit(:name,:synopsis,:director)
  end
end