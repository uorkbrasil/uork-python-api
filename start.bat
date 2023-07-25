@echo off
title Uork - API
setlocal

echo Uork - API
echo 1 - Consultar Status de um serviço
echo 2 - Consultar Conta
echo 3 - Consultar Notícias
echo 4 - Instalar Dependências

set /p option=Qual a escolha desejada: 

if "%option%"=="1" (
   cls
   python src/status.py
   timeout /t 60
  
) else if "%option%"=="2" (
  cls
  python src/conta.py
  timeout /t 60
 
) else if "%option%"=="3" (
  cls
  python src/noticias.py
  timeout /t 60
 
) else if "%option%"=="4" (
  cls
  pip install -r ./requirements.txt
) else (
    echo Opção inválida.
    timeout /t 60
                    
)