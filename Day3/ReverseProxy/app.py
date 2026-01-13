from flask import Flask, jsonify
import datetime

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <html>
    <head>
        <title>Flask Backend</title>
        <style>
            body { font-family: Arial; background: #1a1a2e; color: #eee; 
                   display: flex; justify-content: center; align-items: center; 
                   height: 100vh; margin: 0; }
            .container { text-align: center; background: #16213e; 
                        padding: 40px; border-radius: 15px; }
            h1 { color: #00d9ff; }
            code { background: #0f0f23; padding: 5px 10px; border-radius: 5px; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>🐍 Flask Backend Server</h1>
            <p>Nginx Reverse Proxy Test Successful!</p>
            <p>Try: <code>/api/status</code> or <code>/api/hello/yourname</code></p>
        </div>
    </body>
    </html>
    '''

@app.route('/api/status')
def status():
    return jsonify({
        'status': 'running',
        'server': 'Flask Backend',
        'port': 5000,
        'time': datetime.datetime.now().isoformat(),
        'message': 'Reverse Proxy is working!'
    })

@app.route('/api/hello/<name>')
def hello(name):
    return jsonify({
        'message': f'Hello, {name}!',
        'from': 'Flask API',
        'timestamp': datetime.datetime.now().isoformat()
    })

@app.route('/api/info')
def info():
    return jsonify({
        'app': 'Linux Camp Day 3',
        'topic': 'Nginx Reverse Proxy',
        'endpoints': ['/', '/api/status', '/api/hello/<name>', '/api/info']
    })

if __name__ == '__main__':
    print("=" * 50)
    print("Flask Backend Server Starting...")
    print("Port: 5000")
    print("Endpoints: /, /api/status, /api/hello/<name>")
    print("=" * 50)
    app.run(host='0.0.0.0', port=5000, debug=True)
