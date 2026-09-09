@echo off
title Configuracao da Conexao Remota

echo.
echo Configurando o Windows para nao exibir o aviso de Warning ao abrir a conexao remota...
echo.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client" /v "RedirectionWarningDialogVersion" /t REG_DWORD /d 1 /f

if %errorlevel% equ 0 (
echo.
echo Configuracao aplicada com SUCESSO.
echo.
) else (
echo.
echo ERRO: Nao foi possivel alterar o Registro.
echo Execute este arquivo como Administrador.
)
echo.
echo.
echo.
echo.
echo Desenvolvido por Adriano Almeida Gomes
echo.
pause
