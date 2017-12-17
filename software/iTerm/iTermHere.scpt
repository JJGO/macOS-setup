(*

    Open Terminal Here
     
    A toolbar script for Mac OS X 10.3/10.4
     
    Written by Brian Schlining
 *)


property debug : false

-- when the toolbar script icon is clicked
--
on run
 tell application "Finder"
  try
   set this_folder to (the target of the front window) as alias
  on error
   set this_folder to startup disk
  end try
  
  my process_item(this_folder)
  
 end tell
end run


-- This handler processes folders dropped onto the toolbar script icon
--
on open these_items
 repeat with i from 1 to the count of these_items
  set this_item to item i of these_items
  my process_item(this_item)
 end repeat
end open


-- this subroutine processes does the actual work
-- this version can handle this weirdo case: a folder named "te'st"ö te%s`t"

on process_item(this_item)
 
 set thePath to quoted form of POSIX path of this_item
 set theCmd to "cd " & thePath & ";clear;"
 
 tell application "iTerm"
  activate
  -- just open a terminal and cd to thePath
  --set newWindow to (create window with default profile)
  
  set aWindow to current window
  
  if aWindow is equal to missing value then
   set aWindow to (create window with default profile)
  else
   tell aWindow
    set t to (create tab with default profile)
   end tell
  end if
  
  
  tell current session of aWindow
   write text "cd " & thePath & ";"
  end tell
  
 end tell
 
 
end process_item