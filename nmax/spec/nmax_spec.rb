$stdin = StringIO.new('1gfgfg22dsfdsfd333dfdf7')
require 'spec_helper'
require 'nmax'

describe Nmax do
  describe "#exec_sequence" do
    it 'should input two max digits from stdin separated by comma' do
      output = Nmax.exec_sequence 1
      expect(output).to eq('333')
    end
    it 'should input all digits from stdin separated by comma' do
      $stdin = StringIO.new('1gfgfg22dsfdsfd333dfdf7')
      output = Nmax.exec_sequence 100
      expect(output).to eq('1,22,333,7')
    end
  end
end
