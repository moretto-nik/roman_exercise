require 'spec_helper'

describe Roman do 
	before :each do
		@roman1 = Roman.new('I')
		@roman2 = Roman.new('II')
		@roman3 = Roman.new('III')
		@roman4 = Roman.new('IV')
		@roman44 = Roman.new('XLIV')
		@romanfake = Roman.new('XVX')
	end

	it 'constructor' do
		@roman2.class.should == Roman
	end

	it 'argoment' do
		@roman2.value.should == 'II'
	end

	it 'roman to int with one character' do
		@roman1.to_int.should == 1
	end

	it 'roman to int with two character without minus' do
		@roman2.to_int.should == 2
	end

	it 'roman to int with tree character without minus' do
		@roman3.to_int.should == 3
	end

	it 'roman to int with two character with minus' do
		@roman4.to_int.should == 4
	end

	it 'roman to int with complex number' do 
		@roman44.to_int.should == 44
	end

	it 'fake roman number' do
		@romanfake.to_int.should
	end

	it 'sum roman with roman' do
		@roman44.sum(@roman4).should == 'XLVIII'
	end

end