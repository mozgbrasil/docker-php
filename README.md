[checkmark]: https://raw.githubusercontent.com/mozgbrasil/mozgbrasil.github.io/master/assets/images/logos/logo_32_32.png "MOZG"
![valid XHTML][checkmark]

[url-method]: http://squidfacil.com.br/
[requerimentos]: http://mozgbrasil.github.io/requerimentos/
[contact-squidfacil]: http://www.squidfacil.com.br/squidfacil/ecp/comunidade.do?app=portal&pg=20004&view=faleconosco
[tickets]: https://cerebrum.freshdesk.com/support/tickets/new
[preco]: http://www.cerebrum.com.br/preco/
[github-boxpacker]: https://github.com/mozgbrasil/magento-boxpacker-COMPILE_SUFIX#mozgboxpacker
[getcomposer]: https://getcomposer.org/
[uninstall-mods]: https://getcomposer.org/doc/03-cli.md#remove
[artigo-composer]: http://mozg.com.br/ubuntu/composer
[ioncube-loader]: http://www.ioncube.com/loaders.php
[acordo]: http://mozg.com.br/acordo-licenca-usuario-final/

# Docker\PHP

## Sinopse

Baseado no projeto https://github.com/clean-docker/Magento2

## Perguntas mais frequentes "FAQ"

### Plataforma Magento1

    cd ~/dados/public_html

### Plataforma Magento2

#### Build

    cd /home/marcio/dados/git/projects/docker-php

    docker-compose up

#### Local

    cd /home/marcio/dados/git/projects/docker-php

    ./shell
    ls
    mkdir magento2
    install-magento2

#### Pull & Install

    cd ~/dados/public_html

    curl -s https://raw.githubusercontent.com/clean-docker/Magento2/master/init | bash -s docker-magento2 clone

    cd docker-magento2
    ./shell
    rm index.php
    install-magento2

#### Executar

### ??

## Contribuintes

Equipe Mozg

## License

[Comercial License](LICENSE.txt)

:cat2:
