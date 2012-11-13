require 'spec_helper'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr/sucked_feeds'
  c.hook_into :webmock
end

module Refinery
  module Feedsucker

    describe Feed do

      context "when creating one" do

        let(:feed) { FactoryGirl.create :feed }

        subject { feed }

        it("must be valid") { should be_valid }

      end

      context "when sucking the feed" do

        before :each do
          VCR.use_cassette('sucking-feed', :record => :new_episodes) do
            feed.suck!
          end
        end

        let(:feed) { FactoryGirl.create :feed }

        subject { feed }

        its(:posts) { should_not be_empty }

      end

    end

  end
end