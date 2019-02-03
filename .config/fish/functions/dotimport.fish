function dotimport
    for f in $argv
        if test -e "$f"
            set -l relpath (realpath --relative-to=$HOME $f)
            set -l dir (dirname "$relpath")
            set -l odir (dirname "$f")
            if test ! -e "~/dot/files/$dir"
                mkdir -p "$HOME/dot/files/$dir"
            end
            mv "$f" "$HOME/dot/files/$relpath"
            ln -s "$HOME/dot/files/$relpath" "$odir/"
        else
            echo "File $f not found"
        end
    end
end
