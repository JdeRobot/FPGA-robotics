{
  "version": "1.2",
  "package": {
    "name": "0",
    "version": "1.0",
    "description": "",
    "author": "JdeRobot [FPGA-Robotics] (URJC)",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 584,
            "y": 200
          }
        },
        {
          "id": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
          "type": "basic.code",
          "data": {
            "code": "// Bit 0\n\nassign v = 1'b0;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "v"
                }
              ]
            }
          },
          "position": {
            "x": 304,
            "y": 168
          },
          "size": {
            "width": 192,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "32f166c7-4cd7-4d58-912f-a1e5d53f4aee",
            "port": "v"
          },
          "target": {
            "block": "b5b8dd3c-c3e8-4c6c-a5ab-02407033be45",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}