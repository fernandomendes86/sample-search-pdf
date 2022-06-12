require 'pdf/reader'
require_relative './lib/pdf_file'

files = PDFFile.all_files

files.each do |filename|
  reader = PDF::Reader.new(filename)
  reader.pages.each do |page|
    text_page = page.text
    puts text_page.scan(/ruby/i)
  end
end
