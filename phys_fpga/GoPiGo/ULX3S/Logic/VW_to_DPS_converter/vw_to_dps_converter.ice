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
          "id": "01727ad2-d712-4273-955f-64c176a7bd87",
          "type": "basic.output",
          "data": {
            "name": "DPS_LEFT",
            "range": "[15:0]",
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "x": 1112,
            "y": 176
          }
        },
        {
          "id": "a34b78aa-e900-4bbb-80fa-3a6cac345f90",
          "type": "basic.input",
          "data": {
            "name": "v",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 64,
            "y": 176
          }
        },
        {
          "id": "136771b7-c5a6-49a3-9f03-1d6e5cb5193c",
          "type": "basic.output",
          "data": {
            "name": "DPS_RIGHT",
            "range": "[15:0]",
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "x": 1120,
            "y": 392
          }
        },
        {
          "id": "1f573659-f81a-4d88-99fb-0cfe5618a8e4",
          "type": "basic.input",
          "data": {
            "name": "w",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 56,
            "y": 400
          }
        },
        {
          "id": "5549d913-c8fe-41a1-a836-d318cc5cff39",
          "type": "basic.code",
          "data": {
            "code": "//localparam local_v = 8'd40; // cms/sec\r\n//localparam local_w = 8'd90; // degrees/sec\r\n\r\nreg [15:0] converted_v; \r\nreg [15:0] converted_w; \r\nreg [15:0] dps_l; \r\nreg [15:0] dps_r; \r\n\r\nalways @(v or w)\r\nbegin\r\n    converted_v <= v * 17;\r\n    converted_w <= w * 7 / 2;\r\n    if (w >= 0) begin\r\n        dps_l <=  converted_v;\r\n        dps_r <=  converted_v + converted_w;\r\n    end\r\n    else begin\r\n        dps_r <=  converted_v;\r\n        dps_l <=  converted_v - converted_w;\r\n    end\r\nend\r\n\r\nassign DPS_left = dps_l;\r\nassign DPS_right = dps_r;\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "v",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "w",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "DPS_left",
                  "range": "[15:0]",
                  "size": 16
                },
                {
                  "name": "DPS_right",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            }
          },
          "position": {
            "x": 264,
            "y": 104
          },
          "size": {
            "width": 720,
            "height": 424
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5549d913-c8fe-41a1-a836-d318cc5cff39",
            "port": "DPS_right"
          },
          "target": {
            "block": "136771b7-c5a6-49a3-9f03-1d6e5cb5193c",
            "port": "in"
          },
          "size": 16
        },
        {
          "source": {
            "block": "5549d913-c8fe-41a1-a836-d318cc5cff39",
            "port": "DPS_left"
          },
          "target": {
            "block": "01727ad2-d712-4273-955f-64c176a7bd87",
            "port": "in"
          },
          "size": 16
        },
        {
          "source": {
            "block": "a34b78aa-e900-4bbb-80fa-3a6cac345f90",
            "port": "out"
          },
          "target": {
            "block": "5549d913-c8fe-41a1-a836-d318cc5cff39",
            "port": "v"
          },
          "size": 8
        },
        {
          "source": {
            "block": "1f573659-f81a-4d88-99fb-0cfe5618a8e4",
            "port": "out"
          },
          "target": {
            "block": "5549d913-c8fe-41a1-a836-d318cc5cff39",
            "port": "w"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}