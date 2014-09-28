Currency-Converter
==================
[![Build Status](https://travis-ci.org/heldtogether/Currency-Converter.svg?branch=master)](https://travis-ci.org/heldtogether/Currency-Converter)

A simple iOS app which demonstrates Dependency Injection, Unit Tests and Continuous Integration. 

See the Tests directory for usage of the classes defined in the main project.

There is a mock repository which returns a sample of currency exchange rates. Currently it's possible to convert from USD to GBP and from GBP to USD. To be useful, you will need to create a real Rates repository which fetches rates. 

Examples of where to get currency exchange rates are:

- http://developer.oanda.com/
- https://openexchangerates.org/
