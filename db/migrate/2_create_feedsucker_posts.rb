class CreateFeedsuckerPosts < ActiveRecord::Migration

  def self.up
    create_table :refinery_feedsucker_posts do |t|
      t.integer :feed_id
      t.string :blog_title
      t.string :blog_url
      t.string :title
      t.text :content
      t.datetime :date
      t.string :url

      t.timestamps
    end

    add_index :refinery_feedsucker_posts, :feed_id

  end

  def self.down
    drop_table :refinery_feedsucker_posts
  end

end
