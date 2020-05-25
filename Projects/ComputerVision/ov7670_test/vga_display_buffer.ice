{
  "version": "1.2",
  "package": {
    "name": "vga_display_buf",
    "version": "1.0",
    "description": "shows in a VGA the content of a memory (buffer). synch not included",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "3bfd3aec-8bb8-4141-b4e6-dbeb43ab765e",
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
            "x": 216,
            "y": 200
          }
        },
        {
          "id": "4786cc9e-bfa2-40f4-af3e-759c5de4b48d",
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
            "x": 944,
            "y": 280
          }
        },
        {
          "id": "57ae9f5d-3586-4e28-8348-99cd0e43d0ab",
          "type": "basic.input",
          "data": {
            "name": "vga_visible",
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
            "x": 136,
            "y": 344
          }
        },
        {
          "id": "b1124e74-c979-42a5-8656-5d339cd84d37",
          "type": "basic.input",
          "data": {
            "name": "vga_new_pxl",
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
            "x": 912,
            "y": 408
          }
        },
        {
          "id": "2731484c-007d-4ddf-8a11-e9a46ed6437f",
          "type": "basic.input",
          "data": {
            "name": "vga_hsync",
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
            "y": 472
          }
        },
        {
          "id": "75a3fd55-a9a9-41bf-9b90-12dfbc773603",
          "type": "basic.input",
          "data": {
            "name": "vga_vsync",
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
            "virtual": true,
            "clock": false
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
            "virtual": true,
            "clock": false
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
  },
  "dependencies": {
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