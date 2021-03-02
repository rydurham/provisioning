alias dc='docker-compose'
alias dce='docker-compose exec'
alias dcr='docker-compose run --rm'

sims_exec_cli() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_php_cli sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
alias sec=sims_exec_cli

sims_exec_queue() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_queue sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
alias seq=sims_exec_queue

sims_exec_schedule() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_schedule sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
alias ses=sims_exec_schedule

sims_exec_fpm() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 sims_php_fpm sh -l -c "cd /var/www/sims && ${*:-sh}"
  cd $OLDPWD
}
alias sef=sims_exec_fpm

sims_psql() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=postgres postgres /bin/bash -c 'export TERM=xterm-256color; psql -U phylosian phylos'
  cd $OLDPWD
}
alias sp=sims_psql

elixir_api() {
  cd /home/ryan/Workbench/phylos/ops/phylosbio.test
  docker-compose exec --user=1000 api sh -l -c "cd /var/api && ${*:-sh}"
  cd $OLDPWD
}
alias api=elixir_api

carbon() {
    docker run -it --rm -v $(pwd):/src node:carbon /bin/sh -c "cd /src; ${*:-sh}"
}

dubnium() {
    docker run -it --rm -v $(pwd):/src node:dubnium /bin/sh -c "cd /src; ${*:-sh}"
}

fermium() {
    docker run -it --rm -v $(pwd):/src node:fermium
}

php7.3() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/ubuntu/.config/composer \
        -v $(pwd):/var/www \
        -v ~/.config/composer:/home/ubuntu/.config/composer \
        -w /var/www \
        stagerightlabs/php-test-runner:7.3 /bin/bash -c "${*:-bash}"
}

php7.4() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/ubuntu/.config/composer \
        -v $(pwd):/var/www \
        -v ~/.config/composer:/home/ubuntu/.config/composer \
        -w /var/www \
        stagerightlabs/php-test-runner:7.4 /bin/bash -c "${*:-bash}"
}

php8.0() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/ubuntu/.config/composer \
        -v $(pwd):/var/www \
        -v ~/.config/composer:/home/ubuntu/.config/composer \
        -w /var/www \
        stagerightlabs/php-test-runner:8.0 /bin/bash -c "${*:-bash}"
}

if [ -d "/home/ryan/Workbench/stagerightlabs.com" ] ; then
    srl_ops() {
        cd /home/ryan/Workbench/stagerightlabs.com
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias srl=srl_ops
fi

if [ -d "/home/ryan/Workbench/seymour" ] ; then
    seymour_ops() {
        cd /home/ryan/Workbench/seymour
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias smo=seymour_ops
fi

if [ -d "/home/ryan/Workbench/adrianabaercreative.com" ] ; then
    abc_ops() {
        cd /home/ryan/Workbench/adrianabaercreative.com
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias abc=abc_ops
fi
