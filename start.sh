#!/bin/bash
echo Uork - API
echo 1 - Consultar Status de um serviço
echo 2 - Consultar Conta
echo 3 - Consultar Notícias
echo 4 - Instalar Dependências

read -p "Qual a escolha desejada: " option

if [ "$option" -eq 1 ]; then
   clear
   python src/status.py
   read -p "Pressione Enter para continuar..."
elif [ "$option" -eq 2 ]; then
   clear
   python src/conta.py
   read -p "Pressione Enter para continuar..."
elif [ "$option" -eq 3 ]; then
   clear
   python src/noticias.py
   read -p "Pressione Enter para continuar..."
elif [ "$option" -eq 4 ]; then
   clear
  pip install -r ./requirements.txt
else
   echo "Opção inválida."
fi
