{
  "version": "1.2",
  "package": {
    "name": "D block",
    "version": "",
    "description": "",
    "author": "",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cpath%20d=%22M512%20455.111C512%20486.53%20486.527%20512%20455.111%20512H56.89C25.472%20512%200%20486.527%200%20455.111V56.89C0%2025.472%2025.472%200%2056.889%200H455.11C486.527%200%20512%2025.472%20512%2056.889V455.11z%22%20fill=%22#3b88c3%22/%3E%3Cpath%20d=%22M194.944%20351.588h44.544c56.888%200%2082.887-41.885%2082.887-94.805%200-56.448-26.439-97.452-87.296-97.452h-40.135v192.257zm-66.133-219.15c0-20.295%2014.109-33.963%2033.949-33.963h73.201c98.788%200%20155.221%2063.503%20155.221%20161.394%200%2092.601-59.96%20152.576-150.812%20152.576h-76.729c-14.563%200-34.83-7.936-34.83-33.066V132.437z%22%20fill=%22#fff%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "5dce885d-2c78-460e-a479-a9c6271f7af5",
          "type": "basic.input",
          "data": {
            "name": "integer_part",
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
            "y": 160
          }
        },
        {
          "id": "9812e8f8-7504-45bf-bd52-d84545f09183",
          "type": "basic.input",
          "data": {
            "name": "decimal_part",
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
            "y": 296
          }
        },
        {
          "id": "99d5a872-429a-4872-a9a6-1d12e9dec3b6",
          "type": "basic.output",
          "data": {
            "name": "velocity",
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
            "x": 848,
            "y": 296
          }
        },
        {
          "id": "a3fd5251-5d71-4d84-8238-5614775fe34e",
          "type": "basic.input",
          "data": {
            "name": "data_ready",
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
            "x": 16,
            "y": 432
          }
        },
        {
          "id": "6b617bc2-b658-4109-a147-72d64a47894d",
          "type": "basic.constant",
          "data": {
            "name": "Kd",
            "value": "16'd0",
            "local": false
          },
          "position": {
            "x": 248,
            "y": 16
          }
        },
        {
          "id": "d2b2aaec-001a-42f6-b58b-15cddae6efde",
          "type": "basic.constant",
          "data": {
            "name": "offset",
            "value": "16'd0",
            "local": false
          },
          "position": {
            "x": 560,
            "y": 16
          }
        },
        {
          "id": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
          "type": "basic.code",
          "data": {
            "code": "localparam STATE1 = 2'd0;\r\nlocalparam STATE2 = 2'd1;\r\nlocalparam STATE3 = 2'd2;\r\n\r\n\r\nreg [1:0] state = STATE1;\r\n\r\nreg[7:0] data1 = 8'd0;\r\nreg[7:0] data2 = 8'd0;\r\nreg[15:0] I_reg = 8'd0;\r\n\r\n\r\nalways @(posedge data_ready)\r\nbegin\r\n  case(state)\r\n  STATE1:\r\n  begin\r\n    data1<= integer_part*100; \r\n    data2<= decimal_part;\r\n    state<= STATE2;\r\n  end\r\n  STATE2:\r\n  begin\r\n    I_reg=Kd*(((integer_part*100)+decimal_part)-(data1+data2));\r\n    data1=integer_part*100;\r\n    data2=decimal_part;\r\n    state<=STATE2;\r\n  end\r\n  endcase\r\nend\r\n\r\nassign velocity = I_reg + offset;",
            "params": [
              {
                "name": "Kd"
              },
              {
                "name": "offset"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "integer_part",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "decimal_part",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "data_ready"
                }
              ],
              "out": [
                {
                  "name": "velocity",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            }
          },
          "position": {
            "x": 144,
            "y": 128
          },
          "size": {
            "width": 616,
            "height": 400
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "6b617bc2-b658-4109-a147-72d64a47894d",
            "port": "constant-out"
          },
          "target": {
            "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
            "port": "Kd"
          }
        },
        {
          "source": {
            "block": "5dce885d-2c78-460e-a479-a9c6271f7af5",
            "port": "out"
          },
          "target": {
            "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
            "port": "integer_part"
          },
          "size": 8
        },
        {
          "source": {
            "block": "9812e8f8-7504-45bf-bd52-d84545f09183",
            "port": "out"
          },
          "target": {
            "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
            "port": "decimal_part"
          },
          "size": 8
        },
        {
          "source": {
            "block": "a3fd5251-5d71-4d84-8238-5614775fe34e",
            "port": "out"
          },
          "target": {
            "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
            "port": "data_ready"
          }
        },
        {
          "source": {
            "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
            "port": "velocity"
          },
          "target": {
            "block": "99d5a872-429a-4872-a9a6-1d12e9dec3b6",
            "port": "in"
          },
          "size": 16
        },
        {
          "source": {
            "block": "d2b2aaec-001a-42f6-b58b-15cddae6efde",
            "port": "constant-out"
          },
          "target": {
            "block": "00fac5bb-f65e-4bbd-bb98-add08b35ce74",
            "port": "offset"
          }
        }
      ]
    }
  },
  "dependencies": {}
}