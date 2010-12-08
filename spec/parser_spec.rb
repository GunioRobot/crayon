$: << File.expand_path(File.dirname(__FILE__) + "/../lib")

require 'rubygems'
require 'treetop'
require 'parser/crayon'

module Crayon

  describe Parser::CrayonParser do

    before(:all) do
      @parser = Parser::CrayonParser.new
    end

    it "should allow comments" do
      @parser.parse("# Hello world!").should_not be_nil
    end

    it "should parse simple loops" do
      @parser.parse("repeat 10 times\nend").should_not be_nil
    end

    it "should parse simple loops with counters" do
      @parser.parse("repeat 10 times with i\nend").should_not be_nil
    end

    it "should parse loops with start/end" do
      @parser.parse("repeat i from 0 to 10\nend").should_not be_nil
    end

    it "should parse while loops" do
      @parser.parse("repeat while i < 10\nend").should_not be_nil
    end

    it "should parse if statements" do
    end

  end

end
