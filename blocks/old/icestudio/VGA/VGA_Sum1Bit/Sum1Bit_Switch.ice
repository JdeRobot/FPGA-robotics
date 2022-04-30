{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d",
          "type": "basic.input",
          "data": {
            "name": "s1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -80,
            "y": 168
          }
        },
        {
          "id": "9cc3e304-b2f2-41af-9d5d-c2eaee0d7990",
          "type": "basic.output",
          "data": {
            "name": "led",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "LED0",
                "value": "95"
              },
              {
                "index": "2",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "1",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "0",
                "name": "LED3",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 728,
            "y": 208
          }
        },
        {
          "id": "88ac7b32-da40-4ffa-861a-2d1456ac1069",
          "type": "basic.code",
          "data": {
            "code": "reg [3:0] aux = 0;\nalways @(posedge s1) begin\n      aux <= aux+1;\nend\nassign led = aux;\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "s1"
                }
              ],
              "out": [
                {
                  "name": "led",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 232,
            "y": 192
          },
          "size": {
            "width": 304,
            "height": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9f2d71fa-104d-4921-8d1a-b7a0ba8aee4d",
            "port": "out"
          },
          "target": {
            "block": "88ac7b32-da40-4ffa-861a-2d1456ac1069",
            "port": "s1"
          }
        },
        {
          "source": {
            "block": "88ac7b32-da40-4ffa-861a-2d1456ac1069",
            "port": "led"
          },
          "target": {
            "block": "9cc3e304-b2f2-41af-9d5d-c2eaee0d7990",
            "port": "in"
          },
          "size": 4
        }
      ]
    },
    "state": {
      "pan": {
        "x": 597,
        "y": 177.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}