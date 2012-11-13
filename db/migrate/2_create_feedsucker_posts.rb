class CreateFeedsuckerPosts < ActiveRecord::Migration

  def self.up
    create_table :feedsucker_posts do |t|
      t.integer :feedsucker_feed_id
      t.string :blog_title
      t.string :blog_url
      t.string :title
      t.text :content
      t.datetime :date
      t.string :url

      t.timestamps
    end

    add_index :feedsucker_posts, :feedsucker_feed_id

  end

  def self.down
    drop_table :feedsucker_posts
  end

end
