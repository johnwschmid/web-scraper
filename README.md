# README

This app is a simple webscraper built with Rails. You can choose to monitor a certain webpage and enter a selector that you would like to query for in the DOM. If you choose the text option, it will check it against the value that is returned from the DOM, and if they match you will see a successful result when you press the Check Results button. Here is an example input to monitor the adafruit webpage: URL:

https://www.adafruit.com/product/5812
Check Type: text
Selector: [itemprop='availability']
Match Text: In stock

This will tell you when that product is in stock - I have yet to add a chronjob to regularly check the results, and a notification feature that will send you an email when it is :)
