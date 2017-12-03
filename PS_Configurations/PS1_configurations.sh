export PS1="\[\e[32m\]\u@\[\e[31m\]\t:\[\e[34m\]\w $ \[\e[00m\]" #Output would be user in green, time in red and current path in blue Example: pi@18:23:26:~/PATH TO CURRENT DIRECTORY $ command entered
export PS1="\[\e[1;32m\]\u@\[\e[31m\]\t:\[\e[34m\]\w $ \[\e[00m\]" #Same as firstline but set to forground so colours stand out more and easier to read
export PS1="\[\e[1;32m\]\u@\[\e[31m\]\t:\[\e[34m\]\w\[\e[35m\] \$(__git_ps1 '(%s)') \[\e[34m\]\$ \[\e[00m\]" #To include git branch when within a git repository
