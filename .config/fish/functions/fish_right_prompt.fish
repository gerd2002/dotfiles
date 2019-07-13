function fish_right_prompt
  set prev_stat $status
  switch $prev_stat
    case 0
      set_color green
    case "*"
      set_color yellow
  end
  echo -n "$prev_stat "
end

