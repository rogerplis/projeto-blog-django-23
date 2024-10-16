# Projeto-Blog-Django

Este é um projeto de exemplo de um blog desenvolvido com Django, um framework web em Python.

## Funcionalidades

- Criação, edição e exclusão de posts
- Sistema de comentários
- Autenticação de usuários
- Sistema de tags para posts

## Requisitos

- Python 3.x
- Django 3.x

## Instalação

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/projeto-blog-django-23.git
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd projeto-blog-django-23
    ```
3. Crie um ambiente virtual:
    ```bash
    python -m venv venv
    ```
4. Ative o ambiente virtual:
    - No Windows:
        ```bash
        venv\Scripts\activate
        ```
    - No Unix ou MacOS:
        ```bash
        source venv/bin/activate
        ```
5. Instale as dependências:
    ```bash
    pip install -r requirements.txt
    ```

## Uso

1. Aplique as migrações do banco de dados:
    ```bash
    python manage.py migrate
    ```
2. Crie um superusuário:
    ```bash
    python manage.py createsuperuser
    ```
3. Inicie o servidor de desenvolvimento:
    ```bash
    python manage.py runserver
    ```

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Faça push para a branch (`git push origin feature/nova-feature`)
5. Crie um novo Pull Request

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.