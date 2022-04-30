{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2056%2056%22%3E%3Cpath%20fill=%22#226bac%22%20d=%22M19%206h19v4H19z%22/%3E%3Cpath%20d=%22M53.63%2050H2.37A2.37%202.37%200%200%201%200%2047.63V12.37A2.37%202.37%200%200%201%202.37%2010h51.26A2.37%202.37%200%200%201%2056%2012.37v35.26A2.37%202.37%200%200%201%2053.63%2050z%22%20fill=%22#57abc1%22/%3E%3Ccircle%20cx=%2229%22%20cy=%2230%22%20r=%2216%22%20fill=%22#424a60%22/%3E%3Ccircle%20cx=%2229%22%20cy=%2230%22%20r=%2214%22%20fill=%22#7383bf%22/%3E%3Cpath%20d=%22M32.818%2030c0%204.576%201.804%208.626%204.582%2011.181C40.795%2038.626%2043%2034.576%2043%2030s-2.205-8.626-5.6-11.181c-2.778%202.555-4.582%206.605-4.582%2011.181zM15%2030c0%204.576%202.205%208.626%205.6%2011.181%202.778-2.555%204.582-6.605%204.582-11.181s-1.804-8.626-4.582-11.181C17.205%2021.374%2015%2025.424%2015%2030z%22%20fill=%22#879ad8%22/%3E%3Ccircle%20cx=%2223.909%22%20cy=%2224.909%22%20r=%222.545%22%20fill=%22#bccef7%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "240be82d-64e0-4c0c-a09b-6e3c7f340620",
          "type": "basic.input",
          "data": {
            "name": "D7",
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
            "y": 8
          }
        },
        {
          "id": "e14a0b80-9735-47ff-85a2-3830709fa0e2",
          "type": "basic.output",
          "data": {
            "name": "ready_color",
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
            "x": 736,
            "y": 48
          }
        },
        {
          "id": "5e9ecb9a-cd49-4fcf-8448-834e1344d76d",
          "type": "basic.input",
          "data": {
            "name": "D6",
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
            "y": 88
          }
        },
        {
          "id": "5416f016-2177-4a57-8508-77f1da4fd51e",
          "type": "basic.output",
          "data": {
            "name": "RED",
            "range": "[4:0]",
            "pins": [
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
            "x": 736,
            "y": 128
          }
        },
        {
          "id": "8c397961-c021-4db6-9552-b08bef884cf2",
          "type": "basic.input",
          "data": {
            "name": "D5",
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
            "y": 144
          }
        },
        {
          "id": "4bcde028-2fb9-4421-a616-d85c24a13e9a",
          "type": "basic.input",
          "data": {
            "name": "D4",
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
            "x": 32,
            "y": 208
          }
        },
        {
          "id": "2c9d65eb-4a45-4e6c-abed-37906f49b4a5",
          "type": "basic.output",
          "data": {
            "name": "GREEN",
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
            "x": 736,
            "y": 208
          }
        },
        {
          "id": "fc90a014-b67c-4943-81f8-3447473b9056",
          "type": "basic.output",
          "data": {
            "name": "BLUE",
            "range": "[4:0]",
            "pins": [
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
            "x": 736,
            "y": 288
          }
        },
        {
          "id": "f5028d0d-ae1b-42fa-9df6-39268d078da5",
          "type": "basic.input",
          "data": {
            "name": "D3",
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
            "y": 328
          }
        },
        {
          "id": "78ef634a-657f-4db1-9bd4-d32ebe15e4ae",
          "type": "basic.output",
          "data": {
            "name": "debug",
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
            "x": 736,
            "y": 368
          }
        },
        {
          "id": "41c26bc5-5d07-4266-8ad7-6b09d5084e6a",
          "type": "basic.input",
          "data": {
            "name": "D2",
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
            "y": 408
          }
        },
        {
          "id": "14c783a0-f4ec-4206-8642-1e67e47792a8",
          "type": "basic.input",
          "data": {
            "name": "D1",
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
            "y": 488
          }
        },
        {
          "id": "4528eb99-ebb6-48a4-9f18-3c1c0f55f307",
          "type": "basic.input",
          "data": {
            "name": "D0",
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
            "y": 568
          }
        },
        {
          "id": "2be6b75c-b69d-4eaf-8f45-da177b99cc18",
          "type": "basic.input",
          "data": {
            "name": "VSYNC",
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
            "y": 648
          }
        },
        {
          "id": "c744fe1b-9661-4379-8dc5-ef927d30f53f",
          "type": "basic.input",
          "data": {
            "name": "HREF",
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
            "y": 728
          }
        },
        {
          "id": "1bc21413-95f0-41e4-a065-67bec4913b50",
          "type": "basic.input",
          "data": {
            "name": "PCLK",
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
            "y": 808
          }
        },
        {
          "id": "a5e10e7d-912a-4609-841b-ba61810ad0ac",
          "type": "basic.input",
          "data": {
            "name": "START",
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
            "y": 888
          }
        },
        {
          "id": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
          "type": "basic.code",
          "data": {
            "code": "//la resolucion son 640 columnas y 480 filas. \r\nlocalparam BYTE1 = 1'b0;\r\nlocalparam BYTE2 = 1'b1;\r\nreg [4:0] RED_reg = 5'd0;\r\nreg [2:0] GREEN_prev = 3'd0;\r\nreg [5:0] GREEN_reg = 6'd0; \r\nreg [4:0] BLUE_reg = 5'd0; \r\nreg state = BYTE1;\r\nreg ready_color_reg = 1'b0;\r\nreg ready_byte_reg = 1'b0;\r\nreg debug_reg = 1'b0;\r\n\r\nalways @(posedge PCLK) \r\nbegin\r\n    if( (HREF === 1'b1) && (VSYNC === 1'b0) &&(START == 1'b1))\r\n    begin\r\n      case(state)\r\n        BYTE1: \r\n        begin\r\n          RED_reg<= {D7,D6,D5,D4,D3};\r\n          GREEN_prev<= {D2,D1,D0};\r\n          ready_color_reg <= 1'b0;\r\n          state<= BYTE2;\r\n          debug_reg<= !debug_reg;\r\n        end\r\n        BYTE2:\r\n        begin\r\n          GREEN_reg<={GREEN_prev,D7,D6,D5};\r\n          BLUE_reg<={D4,D3,D2,D1,D0};\r\n          ready_color_reg <= 1'b1;\r\n          state<= BYTE1;\r\n          debug_reg<= !debug_reg;\r\n        end\r\n      endcase\r\n    end\r\n    else begin\r\n        ready_color_reg <= 1'b0;\r\n    end\r\nend\r\nassign BLUE = BLUE_reg;\r\nassign GREEN = GREEN_reg;\r\nassign RED = RED_reg; \r\nassign ready_color = ready_color_reg;\r\nassign debug = debug_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "D7"
                },
                {
                  "name": "D6"
                },
                {
                  "name": "D5"
                },
                {
                  "name": "D4"
                },
                {
                  "name": "D3"
                },
                {
                  "name": "D2"
                },
                {
                  "name": "D1"
                },
                {
                  "name": "D0"
                },
                {
                  "name": "VSYNC"
                },
                {
                  "name": "HREF"
                },
                {
                  "name": "PCLK"
                },
                {
                  "name": "START"
                }
              ],
              "out": [
                {
                  "name": "ready_color"
                },
                {
                  "name": "RED",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "GREEN",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "BLUE",
                  "range": "[4:0]",
                  "size": 5
                },
                {
                  "name": "debug"
                }
              ]
            }
          },
          "position": {
            "x": 280,
            "y": 48
          },
          "size": {
            "width": 304,
            "height": 456
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "ready_color"
          },
          "target": {
            "block": "e14a0b80-9735-47ff-85a2-3830709fa0e2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "RED"
          },
          "target": {
            "block": "5416f016-2177-4a57-8508-77f1da4fd51e",
            "port": "in"
          },
          "size": 5
        },
        {
          "source": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "GREEN"
          },
          "target": {
            "block": "2c9d65eb-4a45-4e6c-abed-37906f49b4a5",
            "port": "in"
          },
          "size": 6
        },
        {
          "source": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "BLUE"
          },
          "target": {
            "block": "fc90a014-b67c-4943-81f8-3447473b9056",
            "port": "in"
          },
          "size": 5
        },
        {
          "source": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "debug"
          },
          "target": {
            "block": "78ef634a-657f-4db1-9bd4-d32ebe15e4ae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "240be82d-64e0-4c0c-a09b-6e3c7f340620",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D7"
          }
        },
        {
          "source": {
            "block": "5e9ecb9a-cd49-4fcf-8448-834e1344d76d",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D6"
          }
        },
        {
          "source": {
            "block": "8c397961-c021-4db6-9552-b08bef884cf2",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D5"
          }
        },
        {
          "source": {
            "block": "4bcde028-2fb9-4421-a616-d85c24a13e9a",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D4"
          }
        },
        {
          "source": {
            "block": "f5028d0d-ae1b-42fa-9df6-39268d078da5",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D3"
          }
        },
        {
          "source": {
            "block": "41c26bc5-5d07-4266-8ad7-6b09d5084e6a",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D2"
          }
        },
        {
          "source": {
            "block": "14c783a0-f4ec-4206-8642-1e67e47792a8",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D1"
          }
        },
        {
          "source": {
            "block": "4528eb99-ebb6-48a4-9f18-3c1c0f55f307",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "D0"
          }
        },
        {
          "source": {
            "block": "2be6b75c-b69d-4eaf-8f45-da177b99cc18",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "VSYNC"
          }
        },
        {
          "source": {
            "block": "c744fe1b-9661-4379-8dc5-ef927d30f53f",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "HREF"
          }
        },
        {
          "source": {
            "block": "1bc21413-95f0-41e4-a065-67bec4913b50",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "PCLK"
          }
        },
        {
          "source": {
            "block": "a5e10e7d-912a-4609-841b-ba61810ad0ac",
            "port": "out"
          },
          "target": {
            "block": "5004d9b8-8ffb-4a27-a63e-b2aad3b0e724",
            "port": "START"
          }
        }
      ]
    }
  },
  "dependencies": {}
}