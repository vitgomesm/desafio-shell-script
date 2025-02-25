```markdown
# **Desafio Shell Script - AWS EC2**

Este repositório contém um script shell para automatizar a configuração de uma instância EC2 na AWS. O script instala o servidor web Apache, clona este repositório para servir um site HTML simples e envia uma solicitação POST para registrar o nome do usuário.
 ```

## Requisitos

- Conta na AWS (Amazon Web Services).
- Acesso ao serviço EC2 para criar uma instância (VM).
- Conhecimento básico de shell script e Linux.

---

## Passo a Passo

### 1. Criar uma Instância EC2 na AWS
1. Acesse o **AWS Management Console** e vá para o serviço **EC2**.
2. Clique em **"Launch Instance"** para criar uma nova instância.
3. Escolha uma AMI com Linux (por exemplo, Amazon Linux 2 ou Ubuntu).
4. No campo **User Data**, insira o seguinte script:

   ```bash
   #!/bin/bash
   # Baixar o script do GitHub
   wget https://raw.githubusercontent.com/vitgomesm/desafio-shell-script/main/script.sh -O /tmp/script.sh

   # Tornar o script executável
   chmod +x /tmp/script.sh

   # Executar o script
   /tmp/script.sh > /tmp/script.log 2>&1
  

5. Configure o grupo de segurança para permitir tráfego HTTP (porta 80).
6. Finalize a criação da instância.

### 2. Execução do Script
O script `script.sh` faz o seguinte:
1. Atualiza o sistema.
2. Instala o Git e o Apache.
3. Clona este repositório para o diretório `/var/www/html/`.
4. Configura as permissões para o Apache.
5. Envia uma solicitação POST com o nome do usuário para o endpoint especificado.

### 3. Verificação
1. Acesse o IP público da instância no navegador para ver o site.
2. Verifique se o nome foi registrado em: [https://difusaotech.com.br/lab/aws/](https://difusaotech.com.br/lab/aws/).

---

## Estrutura do Repositório

- **script.sh**: Script shell que automatiza a instalação e configuração.
- **index.html**: Exemplo de site HTML simples (adicione seus arquivos HTML aqui).
- **README.md**: Este arquivo, com instruções sobre o projeto.

---

## Autor

- **Vitória Gomes**
- Repositório: [https://github.com/vitgomesm/desafio-shell-script](https://github.com/vitgomesm/desafio-shell-script)

---

## Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
```


