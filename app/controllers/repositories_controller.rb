class RepositoriesController < ApplicationController

  def search
  end

  def github_search
    begin
      @resp = Faraday.get "https://api.github.com/search/repositories?q=#{params[]}" do |req|
        req.params[]
      end
      @resp.success? ? () : (@error)
    rescue Faraday::Timeout
      @error = ""
    end
    render 'search'
  end
end
