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
    echo -e "\033[34;5m Desenvolvido por DarProgrammer000\033[0m"
    echo -e "\033[01;33m Black Hat \033[01;37m"
    echo -e "\033[01;33m###################################\033[01;37m"
    echo ""
}

# Execucao
executar()
{

	# Entrada de dados
	echo -e "\033[01;32m ----------------- \033[01;37m"
	echo -e "\033[01;34m *    LEITURA    * \033[01;37m"
	echo -e "\033[01;32m ----------------- \033[01;37m"
	echo ""
	echo -e -n "\033[01;35m + Host (Ex: http://www.site.com.br | http://www.site.com.br/index.php): \033[01;37m"
	read site
	echo ""

	# Comando
	wget -O- -q --no-warc-keep-log --no-cookie "$site" > a && firefox a
	
	# 
	echo -e "\n\033[01;32m <<<<<<<<<<< ENTER >>>>>>>>>>>>>>>> \033[01;37m"
	read
	rm -rf a
}

# Programa em menu loop
Programa()
{
	echo ""
	echo -e "\033[01;32m ---------------------- \033[01;37m"
	echo -e "\033[01;34m *    LER DE GRACA    * \033[01;37m"
	echo -e "\033[01;32m ---------------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Executar \033[01;37m"
	echo -e "\033[01;33m [2] Sair \033[01;37m"
	echo ""
	echo -e -n "\033[01;32m + Opc: \033[00;37m"
	read opc
	echo ""
 
	# Estrutura de escolha
	case $opc in
 
	1)  executar;;
	2)  exit 0;;
	*)  ;;
	
	esac
}

while ((1))
do
	apresentacao
	Programa
done
