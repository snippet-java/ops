import os
os.system('pip install flask')
os.system('pip install redis')
#!flask/bin/python
from flask import Flask
import redis
redis_host = os.environ.get('REDIS_SERVICE_HOST')
redis_port = os.environ.get('REDIS_SERVICE_PORT')
redis_password = os.environ.get('password')
app = Flask(__name__)

@app.route('/<key>/<value>')

def set_in_redis(key,value):
    """Example Hello Redis Program"""

    # step 3: create the Redis Connection object
    try:

        # The decode_repsonses flag here directs the client to convert the responses from Redis into Python strings
        # using the default encoding utf-8.  This is client specific.
        r = redis.StrictRedis(host=redis_host, port=redis_port, password=redis_password, decode_responses=True)

        # step 4: Set the hello message in Redis
        r.set(key, value)

        return "The key '"+key+"' is set in redis\n"
    except Exception as e:
        print(e)

@app.route('/<key>')
def get_from__redis(key):
    """Example Hello Redis Program"""

    # step 3: create the Redis Connection object
    try:

        # The decode_repsonses flag here directs the client to convert the responses from Redis into Python strings
        # using the default encoding utf-8.  This is client specific.
        r = redis.StrictRedis(host=redis_host, port=redis_port, password=redis_password, decode_responses=True)

        # step 5: Retrieve the hello message from Redis
        val = r.get(key)
        return "The value for key '"+key+"' is '"+val+"'\n"
    except Exception as e:
        print(e)


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8080,debug=True)
