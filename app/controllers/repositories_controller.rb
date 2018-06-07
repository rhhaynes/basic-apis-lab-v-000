class RepositoriesController < ApplicationController

  def search
  end

  def github_search
    begin
      @resp = Faraday.get() do |req|
        req.params[] = ?
        req.params[] = ?
        req.params[] = ?
        req.params[] = ?
      end
      @resp.success? ? () : (@error)
    rescue Faraday::Timeout
      @error = ""
    end
    render 'search'
  end
end
