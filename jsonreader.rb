class JSONReader
  def initialize(filename)
     @json = String.new
     File.foreach(filename) do |line|
       @json = @json + line
     end
    # binding.pry
  end

  def to_hash
    JSON.parse(@json)
  end

end
