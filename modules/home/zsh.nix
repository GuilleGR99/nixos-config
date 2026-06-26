{ ... }:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      PROMPT='%F{white}[%f%B%F{green}%n%f%b@%B%F{magenta}%m%f%b%F{white}]%f %F{blue}%~%f > '

      if [ -z "$TMUX" ]; then
        exec tmux new-session -A -s main
      fi
    '';
  };
}
