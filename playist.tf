resource "spotify_playlist" "Malayalam"{
    name="Malayalam playlists"
    tracks=["3E0V1VegCFH9SeRSNWFKki"]
}
data "spotify_search_track" "dabzee"{
    artist="Dabzee"
}
resource "spotify_playlist" "favartist"{
    name="favartist"
    tracks=[data.spotify_search_track.dabzee.tracks[3].id,data.spotify_search_track.dabzee.tracks[4].id,
    data.spotify_search_track.dabzee.tracks[8].id]
}
