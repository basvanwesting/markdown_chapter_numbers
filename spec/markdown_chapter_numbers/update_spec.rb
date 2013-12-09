require 'spec_helper'

describe MarkdownChapterNumbers::Update do

  let(:output) { StringIO.new }

  context 'small file without chapter numbers' do
    let(:input_filename) { File.join(fixtures_path,'small_without_chapter_numbers.md') }
    let(:output_filename) { File.join(fixtures_path,'small_with_chapter_numbers.md') }

    it 'adds chapter numbers' do
      File.open(input_filename,'r') do |input|
        subject.call(input,output)
      end
      output.string.should == File.read(output_filename)
    end
  end

  context 'small file with old/partial chapter numbers' do
    let(:input_filename) { File.join(fixtures_path,'small_with_old_chapter_numbers.md') }
    let(:output_filename) { File.join(fixtures_path,'small_with_chapter_numbers.md') }

    it 'updates chapter numbers' do
      File.open(input_filename,'r') do |input|
        subject.call(input,output)
      end
      output.string.should == File.read(output_filename)
    end
  end

  context 'extended file without chapter numbers' do
    let(:input_filename) { File.join(fixtures_path,'extended_without_chapter_numbers.md') }
    let(:output_filename) { File.join(fixtures_path,'extended_with_chapter_numbers.md') }

    it 'adds chapter numbers' do
      File.open(input_filename,'r') do |input|
        subject.call(input,output)
      end
      output.string.should == File.read(output_filename)
    end
  end

end

