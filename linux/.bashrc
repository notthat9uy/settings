# Clipboard ease of use
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

hexdump_c_style()
{
    hexdump -C "$1" | awk '{$1=$18="";print $0}' | sed 's/|.*|//g' | tr -d '\n' | sed 's/  / /g' | sed 's/ *$//' | sed 's/ /\\x/g'
}

