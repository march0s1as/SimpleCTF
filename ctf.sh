#/usr/bin/env bash

fVermelho='\033[0;31m'
NC='\033[0m'
openvpn='/home/march0s1as/Downloads/belph3g0r.ovpn' # digite o PATH da sua OpenVPN aqui, pelo amor de deus.

ascii () { 
    initializeANSI()
{
 esc=""

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"
  
  blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
  yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
  cyanb="${esc}[46m";    whiteb="${esc}[47m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}

clear 

initializeANSI

cat << EOF
${boldon}${whitef}    ▄▄▄${reset}
${boldon}${whitef} ▄█████▄▄ ${reset}     ///march0s1as
${boldon}${whitef}███${cyanb}▀▀▀▀${blackb}▀${cyanb}▀${blackb}▀${cyanb}▀${reset}
${boldon}${whitef}███${cyanb}▄   ${boldoff}${blackf}▀ ▀${reset}${cyanf}▀${reset}
${boldon}${whitef} ▄${cyanb}  ${reset}${boldon}${whitef}█████▄ ${boldoff}${redf}█▄${reset}
${boldoff}${redf}▀▀${reset}${boldon}${redb}${whitef}▄${cyanb}▄   ${redb}▄▄▄${reset}${boldoff}${redf}▀██▀${reset}
${boldon}${whitef} ██▀▀▀██▀  ${boldoff}${redf}▀${reset}
${boldon}${whitef} ▀▀▀▀ ▀▀▀▀${reset}     
EOF
}

ascii #  λ ►

menu_principal () {
   echo """
${fVermelho}──────────────────────────────────────${NC}

► Conectar-se a VPN.               [01]
► Abrir servidor web com python3.  [02]
► Instalar LINPEAS.                [03]
► Instalar WINPEAS.                [04]
► Instalar LinEnum.                [05] 
   """
}
menu_principal

opc1 () {
sudo openvpn ${openvpn}
}

opc2 () {
    python3 -m http.server
}

opc3 () {
    wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh
}
opc4 () {
    wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/winPEAS/winPEASbat/winPEAS.bat
}
opc5() {
   wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh 
}

echo "${fVermelho}──────────────────────────────────────${NC}"
echo -n "λ Escolha sua opção: " 
read opcao

case "$opcao" in
    1|01|"")
        opc1
    ;;
    2|02)
        opc2
    ;;
    3|03)
        opc3
    ;;
    4|04)
        opc4
    ;;
    5|05)
        opc5
    ;;
    *)
        echo "Opção inválida"
    ;;
esac
