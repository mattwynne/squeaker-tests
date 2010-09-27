Before do
  browser.goto("#{environment}")
  browser.url.should == environment
  browser.link(:text, "Squeaker").exists?.should == true
end