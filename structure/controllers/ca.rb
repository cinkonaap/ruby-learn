require 'services/b'
require 'controllers/po/c'

module Controllers
  class CA
    def initialize
      s = Services::S.new

      # POC is in child package of this package, it can be refferenced with only "deeper" packages (Po::), or with full (Controllers::Po::)
      poc1 = Po::POC.new
      poc2 = Controllers::Po::POC.new
    end
  end
end
