class UrlRedirectController < ApplicationController
  def index
    redirect_to URI.parse(ENV.fetch(params[:entity])).to_s, allow_other_host: true
  end
end
