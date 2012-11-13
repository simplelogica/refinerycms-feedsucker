require 'spec_helper'

module Refinery
  module Feedsucker

    describe Feed do

      let(:feed) { FactoryGirl.create :feed }

      subject { feed }

      it("must be valid") { should be_valid }

    end

  end
end