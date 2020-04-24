# nasty-gem-finder
A quick ruby script to check for Gems on recent malicious gem list

### More information here: 
https://blog.reversinglabs.com/blog/mining-for-malicious-ruby-gems

## To run:
 * clone repo:
 
 `git clone https://github.com/Michael-Wayne-Wells/nasty-gem-finder.git`
 
 * CD into and install
 ```
 cd nasty-gem-finder
 bundle install
 chmod +x .customcommand.sh
 source .customcommand.sh
 ```
 * Add contents of the Gemfile, Gemfile.lock, or results `gem list` ran in your projects directory into the fileToTest file by copy and pasting 
 
 * Add more names of malicous gems by running `malgem` command followed by as many arguments as needed seperated by spaces:
 
 `malgem EXAMPLEGEM1 EXAMPLEGEM2 EXAMPLEGEM3`
 
 * Run it!
 
 `ruby app.rb`
 
 
 
 
