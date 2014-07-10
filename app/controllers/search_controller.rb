class SearchController < ApplicationController
  def index
    @request = params['search']  
    @search = Question.search do
      fulltext @request do
        phrase_fields title: 2.0
        query_phrase_slop 100
      end
    end
  end
end