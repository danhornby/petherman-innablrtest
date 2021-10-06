from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'hello!'
    
@app.route('/status')
def status():
    last_commit_sha=os.environ['COMMIT_SHA']
    print(last_commit_sha)
    return (last_commit_sha)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')