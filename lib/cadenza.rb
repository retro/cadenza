CADENZA_ROOT = File.expand_path("cadenza", File.dirname(__FILE__)) 

require File.join CADENZA_ROOT, "token"
require File.join CADENZA_ROOT, "lexer"
require File.join CADENZA_ROOT, "parser"
require File.join CADENZA_ROOT, "context"
require File.join CADENZA_ROOT, "text_renderer"
require File.join CADENZA_ROOT, "filesystem_loader"
require File.join CADENZA_ROOT, "version"

# require all nodes
Dir.glob(File.join(File.dirname(__FILE__), 'cadenza', 'nodes', '*.rb')).each {|f| require f }

# Rails 3 integration
if defined?(Rails) and Rails.version >= "3.0.0"
  require File.join CADENZA_ROOT, "rails", "railtie"
  require File.join CADENZA_ROOT, "rails", "template_handler"
end