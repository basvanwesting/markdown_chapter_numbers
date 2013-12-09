require_relative "markdown_chapter_numbers/version"
require_relative "markdown_chapter_numbers/update"

module MarkdownChapterNumbers

  def self.update(input_filename, output_filename)
    File.open(output_filename,'w') do |output|
      File.open(input_filename,'r') do |input|
        Update.new.call(input,output)
      end
    end
  end

end
