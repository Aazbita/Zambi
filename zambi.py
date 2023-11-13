from colorama import Fore, Style

design_text = """
███████╗░█████╗░███╗░░░███╗██████╗░██╗
╚════██║██╔══██╗████╗░████║██╔══██╗██║
░░███╔═╝███████║██╔████╔██║██████╦╝██║
██╔══╝░░██╔══██║██║╚██╔╝██║██╔══██╗██║
███████╗██║░░██║██║░╚═╝░██║██████╦╝██║
╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═════╝░╚═╝
"""

additional_text = "[01] Nume\n[01] Alt Nume"

select_option_text = f"{Fore.GREEN}{Style.BRIGHT}SELECT OPTION:{Style.RESET_ALL}"

# Adăugați culoare și stilul dorit
colored_design = f"{Fore.BLUE}{design_text}{Style.RESET_ALL}"
colored_additional_text = f"{Fore.YELLOW}{additional_text}{Style.RESET_ALL}"

# Afișați textul în consolă
print(colored_design)
print(colored_additional_text)
print(select_option_text)

# Cereți utilizatorului să selecteze o opțiune
user_input = input("Introduceți opțiunea (ex. 01): ")

# Afișați opțiunea selectată
print(f"Ați selectat opțiunea: {user_input}")
