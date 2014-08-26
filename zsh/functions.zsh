function mkcd() { mkdir -p "${1}" && cd "${1}"; }

function i() { (head -n 5; tail -n 5) < "$1" | column -t; }


# TODO Allow suffixing of files by taking into account the file extension
function suffix() { 
    if [ $# -ne 2 ]; then
        echo "suffix <dir> <string_to_suffix>"
    else
        mv ${1} ${1}_${2}
    fi
}

function lines() { wc -l $@; }

function drop() { tail -n +2 $@; }

function rename_window() { echo -en "\e]0;$1\a" }

function gifify() {
  if [[ -n "$1" ]]; then
    if [[ $2 == '--good' ]]; then
      ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
      time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
      rm out-static*.png
    else
      ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
    fi
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}

function pls() { echo -en $PATH | tr ":" "\n"; }

