from flask import Flask
import os
import metadata
import json

app = Flask(__name__)

# homepage route
@app.route('/')
def hello_world():
    return 'This is the homepage'

# status endpoint    
@app.route('/status')
def status():
    last_commit_sha=os.environ['COMMIT_SHA']
    # for local testing,
    #if not last_commit_sha:
    #    last_commit_sha="abc1234567"
    
    #forcefulling failing test
    # see build 51 for failure result
    #last_commit_sha="12345"
    
    # building out json file for result
    json_build = {
        "my-application": [
            {
                "version": str(metadata.version),
                "description": str(metadata.description),
                "sha": str(last_commit_sha)
            }
        ]
    }
    result = json.dumps(json_build)
    return (result)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')