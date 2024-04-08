from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from notification.routes import notification_bp

app = Flask(__name__)

# Configuration de la base de données PostgreSQL
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://admin:admin@postgresql:port/database'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

app.register_blueprint(notification_bp, url_prefix='/notifications')

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=7000)
