FactoryGirl.define do
  factory :feed, :class => Refinery::Feedsucker::Feed do
    sequence(:title) { |n| "Feed #{n}" }
    sequence(:nicetitle) { |n| "feed-#{n}" }
    url "http://feeds.rssboard.org/rssboard"
  end
end

