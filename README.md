#Ultimate Pet – Ejercicio

Aplicación para gestionar las terribles batallas entre mascotas que hay en la oficina. El objetivo de la prueba es que se pudea coger los datos y además tener un control de la aplicación desde un panel de administración usando ActiveAdmin.

Cuando se registra un nuevo miembro, la aplicación deberá enviarle un email de bienvenida.

Por cada miembro guardaremos su nombre, email y los datos que estiméis necesarios para poder autenticar a dicho usuario.

Cada miembro del equipo puede gestionar sus mascotas (altas, bajas y modificaciones). Un miembro del equipo puede leer los datos de las mascotas de otros miembros, pero no podrá modificar ni borrar dichos datos, por eso necesitaremos autenticar a cada miembro para garantizar la seguridad.

Los datos que podremos recibir de las mascotas (pets) son los siguientes: Nombre, dueño, edad, sexo, tipo (“Rat”, “Dog”, “Chinchilla”, etc..) y ratio de victorias de ese animal.

Además queremos poder organizar peleas entre 2 de las mascotas de la base de datos. Indicando la fecha-hora del combate, las mascotas participantes, el resultado del combate (quien ha ganado). Ninguna mascota puede estar en más de una batalla el mismo día, además, en un combate no pueden participar 2 mascotas de un mismo dueño.

* Ninguna mascota será dañada en la recreación de estas batallas.
