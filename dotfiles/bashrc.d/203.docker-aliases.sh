alias dc='docker-compose'
alias dce='docker-compose exec'
alias dcr='docker-compose run --rm'
alias sail='bash vendor/bin/sail'

if [ -d "/home/ryan/Workbench/phylos/ops/phylosbio.test" ] ; then
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
fi

node14() {
    docker run -it --rm -v $(pwd):/src node:fermium-alpine /bin/sh -c "cd /src; ${*:-sh}"
}

node16() {
    docker run -it --rm -v $(pwd):/src node:16-alpine /bin/sh -c "cd /src; ${*:-sh}"
}

php7.2() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/ubuntu/.config/composer \
        -v $(pwd):/var/www \
        -w /var/www \
        -p 8000:8000 \
        stagerightlabs/php-test-runner:7.2 /bin/sh -c "${*:-sh}"
}

php7.4() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/ubuntu/.config/composer \
        -v $(pwd):/var/www \
        -w /var/www \
        -p 8000:8000 \
        stagerightlabs/php-test-runner:7.4 /bin/bash -c "${*:-bash}"
}

php8.0() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/www-data/.config/composer \
        -v $(pwd):/var/www \
        -w /var/www \
        -p 8000:8000 \
        stagerightlabs/php-test-runner:8.0 /bin/sh -c "${*:-sh}"
}

php8.1() {
    docker run -it --rm \
        -u 1000 \
        -e COMPOSER_HOME=/home/www-data/.config/composer \
        -v $(pwd):/var/www \
        -w /var/www \
        -p 8000:8000 \
        stagerightlabs/php-test-runner:8.1 /bin/sh -c "${*:-sh}"
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

if [ -d "/home/ryan/Workbench/sidekick" ] ; then
    sidekick_ops() {
        cd /home/ryan/Workbench/sidekick
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias sk=sidekick_ops
fi

if [ -d "/home/ryan/Workbench/greenhouse" ] ; then
    greenhouse_ops() {
        cd /home/ryan/Workbench/greenhouse
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias gh=greenhouse_ops
fi

if [ -d "/home/ryan/Workbench/firebrand/eoa-docker" ] ; then
    eoa_ops() {
        cd /home/ryan/Workbench/firebrand/eoa-docker/local
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias eoa=eoa_ops
fi


if [ -d "/home/ryan/Workbench/symfony-starter" ] ; then
    ss_ops() {
        cd /home/ryan/Workbench/symfony-starter
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias ss=ss_ops
fi

if [ -d "/home/ryan/Workbench/firebrand/javelina-testbed" ] ; then
    jt_ops() {
        cd /home/ryan/Workbench/firebrand/javelina-testbed
        ./ops.sh ${*:-ps}
        cd $OLDPWD
    }
    alias jt=jt_ops
fi
