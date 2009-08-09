author      'Daniel Mendler'
description 'System information'

class Wiki::App
  get '/sysinfo' do
    GC.start
    @plugins = Plugin.plugins.values.sort {|a,b| a.name <=> b.name }
    @memory = `ps -o rss= -p #{Process.pid}`.to_i / 1024
    haml :sysinfo
  end
end
