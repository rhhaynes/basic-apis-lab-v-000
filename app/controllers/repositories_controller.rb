class RepositoriesController < ApplicationController

  def search
  end

  def github_search
    begin
      @resp = Faraday.get "https://api.github.com/search/repositories?q=#{params[:query]}"
      binding.pry
    rescue Faraday::Timeout
      @error = "Timeout error. Please try again."
    end
    render 'search'
  end
end
