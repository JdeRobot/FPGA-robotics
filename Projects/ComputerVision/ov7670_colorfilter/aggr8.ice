{
  "version": "1.2",
  "package": {
    "name": "aggr8",
    "version": "1.0",
    "description": "Joins 8 cables in a 8bit bus",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "9b523903-6033-48ee-9911-17cd4a0098fa",
          "type": "basic.input",
          "data": {
            "name": "in0",
            "pins": [
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
            "x": 144,
            "y": 112
          }
        },
        {
          "id": "c3ded014-3d4c-4fe4-b6eb-60cebda43db0",
          "type": "basic.input",
          "data": {
            "name": "in1",
            "pins": [
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
            "x": 144,
            "y": 160
          }
        },
        {
          "id": "727214f6-871c-4086-b363-38e9c9d6fa77",
          "type": "basic.input",
          "data": {
            "name": "in2",
            "pins": [
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
            "x": 144,
            "y": 208
          }
        },
        {
          "id": "2f0c37bf-782f-4ff4-a948-092d72f663cb",
          "type": "basic.input",
          "data": {
            "name": "in3",
            "pins": [
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
            "x": 144,
            "y": 256
          }
        },
        {
          "id": "869657d7-2582-484e-a7f9-b3767aa8572c",
          "type": "basic.output",
          "data": {
            "name": "dout",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
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
            "virtual": true
          },
          "position": {
            "x": 656,
            "y": 256
          }
        },
        {
          "id": "733d6c10-c99e-4ddc-8d03-29793ec8c46a",
          "type": "basic.input",
          "data": {
            "name": "in4",
            "pins": [
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
            "x": 144,
            "y": 304
          }
        },
        {
          "id": "a31b590a-a4ef-4f19-bf04-082d40c70adb",
          "type": "basic.input",
          "data": {
            "name": "in5",
            "pins": [
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
            "x": 144,
            "y": 352
          }
        },
        {
          "id": "40ac0610-323e-4121-8b8c-22221388630d",
          "type": "basic.input",
          "data": {
            "name": "in6",
            "pins": [
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
            "x": 144,
            "y": 400
          }
        },
        {
          "id": "3512f8a7-dbc9-4dfe-be01-605af3aac1e1",
          "type": "basic.input",
          "data": {
            "name": "in7",
            "pins": [
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
            "x": 144,
            "y": 448
          }
        },
        {
          "id": "147a73f0-707a-4bca-afed-7733cf4c0adb",
          "type": "basic.code",
          "data": {
            "code": "assign dout[0] =in0;\nassign dout[1] =in1;\nassign dout[2] =in2;\nassign dout[3] =in3;\nassign dout[4] =in4;\nassign dout[5] =in5;\nassign dout[6] =in6;\nassign dout[7] =in7;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in0"
                },
                {
                  "name": "in1"
                },
                {
                  "name": "in2"
                },
                {
                  "name": "in3"
                },
                {
                  "name": "in4"
                },
                {
                  "name": "in5"
                },
                {
                  "name": "in6"
                },
                {
                  "name": "in7"
                }
              ],
              "out": [
                {
                  "name": "dout",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 344,
            "y": 200
          },
          "size": {
            "width": 248,
            "height": 176
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9b523903-6033-48ee-9911-17cd4a0098fa",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in0"
          }
        },
        {
          "source": {
            "block": "727214f6-871c-4086-b363-38e9c9d6fa77",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in2"
          },
          "vertices": [
            {
              "x": 272,
              "y": 256
            }
          ]
        },
        {
          "source": {
            "block": "c3ded014-3d4c-4fe4-b6eb-60cebda43db0",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in1"
          },
          "vertices": [
            {
              "x": 288,
              "y": 216
            }
          ]
        },
        {
          "source": {
            "block": "2f0c37bf-782f-4ff4-a948-092d72f663cb",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in3"
          }
        },
        {
          "source": {
            "block": "733d6c10-c99e-4ddc-8d03-29793ec8c46a",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in4"
          },
          "vertices": [
            {
              "x": 272,
              "y": 312
            }
          ]
        },
        {
          "source": {
            "block": "a31b590a-a4ef-4f19-bf04-082d40c70adb",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in5"
          },
          "vertices": [
            {
              "x": 280,
              "y": 344
            }
          ]
        },
        {
          "source": {
            "block": "40ac0610-323e-4121-8b8c-22221388630d",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in6"
          },
          "vertices": [
            {
              "x": 288,
              "y": 400
            }
          ]
        },
        {
          "source": {
            "block": "3512f8a7-dbc9-4dfe-be01-605af3aac1e1",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in7"
          }
        },
        {
          "source": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "dout"
          },
          "target": {
            "block": "869657d7-2582-484e-a7f9-b3767aa8572c",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}