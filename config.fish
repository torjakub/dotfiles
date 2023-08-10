if status is-interactive
  set BROWSER "/usr/bin/firefox"
end

function fish_greeting
  echo -n ""
end  

function fish_prompt
 set_color brgreen
 echo -n (whoami)
 echo -n " "
 set_color brcyan
 echo -n (prompt_pwd)
 set_color brgreen
 echo -n "> " 
 set_color normal
end

function fish_right_prompt
  set_color brblue
  echo -n (fish_git_prompt)
  set_color 696861
  echo -n ( date +%H:%M)
  set_color normal
end
