class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @artists = Artist.all
    @albums = Album.all
  end
end
