sims_exec_cli() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_php_cli sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
sims_exec_queue() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_queue sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
sims_exec_schedule() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_schedule sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
sims_exec_fpm() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_php_fpm sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
sims_psql() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=postgres postgres /bin/bash -c 'export TERM=xterm-256color; psql -U phylosian phylos'
  cd $OLDPWD
}
elixir_api() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 api sh -l -c "cd /var/api && ${*:-sh}"
  cd $OLDPWD
}
list_all_branches() {
    for k in `git branch -a | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r 
}

alias dc='docker-compose'
alias dce='docker-compose exec'
alias sec=sims_exec_cli
alias seq=sims_exec_queue
alias ses=sims_exec_schedule
alias sef=sims_exec_fpm
alias sp=sims_psql
alias api=elixir_api
