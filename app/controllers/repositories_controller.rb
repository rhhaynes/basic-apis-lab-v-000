class RepositoriesController < ApplicationController

  def search
  end

  def github_search
    begin
      Faraday.get() do |req|
        req.params[] = ?
        req.params[] = ?
        req.params[] = ?
        req.params[] = ?
      end
    rescue Faraday::Timeout
    end
    render 'search'
  end
end
