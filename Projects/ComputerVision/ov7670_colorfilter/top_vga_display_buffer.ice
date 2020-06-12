{
  "version": "1.2",
  "package": {
    "name": "top_vga_display_buffer",
    "version": "1.0",
    "description": "Shows the content of a memory (buffer) on a VGA. Just 80x60. 100MHz clock, includes synch",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "957075c8-28b9-455f-ba1e-2c786974a544",
          "type": "basic.output",
          "data": {
            "name": "frame_addr",
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
            "x": 808,
            "y": -64
          }
        },
        {
          "id": "8dec1622-1ecb-44dd-aa7c-6c08ce596226",
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
            "x": 72,
            "y": 8
          }
        },
        {
          "id": "ec690a06-0ec9-43b8-b5d5-a08dc29f2aa5",
          "type": "basic.output",
          "data": {
            "name": "vga_red",
            "range": "[3:0]",
            "pins": [
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
            "x": 808,
            "y": 8
          }
        },
        {
          "id": "9f124f5d-9e55-4251-bc92-4da0950b3ca7",
          "type": "basic.output",
          "data": {
            "name": "vga_green",
            "range": "[3:0]",
            "pins": [
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
            "x": 808,
            "y": 80
          }
        },
        {
          "id": "684a4969-01de-49e0-8962-35c1c389232c",
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
            "x": -72,
            "y": 104
          }
        },
        {
          "id": "a89262d2-1400-4664-97b1-9eeb755106e9",
          "type": "basic.output",
          "data": {
            "name": "vga_blue",
            "range": "[3:0]",
            "pins": [
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
            "x": 808,
            "y": 152
          }
        },
        {
          "id": "4b01e12d-ff8e-4013-a566-75e88153d55d",
          "type": "basic.input",
          "data": {
            "name": "frame_pixel",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 72,
            "y": 168
          }
        },
        {
          "id": "577d2445-2595-491c-9084-d994b5c39d8d",
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
            "x": 808,
            "y": 208
          }
        },
        {
          "id": "ce7ef2ff-5ae1-457b-8eae-dad1f7e120c4",
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
            "x": 808,
            "y": 256
          }
        },
        {
          "id": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
          "type": "8635c8f2ae895f7038f00286aa584ede82072281",
          "position": {
            "x": 224,
            "y": -8
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
          "type": "e98f0efce922f5c9844f4f4099154a34e0c1db77",
          "position": {
            "x": 584,
            "y": -72
          },
          "size": {
            "width": 96,
            "height": 288
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8dec1622-1ecb-44dd-aa7c-6c08ce596226",
            "port": "out"
          },
          "target": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "d7825011-3784-499f-8f78-848daff1f218"
          }
        },
        {
          "source": {
            "block": "8dec1622-1ecb-44dd-aa7c-6c08ce596226",
            "port": "out"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e"
          }
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "c7fd3e9c-b755-4b02-b528-6565bd3ab584"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab"
          }
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "a9032c47-02cb-4b95-8d7a-306e60406c29"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "b1124e74-c979-42a5-8656-5d339cd84d37"
          }
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "b93e7441-b87e-4252-805e-dbc29a63add8"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "2731484c-007d-4ddf-8a11-e9a46ed6437f"
          }
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "339bdf97-c797-4b8d-bcd7-c9e073631869"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "75a3fd55-a9a9-41bf-9b90-12dfbc773603"
          }
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "46e3647b-7b1f-4e75-970c-ad971d14b5ea"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "22b50a1e-8dfd-4f3d-b408-5a4dbc0325c4"
          },
          "size": 10
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "dc3cad4c-68e1-4247-9dfc-8a6a7f0429f1"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "0f4db30f-f401-4b0b-a24a-64e2cab45b48"
          },
          "size": 10
        },
        {
          "source": {
            "block": "684a4969-01de-49e0-8962-35c1c389232c",
            "port": "out"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d"
          }
        },
        {
          "source": {
            "block": "684a4969-01de-49e0-8962-35c1c389232c",
            "port": "out"
          },
          "target": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "e87df823-810b-48be-bc92-7af912e59159"
          }
        },
        {
          "source": {
            "block": "4b01e12d-ff8e-4013-a566-75e88153d55d",
            "port": "out"
          },
          "target": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "3de7b56c-3c49-43c8-85b3-f96db8a510ba"
          },
          "size": 12
        },
        {
          "source": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "5227f4f0-f0c8-4efb-8b7b-3d8c3a8a06a2"
          },
          "target": {
            "block": "957075c8-28b9-455f-ba1e-2c786974a544",
            "port": "in"
          },
          "size": 13
        },
        {
          "source": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "6a945bf8-e191-4008-b6e4-39c6fd994a9c"
          },
          "target": {
            "block": "ec690a06-0ec9-43b8-b5d5-a08dc29f2aa5",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "d2138c06-c304-4b09-a01f-82ac730620fd"
          },
          "target": {
            "block": "9f124f5d-9e55-4251-bc92-4da0950b3ca7",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "82b8ebcd-84e4-4399-8622-144e382dd5bb",
            "port": "9268078c-d20b-4e3c-834d-0af4858141d4"
          },
          "target": {
            "block": "a89262d2-1400-4664-97b1-9eeb755106e9",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "b93e7441-b87e-4252-805e-dbc29a63add8"
          },
          "target": {
            "block": "577d2445-2595-491c-9084-d994b5c39d8d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fcefc1ef-b1c4-4c91-93d5-9b4f1328e64d",
            "port": "339bdf97-c797-4b8d-bcd7-c9e073631869"
          },
          "target": {
            "block": "ce7ef2ff-5ae1-457b-8eae-dad1f7e120c4",
            "port": "in"
          },
          "vertices": [
            {
              "x": 448,
              "y": 256
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "8635c8f2ae895f7038f00286aa584ede82072281": {
      "package": {
        "name": "vga_sync",
        "version": "0.1",
        "description": "VGA synch 640x480 input clock 100MHz",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c7fd3e9c-b755-4b02-b528-6565bd3ab584",
              "type": "basic.output",
              "data": {
                "name": "vga_visible"
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
                "name": "vga_new_pxl"
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
                "name": "vga_hsync"
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
                "name": "vga_vsync"
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
                "size": 10
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
                "size": 10
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
      }
    },
    "e98f0efce922f5c9844f4f4099154a34e0c1db77": {
      "package": {
        "name": "vga_display_buf",
        "version": "1.0",
        "description": "shows in a VGA the content of a memory (buffer). synch not included",
        "author": "Felipe Machado",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 216,
                "y": 200
              }
            },
            {
              "id": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d",
              "type": "basic.input",
              "data": {
                "name": "clk100mhz",
                "clock": true
              },
              "position": {
                "x": 176,
                "y": 280
              }
            },
            {
              "id": "5227f4f0-f0c8-4efb-8b7b-3d8c3a8a06a2",
              "type": "basic.output",
              "data": {
                "name": "frame_addr",
                "range": "[12:0]",
                "size": 13
              },
              "position": {
                "x": 944,
                "y": 280
              }
            },
            {
              "id": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab",
              "type": "basic.input",
              "data": {
                "name": "vga_visible",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": 344
              }
            },
            {
              "id": "b1124e74-c979-42a5-8656-5d339cd84d37",
              "type": "basic.input",
              "data": {
                "name": "vga_new_pxl",
                "clock": false
              },
              "position": {
                "x": 168,
                "y": 400
              }
            },
            {
              "id": "6a945bf8-e191-4008-b6e4-39c6fd994a9c",
              "type": "basic.output",
              "data": {
                "name": "vga_red",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 912,
                "y": 408
              }
            },
            {
              "id": "2731484c-007d-4ddf-8a11-e9a46ed6437f",
              "type": "basic.input",
              "data": {
                "name": "vga_hsync",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": 472
              }
            },
            {
              "id": "75a3fd55-a9a9-41bf-9b90-12dfbc773603",
              "type": "basic.input",
              "data": {
                "name": "vga_vsync",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 528
              }
            },
            {
              "id": "d2138c06-c304-4b09-a01f-82ac730620fd",
              "type": "basic.output",
              "data": {
                "name": "vga_green",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 912,
                "y": 536
              }
            },
            {
              "id": "22b50a1e-8dfd-4f3d-b408-5a4dbc0325c4",
              "type": "basic.input",
              "data": {
                "name": "vga_col",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 48,
                "y": 616
              }
            },
            {
              "id": "9268078c-d20b-4e3c-834d-0af4858141d4",
              "type": "basic.output",
              "data": {
                "name": "vga_blue",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 904,
                "y": 664
              }
            },
            {
              "id": "0f4db30f-f401-4b0b-a24a-64e2cab45b48",
              "type": "basic.input",
              "data": {
                "name": "vga_row",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 40,
                "y": 672
              }
            },
            {
              "id": "3de7b56c-3c49-43c8-85b3-f96db8a510ba",
              "type": "basic.input",
              "data": {
                "name": "frame_pixel",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 160,
                "y": 728
              }
            },
            {
              "id": "0a375fad-0422-4a9c-95b9-5ba29ef185cc",
              "type": "basic.constant",
              "data": {
                "name": "c_img_cols",
                "value": "80",
                "local": true
              },
              "position": {
                "x": 440,
                "y": 120
              }
            },
            {
              "id": "be895d9a-51bc-425e-a618-28c02c1853e3",
              "type": "basic.constant",
              "data": {
                "name": "c_img_rows",
                "value": "60",
                "local": true
              },
              "position": {
                "x": 656,
                "y": 96
              }
            },
            {
              "id": "5e14278a-5d6c-4e1a-9f3e-ca3f68c54076",
              "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
              "position": {
                "x": -72,
                "y": 568
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "238f5dfb-5373-4e94-8a9d-82da055fa809",
              "type": "basic.code",
              "data": {
                "code": "  // @include vga_display.v\r\n  \r\n  vga_display link2vrlg \r\n  (\r\n     .rst        (rst),\r\n     .clk        (clk100mhz),\r\n     .visible    (vga_visible),\r\n     .new_pxl    (vga_new_pxl),\r\n     .hsync      (vga_hsync),\r\n     .vsync      (vga_vsync),\r\n     .rgbmode    (rgbmode),\r\n     .col        (vga_col),\r\n     .row        (vga_row),\r\n     .frame_pixel(frame_pixel),\r\n     .frame_addr (frame_addr),\r\n     .vga_red    (vga_red),\r\n     .vga_green  (vga_green),\r\n     .vga_blue   (vga_blue)\r\n  );",
                "params": [
                  {
                    "name": "c_img_cols"
                  },
                  {
                    "name": "c_img_rows"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk100mhz"
                    },
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
                      "name": "rgbmode"
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
                    },
                    {
                      "name": "frame_pixel",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ],
                  "out": [
                    {
                      "name": "frame_addr",
                      "range": "[12:0]",
                      "size": 13
                    },
                    {
                      "name": "vga_red",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "vga_green",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "vga_blue",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 376,
                "y": 248
              },
              "size": {
                "width": 440,
                "height": 512
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0a375fad-0422-4a9c-95b9-5ba29ef185cc",
                "port": "constant-out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "c_img_cols"
              }
            },
            {
              "source": {
                "block": "be895d9a-51bc-425e-a618-28c02c1853e3",
                "port": "constant-out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "c_img_rows"
              }
            },
            {
              "source": {
                "block": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "clk100mhz"
              }
            },
            {
              "source": {
                "block": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_visible"
              }
            },
            {
              "source": {
                "block": "b1124e74-c979-42a5-8656-5d339cd84d37",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_new_pxl"
              }
            },
            {
              "source": {
                "block": "2731484c-007d-4ddf-8a11-e9a46ed6437f",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_hsync"
              }
            },
            {
              "source": {
                "block": "75a3fd55-a9a9-41bf-9b90-12dfbc773603",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_vsync"
              }
            },
            {
              "source": {
                "block": "5e14278a-5d6c-4e1a-9f3e-ca3f68c54076",
                "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "rgbmode"
              }
            },
            {
              "source": {
                "block": "22b50a1e-8dfd-4f3d-b408-5a4dbc0325c4",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_col"
              },
              "size": 10
            },
            {
              "source": {
                "block": "0f4db30f-f401-4b0b-a24a-64e2cab45b48",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_row"
              },
              "size": 10
            },
            {
              "source": {
                "block": "3de7b56c-3c49-43c8-85b3-f96db8a510ba",
                "port": "out"
              },
              "target": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "frame_pixel"
              },
              "size": 12
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "frame_addr"
              },
              "target": {
                "block": "5227f4f0-f0c8-4efb-8b7b-3d8c3a8a06a2",
                "port": "in"
              },
              "size": 13
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_red"
              },
              "target": {
                "block": "6a945bf8-e191-4008-b6e4-39c6fd994a9c",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_green"
              },
              "target": {
                "block": "d2138c06-c304-4b09-a01f-82ac730620fd",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "238f5dfb-5373-4e94-8a9d-82da055fa809",
                "port": "vga_blue"
              },
              "target": {
                "block": "9268078c-d20b-4e3c-834d-0af4858141d4",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "c83dcd1d9ab420d911df81b3dfae04681559c623": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
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
                "x": 96,
                "y": 96
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}