from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def sample_application():
    user_agent = request.headers.get('User-Agent')
    return f"Welcome to 2022 and User Agent Info : {user_agent}"

if __name__ == '__main__':
    app.run()
