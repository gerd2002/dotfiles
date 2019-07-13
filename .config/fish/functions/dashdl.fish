function dashdl -a url -a f1 -a f2
  if test -z "$f1" -o -z "$f2"
    youtube-dl "$url" -F
    return
  end
  youtube-dl --external-downloader axel -f f$f1-a1-x3 "$url" & youtube-dl --external-downloader axel -f f$f2-v1-x3 "$url"
  echo "Download complete."
end

