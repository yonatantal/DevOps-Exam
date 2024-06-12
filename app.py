from flask import Flask

website = Flask("__name__")


# when user browse into '/', index function is called
@website.route('/')
def index():
    return '<h1 style="color:MediumSeaGreen; font-family:verdana;">Hello World!</h1>'


# website.run(host="0.0.0.0", port=1234)
