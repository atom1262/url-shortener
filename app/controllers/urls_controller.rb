class UrlsController < ApplicationController

  def show
    @url = Url.find(params[:id])
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)

    respond_to do |format|
      if @url.save
        format.js
      else
        flash[:error] = I18n.t('urls.create.failure')
        render :new
      end
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end

end
