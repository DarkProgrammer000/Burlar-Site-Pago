#!/bin/bash

######################
#    APRESENTACAO    #
######################
 
# Apresentacao
apresentacao()
{
    clear
    printf "     \e[1;92m.-\"\"\"\"-. \e[0m\n"
    printf "    \e[1;92m/        \ \e[0m\n"
    printf " \e[1;77m  \e[0m\e[1;92m/_        _\ \e[0m\n"
    printf "\e[1;77m  \e[0m\e[1;92m// \      / \\ \e[0m\n"
    printf "\e[1;77m  \e[0m\e[1;92m|\__\    /__/ \e[0m\n"
    printf "\e[1;77m  \e[0m\e[1;92m\    ||    / \e[0m\n"
    printf "\e[1;77m   \e[0m\e[1;92m\        / \e[0m\n"
    printf "\e[1;92m \e[0m   \e[1;92m\  __  / \e[0m\n"
    printf "     \e[1;92m'.__.' \e[0m\n\n"
    echo -e "\033[01;33m###################################\033[01;37m"
    echo -e "\033[01;32m Desenvolvido por DarProgrammer000\033[01;37m"
    echo -e "\033[01;31m Black Hat \033[01;37m"
    echo -e "\033[01;33m###################################\033[01;37m"
    echo ""
}

programa()
{

	echo -e "\033[01;33m# Presentinho do seu Amigo DarkProgrammer000 -> Divirta-se\033[01;37m"
	echo -e "\033[01;34m# Programinha rapido para quem quer bular site como a Folha de Sao Paulo, ler as materias que sao pagas\033[01;37m"
	echo -e "\033[01;35m Exemplo:https://www1.folha.uol.com.br/poder/2021/07/pacheco-diz-que-nao-aceitara-retrocesso-a-democracia-apos-manifestacao-de-militares-e-bolsonaro.shtml\n\n\033[01;37m"

	echo -e "\033[01;32m# QUANDO ACABAR DE LER, FECHE O NAVEGADOR E TECLE 'ENTER'\033[01;37m"
	echo -n -e "\033[01;36m\n# Pagina para ler: \033[01;37m"
	read site
}

comando()
{

	curl $site --silent > clone.html
	firefox clone.html
	read
}

while ((1))
do
	apresentacao
	programa
	comando
done
