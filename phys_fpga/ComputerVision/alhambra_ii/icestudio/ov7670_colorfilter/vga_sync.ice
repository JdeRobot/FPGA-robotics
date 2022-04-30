{
  "version": "1.2",
  "package": {
    "name": "vga_sync",
    "version": "0.1",
    "description": "VGA synch 640x480 input clock 100MHz",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "c7fd3e9c-b755-4b02-b528-6565bd3ab584",
          "type": "basic.output",
          "data": {
            "name": "vga_visible",
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
            "x": 848,
            "y": 208
          }
        },
        {
          "id": "d7825011-3784-499f-8f78-848daff1f218",
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
            "x": 200,
            "y": 248
          }
        },
        {
          "id": "a9032c47-02cb-4b95-8d7a-306e60406c29",
          "type": "basic.output",
          "data": {
            "name": "vga_new_pxl",
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
            "x": 848,
            "y": 248
          }
        },
        {
          "id": "b93e7441-b87e-4252-805e-dbc29a63add8",
          "type": "basic.output",
          "data": {
            "name": "vga_hsync",
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
            "x": 848,
            "y": 288
          }
        },
        {
          "id": "339bdf97-c797-4b8d-bcd7-c9e073631869",
          "type": "basic.output",
          "data": {
            "name": "vga_vsync",
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
            "x": 848,
            "y": 328
          }
        },
        {
          "id": "e87df823-810b-48be-bc92-7af912e59159",
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
            "x": 136,
            "y": 368
          }
        },
        {
          "id": "46e3647b-7b1f-4e75-970c-ad971d14b5ea",
          "type": "basic.output",
          "data": {
            "name": "vga_col",
            "range": "[9:0]",
            "pins": [
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
            "x": 848,
            "y": 368
          }
        },
        {
          "id": "dc3cad4c-68e1-4247-9dfc-8a6a7f0429f1",
          "type": "basic.output",
          "data": {
            "name": "vga_row",
            "range": "[9:0]",
            "pins": [
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
            "x": 848,
            "y": 408
          }
        },
        {
          "id": "bf281b20-4810-4198-be4f-463d409da391",
          "type": "basic.code",
          "data": {
            "code": "   // @include vga_sync.v\r\n   \r\n   vga_sync link_vrlg\r\n   (\r\n     .rst     (rst),\r\n     .clk     (clk100mhz),\r\n     .visible (vga_visible),\r\n     .new_pxl (vga_new_pxl),\r\n     .hsync   (vga_hsync),\r\n     .vsync   (vga_vsync),\r\n     .col     (vga_col),\r\n     .row     (vga_row)\r\n  );",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk100mhz"
                }
              ],
              "out": [
                {
                  "name": "vga_visible"
                },
                {
                  "name": "vga_new_pxl"
                },
                {
                  "name": "vga_hsync"
                },
                {
                  "name": "vga_vsync"
                },
                {
                  "name": "vga_col",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "vga_row",
                  "range": "[9:0]",
                  "size": 10
                }
              ]
            }
          },
          "position": {
            "x": 336,
            "y": 216
          },
          "size": {
            "width": 424,
            "height": 248
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d7825011-3784-499f-8f78-848daff1f218",
            "port": "out"
          },
          "target": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "e87df823-810b-48be-bc92-7af912e59159",
            "port": "out"
          },
          "target": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "clk100mhz"
          }
        },
        {
          "source": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "vga_hsync"
          },
          "target": {
            "block": "b93e7441-b87e-4252-805e-dbc29a63add8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "vga_visible"
          },
          "target": {
            "block": "c7fd3e9c-b755-4b02-b528-6565bd3ab584",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "vga_new_pxl"
          },
          "target": {
            "block": "a9032c47-02cb-4b95-8d7a-306e60406c29",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "vga_vsync"
          },
          "target": {
            "block": "339bdf97-c797-4b8d-bcd7-c9e073631869",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "vga_col"
          },
          "target": {
            "block": "46e3647b-7b1f-4e75-970c-ad971d14b5ea",
            "port": "in"
          },
          "size": 10
        },
        {
          "source": {
            "block": "bf281b20-4810-4198-be4f-463d409da391",
            "port": "vga_row"
          },
          "target": {
            "block": "dc3cad4c-68e1-4247-9dfc-8a6a7f0429f1",
            "port": "in"
          },
          "size": 10
        }
      ]
    }
  },
  "dependencies": {}
}