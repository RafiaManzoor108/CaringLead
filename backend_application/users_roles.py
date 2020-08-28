"""Data models."""
from . import db


class UserRoles(db.Model):
    """Data model for user roles."""

    __tablename__ = 'user_roles'
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
    username = db.Column(
        db.String(64),
        index=False,
        unique=True,
        nullable=False
    )
    role_name = db.Column(
        db.String(80),
        index=False,
        unique=False,
        nullable=False
    )
    role_status = db.Column(
        db.String(20),
        index = False,
        unique = False,
        nullable = False
    )


    def __repr__(self):
        return '<User Roles {}>'.format(self.username)