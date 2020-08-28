"""Data models."""
from . import db

class Teams(db.Model):
    """Data model for Teams ."""

    __tablename__ = 'teams'
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
    team_name = db.Column(
        db.String(50),
        index = False,
        unique = False,
        nullable = False
    )
    team_size = db.Column(
        db.Integer(),
        index = False,
        unique = False,
        nullable = False
    )
    
    def __repr__(self):
        return '<Team  {}>'.format(self.username)