require "appium_lib"

class HomePage

def initialize
    @continue_button = "//*[@text='Continue']"
end


def click_element(locator_type, locator_value)
    $driver.find_element(locator_type, locator_value).click()
end

def type_value(locator_type, locator_value, data)
    $driver.find_element(locator_type, locator_value).send_keys(data)
end

def clickOnContinue()
    click_element(:xpath, @continue_button)
end

end


