FROM python:3.12.0-alpine3.18
LABEL mantainer="rbastos442@gmail.com"


# Set environment variables
ENV PYTHODONTWRITEBYTECODE 1

# SEMPRE usar o modo unbuffered para evitar problemas com a saída do Python
ENV PYTHONUNBUFFERED 1

# Copia a pasta blog e scripts para o container
COPY ./blog /blog
COPY ./scripts /scripts

# Set work directory
WORKDIR /blog

# a porta que o container vai expor
EXPOSE 8000

# Instala as dependências
RUN python -m venv /venv && \
  /venv/bin/pip install --upgrade pip && \
  /venv/bin/pip install -r /blog/requirements.txt && \
  adduser --disabled-password --no-create-home duser && \
  mkdir -p /data/web/static && \
  mkdir -p /data/web/media && \
  chown -R duser:duser /venv && \
  chown -R duser:duser /data/web/static && \
  chown -R duser:duser /data/web/media && \
  chmod -R 755 /data/web/static && \
  chmod -R 755 /data/web/media && \
  chmod -R +x /scripts


  # Adiciona o path do scripts e do venv ao PATH
ENV PATH="/scripts:/venv/bin:$PATH"    

# Muda o usuário para o duser
USER duser

# Comando para rodar o servidor
CMD ["commands.sh"]