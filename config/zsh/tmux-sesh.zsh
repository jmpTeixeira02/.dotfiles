
function _sesh_sessions_(){
    sesh list -t -c -H -d
}

function _sesh_all_(){
    sesh list -z
}

function _sesh_connect_(){
    sesh connect "$1"
}

function _sesh_kill_(){
    tmux kill-session -t "$1"
}

function _session_runner_(){
    local title="$1"
    local target="$2"
    local action="$3"

    exec </dev/tty
    exec >&1

    local session=$($target | fzf --height 40% --reverse --border-label "$title" --border --prompt ">  ")

    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return

    "$action" "$session"
} 


# Select TMUX Sesssion with Alt+A
function sesh-connect-session() {
    _session_runner_ "Select a TMUX Session" _sesh_sessions_ _sesh_connect_
}
zle     -N             sesh-connect-session

function sesh-new-session() {
    _session_runner_ "Start a TMUX Session" _sesh_all_ _sesh_connect_
}
zle     -N             sesh-new-session

function sesh-kill-session() {
    _session_runner_ "Kill a TMUX Session" _sesh_sessions_ _sesh_kill_
}
zle     -N             sesh-kill-session
