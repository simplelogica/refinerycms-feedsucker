class Refinery::Feedsucker::Post < ActiveRecord::Base

  attr_accessible :feed_id, :blog_title, :blog_url, :title, :content, :date, :url

  belongs_to :feed
  validates_presence_of :feed

  def method_missing(method, *args, &block)
   if (method.to_s =~ /^(.+)_without_tags$/)
     if str = self.send($1)
       str.gsub!(/&lt;.*?&gt;/,'')
       begin
         strip_tags(str)
       rescue
         ActionController::Base.helpers.strip_tags(str)
       end
     end
   else
     super
   end
 end


end