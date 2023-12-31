#!/bin/bash

clear_screen() {
    clear
}

page_one() {
    echo "Ai ales pagina 1."
    echo -e "\e[93m+-----------+----------------------+"
    echo "| Nr.       | Descriere             |"
    echo "+-----------+----------------------+"
    echo "|  1        | Randul 1              |"
    echo "|  2        | Randul 2              |"
    echo "|  3        | Randul 3              |"
    echo "+-----------+----------------------+\e[0m"
}

page_two() {
    echo "Ai ales pagina 2."
    echo -e "\e[43m\e[97m"
    echo "╔══════════════════════════════════════╗"
    echo "║              Meniu Pagina 2           ║"
    echo "╠══════════════════════════════════════╣"
    echo "║ [01] Opțiune 1                       ║"
    echo "║ [02] Opțiune 2                       ║"
    echo "║ [03] Opțiune 3                       ║"
    echo "╚══════════════════════════════════════╝"
    echo -e "\e[91mIP ADDRESS\e[0m"
    echo -e "\e[0m"
}

design_text="
███████╗░█████╗░███╗░░░███╗██████╗░██╗
╚════██║██╔══██╗████╗░████║██╔══██╗██║
░░███╔═╝███████║██╔████╔██║██████╦╝██║
██╔══╝░░██╔══██║██║╚██╔╝██║██╔══██╗██║
███████╗██║░░██║██║░╚═╝░██║██████╦╝██║
╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═════╝░╚═╝
"

additional_text="[01] Nume\n[02] Alt Nume\n[run] Pentru a executa HTML"

colored_design="\e[34m$design_text\e[0m"
colored_additional_text="\e[93m$additional_text\e[0m"

echo -e "$colored_design"
echo -e "$colored_additional_text"

read -p "Introduceți un număr sau 'run' pentru a executa HTML: " user_input
clear_screen

case $user_input in
    1)
        page_one
        ;;
    2)
        page_two
        ;;
    run)
        echo "Introduceți codul HTML:"
        read -r html_code
        file_name="output.html"

        echo "$html_code" > "$file_name"

        echo "Fila $file_name a fost creată cu succes!"
        ;;
    *)
        echo "Introduceți un număr valid sau 'run' pentru a executa HTML."
        ;;
esac
