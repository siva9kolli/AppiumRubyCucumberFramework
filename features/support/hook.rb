require "rubygems"
require "appium_lib"

Before do
    puts("Pre Condition")
caps = {}
caps["name"] = "Ruby Appium Example"
caps["deviceName"] = "Google Pixel 3"
caps["platformName"] = "Android"
caps["version"] = "12.0"
caps["app"] = "NoBroker.apk"
caps["automationName"] = "UiAutomator2"
caps["appPackage"] = "com.nobroker.app"
caps["appWaitActivity"] = "com.nobroker.app.activities.NBLauncherActivity, com.nobroker.app.com.nobroker.app.activities.NBLauncherActivity"


appium_driver = Appium::Driver.new({
  "caps" => caps,
  "appium_lib" => {
    :server_url => "http://127.0.0.1:4723",
  },
}, true)

$driver = appium_driver.start_driver
  end
  
  After do
   # @driver.quit
  end