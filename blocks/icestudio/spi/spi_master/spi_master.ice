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
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "e7cb9381-4164-4c25-ba00-72c37df2df31",
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
            "x": -176,
            "y": 136
          }
        },
        {
          "id": "fdc0b9ae-45ae-4285-86c8-6f8a66d97fb6",
          "type": "basic.output",
          "data": {
            "name": "busy_spi",
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
            "x": 904,
            "y": 144
          }
        },
        {
          "id": "cfbf8498-f0bc-4fb0-bc44-1a03a9e83e9c",
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
            "x": -200,
            "y": 184
          }
        },
        {
          "id": "f19e3f2e-32c6-4629-942e-f88704750d9d",
          "type": "basic.input",
          "data": {
            "name": "ena_2clk",
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
            "x": -200,
            "y": 240
          }
        },
        {
          "id": "fd93ee0e-cc6f-4386-8d45-28d9ac257767",
          "type": "basic.input",
          "data": {
            "name": "start",
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
            "x": -216,
            "y": 304
          }
        },
        {
          "id": "50e235e2-3385-4dc2-869c-a29a300b39be",
          "type": "basic.output",
          "data": {
            "name": "sclk_o",
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
            "x": 920,
            "y": 328
          }
        },
        {
          "id": "af6f65e2-a2a6-49c8-a6d7-f27154f3cc76",
          "type": "basic.input",
          "data": {
            "name": "ack",
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
            "x": -40,
            "y": 352
          }
        },
        {
          "id": "7c071aa2-1f78-462c-bbf1-b07283922ed1",
          "type": "basic.input",
          "data": {
            "name": "data_spi",
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
            "x": -208,
            "y": 360
          }
        },
        {
          "id": "a59b6fc9-e398-4636-aca0-0907147e8ad6",
          "type": "basic.input",
          "data": {
            "name": "cpol",
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
            "x": -200,
            "y": 416
          }
        },
        {
          "id": "26d65848-229b-4280-bf4c-fb343fa44ff3",
          "type": "basic.input",
          "data": {
            "name": "dord",
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
            "x": -208,
            "y": 464
          }
        },
        {
          "id": "3518615b-f740-4450-b702-e0eddcdcb7e4",
          "type": "basic.output",
          "data": {
            "name": "mosi_o",
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
            "y": 480
          }
        },
        {
          "id": "d5d17033-190d-44b6-9c74-13f7fbba45dd",
          "type": "basic.input",
          "data": {
            "name": "cpha",
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
            "x": -216,
            "y": 512
          }
        },
        {
          "id": "3f8d97c2-b88b-4c8d-b717-480bf7b36b52",
          "type": "basic.output",
          "data": {
            "name": "rpi_run",
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
            "x": 856,
            "y": 552
          }
        },
        {
          "id": "6fd30186-e930-4605-8b97-b02c1302684e",
          "type": "basic.input",
          "data": {
            "name": "miso_i",
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
            "x": -216,
            "y": 576
          }
        },
        {
          "id": "686efab2-218f-40e8-a203-454f35652261",
          "type": "basic.code",
          "data": {
            "code": "// @include spi_master.v\r\n \r\n  SPI_Master i_spi_master\r\n   (\r\n    // System\r\n    .clk_i      (clk),\r\n    .rst_i      (rst),\r\n    .ena_i      (ena_2clk),  // 2*SCK\r\n    // Interface\r\n    .start_i    (start),\r\n    .ack_i      (ack),  // IRQ Ack\r\n    .tx_i       (data_spi),\r\n    .busy_o     (busy_spi), \r\n    // Mode options\r\n    .cpol_i     (cpol),  // SCK value for idle\r\n    .dord_i     (dord),  // 1 LSB first\r\n    .cpha_i     (cpha),  // 1 Trailing sample\r\n    // SPI\r\n    .sclk_o     (sclk_o), \r\n    .miso_i     (miso_i),\r\n    //.mosi_en_o  (ssb), \r\n    .mosi_o     (mosi_o),\r\n    .rpi_running (rpi_running)\r\n   );\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "ena_2clk"
                },
                {
                  "name": "start"
                },
                {
                  "name": "data_spi",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ack"
                },
                {
                  "name": "cpol"
                },
                {
                  "name": "dord"
                },
                {
                  "name": "cpha"
                },
                {
                  "name": "miso_i"
                }
              ],
              "out": [
                {
                  "name": "busy_spi"
                },
                {
                  "name": "sclk_o"
                },
                {
                  "name": "mosi_o"
                },
                {
                  "name": "rpi_running"
                }
              ]
            }
          },
          "position": {
            "x": 208,
            "y": 144
          },
          "size": {
            "width": 544,
            "height": 448
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e7cb9381-4164-4c25-ba00-72c37df2df31",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "cfbf8498-f0bc-4fb0-bc44-1a03a9e83e9c",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "f19e3f2e-32c6-4629-942e-f88704750d9d",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "ena_2clk"
          }
        },
        {
          "source": {
            "block": "fd93ee0e-cc6f-4386-8d45-28d9ac257767",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "start"
          }
        },
        {
          "source": {
            "block": "7c071aa2-1f78-462c-bbf1-b07283922ed1",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "data_spi"
          },
          "vertices": [
            {
              "x": -56,
              "y": 368
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "af6f65e2-a2a6-49c8-a6d7-f27154f3cc76",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "ack"
          }
        },
        {
          "source": {
            "block": "a59b6fc9-e398-4636-aca0-0907147e8ad6",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "cpol"
          }
        },
        {
          "source": {
            "block": "26d65848-229b-4280-bf4c-fb343fa44ff3",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "dord"
          }
        },
        {
          "source": {
            "block": "d5d17033-190d-44b6-9c74-13f7fbba45dd",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "cpha"
          }
        },
        {
          "source": {
            "block": "6fd30186-e930-4605-8b97-b02c1302684e",
            "port": "out"
          },
          "target": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "miso_i"
          }
        },
        {
          "source": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "busy_spi"
          },
          "target": {
            "block": "fdc0b9ae-45ae-4285-86c8-6f8a66d97fb6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "sclk_o"
          },
          "target": {
            "block": "50e235e2-3385-4dc2-869c-a29a300b39be",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "mosi_o"
          },
          "target": {
            "block": "3518615b-f740-4450-b702-e0eddcdcb7e4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "686efab2-218f-40e8-a203-454f35652261",
            "port": "rpi_running"
          },
          "target": {
            "block": "3f8d97c2-b88b-4c8d-b717-480bf7b36b52",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}