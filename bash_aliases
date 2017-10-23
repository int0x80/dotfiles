# -----------------------------------------------------------
# helpers
# -----------------------------------------------------------
grepcontent() { egrep -v '^(#|;)' "${1}" | grep -v "^$"; }
alias screenr="screen -raAd"
shreddir() { find "${1}" -type f -exec shred -n 1 -vzu "{}" \; && find "${1}" -depth -empty -type d -exec rmdir -v "{}" \;; }
alias shred="shred -uzn 1"

# -----------------------------------------------------------
# filesystem live dangerously
# -----------------------------------------------------------
alias cp="cp -av"
alias mv="mv -v"
alias rm="rm -vf"

# -----------------------------------------------------------
# wget aliases
# -----------------------------------------------------------
alias wgetasie7='wget -U "Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US)"'
alias wgetasie8='wget -U "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; .NET CLR 3.5.30729)"'

# -----------------------------------------------------------
# re aliases
# -----------------------------------------------------------
alias gdb='gdb -q'
alias objdump='objdump --show-raw-insn -M intel'

# -----------------------------------------------------------
# herp derp
# -----------------------------------------------------------
alias rand512="dd if=/dev/urandom bs=64k count=1 2>/dev/null | sha512sum - | cut -d ' ' -f 1"
alias rand256="dd if=/dev/urandom bs=64k count=1 2>/dev/null | sha256sum - | cut -d ' ' -f 1"
alias rand64="dd if=/dev/urandom bs=64 count=1 2>/dev/null | base64 -w 96"
alias randmd5="dd if=/dev/urandom bs=64 count=1 2>/dev/null | md5sum - | cut -d ' ' -f 1"
alias rand32="dd if=/dev/urandom bs=64k count=1 2>/dev/null | md5sum - | cut -c 1-8"
checksums() { echo -n "md5:    " ; md5sum "${@}" ; echo -n "sha1:   " ; sha1sum "${@}" ; echo -n "sha256: " ; sha256sum "${@}" ; echo -n "sha512: " ; sha512sum "${@}" ; }


# -----------------------------------------------------------
# the following aliases were scraped from g0tmi1k
# https://github.com/g0tmi1k/os-scripts 
# -----------------------------------------------------------

## grc diff alias
alias diff='/usr/bin/grc /usr/bin/diff'

## grc dig alias
alias dig='/usr/bin/grc /usr/bin/dig'

## grc gcc alias
alias gcc='/usr/bin/grc /usr/bin/gcc'

## grc ifconfig alias
alias ifconfig='/usr/bin/grc /sbin/ifconfig'

## grc mount alias
alias mount='/usr/bin/grc /bin/mount'

## grc netstat alias
alias netstat='/usr/bin/grc /bin/netstat'

## grc ping alias
alias ping='/usr/bin/grc /bin/ping'

## grc ps alias
alias ps='/usr/bin/grc /bin/ps'

## grc tail alias
alias tail='/usr/bin/grc /usr/bin/tail'

## grc traceroute alias
alias traceroute='/usr/bin/grc /usr/sbin/traceroute'

## grc wdiff alias
alias wdiff='/usr/bin/grc '

## grep aliases
alias grep="grep --color=auto"
alias ngrep="grep -n"

alias egrep="egrep --color=auto"

alias fgrep="fgrep --color=auto"

## tmux
alias tmux="tmux attach || tmux new"

## axel
alias axel="axel -a"

## screen
alias screen="screen -xRR"

## Checksums
alias sha1="openssl sha1"
alias md5="openssl md5"

## Force create folders
alias mkdir="/bin/mkdir -pv"

## List open ports
alias ports="netstat -tulanp"

## Get header
alias header="curl -I"

## Get external IP address
alias ipx="curl -s http://ipinfo.io/ip"

## DNS - External IP #1
alias dns1="dig +short @resolver1.opendns.com myip.opendns.com"

## DNS - External IP #2
alias dns2="dig +short @208.67.222.222 myip.opendns.com"

### DNS - Check ("#.abc" is Okay)
alias dns3="dig +short @208.67.220.220 which.opendns.com txt"

## Directory navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## nmap
alias nmap="nmap --reason --open --stats-every 3m --max-retries 1 --max-scan-delay 20 --defeat-rst-ratelimit"

## rdesktop
alias rdesktop="rdesktop -z -P -g 90% -r disk:local=\"/tmp/\""

