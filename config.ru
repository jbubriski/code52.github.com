require "rack"
require "rack/jekyll"
require "rack/rewrite"

use Rack::Deflater
use Rack::Rewrite do
  #rewrite %r{/(.*)}, '/$1.html', :if => lambda { File.exists?('/$1.html')}
end
use Rack::Static, :urls => ["/css", "/img", "/js" ]
run Rack::Jekyll.new