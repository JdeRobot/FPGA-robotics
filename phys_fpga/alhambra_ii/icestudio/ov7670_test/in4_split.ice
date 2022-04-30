{
  "version": "1.2",
  "package": {
    "name": "in4_split",
    "version": "",
    "description": "Split a 4 bits bus into 4 outputs",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "661421c3-a761-4f19-9463-e839aff33a1d",
          "type": "basic.output",
          "data": {
            "name": "out_0",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 704,
            "y": 136
          }
        },
        {
          "id": "63deebcf-645d-4a51-a1e4-1d6c8fee6aae",
          "type": "basic.output",
          "data": {
            "name": "out_1",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 704,
            "y": 184
          }
        },
        {
          "id": "76373c63-7291-4047-8eba-bcbc1030c730",
          "type": "basic.input",
          "data": {
            "name": "in4bits",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 88,
            "y": 208
          }
        },
        {
          "id": "f22443f0-a80d-47e9-ad8a-520a0d9ca269",
          "type": "basic.output",
          "data": {
            "name": "out_2",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 704,
            "y": 232
          }
        },
        {
          "id": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0",
          "type": "basic.output",
          "data": {
            "name": "out_3",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 704,
            "y": 280
          }
        },
        {
          "id": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
          "type": "basic.code",
          "data": {
            "code": "assign out_0 = in4bits[0];\nassign out_1 = in4bits[1];\nassign out_2 = in4bits[2];\nassign out_3 = in4bits[3];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in4bits",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "out_0"
                },
                {
                  "name": "out_1"
                },
                {
                  "name": "out_2"
                },
                {
                  "name": "out_3"
                }
              ]
            }
          },
          "position": {
            "x": 280,
            "y": 176
          },
          "size": {
            "width": 360,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "76373c63-7291-4047-8eba-bcbc1030c730",
            "port": "out"
          },
          "target": {
            "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
            "port": "in4bits"
          },
          "size": 4
        },
        {
          "source": {
            "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
            "port": "out_0"
          },
          "target": {
            "block": "661421c3-a761-4f19-9463-e839aff33a1d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
            "port": "out_1"
          },
          "target": {
            "block": "63deebcf-645d-4a51-a1e4-1d6c8fee6aae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
            "port": "out_2"
          },
          "target": {
            "block": "f22443f0-a80d-47e9-ad8a-520a0d9ca269",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3db6ef54-d9cb-4d91-8b84-0eb1fcf4f50d",
            "port": "out_3"
          },
          "target": {
            "block": "a32fbcfe-f87d-41e6-9ec9-86b3472deeb0",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}