class RepositoriesController < ApplicationController

  def search
  end

  def github_search
    begin
    rescue
    end
    render 'search'
  end
end
