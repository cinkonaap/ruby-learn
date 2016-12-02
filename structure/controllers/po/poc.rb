require 'controllers/cb'

module Controllers
  module Po
    class POC
      def initialize
        # this is child package of packege where CB is. You can reference it without any "module"-namespace
        cb = CB.new
      end
    end
  end
end
