class MarkdownChapterNumbers::Update

  attr_accessor :level_1_counter, :level_2_counter, :level_3_counter, :level_4_counter

  H1 = /^#\s+(\d+\s+)?/
  H2 = /^##\s+(\d+\.\d+\s+)?/
  H3 = /^###\s+(\d+\.\d+\.\d+\s+)?/
  H4 = /^####\s+(\d+\.\d+\.\d+\.\d+\s+)?/

  def call(input,output)
    self.level_1_counter = 0
    self.level_2_counter = 0
    self.level_3_counter = 0
    self.level_4_counter = 0

    input.each_line do |line|
      case line
      when H1
        set_level_1
        output << line.gsub(H1,"# #{level_1_counter} ")
      when H2
        set_level_2
        output << line.gsub(H2,"## #{level_1_counter}.#{level_2_counter} ")
      when H3
        set_level_3
        output << line.gsub(H3,"### #{level_1_counter}.#{level_2_counter}.#{level_3_counter} ")
      when H4
        set_level_4
        output << line.gsub(H4,"#### #{level_1_counter}.#{level_2_counter}.#{level_3_counter}.#{level_4_counter} ")
      else
        output << line
      end
    end
    output
  end

  def set_level_1
    self.level_1_counter += 1
    self.level_2_counter = 0
    self.level_3_counter = 0
    self.level_4_counter = 0
  end

  def set_level_2
    self.level_2_counter += 1
    self.level_3_counter = 0
    self.level_4_counter = 0
  end

  def set_level_3
    self.level_3_counter += 1
    self.level_4_counter = 0
  end

  def set_level_4
    self.level_4_counter += 1
  end

end
