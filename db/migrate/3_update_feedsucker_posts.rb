class UpdateFeedsuckerPosts < ActiveRecord::Migration

  def change
    add_column :refinery_feedsucker_posts, :author_name, :string
    add_column :refinery_feedsucker_posts, :author_url, :string
    add_column :refinery_feedsucker_posts, :author_image, :string

    add_column :refinery_feedsucker_feeds, :xpath_author_name, :string
    add_column :refinery_feedsucker_feeds, :xpath_author_url, :string
    add_column :refinery_feedsucker_feeds, :xpath_author_image, :string
  end

end
