require('fileutils')
require('bundler')

puts "Find those"
puts File.read('art.txt')
fileToScan = File.read('fileToScan')
maliciousGems = File.readlines('ruby_malicious_gems.txt')
maliciousArray=[]
badGems = []
maliciousGems.each do |line|
  line = line.split(' ')
  maliciousArray.push(line[0])
end

maliciousArray.each do |malGem|
  badGems.push(malGem) if fileToScan =~ /#{malGem}/i 
end
if badGems.length > 0
  File.write("bad-gems.txt", badGems)
  puts "We found " + badGems.length.to_s + " vulnerable gems!"
  puts badGems
  puts "find a log in bad-gems.txt in this directory" 
else
  puts "all clear!"
end
