class PDFFile
  DIR_PATH = './doc/pdf/*.pdf'.freeze

  def self.all_files 
    Dir[DIR_PATH]
  end

end