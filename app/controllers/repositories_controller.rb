class RepositoriesController < ApplicationController

  def search
  end

  def github_search
    begin
      @resp = Faraday.get "https://api.github.com/search/repositories?q=#{params[:query]}"
      binding.pry
      body = JSON.parse(@resp.body)
      # @resp.success? ? (@venues = body["response"]["venues"]) : (@error = body["meta"]["errorDetail"])
    rescue Faraday::ConnectionFailed
      @error = "Timeout error. Please try again."
    end
    render 'search'
  end
end
