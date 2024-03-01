#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from flask import Flask, request
import json

app = Flask(__name__)


@app.route("/get", methods=['GET'])
def get_test():
    name_from_url = request.args.get('name')
    response_dict = {}
    if name_from_url is not None:
        print("args name:", name_from_url)
        response_dict["name"] = name_from_url
    response_dict["status"] = 200
    response_dict["msg"] = "Hello, This a message from server!"

    return response_dict, 200


@app.route("/post", methods=['POST'])
def post_test():
    json_str = str(request.data, encoding='utf-8')
    json_dict = json.loads(json_str)
    name = json_dict["name"]
    print("param from body json:" + name)

    response_dict = {"status": 200, "name": name, "msg": "Hello, This a message from server!"}
    return response_dict, 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8090, debug=True)
