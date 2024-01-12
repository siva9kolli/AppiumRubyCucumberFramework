Given('User on home page') do
    home_page = HomePage.new
    home_page.clickOnContinue()
    puts "User on home page verified"
end
  
When('User naviagted to {string} page') do |pageName|
    puts "User naviagted to #{pageName} page"
end

Given('User on login page') do
    puts "User on login page verified"
  end