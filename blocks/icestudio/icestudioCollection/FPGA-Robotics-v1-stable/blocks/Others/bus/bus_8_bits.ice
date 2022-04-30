{
  "version": "1.2",
  "package": {
    "name": "bus8bits",
    "version": "1.0",
    "description": "Joins 8 cables in a 8bit bus",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "9b523903-6033-48ee-9911-17cd4a0098fa",
          "type": "basic.input",
          "data": {
            "name": "in0",
            "clock": false,
            "virtual": true
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
            "clock": false,
            "virtual": true
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
            "clock": false,
            "virtual": true
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
            "clock": false,
            "virtual": true
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
            "size": 8,
            "virtual": true
          },
          "position": {
            "x": 936,
            "y": 280
          }
        },
        {
          "id": "733d6c10-c99e-4ddc-8d03-29793ec8c46a",
          "type": "basic.input",
          "data": {
            "name": "in4",
            "clock": false,
            "virtual": true
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
            "clock": false,
            "virtual": true
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
            "clock": false,
            "virtual": true
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
            "clock": false,
            "virtual": true
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
            "code": "//-- 8bits_bus.v\r\n//-- Bit aggregator to generate a 8 bits bus.\r\n//-- Author: JdeRobot [FPGA-Robotics]\r\n/*\r\nmodule bus_8bits( \r\n\t\t//-- Inputs ports\r\n\t\tinput wire in0,\r\n\t\tinput wire in1,\r\n\t\tinput wire in2,\r\n\t\tinput wire in3,\r\n\t\tinput wire in4,\r\n\t\tinput wire in5,\r\n\t\tinput wire in6,\r\n\t\tinput wire in7,\r\n\t\t\r\n\t\t//-- Output ports\r\n\t\toutput wire [7:0] dout\r\n\t);\r\n*/\r\n\tassign dout[0] = in0;\r\n\tassign dout[1] = in1;\r\n\tassign dout[2] = in2;\r\n\tassign dout[3] = in3;\r\n\tassign dout[4] = in4;\r\n\tassign dout[5] = in5;\r\n\tassign dout[6] = in6;\r\n\tassign dout[7] = in7;\r\n\t\r\n//endmodule",
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
            "x": 360,
            "y": 120
          },
          "size": {
            "width": 480,
            "height": 384
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
          "vertices": []
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
          "vertices": []
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
          "vertices": []
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
          "vertices": []
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
          "vertices": []
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