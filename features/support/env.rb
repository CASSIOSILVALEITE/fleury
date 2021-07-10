require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 15
    Capybara.page.driver.browser.manage.window.maximize
end