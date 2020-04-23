require('fileutils')
require('bundler')

File.write('bad-gems.txt', "")
puts File.read('art.txt')
fileToScan = File.read('fileToScan')
maliciousGems = File.readlines('ruby_malicious_gems.txt')
maliciousArray=[]

maliciousGems.each do |line|
  line = line.split(' ')
  maliciousArray.push(line[0])
end

maliciousArray.each do |malGem|
   if fileToScan =~ /\b#{malGem}\b/i
     `grep #{malGem} ./fileToScan >> bad-gems.txt`   
   end
end

badGems = File.readlines('bad-gems.txt')

if badGems.length > 0
  puts "We found " + badGems.length.to_s + " potentially vulnerable gems! Check version numbers to see if your version has been patched."
  puts badGems
  puts "find a log in bad-gems.txt in this directory" 
else
  puts "all clear!"
end
