require 'refinerycms-core'

module Refinery
  autoload :BlogGenerator, 'generators/refinerycms_feedsucker_feeds_generator'

  module Feedsucker
    require 'refinery/feedsucker/engine'

    class << self

      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

    end
  end
end