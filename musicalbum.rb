class MusicAlbum < Item

    attr_accessor :on_spotify, :title

    def intialize (title, on_spotify, publish_date, archived)
        super(publish_date, archived)
        @title = title
        @on_spotify = false
    end

end