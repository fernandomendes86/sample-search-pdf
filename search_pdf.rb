require 'pdf/reader'

Dir['./pdfs/*.pdf'].each do |filename|
  reader = PDF::Reader.new(filename)
  reader.pages.each do |page|
    text_page = page.text
    puts text_page.scan(/ruby/i)
  end
end
