FROM node:14-alpine
FROM codercom/code-server
WORKDIR /code-server

COPY . /code-server

EXPOSE 8081
# Install VS Code Server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Set the default password
ENV PASSWORD="mysecretpassword"
ENV PATH="/usr/local/bin:${PATH}"


# Start VS Code Server
CMD ["code-server", "--auth", "password", "--port", "8081", "--host", "0.0.0.0"]
