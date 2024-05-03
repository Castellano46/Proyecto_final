# 📊 Datos

Fuentes de información legítimas para nuestra app.

## Música

* [FiftySounds](https://www.fiftysounds.com/es/)

	* [Listado Música Relajante](https://www.fiftysounds.com/es/musica-libre-de-derechos/relajante.html)

	Ejemplos:
	 
	* [Luz Interior](https://www.fiftysounds.com/es/musica-libre-de-derechos/luz-interior.html)
	* [Volando](https://www.fiftysounds.com/es/musica-libre-de-derechos/volando.html)
	* [Jardín Bohemio](https://www.fiftysounds.com/es/musica-libre-de-derechos/jardin-bohemio.html)
	* [Espíritus Ancestrales](https://www.fiftysounds.com/es/musica-libre-de-derechos/espiritus-ancestrales.html)

## Videos

Podríamos usar vídeos en formatos más pesados como .mp3/4 o en formatos más ligeros .gif. Para la parte de Figma, hasta donde sé, no se puede introducir vídeo en formato pesado, sino que hay que usar .gif.

* [Pexels](https://www.pexels.com/es-es/)

	* [Listado Vídeos Meditación](https://www.pexels.com/es-es/buscar/videos/meditación/)

* [Pixabay](https://pixabay.com/es/videos/)

## Ejercicios de meditación guiada

* [Audios Gratis de Meditaciones Guiadas Laicas para la práctica del Mindfulness y de la Terapia de Aceptación y Compromiso](https://psicologo.barcelona/mindfulness-meditaciones-guiadas/)

## Ejercicios de Mindfulness

## Información de blog de salud mental (?)

## Diagrama de datos

# Diagrama Entidad-Relación (ER)

## Entidades y Atributos:

- **Usuario**
  - ID (PK)
  - Nombre de usuario
  - Correo electrónico
  - Contraseña
  - Empresa
  - Tipo (normal, administrador)
  - Puntuación
  - Recompensas????

- **Sesión de Meditación**
  - ID (PK)
  - ID de usuario (FK)
  - Fecha y hora
  - Duración
  - Tipo de meditación

- **Actividad de Productividad**
  - ID (PK)
  - ID de usuario (FK)
  - Fecha y hora
  - Duración
  - Descripción
  - Categoría

- **Teleconsulta**
  - ID (PK)
  - ID de usuario (FK)
  - ID de médico (FK)
  - Fecha y hora de la consulta
  - Estado (pendiente, confirmada, completada)

- **Médico**
  - ID (PK)
  - Nombre
  - Especialidad
  - Correo electrónico
  - Contraseña????

## Relaciones:

- **Usuario - Sesión de Meditación**
  - Un usuario puede tener varias sesiones de meditación.

- **Usuario - Actividad de Productividad**
  - Un usuario puede realizar varias actividades de productividad.

- **Usuario - Teleconsulta**
  - Un usuario puede solicitar varias teleconsultas.

- **Médico - Teleconsulta**
  - Un médico puede tener varias teleconsultas.

