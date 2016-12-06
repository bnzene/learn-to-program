$indent = 0
def log desc, &block
  prefix = ' '*$indent
  puts prefix + 'block started: ' + desc
  $indent = $indent + 1
  output = block.call
  puts 'block ' + desc + ' finished, returning ' + output.to_s
end

log 'log1' do
  log 'log2' do
    log 'log3' do
        'this is the block inside log3'
    end
    'this is the block inside log2 ' + (19 + 4).to_s
  end
  'this is the block inside log1' + 'pig' * 5
end

'0' == "0"
