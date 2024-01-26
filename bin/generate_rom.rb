path = ARGV[0]

i = 0
File.readlines(path).each do |line|
  puts "rom#{i} : entity work.rom"
  puts "generic map ("
  puts "bits => 36,"
  puts "value => \"#{line.strip}\")"
  puts "port map ("
  puts "enable_o => mem_enable_lines(#{i}),"
  35.times do |j|
    puts "output(#{j}) => mem_array(#{j})(#{i}),"
  end
  puts "output(#{35}) => mem_array(#{35})(#{i})"
  puts ");"
  i = i+1
end
