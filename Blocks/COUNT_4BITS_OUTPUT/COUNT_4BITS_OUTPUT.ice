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
          "id": "a33ed03d-d9a2-4025-9638-57e7556ffd1d",
          "type": "basic.input",
          "data": {
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 192
          }
        },
        {
          "id": "50705f1f-5a44-4905-a0e7-318fcda4b565",
          "type": "basic.output",
          "data": {
            "name": "count",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 704,
            "y": 240
          }
        },
        {
          "id": "ae25e436-4248-4017-8206-55e3865cd09d",
          "type": "basic.code",
          "data": {
            "code": "reg [3:0] aux = 4'd0; \r\nalways @(posedge sw1)\r\nbegin\r\naux <= (aux==4'd10)? 4'd0: aux+4'd1;\r\nend\r\n\r\nassign count = aux;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "sw1"
                }
              ],
              "out": [
                {
                  "name": "count",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 224,
            "y": 152
          },
          "size": {
            "width": 416,
            "height": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "a33ed03d-d9a2-4025-9638-57e7556ffd1d",
            "port": "out"
          },
          "target": {
            "block": "ae25e436-4248-4017-8206-55e3865cd09d",
            "port": "sw1"
          }
        },
        {
          "source": {
            "block": "ae25e436-4248-4017-8206-55e3865cd09d",
            "port": "count"
          },
          "target": {
            "block": "50705f1f-5a44-4905-a0e7-318fcda4b565",
            "port": "in"
          },
          "size": 4
        }
      ]
    },
    "state": {
      "pan": {
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}