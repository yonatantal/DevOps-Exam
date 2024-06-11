from flask import Flask

website = Flask("__name__")


# when user browse into '/', index function is called
@website.route('/')
def index():
    return "<h1>Hello World</h1>"
