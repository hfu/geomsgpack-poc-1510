require 'json'
require 'msgpack'
require 'find'

def rat(a, b)
  return "#{a}/#{b}=#{(100.0 * a / b).to_i}%"
end
json_sum = 0
msg_sum = 0
Find.find('experimental_fgd') {|path|
  next unless path.end_with?('geojson')
  object = JSON::parse(File.open(path).read)
  json_size = JSON::dump(object).size
  json_sum += json_size
  msg = object.to_msgpack
  msg_size = msg.size
  msg_sum += msg_size
  print "#{path} #{rat(msg_size, json_size)} #{rat(msg_sum, json_sum)}\n"
  File.open(path.sub('geojson', 'msg'), 'w'){|w| w.print msg}
}
