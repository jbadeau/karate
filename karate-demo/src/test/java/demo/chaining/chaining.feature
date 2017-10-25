Feature: dogs end-point that uses jdbc as part of the test

Background:
* def transform = read('classpath:transform.js')
* url demoBaseUrl


Scenario: create and retrieve a dog

# create a dog
Given path 'dogs'
* def template = read('classpath:demo/chaining/dog.json')
* def data = {name: 'Scooby'}
And request transform(template, data)
When method post
Then status 200
And match response == { id: '#number', name: 'Scooby' }

