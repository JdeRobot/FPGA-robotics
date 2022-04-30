{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "ulx3s-85f",
    "graph": {
      "blocks": [
        {
          "id": "abd8d666-a9c9-4de2-9b74-628d5e6ea8fa",
          "type": "basic.input",
          "data": {
            "name": "GP4",
            "pins": [
              {
                "index": "0",
                "name": "gp4",
                "value": "A7"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 152,
            "y": 240
          }
        },
        {
          "id": "a7a454d7-957f-48b3-8910-8895730eeca3",
          "type": "basic.output",
          "data": {
            "name": "LED_5",
            "pins": [
              {
                "index": "0",
                "name": "led_5",
                "value": "E2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 640,
            "y": 240
          }
        },
        {
          "id": "a46cd5b4-b3b6-4f7d-9456-174a6e95f71c",
          "type": "a29456f4ed59b2e2cb2f25c7f5c2c0f669a634e5",
          "position": {
            "x": 392,
            "y": 240
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f55f76ed-6aa0-45d8-8d3a-f7c6bf74924e",
          "type": "basic.info",
          "data": {
            "info": "IR Sensor Driver",
            "readonly": false
          },
          "position": {
            "x": 368,
            "y": 312
          },
          "size": {
            "width": 152,
            "height": 40
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "abd8d666-a9c9-4de2-9b74-628d5e6ea8fa",
            "port": "out"
          },
          "target": {
            "block": "a46cd5b4-b3b6-4f7d-9456-174a6e95f71c",
            "port": "9597c393-eddd-4f86-9ec8-72c8ace70ca3"
          }
        },
        {
          "source": {
            "block": "a46cd5b4-b3b6-4f7d-9456-174a6e95f71c",
            "port": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d"
          },
          "target": {
            "block": "a7a454d7-957f-48b3-8910-8895730eeca3",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "a29456f4ed59b2e2cb2f25c7f5c2c0f669a634e5": {
      "package": {
        "name": "IR Sensor Drv KY033",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9597c393-eddd-4f86-9ec8-72c8ace70ca3",
              "type": "basic.input",
              "data": {
                "name": "IR_OUT",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 240
              }
            },
            {
              "id": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d",
              "type": "basic.output",
              "data": {
                "name": "BLACK"
              },
              "position": {
                "x": 584,
                "y": 240
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9597c393-eddd-4f86-9ec8-72c8ace70ca3",
                "port": "out"
              },
              "target": {
                "block": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}