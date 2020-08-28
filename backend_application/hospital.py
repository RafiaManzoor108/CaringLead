"""Data models."""
from . import db

class Hospital(db.Model):
    """Data model for hospital."""

    __tablename__ = 'hospital'
    id = db.Column(
        db.Integer,
        primary_key=True
    )
    hospital_name = db.Column(
        db.String(50),
        index=False,
        nullable=False
    )
    longitude = db.Column(
        db.Float(),
        index = False,
        nullable = True
    )


    def __repr__(self):
        return '<Hospital {}>'.format(self.username)