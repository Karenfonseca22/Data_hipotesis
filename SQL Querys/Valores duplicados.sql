-- Duplicados en tabla Track in competition

  SELECT
  track_id,
  COUNT(*) AS num_tracks
FROM
  `proyecto-hipotesis-lab1.dataset.track-in-competition`
GROUP BY
  track_id
HAVING
num_tracks >1

-- Duplicados en tabla de Spotify

