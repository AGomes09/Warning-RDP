# Warning Conexão Área Remota ⚠️

Este projeto contém um arquivo `.bat` que configura o Windows para não exibir o aviso ao abrir uma conexão de Área de Trabalho Remota.

> ⚠️ O script altera uma configuração do Registro do Windows e precisa ser executado como administrador.

## O que é o aviso Warning?

O aviso **Warning** exibido pelo Windows na conexão de Área de Trabalho Remota é uma confirmação sobre o redirecionamento de recursos locais, como impressoras, unidades de disco, área de transferência e outros dispositivos. Ele serve para informar que esses recursos poderão ficar disponíveis dentro da sessão remota.

Remover esse aviso não é prejudicial quando a conexão remota é feita para um computador confiável e os recursos redirecionados são conhecidos. O script apenas oculta a mensagem de confirmação; ele não desativa a Área de Trabalho Remota, não remove a autenticação, não altera as credenciais e não desativa a criptografia da conexão.

A única consequência é que o Windows deixará de mostrar esse lembrete antes da conexão. Por isso, mantenha o aviso caso você se conecte a computadores desconhecidos ou queira revisar os recursos compartilhados em cada acesso.

## Requisitos

- Windows com permissão de administrador.
- Acesso ao repositório ou ao arquivo `warning_rdp.bat`.
- Uma conexão de Área de Trabalho Remota configurada, caso você queira testar a alteração.

## Como baixar

### Opção 1: Baixar pelo GitHub

1. Abra a página do repositório no GitHub.
2. Clique no botão verde **Code**.
3. Selecione **Download ZIP**.
4. Abra a pasta onde o arquivo `.zip` foi baixado.
5. Clique com o botão direito no arquivo `.zip` e selecione **Extrair tudo...**.
6. Escolha uma pasta de destino e clique em **Extrair**.

### Opção 2: Baixar somente o arquivo

Na página do repositório, abra o arquivo `warning_rdp.bat`, clique em **Raw**, use o botão direito do mouse e selecione **Salvar como...**. Salve o arquivo com a extensão `.bat`.

> ℹ️ Confirme se o nome termina em `.bat`, e não em `.bat.txt`. No Explorador de Arquivos, ative **Exibir > Extensões de nomes de arquivo** para conferir.

## Como executar

1. Abra a pasta onde o projeto foi extraído ou onde o arquivo `warning_rdp.bat` foi salvo.
2. Clique com o botão direito em `warning_rdp.bat`.
3. Selecione **Executar como administrador**.
4. Na janela de Controle de Conta de Usuário, clique em **Sim**.
5. Uma janela preta será aberta e exibirá o resultado da configuração.
6. Se aparecer **Configuração aplicada com SUCESSO**, pressione qualquer tecla para fechar a janela.
7. Se aparecer uma mensagem de erro, feche a janela e repita a execução usando **Executar como administrador**.

## O que o script faz

O arquivo cria ou atualiza a seguinte configuração do Registro:

```text
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client
RedirectionWarningDialogVersion = 1
```

Essa configuração impede a exibição do aviso de redirecionamento ao iniciar uma conexão remota, conforme a política do Windows.

## Observações importantes

- Execute o arquivo somente se você confiar na origem dele.
- O Windows pode solicitar credenciais de administrador.
- Se a alteração não surtir efeito imediatamente, feche e abra novamente a conexão remota.
- Para reverter a configuração, remova o valor `RedirectionWarningDialogVersion` do caminho indicado usando o Editor do Registro, com cuidado.
- Faça backup do Registro antes de alterar configurações manualmente.

## Arquivos

- `warning_rdp.bat`: script de configuração.
- `readme.md`: este manual.
