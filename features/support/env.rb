require 'rubygems'
require 'selenium-webdriver'
require 'yaml'
require 'pry'
require 'rspec/expectations'


  begin
    $date_execution = Time.now.strftime("%d-%m-%Y %H:%M:%S")
    $driver = Selenium::WebDriver.for(:"#{ENV['BROWSER']}")
    $driver.manage().window().maximize()
    $driver.navigate.to("https://m2-stage.drogasil.com.br/")
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end