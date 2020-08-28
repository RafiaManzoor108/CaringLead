from datetime import datetime as dt
from flask import request, make_response, Blueprint
from flask import current_app as app
from backend_application.users import db, Users

# Blueprint Configuration
users_bp = Blueprint( 'users_bp', __name__ )


@users_bp.route('/api/users/authenticate_user', methods=['GET', 'POST'])
def authenticate_user():
    """Get UserName or Email Id and Password and Match it in DB"""

    try:
        username = request.args.get('username')
        password = request.args.get('password')

        query = """SELECT password FROM users 
                WHERE username = '{}' 
                AND password = '{}'""".format(username,
                                              password)

        check_credentials = db.session.execute(query).first()
        
        if check_credentials is not None:
            print(check_credentials)
            return make_response(str(username) + " you are successfully logged in", 200)
        
        else:
            return make_response("Invalid Credentials", 400)
    except:
        return make_response("Something went wrong")