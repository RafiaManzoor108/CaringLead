"""Data models."""
from . import db

class department(db.Model):
    """Data model for department."""'

    __tablename__ = 'department'
    id = db.Column(
        db.Integer,
        primary_key=True
    )
    hospital_id = db.Column(
        db.Integer(),
        index=False,
        nullable=False
    )
    department_name = db.Column(
        db.String(50),
        index = False,
        unique = True,
        nullable = False
    )

    
    def __repr__(self):
        return '<Department {}>'.format(self.username)