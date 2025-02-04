# desc "Explaining what the task does"
# task :submane do
#   # Task goes here
# end

desc "Open irb with library in load path"
task :console do
  exec "irb -r mygem -I ./lib"
end
