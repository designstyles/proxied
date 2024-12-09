# Proxied

This package is meant to be a wrapper for a single-unified response type class. 

It has 2 main funcitons:
1 - AuthorizedProxy
2 - PublicProxy

## AuthorizedProxy
This is used when you have an authorizeDecorator that you want to make use of. 
Its useful for doing inteceptor work before actually making an API call. However there
is a limitation when using this. 
You would need to know the backend system that you are working with, to ensure that your
logic for the 'IsAuthorized' is correct according to the standards of the api. 

## PublicProxy
This is used just to wrap the code in the unified response and ensure that there is a 
try/catch so that our endpoints are handled. 
