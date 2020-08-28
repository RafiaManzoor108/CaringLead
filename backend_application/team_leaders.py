"""Data models."""
from . import db

class TeamLeaders(db.Model):
    """Data model for team leaders."""

    __tablename__ = 'team_leaders'
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
   leader_name = db.Column(
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
    user_role_id = db.Column(
        db.Integer,
        index = False,
        unique = False,
        nullable = False
    )
    user_role_name = db.Column(
        db.String(50),
        index = False,
        unique = False,
        nullable = False
    )


    def __repr__(self):
        return '<Team Leaders {}>'.format(self.username)