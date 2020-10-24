{
  "version": "1.2",
  "package": {
    "name": "ov7670_capture",
    "version": "1.0",
    "description": "Capture for the ov7670 camera",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "7188770e-5968-4580-83f3-4e82d4c1469e",
          "type": "basic.input",
          "data": {
            "name": "rst",
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
            "x": 112,
            "y": 144
          }
        },
        {
          "id": "54b35ab3-5f2d-4978-9e8a-4866c9a458d8",
          "type": "basic.output",
          "data": {
            "name": "capture_addr",
            "range": "[12:0]",
            "pins": [
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
            "x": 912,
            "y": 184
          }
        },
        {
          "id": "ec9fab67-5ae0-4f7f-b4a9-addeaad534b6",
          "type": "basic.input",
          "data": {
            "name": "clk100mhz",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 112,
            "y": 200
          }
        },
        {
          "id": "f43f11f8-0882-4053-8f68-ea8c2618ed78",
          "type": "basic.input",
          "data": {
            "name": "ov7670_pclk",
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
            "x": 88,
            "y": 256
          }
        },
        {
          "id": "b3563b5a-0a1d-4784-b441-de091b95c160",
          "type": "basic.output",
          "data": {
            "name": "capture_data",
            "range": "[11:0]",
            "pins": [
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
            "x": 928,
            "y": 320
          }
        },
        {
          "id": "0225814f-ce1b-4803-8d37-68341dddc112",
          "type": "basic.input",
          "data": {
            "name": "ov7670_vsync",
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
            "x": 72,
            "y": 320
          }
        },
        {
          "id": "48889635-149d-47e0-9c92-fbcd38e60aec",
          "type": "basic.input",
          "data": {
            "name": "ov7670_href",
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
            "x": 72,
            "y": 376
          }
        },
        {
          "id": "d0b9ffdd-61d6-4bcc-aaf9-ecf5407bcfd7",
          "type": "basic.input",
          "data": {
            "name": "ov7670_d",
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
            "x": 72,
            "y": 432
          }
        },
        {
          "id": "11962766-de30-4117-96ce-859e68ae6514",
          "type": "basic.output",
          "data": {
            "name": "capture_we",
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
            "x": 912,
            "y": 456
          }
        },
        {
          "id": "deead84d-4cfd-4e54-bfa7-c78df965f865",
          "type": "basic.input",
          "data": {
            "name": "rgbmode",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 88,
            "y": 488
          }
        },
        {
          "id": "0a902920-d58a-4157-bf37-a86e6fb383f5",
          "type": "basic.code",
          "data": {
            "code": "// @include ov7670_capture.v\n\nwire    swap_r_b; // Red and Blue are swapped\nassign  swap_r_b = 1'b1;\n\n  ov7670_capture lnk2vrlg \n  (\n     .rst          (rst),\n     .clk          (clk100mhz),\n     .pclk         (ov7670_pclk),\n     .vsync        (ov7670_vsync),\n     .href         (ov7670_href),\n     .rgbmode      (rgbmode),\n     .swap_r_b     (swap_r_b),\n     .data         (ov7670_d),\n     .addr         (capture_addr),\n     .dout         (capture_data),\n     .we           (capture_we)\n  );\n  ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk100mhz"
                },
                {
                  "name": "ov7670_pclk"
                },
                {
                  "name": "ov7670_vsync"
                },
                {
                  "name": "ov7670_href"
                },
                {
                  "name": "ov7670_d",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "rgbmode"
                }
              ],
              "out": [
                {
                  "name": "capture_addr",
                  "range": "[12:0]",
                  "size": 13
                },
                {
                  "name": "capture_data",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "capture_we"
                }
              ]
            }
          },
          "position": {
            "x": 280,
            "y": 144
          },
          "size": {
            "width": 536,
            "height": 408
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "7188770e-5968-4580-83f3-4e82d4c1469e",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ec9fab67-5ae0-4f7f-b4a9-addeaad534b6",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "clk100mhz"
          }
        },
        {
          "source": {
            "block": "f43f11f8-0882-4053-8f68-ea8c2618ed78",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "ov7670_pclk"
          }
        },
        {
          "source": {
            "block": "0225814f-ce1b-4803-8d37-68341dddc112",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "ov7670_vsync"
          }
        },
        {
          "source": {
            "block": "48889635-149d-47e0-9c92-fbcd38e60aec",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "ov7670_href"
          }
        },
        {
          "source": {
            "block": "d0b9ffdd-61d6-4bcc-aaf9-ecf5407bcfd7",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "ov7670_d"
          },
          "size": 8
        },
        {
          "source": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "capture_addr"
          },
          "target": {
            "block": "54b35ab3-5f2d-4978-9e8a-4866c9a458d8",
            "port": "in"
          },
          "size": 13
        },
        {
          "source": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "capture_data"
          },
          "target": {
            "block": "b3563b5a-0a1d-4784-b441-de091b95c160",
            "port": "in"
          },
          "size": 12
        },
        {
          "source": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "capture_we"
          },
          "target": {
            "block": "11962766-de30-4117-96ce-859e68ae6514",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "deead84d-4cfd-4e54-bfa7-c78df965f865",
            "port": "out"
          },
          "target": {
            "block": "0a902920-d58a-4157-bf37-a86e6fb383f5",
            "port": "rgbmode"
          }
        }
      ]
    }
  },
  "dependencies": {}
}