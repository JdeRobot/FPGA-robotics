{
  "version": "1.2",
  "package": {
    "name": "IR Sensor Drv KY033",
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
          "id": "9597c393-eddd-4f86-9ec8-72c8ace70ca3",
          "type": "basic.input",
          "data": {
            "name": "IR_OUT",
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
            "x": 232,
            "y": 240
          }
        },
        {
          "id": "716ccba7-3a12-41e0-8b3f-71ebe9384a7d",
          "type": "basic.output",
          "data": {
            "name": "BLACK",
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
  },
  "dependencies": {}
}