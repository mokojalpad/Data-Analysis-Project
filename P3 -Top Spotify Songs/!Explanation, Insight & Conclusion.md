![Dashboard](img/1st%20Look.png)

# 1st Look of the dashboard

# Project Explanation: Real-Time Logistics Performance Overview

This Project I obtained the dataset from [Top Spotify Songs in 73 Countries](https://www.kaggle.com/datasets/asaniczka/top-spotify-songs-in-73-countries-daily-updated/data). I performed data cleaning using Python, Pandas and Numpy to ensure the dataset was ready for analysis. This project aims to provide in-depth insights into **popular songs**, as well as **song movement trends over a period of time**, **song characteristics**, and **popularity**.

## Dataset Column Explanation

- `spotify_id` = The unique identifier for the song in the Spotify database. (type: str)
- `name` = The title of the song. (type: str)
- `artists` = The name(s) of the artist(s) associated with the song. Do split(', ') to convert to a list (type: str)
- `daily_rank` = The daily rank of the song in the top 50 list. (type: int)
- `daily_movement` = The change in rankings compared to the previous day. (type: int)
- `weekly_movement` = The change in rankings compared to the previous week. (type: int)
- `country` = The ISO code of the country of the Top 50 Playlist. If Null, then the playlist if 'Global Top 50'. (type: str)
- `snapshot_date` = The date on which the data was collected from the Spotify API. (type: str)
- `popularity` = A measure of the song's current popularity on Spotify. (type: int)
- `is_explicit` = Indicates whether the song contains explicit lyrics. (type: bool)
- `duration_ms` = The duration of the song in milliseconds. (type: int)
- `album_name` = The title of the album the song belongs to. (type: str)
- `album_release_date` = The release date of the album the song belongs to. (type: str)
- `danceability` = A measure of how suitable the song is for dancing based on various musical elements. (type: float)
- `energy` = A measure of the intensity and activity level of the song. (type: float)
- `key` = The key of the song. (type: int)
- `loudness` = The overall loudness of the song in decibels. (type: float)
- `mode` = Indicates whether the song is in a major or minor key. (type: int)
- `speechiness` = A measure of the presence of spoken words in the song. (type: float)
- `acousticness` = A measure of the acoustic quality of the song. (type: float)
- `instrumentalness` = A measure of the likelihood that the song does not contain vocals. (type: float)
- `liveness` = A measure of the presence of a live audience in the recording. (type: float)
- `valence` = A measure of the musical positiveness conveyed by the song. (type: float)
- `tempo` = The tempo of the song in beats per minute. (type: float)
- `time_signature` = The estimated overall time signature of the song. (type: int)
