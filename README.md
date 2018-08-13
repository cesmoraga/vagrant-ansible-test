Provisionamiento vagrant con docker y CICD
=========================================

[![License](https://img.shields.io/badge/license-GPLv2-blue.svg?style=plastic)](LICENSE)

Este desarrollo personal permite usar Infraestructura como codigo, desplegando con Vagrant, luego se configura todo con ansible, se instala docker, se crea un cluster docker-swarm, y luego se despliega de forma automatica la aplicación portainer.


## Prerequisitos / Requerimientos

- [Virtualbox platform](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://docs.vagrantup.com/v2/installation/)
- [Git](https://git-scm.com/)
- [Ansible](http://docs.ansible.com/ansible/intro_installation.html)

## Diagrama de componentes

![arquitectura](arquitectura.jpg)

## Como ejecutar

	$ git clone https://github.com/cesmoraga/vagrant-ansible-test.git
  
Modificar Vagrantfile, deacuerdo a las VM que necesites (worker), y luego hacer push a master, con esto se subiran los cambios a github, luego se sincronizaran los cambios a [gitlab](https://gitlab.com/camoraga/vagrant-ansible-test/), cuando gitlab detecta el nuevo cambio, ejecuta los pasos de .gitlab-ci.yml en el runner donde esta instalado el vagrant. 

## Licence

[GNU GENERAL PUBLIC LICENSE](https://github.com/skecskes/vagrant-centos7-ansible-lamp/blob/master/LICENSE)

