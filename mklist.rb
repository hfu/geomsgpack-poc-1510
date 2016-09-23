require 'msgpack'
require 'find'

result = []
Find.find('experimental_fgd') {|path|
  next unless path.end_with?('msg')
  zxy = path.sub('.msg', '').split('/')[-3..-1].map{|v| v.to_i}
  result << zxy
  p zxy
}
File.open('list.msg', 'wb') {|w| w.print result}
