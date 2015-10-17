# Aplicaciones Web con Ruby (sin Rails)

Este repositorio contiene el código ejemplo que construimos durante el taller
**Aplicaciones Web con Ruby (sin Rails)** para **Ruby Conf Colombia 2015**.

# Requerimientos

Instala las siguientes gemas:

    gem install rack
    gem install eventmachine
    gem install haml
    gem install thin

## eventmachine y "El Capitan"

Si estás usando Mac OS El Capitan, esto resuelve el problema de eventmachine:

    gem install eventmachine -- --with-cppflags=-I/usr/local/opt/openssl/include

# Arrancar el servidor con rack

La applicacion web arranca usando el comando `rackup`

# Arrancar el servidor web personalizado

Simplemente corre el archivo `server.rb`

    ruby server.rb

# ¡Gracias por asistir!

