# Ruby programs must explicitly load the classes on which they depend
# each file will be loaded only once

# global require, will search all load paths
require 'arrays'

# relative require from current file
require_relative '../syntax/bool'

# TODO: write more about LOAD_PATH
