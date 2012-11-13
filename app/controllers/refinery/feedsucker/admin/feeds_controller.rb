module Refinery
  module Feedsucker
    module Admin

      class FeedsController < ::Refinery::AdminController

        crudify :'refinery/feedsucker/feed'

      end
    end
  end
end