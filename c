#!/usr/bin/env ruby

trap("SIGINT") { exit }

dev_extension = 'dev'
filetypes = ['css','html','htm','php','rb','erb','less','js','md','tex','bib']
watch_folder = "."
keyword = ARGV.shift
if not keyword
  keyword = "research-statement"
end
args = ARGV.shift
keyword = File.basename(keyword,File.extname(keyword))
command = "multimarkdown --process-html #{keyword}.md -o #{keyword}.html"
val=`#{command}`
%x{osascript<<ENDGAME
  tell application "Safari"
    activate
    set windowList to every window
    repeat with aWindow in windowList
      try
        set tabList to tabs of aWindow
        repeat with atab in tabList
          if (URL of atab contains "#{keyword}") then
            set docUrl to URL of atab
            set URL of document 1 to docUrl
          end if
        end repeat
      end try
    end repeat
  end tell
ENDGAME
}
