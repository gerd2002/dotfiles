function fish_prompt
  set prev_stat $status
  if test $SSH_TTY
    printf (set_color red)$USER(set_color yellow)'@'(prompt_hostname)' '
  end
  echo -n (set_color cyan)(prompt_pwd) 
  if test "$USER" = 'root'
    echo (set_color red)" # "
  else
    echo -n (set_color red)' $ '
  end
end
