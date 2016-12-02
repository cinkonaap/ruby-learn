$LOAD_PATH.unshift(File.dirname(__FILE__))

# Add to loadpath your "source" folder, so you can absolute require files from it's directory (i think it's better than require_relative, especially for exported packages!)
puts $LOAD_PATH

require 'controllers/ca'
require 'services/s'

class App
  def initialize
    a = Controllers::CA.new
    b = Services::S.new
  end
end

App.new
