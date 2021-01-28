class MP3Importer
    attr_accessor :path
    #@@all =[]

    def initialize(file_path)
        @path = file_path
        #@@all << @path
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| file =="." || file == ".."}
    end

    def import 
        files.each {|file| Song.new_by_filename(file) }
    end
end