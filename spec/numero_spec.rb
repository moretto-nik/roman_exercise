require 'spec_helper'

describe Numero do 
	before :each do
		@integer1 = Numero.new(1)
		@integer3 = Numero.new(3)
		@integer6 = Numero.new(6)
		@integer11 = Numero.new(11)
		@integer14 = Numero.new(14)
		@integer15 = Numero.new(15)
		@integer16 = Numero.new(16)
		@integer44 = Numero.new(44)
		@integer46 = Numero.new(46)
		@integer60 = Numero.new(60)
		@integer463 = Numero.new(463)
		@integer691 = Numero.new(691)
		@integer3000 = Numero.new(3000)
		@integer3309 = Numero.new(3309)
	end

	it 'constructor' do
		@integer3.class.should == Numero
	end

	it 'argoment' do
		@integer3.value.should == 3
	end

	it 'numero to roman 1' do
	  @integer1.to_roman.should == "I"
	end
	
	it 'numero to roman 44' do
    @integer44.to_roman().should == 'XLIV'
  end
  
  it 'numero to roman 3' do
	  @integer3.to_roman().should == "III"
	end
	
	it 'numero to roman 6' do
	  @integer6.to_roman().should == "VI"
	end
	
	it 'numero to roman 11' do
	  @integer11.to_roman().should == "XI"
	end
	
	it 'numero to roman 14' do
	  @integer14.to_roman().should == "XIV"
	end
	
	it 'numero to roman 15' do
	  @integer15.to_roman().should == "XV"
  end
  
	it 'numero to roman 16' do
	  @integer16.to_roman().should == "XVI"
	end
	
	it 'numero to roman 46' do
	  @integer46.to_roman().should == "XLVI"
	end
	
	it 'numero to roman 60' do
	  @integer60.to_roman().should == "LX"
	end
	
	it 'numero to roman 463' do
	  @integer463.to_roman().should == "CDLXIII"
  end

  it 'numero to roman 691' do
  	@integer691.to_roman().should == "DCXCI"
  end

	it 'numero to roman 3000' do
		@integer3000.to_roman().should == "MMM"
	end

	it 'numero to roman 3309' do
	  @integer3309.to_roman().should == "MMMCCCIX"
	end

  it 'key more near' do
  	@integer3.more_near_key(4,0).should == 5
  end
end