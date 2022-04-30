{
  "version": "1.2",
  "package": {
    "name": "12MHz to 100MHz",
    "version": "1.0",
    "description": "PLL converts the 12MHz clock to 100MHz",
    "author": "Felipe Machado",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "65dd4fc6-ffd6-4b40-bf5e-b6954a752211",
          "type": "basic.input",
          "data": {
            "name": "clk_brd",
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
            "x": 80,
            "y": 232
          }
        },
        {
          "id": "8d0df8c9-1809-40ec-b682-f010a899530b",
          "type": "basic.output",
          "data": {
            "name": "clk100mhz",
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
            "x": 752,
            "y": 232
          }
        },
        {
          "id": "0b16de18-4e1f-473b-9e42-eaf04c72d062",
          "type": "basic.code",
          "data": {
            "code": "\r\n  // 100 MHz clock\r\n   SB_PLL40_CORE\r\n            #(.FEEDBACK_PATH(\"SIMPLE\"),\r\n                .PLLOUT_SELECT(\"GENCLK\"),\r\n                .DIVR(4'd2),\r\n                .DIVF(6'd49),\r\n                .DIVQ(3'd1),\r\n                .FILTER_RANGE(3'b001)\r\n            )\r\n            uut\r\n            (\r\n                .REFERENCECLK(clk_brd),\r\n                .PLLOUTCORE(clk100mhz),\r\n                .RESETB(1'b1),\r\n                .BYPASS(1'b0)\r\n             );",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk_brd"
                }
              ],
              "out": [
                {
                  "name": "clk100mhz"
                }
              ]
            }
          },
          "position": {
            "x": 240,
            "y": 96
          },
          "size": {
            "width": 456,
            "height": 328
          }
        },
        {
          "id": "1eab4c2c-99f1-48cd-ba6e-b6f9b72320ca",
          "type": "basic.info",
          "data": {
            "info": "Generates a 100MHz clk from a 12MHz input clock",
            "readonly": false
          },
          "position": {
            "x": 248,
            "y": 48
          },
          "size": {
            "width": 424,
            "height": 40
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "65dd4fc6-ffd6-4b40-bf5e-b6954a752211",
            "port": "out"
          },
          "target": {
            "block": "0b16de18-4e1f-473b-9e42-eaf04c72d062",
            "port": "clk_brd"
          }
        },
        {
          "source": {
            "block": "0b16de18-4e1f-473b-9e42-eaf04c72d062",
            "port": "clk100mhz"
          },
          "target": {
            "block": "8d0df8c9-1809-40ec-b682-f010a899530b",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}