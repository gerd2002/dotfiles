function repo-updoot
  repo sync -c -n -j 4 $argv && repo sync -c -l -j 16 $argv
end
