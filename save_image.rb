require "open-uri"
require "FileUtils"

def save_image(url)
  fileName = File.basename(url)
  dirName = "./image/"
  filePath = dirName + fileName

  FileUtils.mkdir_p(dirName) unless FileTest.exist?(dirName)

  open(filePath, 'wb') do |output|
    open(url) do |data|
      output.write(data.read)
    end
  end
end
