class Song
    attr_accessor :name, :genre, :artist

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @@count += 1
        @genre = genre
        @@genres << genre
        @artist = artist
        @@artists << artist
        @name = name

        if(!@@genre_count[genre])
            @@genre_count[genre] = 1
        else
            @@genre_count[genre] += 1
        end

        if(!@@artist_count[artist])
            @@artist_count[artist] = 1
        else
            @@artist_count[artist] += 1
        end
    end

    def self.artists
        @@artists.uniq!
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")