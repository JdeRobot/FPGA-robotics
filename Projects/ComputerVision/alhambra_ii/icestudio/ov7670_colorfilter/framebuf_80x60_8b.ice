{
  "version": "1.2",
  "package": {
    "name": "framebuf_80x60_12b",
    "version": "1.0",
    "description": "memory for 80x60 image, double port, one for writting and the other for reading. 12-bit word length",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "41a7d14d-2c2e-4d69-984e-9fa285b1b755",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "x": 32,
            "y": 48
          }
        },
        {
          "id": "bd49a723-2ccc-4b91-ba24-43f34e78af92",
          "type": "basic.input",
          "data": {
            "name": "wea",
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
            "x": 40,
            "y": 136
          }
        },
        {
          "id": "4baee360-25c6-424e-a07c-87f7bcc80a67",
          "type": "basic.input",
          "data": {
            "name": "addra",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 224
          }
        },
        {
          "id": "bf92f289-92fa-4df1-bdb0-5dc85a9e1eb5",
          "type": "basic.output",
          "data": {
            "name": "doutb",
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
            "virtual": true
          },
          "position": {
            "x": 896,
            "y": 224
          }
        },
        {
          "id": "bf1b8de8-1802-4b65-85a1-3d4cc7dcce6b",
          "type": "basic.input",
          "data": {
            "name": "dina",
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
            "x": 16,
            "y": 304
          }
        },
        {
          "id": "46e37124-3720-45e6-9a47-6f30b84f2f38",
          "type": "basic.input",
          "data": {
            "name": "addrb",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 384
          }
        },
        {
          "id": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
          "type": "basic.code",
          "data": {
            "code": "  parameter c_img_cols = 80; // # cols\r\n  parameter c_img_rows = 60; // # rows\r\n  parameter c_img_pxls = c_img_cols * c_img_rows; //4800=80x60\r\n  parameter c_nb_img_pxls =  13;  //80*60=4800 -> 2^13\r\n  parameter c_nb_buf = 8; //8 bits for gray\r\n  \r\n  reg doutb;\r\n  reg  [c_nb_buf-1:0] ram[c_img_pxls-1:0];\r\n\r\n  always @ (posedge clk)\r\n  begin\r\n    if (wea)\r\n      ram[addra] <= dina;\r\n      doutb <= ram[addrb];\r\n  end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "wea"
                },
                {
                  "name": "addra",
                  "range": "[12:0]",
                  "size": 13
                },
                {
                  "name": "dina",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "addrb",
                  "range": "[12:0]",
                  "size": 13
                }
              ],
              "out": [
                {
                  "name": "doutb",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 192,
            "y": 48
          },
          "size": {
            "width": 616,
            "height": 408
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "41a7d14d-2c2e-4d69-984e-9fa285b1b755",
            "port": "out"
          },
          "target": {
            "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "bd49a723-2ccc-4b91-ba24-43f34e78af92",
            "port": "out"
          },
          "target": {
            "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
            "port": "wea"
          }
        },
        {
          "source": {
            "block": "4baee360-25c6-424e-a07c-87f7bcc80a67",
            "port": "out"
          },
          "target": {
            "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
            "port": "addra"
          },
          "size": 13
        },
        {
          "source": {
            "block": "46e37124-3720-45e6-9a47-6f30b84f2f38",
            "port": "out"
          },
          "target": {
            "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
            "port": "addrb"
          },
          "size": 13
        },
        {
          "source": {
            "block": "bf1b8de8-1802-4b65-85a1-3d4cc7dcce6b",
            "port": "out"
          },
          "target": {
            "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
            "port": "dina"
          },
          "size": 8
        },
        {
          "source": {
            "block": "4babde41-f8a0-4c55-9a22-eacf6eda45c7",
            "port": "doutb"
          },
          "target": {
            "block": "bf92f289-92fa-4df1-bdb0-5dc85a9e1eb5",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}