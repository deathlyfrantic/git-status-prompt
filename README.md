## Git Super Status II Turbo: Hyper Fighting

A blatant rip-off of [Git Super Status](https://github.com/olivierverdier/zsh-git-prompt), but written in C, using
[libgit2](https://libgit2.github.com/).

This version aims to replicate the output of the former (nearly\*) exactly, but be a _bit_ faster at doing it. My
**ultra-scientific** testing shows this version is a little over 3x as fast. When you want to display your git repo
status in your prompt, every microsecond matters.

\* this version shows the number of untracked files, whereas the original simply shows _whether_ there are untracked
files.

### What does it look like

With the default configuration, generally something like this:

![example output](https://cloud.githubusercontent.com/assets/7629614/23442178/0010a820-fdf5-11e6-9144-a52c8d514478.png)

### Configuration

Have a look at the configuration section in `gitprompt.c` and define the macros to be whatever you like. They're
currently set up to defaults I find pleasant. Note the color definitions are zsh-specific but I'm sure they can be
modified to work in Bash or Fish or whatever.

### How to use

0. Install libgit2 if you don't already have it.
1. Clone this repo. 
2. `make`
3. Ensure you have the zsh `prompt_subst` option on (`setopt prompt_subst` in your `zshrc`).
4. Add `RPROMPT='${$(/path/to/git_status_prompt)}'` to your `zshrc`. I like putting it in my `RPROMPT` but you could add
   it to `PROMPT` instead.

### License

MIT
