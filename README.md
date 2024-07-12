# Data_hipotesis
### Caso:

En un mundo en el que la industria musical es extremadamente competitiva y está en permanente evolución, la capacidad de tomar decisiones basadas en datos se ha convertido en un activo invaluable.

En este contexto, una discográfica se enfrenta al emocionante desafío de lanzar un nuevo artista en el escenario musical global. Afortunadamente, cuenta con una herramienta poderosa en su arsenal: un extenso dataset de Spotify con información sobre las canciones más escuchadas en 2023.

Este En este proyecto se trabajo con las siguientes hipotesis, el objetivo es refutar o validarlas:

* Las canciones con un mayor BPM (Beats Por Minuto) tienen más éxito en términos de cantidad de streams en Spotify.
* Las canciones más populares en el ranking de Spotify también tienen un comportamiento similar en otras plataformas como Deezer.
* La presencia de una canción en un mayor número de playlists se relaciona con un mayor número de streams.
* Los artistas con un mayor número de canciones en Spotify tienen más streams.
* Las características de la canción influyen en el éxito en términos de cantidad de streams en Spotify.

### Herramientas utilizadas 
BigQuery, Google Colab, PowerBI

## Construcción del proyecto
🟦 Procesar y preparar base de datos

Se limpiaron las tablas originales, tratando con nulos y duplicados y se unieron las tres tablas en una general.

![image](https://github.com/user-attachments/assets/9b32f2bb-581b-4ad0-906f-52bb4b5467b4)


🟪 Hacer un análisis exploratorio

En PowerBi se graficaron las variables categoricas, se visualizaron los streams (Reproducciones) por artista y por caracteristicas, se visualizo la distribucion por medio de histogramas

![image](https://github.com/user-attachments/assets/e70e41de-fec0-453c-b9d2-711b6af43a34)


🟥 Aplicar técnica de análisis

Se realizaron graficas de dispersión en las que se podía ver la correlación de la variable streams y caracteristica de la canción, luego esta se comprobó con el test de Pearson

### Hipotesis 1: Las canciones con un mayor BPM (Beats Por Minuto) tienen más éxito en términos de cantidad de streams en Spotify.

> Correlación de Pearson entre BPM (Beats per minute) y streams: -0.002

**Resultado: No hay correlación**

![image](https://github.com/user-attachments/assets/721ef6be-83fa-4a89-a5d5-3dfcba040415)

### Hipotesis 2: Las canciones más populares en el ranking de Spotify también tienen un comportamiento similar en otras plataformas como Deezer.

> Correlación de Pearson entre Spotify Charts con Deezer charts: 0.72
> Correlación de Pearson entre Spotify Charts con 

**Resultado: No hay correlación**

![image](https://github.com/user-attachments/assets/971a1483-f4ce-439e-a614-bf1591987c85)

### Hipotesis 3: La presencia de una canción en un mayor número de playlists se relaciona con un mayor número de streams.

![image](https://github.com/user-attachments/assets/7377c5d7-d80b-4e90-b2dc-c935fb72d282)

### Hipotesis 4: Los artistas con un mayor número de canciones en Spotify tienen más streams.

> Correlación de Pearson entre cantidad de canciones por artista: 0.78

**Resultado: No hay correlación**

![image](https://github.com/user-attachments/assets/da60c08c-d086-4733-b517-73694784063b)

### Hipotesis 5: Las características de la canción influyen en el éxito en términos de cantidad de streams en Spotify.

Correlación REFUTADA

![image](https://github.com/user-attachments/assets/0ee95365-2507-47f9-bde8-b2ce109267f7)
![image](https://github.com/user-attachments/assets/052abee5-ae75-4b61-ae5a-90b1891420ed)
![image](https://github.com/user-attachments/assets/02a895f5-7a20-4dac-9234-7d4d5ee298a2)
![image](https://github.com/user-attachments/assets/447e0ae8-3bb4-4c36-a84f-fe2bb8b9649d)
![image](https://github.com/user-attachments/assets/64f3196a-2655-4bef-ad48-a61dd399ab1f)
![image](https://github.com/user-attachments/assets/d4082d5d-d5aa-434d-867b-8cdd48b084a7)
![image](https://github.com/user-attachments/assets/7a22b137-a225-4011-8ec9-0e7532024ccb)

🟧 Resumir información en un dashboard o reporte

🟩 Presentar resultados

