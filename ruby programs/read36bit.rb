name = ARGV[0]

File.open(name, "rb") { |file|
  until file.eof?
    contents =  file.read.unpack('B*').first
    i = 0
    512.times do
      puts contents[i .. i+35]
      i += 36
    end
  end
}
