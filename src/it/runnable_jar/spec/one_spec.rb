require 'jbundler'

describe "something" do
  it "does something" do
    $CLASSPATH.size.should == 4
    $CLASSPATH.each do |lp|
      lp.should =~ /^file:/
    end
    Jars.home.should == 'uri:classloader://'
    Dir.pwd.should == 'uri:classloader://'
    $LOAD_PATH.each do |lp|
      lp.should =~ /^uri:classloader:|runnable.jar!\//
    end
  end
end