from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

def create_app():
    """Construct the core application."""
    app = Flask(__name__, instance_relative_config=False)
    app.config.from_object('config.Config')

    db.init_app(app)

    with app.app_context():
        #import controller specific routes
        from .routes import users
        # Register Blueprints
        app.register_blueprint(users.users_bp)
        # Create sql tables for our data models
        db.create_all()  

        return app