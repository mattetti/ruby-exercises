describe String, 'extensions' do
  
  it 'should be able to be displayed without punctuations' do
    "this is when I said: dude??!".remove_punctuation_and_misc.should == "this is when I said dude"
  end
  
  it "should replace hyphens and underscores by spaces" do
    "self-esteem".remove_punctuation_and_misc.should == 'self esteem' 
  end
  
  it do
    "A zUuT   alors".minimum.should == 'a zuut alors'
  end
  
  it do
    %{it's ’time `to' "sleep"'"'`’}.remove_punctuation_and_misc.should == 'it s  time to  sleep   ' 
  end
  
  describe "highlight_and_quote" do
    
    before(:all) do
      @string = "|El modo de hacer algo|significa ~the way of  ____  ____ .~"
      @spaced_string = "Hablar del tiempo significa  ____  ____  ____  ____  ____ ."
    end
    
    it "should highlight and quote" do
      @string.highlight_and_quote.should == " <span class=\"highlighted\">El modo de hacer algo</span> significa &quot;the way of  ____  ____ .&quot;"
    end
    
    it "should be able to revert an highlight and quote" do
      @string.highlight_and_quote.reverse_highlight_and_quote.should == @string
    end
    
    it "should respect spacing before punctation" do
      @spaced_string.highlight_and_quote.should == "Hablar del tiempo significa  ____  ____  ____  ____  <span>____&nbsp;.</span>"
    end
    
    it "should be able to revert the punctuation spacing" do
       @spaced_string.highlight_and_quote.reverse_highlight_and_quote.should == @spaced_string
    end
    
    it "should replace 2 spaces (not between underscores) by html blanks" do
      "this is  a test".highlight_and_quote.should == "this is&nbsp;&nbsp;a test"
    end
    
   it "should be able to reverse 2 html blanks by 2 spaces" do
      "this is&nbsp;&nbsp;a test".reverse_highlight_and_quote.should == "this is  a test"
    end
    
    it "should quote strings properly" do
      "Regular ~-ar~ Verbs:".highlight_and_quote.should == "Regular &quot;-ar&quot; Verbs:"
    end
    
    it "should revert quote strings properly" do
      "Regular &quot;-ar&quot; Verbs:".reverse_highlight_and_quote.should == "Regular ~-ar~ Verbs:"
    end
    
  end
  
end