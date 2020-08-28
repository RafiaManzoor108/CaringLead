"""Data models."""
from . import db



class Users(db.Model):
    """Data model for user accounts."""

    __tablename__ = 'users'
    id = db.Column(
        db.Integer,
        primary_key=True
    )
    hospital_id = db.Column(
        db.Integer,
        index=False,
        nullable=True
    )
    department_id = db.Column(
        db.Integer,
        index=False,
        nullable=True
        )
    team_id = db.Column(
        db.Integer,
        index=False,
        nullable=True
    )
    team_leader_id = db.Column(
        db.Integer,
        index=False,
        nullable=True
    )
    username = db.Column(
        db.String(64),
        index=False,
        unique=True,
        nullable=False
    )
    email = db.Column(
        db.String(80),
        index=True,
        unique=True,
        nullable=False
    )
    password = db.Column(
        db.String(200),
        index = False,
        unique = False,
        nullable = False
    )
    name = db.Column(
        db.String(80),
        index = False,
        unique = False,
        nullable = False
    )
    user_role_id = db.Column(
        db.Integer(),
        index = False,
        unique = False,
        nullable = False
    )
    user_role_name = db.Column(
        db.String(80),
        index = False,
        unique = False,
        nullable = False
    )

    created_at= db.Column(
        db.DateTime,
        index=False,
        unique=False,
        nullable=False
    )
	
    def __repr__(self):
        return '<User {}>'.format(self.username)