class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)

    if @url.save
      redirect_to url_path(@url)
    else
      flash[:error] = I18n.t('urls.create.failure')
      render :new
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end

end
