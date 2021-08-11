#!/bin/bash
# Teste: https://blogs.oglobo.globo.com/sonar-a-escuta-das-redes/post/apos-derrota-do-voto-impresso-deputados-bolsonaristas-questionam-votacao-eletronica-da-camara.html

# Sem Sessao
semSessao()
{
    # Entrada de dados
    clear
    echo -e "\033[01;32m -------------- \033[01;37m"
    echo -e "\033[01;34m *    CURL    * \033[01;37m"
    echo -e "\033[01;32m -------------- \033[01;37m"
    echo ""
    echo -e "\033[01;34m + Sem Sessao \033[01;37m"
    echo -e -n "\033[01;35m + Host (Ex: http://www.site.com.br | http://www.site.com.br/index.php): \033[01;37m"
    read site
    echo ""

    # Comando:
    # http://192.168.0.110/painel/index.php
    # http://192.168.0.110/painel/customers.php
    # Ex (40 cliente).: http://192.168.0.110/painel/admin_users.php
    # Ex (40 cliente).: http://192.168.0.110/painel/edit_customer.php?customer_id=[1-40]&operation=edit
    
    # Curl
    curl -i "$site" --user-agent "Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" > relatorio.html
    cat relatorio.html | less
    firefox relatorio.html
}

# Com Sessao (cookie)
comSessao()
{

    # Entrada de dados
    clear
    echo -e "\033[01;32m -------------- \033[01;37m"
    echo -e "\033[01;34m *    CURL    * \033[01;37m"
    echo -e "\033[01;32m -------------- \033[01;37m"
    echo ""
    echo -e "\033[01;34m + Com Sessao \033[00;37m"
    echo -e -n "\033[01;35m + Host (Ex: http://www.site.com.br | http://www.site.com.br/index.php): \033[01;37m"
    read site
    echo ""

    # Sessao
    echo -e -n "\033[01;37m * Sessao (Ex: PHPSESSID=lop6uqsqhv900o6lorpr6626h3): \033[01;37m"
    read sessao
    echo ""

    # Comando:
    # http://192.168.0.110/painel/index.php
    # http://192.168.0.110/painel/customers.php
    # Ex (40 cliente).: http://192.168.0.110/painel/admin_users.php
    # Ex (40 cliente).: http://192.168.0.110/painel/edit_customer.php?customer_id=[1-40]&operation=edit
    
    # Curl
    curl -i "$site" -b "$sessao" --user-agent "Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" > relatorio.html
    cat relatorio.html | less
    firefox relatorio.html

}

# Programa
clear
echo ""
echo -e "\033[01;32m -------------- \033[01;37m"
echo -e "\033[01;34m *    CURL    * \033[01;37m"
echo -e "\033[01;32m -------------- \033[01;37m"
echo ""
echo -e "\033[01;31m [1] Sem Sessao \033[01;37m"
echo -e "\033[01;33m [2] Com Sessao \033[01;37m"
echo ""
echo -e -n "\033[01;32m + Opc: \033[00;37m"
read opc
echo ""

# Estrutura de escolha
case $opc in

1)	semSessao;;
2)	comSessao;;
*)	;;

esac
