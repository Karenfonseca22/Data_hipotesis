-- Hacer excepcion de valores innecesarios para mi analisis
SELECT *
EXCEPT (mode,`liveness_%`)
FROM `proyecto-hipotesis-lab1.dataset.track_technical_info`
