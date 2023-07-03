class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash =Hash.new(0)
        @@genres.each {|genre| genre_hash[genre] +=1}
        genre_hash
    end

    def self.artist_count
        artist_hash =Hash.new(0)
        @@artists.each {|artist| artist_hash[artist] += 1}
        artist_hash
    end
end

ninety_nine_problems = Song.new("Ninety Nine Problems", "Jay-Z", "Hip Hop")
love_more = Song.new("Love More", "Chris Brown", "R&B")
rockstar = Song.new("Rockstar", "Post Malone", "Hip Hop")
hello = Song.new("Hello", "Adele", "Pop")
thunderstruck = Song.new("Thunderstruck", "AC/DC", "Rock")
shape_of_you = Song.new("Shape of You", "Ed Sheeran", "Pop")
smooth_operator = Song.new("Smooth Operator", "Sade", "R&B")
bohemian_rhapsody = Song.new("Bohemian Rhapsody", "Queen", "Rock")
no_tears_left_to_cry = Song.new("No Tears Left to Cry", "Ariana Grande", "Pop")
thinking_out_loud = Song.new("Thinking Out Loud", "Ed Sheeran", "Pop")
uptown_funk = Song.new("Uptown Funk", "Mark Ronson ft. Bruno Mars", "Funk")
latch = Song.new("Latch", "Disclosure ft. Sam Smith", "Electronic")
blinding_lights = Song.new("Blinding Lights", "The Weeknd", "Pop")
crazy_in_love = Song.new("Crazy in Love", "Beyoncé ft. Jay-Z", "R&B")
hotel_california = Song.new("Hotel California", "Eagles", "Rock")

# puts ninety_nine_problems.name
# puts ninety_nine_problems.artist
# puts ninety_nine_problems.genre

puts Song.genre_count
puts Song.artists
puts Song.artist_count