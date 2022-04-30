{
  "version": "1.2",
  "package": {
    "name": "ov7670_ctrl",
    "version": "1.0",
    "description": "configures ov7670 camera",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "ce76c178-bc55-4ea1-bd6d-3ce445bc1709",
          "type": "basic.output",
          "data": {
            "name": "cnt_reg_test",
            "range": "[5:0]",
            "pins": [
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
            "x": 800,
            "y": 24
          }
        },
        {
          "id": "fc67e6bc-f539-46c2-aad2-9e12d93fdb43",
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
            "x": 40,
            "y": 64
          }
        },
        {
          "id": "119c2b46-d420-41e7-99bd-61948ac04392",
          "type": "basic.output",
          "data": {
            "name": "ov7670_cfgdone",
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
            "x": 800,
            "y": 72
          }
        },
        {
          "id": "59f4f893-d1a5-4ee9-8e0f-779762132772",
          "type": "basic.output",
          "data": {
            "name": "ov7670_sioc",
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
            "x": 800,
            "y": 120
          }
        },
        {
          "id": "08b8aa22-8b87-435a-b790-ef8822895486",
          "type": "basic.output",
          "data": {
            "name": "sdat_on",
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
            "x": 800,
            "y": 168
          }
        },
        {
          "id": "cd42d85e-f5a1-4da3-af0f-2cf2df5ae69f",
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
            "x": 40,
            "y": 200
          }
        },
        {
          "id": "00a4b164-0fd1-410c-9092-468df22d7ec3",
          "type": "basic.output",
          "data": {
            "name": "sdat_out",
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
            "x": 800,
            "y": 224
          }
        },
        {
          "id": "7fd08a02-253a-4cd9-8f4d-2515efe3acca",
          "type": "basic.output",
          "data": {
            "name": "ov7670_rst_n",
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
            "x": 800,
            "y": 272
          }
        },
        {
          "id": "b5cbb24e-4c52-4963-aeb6-30a84f977c1b",
          "type": "basic.output",
          "data": {
            "name": "ov7670_xclk",
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
            "x": 800,
            "y": 320
          }
        },
        {
          "id": "1652a04a-a200-41e9-9126-d824e62daf73",
          "type": "basic.output",
          "data": {
            "name": "ov7670_pwdn",
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
            "x": 800,
            "y": 368
          }
        },
        {
          "id": "df66099b-afea-4d27-85fe-cc32c7645103",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 24,
            "y": 328
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
          "type": "basic.code",
          "data": {
            "code": "  // @include ov7670_top_ctrl.v\r\n  // @include ov7670_ctrl_reg.v\r\n  // @include sccb_master.v\r\n  \r\n  ov7670_top_ctrl lnk2vrlg \r\n  (\r\n     .rst          (rst),\r\n     .clk          (clk100mhz),\r\n     .resend       (resend),\r\n     .cnt_reg_test (cnt_reg_test[5:0]),\r\n     .done         (ov7670_cfgdone),\r\n     .sclk         (ov7670_sioc),\r\n     .sdat_on      (sdat_on),\r\n     .sdat_out     (sdat_out),\r\n     .ov7670_rst_n (ov7670_rst_n),\r\n     .ov7670_clk   (ov7670_xclk),\r\n     .ov7670_pwdn  (ov7670_pwdn)\r\n  );",
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
                  "name": "resend"
                }
              ],
              "out": [
                {
                  "name": "cnt_reg_test",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "ov7670_cfgdone"
                },
                {
                  "name": "ov7670_sioc"
                },
                {
                  "name": "sdat_on"
                },
                {
                  "name": "sdat_out"
                },
                {
                  "name": "ov7670_rst_n"
                },
                {
                  "name": "ov7670_xclk"
                },
                {
                  "name": "ov7670_pwdn"
                }
              ]
            }
          },
          "position": {
            "x": 200,
            "y": 32
          },
          "size": {
            "width": 480,
            "height": 392
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "fc67e6bc-f539-46c2-aad2-9e12d93fdb43",
            "port": "out"
          },
          "target": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "cd42d85e-f5a1-4da3-af0f-2cf2df5ae69f",
            "port": "out"
          },
          "target": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "clk100mhz"
          }
        },
        {
          "source": {
            "block": "df66099b-afea-4d27-85fe-cc32c7645103",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "resend"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "cnt_reg_test"
          },
          "target": {
            "block": "ce76c178-bc55-4ea1-bd6d-3ce445bc1709",
            "port": "in"
          },
          "size": 6
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "sdat_on"
          },
          "target": {
            "block": "08b8aa22-8b87-435a-b790-ef8822895486",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "sdat_out"
          },
          "target": {
            "block": "00a4b164-0fd1-410c-9092-468df22d7ec3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "ov7670_rst_n"
          },
          "target": {
            "block": "7fd08a02-253a-4cd9-8f4d-2515efe3acca",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "ov7670_pwdn"
          },
          "target": {
            "block": "1652a04a-a200-41e9-9126-d824e62daf73",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "ov7670_sioc"
          },
          "target": {
            "block": "59f4f893-d1a5-4ee9-8e0f-779762132772",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "ov7670_cfgdone"
          },
          "target": {
            "block": "119c2b46-d420-41e7-99bd-61948ac04392",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3bf759e1-2e82-41de-b330-93b35fcfe7ff",
            "port": "ov7670_xclk"
          },
          "target": {
            "block": "b5cbb24e-4c52-4963-aeb6-30a84f977c1b",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "c4dd08263a85a91ba53e2ae2b38de344c5efcb52": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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