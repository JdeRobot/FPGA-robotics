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
          "id": "76b29663-7d9b-4099-9a13-7aa1946b9f6c",
          "type": "basic.output",
          "data": {
            "name": "LEDS",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "led_7",
                "value": "H3"
              },
              {
                "index": "2",
                "name": "led_6",
                "value": "E1"
              },
              {
                "index": "1",
                "name": "led_5",
                "value": "E2"
              },
              {
                "index": "0",
                "name": "led_4",
                "value": "D1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 896,
            "y": 0
          }
        },
        {
          "id": "4eaa1966-92b4-4747-bf17-53baaad33b00",
          "type": "basic.output",
          "data": {
            "name": "LEDS",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "led_3",
                "value": "D2"
              },
              {
                "index": "2",
                "name": "led_2",
                "value": "C1"
              },
              {
                "index": "1",
                "name": "led_1",
                "value": "C2"
              },
              {
                "index": "0",
                "name": "led_0",
                "value": "B2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 896,
            "y": 200
          }
        },
        {
          "id": "a923f5c0-0c64-4056-8cd6-1d0ec63082db",
          "type": "839d8bb5251ff2786ef36df45c95ce8601f5cdce",
          "position": {
            "x": 392,
            "y": 232
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "cab261aa-1212-4916-8781-93b979e156a7",
          "type": "basic.code",
          "data": {
            "code": "assign data = 8'd30;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -24,
            "y": 176
          },
          "size": {
            "width": 248,
            "height": 64
          }
        },
        {
          "id": "e5355780-ac2a-4037-8df5-ed57372d427c",
          "type": "basic.code",
          "data": {
            "code": "assign data = 8'd90;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -24,
            "y": 248
          },
          "size": {
            "width": 248,
            "height": 64
          }
        },
        {
          "id": "3cbe0c2a-9a4b-499a-ab33-1ffbdd74782a",
          "type": "basic.code",
          "data": {
            "code": "assign o = i[7:4];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[15:0]",
                  "size": 16
                }
              ],
              "out": [
                {
                  "name": "o",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 632,
            "y": 48
          },
          "size": {
            "width": 216,
            "height": 64
          }
        },
        {
          "id": "a6239819-e9f6-45ba-9f16-1347b0b9166b",
          "type": "basic.code",
          "data": {
            "code": "assign o = i[7:4];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[15:0]",
                  "size": 16
                }
              ],
              "out": [
                {
                  "name": "o",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 632,
            "y": 248
          },
          "size": {
            "width": 216,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cab261aa-1212-4916-8781-93b979e156a7",
            "port": "data"
          },
          "target": {
            "block": "a923f5c0-0c64-4056-8cd6-1d0ec63082db",
            "port": "a34b78aa-e900-4bbb-80fa-3a6cac345f90"
          },
          "size": 8
        },
        {
          "source": {
            "block": "e5355780-ac2a-4037-8df5-ed57372d427c",
            "port": "data"
          },
          "target": {
            "block": "a923f5c0-0c64-4056-8cd6-1d0ec63082db",
            "port": "1f573659-f81a-4d88-99fb-0cfe5618a8e4"
          },
          "size": 8
        },
        {
          "source": {
            "block": "3cbe0c2a-9a4b-499a-ab33-1ffbdd74782a",
            "port": "o"
          },
          "target": {
            "block": "76b29663-7d9b-4099-9a13-7aa1946b9f6c",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "a923f5c0-0c64-4056-8cd6-1d0ec63082db",
            "port": "01727ad2-d712-4273-955f-64c176a7bd87"
          },
          "target": {
            "block": "3cbe0c2a-9a4b-499a-ab33-1ffbdd74782a",
            "port": "i"
          },
          "size": 16
        },
        {
          "source": {
            "block": "a6239819-e9f6-45ba-9f16-1347b0b9166b",
            "port": "o"
          },
          "target": {
            "block": "4eaa1966-92b4-4747-bf17-53baaad33b00",
            "port": "in"
          },
          "vertices": [],
          "size": 4
        },
        {
          "source": {
            "block": "a923f5c0-0c64-4056-8cd6-1d0ec63082db",
            "port": "136771b7-c5a6-49a3-9f03-1d6e5cb5193c"
          },
          "target": {
            "block": "a6239819-e9f6-45ba-9f16-1347b0b9166b",
            "port": "i"
          },
          "size": 16
        }
      ]
    }
  },
  "dependencies": {
    "839d8bb5251ff2786ef36df45c95ce8601f5cdce": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "01727ad2-d712-4273-955f-64c176a7bd87",
              "type": "basic.output",
              "data": {
                "name": "DPS_LEFT",
                "range": "[15:0]",
                "size": 16
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
                "clock": false,
                "size": 8
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
                "size": 16
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
                "clock": false,
                "size": 8
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
      }
    }
  }
}