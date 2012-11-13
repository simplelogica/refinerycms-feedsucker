module Refinery::Feedsucker

  class FeedsController < ApplicationController

    before_filter :find_all_feedsucker_feeds
    before_filter :find_page

    def index
      # you can use meta fields from your model instead (e.g. browser_title)
      # by swapping @page for @feedsucker_feed in the line below:
      present(@page)
    end

    def show
      @feed = Feed.find(params[:id])

      # you can use meta fields from your model instead (e.g. browser_title)
      # by swapping @page for @feedsucker_feed in the line below:
      present(@page)
    end

  protected

    def find_all_feedsucker_feeds
      @feeds = Feed.find(:all, :order => "position ASC")
    end

    def find_page
      @page = Refinery::Page.find_by_link_url("/feedsucker_feeds")
    end

  end
end