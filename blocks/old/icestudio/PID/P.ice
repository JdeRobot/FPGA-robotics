{
  "version": "1.2",
  "package": {
    "name": "Control_P",
    "version": "v1.0.0",
    "description": "",
    "author": "Juan Ordoñez ",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cpath%20d=%22M512%20455.111C512%20486.53%20486.527%20512%20455.111%20512H56.89C25.472%20512%200%20486.527%200%20455.111V56.89C0%2025.472%2025.472%200%2056.889%200H455.11C486.527%200%20512%2025.472%20512%2056.889V455.11z%22%20fill=%22#3b88c3%22/%3E%3Cpath%20d=%22M219.42%20250.169h44.971c27.79%200%2045.426-20.282%2045.426-46.749%200-26.454-17.635-46.734-45.426-46.734H219.42v93.483zm-66.147-117.305c0-20.722%2012.345-34.389%2034.403-34.389h78.038c64.839%200%20112.896%2042.34%20112.896%20105.386%200%2064.384-49.835%20104.519-110.251%20104.519H219.42v72.32c0%2022.059-14.109%2034.389-33.081%2034.389-18.959%200-33.066-12.331-33.066-34.389V132.864z%22%20fill=%22#fff%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "2ba105af-7195-4000-8afb-22b6761755a8",
          "type": "basic.input",
          "data": {
            "name": "integer_part",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 352,
            "y": 272
          }
        },
        {
          "id": "b00e0f05-65ae-408a-8b8e-a44c714ddf7f",
          "type": "basic.output",
          "data": {
            "name": "velocity",
            "range": "[15:0]",
            "pins": [
              {
                "index": "15",
                "name": "",
                "value": "0"
              },
              {
                "index": "14",
                "name": "",
                "value": "0"
              },
              {
                "index": "13",
                "name": "",
                "value": "0"
              },
              {
                "index": "12",
                "name": "",
                "value": "0"
              },
              {
                "index": "11",
                "name": "",
                "value": "0"
              },
              {
                "index": "10",
                "name": "",
                "value": "0"
              },
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1496,
            "y": 272
          }
        },
        {
          "id": "a8d9e0d6-b570-4492-b872-f092af95c4ab",
          "type": "basic.input",
          "data": {
            "name": "decimal_part",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 352,
            "y": 360
          }
        },
        {
          "id": "c9cb4728-3f7b-4534-ae90-0a5baeb5b02e",
          "type": "basic.input",
          "data": {
            "name": "data_ready",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 352,
            "y": 440
          }
        },
        {
          "id": "926883a1-e692-4466-b690-54ad141c4fe3",
          "type": "basic.output",
          "data": {
            "name": "direction_motors",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1504,
            "y": 472
          }
        },
        {
          "id": "1303843d-e3ee-4370-a76a-92fa4600e8db",
          "type": "basic.input",
          "data": {
            "name": "direction_arduino",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 352,
            "y": 520
          }
        },
        {
          "id": "3c179679-12cc-4c5b-8b3c-4546cb79a182",
          "type": "basic.constant",
          "data": {
            "name": "Kp",
            "value": "0",
            "local": false
          },
          "position": {
            "x": 728,
            "y": 120
          }
        },
        {
          "id": "4f99ef80-27cc-4f13-bc36-0241bef6539c",
          "type": "basic.constant",
          "data": {
            "name": "offset",
            "value": "0",
            "local": false
          },
          "position": {
            "x": 1112,
            "y": 128
          }
        },
        {
          "id": "262c082e-8602-45f0-8ac1-81741a9acb2a",
          "type": "basic.code",
          "data": {
            "code": "reg [15:0] velocity_reg = 16'd0;\r\nlocalparam aux = 16'd100;\r\nreg direction_reg= 1'b0;\r\n\r\nalways@(posedge data_ready)\r\nbegin\r\n velocity_reg<=Kp*((integer_part*aux)+decimal_part);\r\n direction_reg<=direction_arduino;\r\nend\r\n\r\nassign velocity = velocity_reg + offset;\r\nassign direction_motors = direction_reg;",
            "params": [
              {
                "name": "Kp"
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
                },
                {
                  "name": "direction_arduino"
                }
              ],
              "out": [
                {
                  "name": "velocity",
                  "range": "[15:0]",
                  "size": 16
                },
                {
                  "name": "direction_motors"
                }
              ]
            }
          },
          "position": {
            "x": 584,
            "y": 264
          },
          "size": {
            "width": 768,
            "height": 336
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "c9cb4728-3f7b-4534-ae90-0a5baeb5b02e",
            "port": "out"
          },
          "target": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "data_ready"
          }
        },
        {
          "source": {
            "block": "1303843d-e3ee-4370-a76a-92fa4600e8db",
            "port": "out"
          },
          "target": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "direction_arduino"
          }
        },
        {
          "source": {
            "block": "3c179679-12cc-4c5b-8b3c-4546cb79a182",
            "port": "constant-out"
          },
          "target": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "Kp"
          }
        },
        {
          "source": {
            "block": "4f99ef80-27cc-4f13-bc36-0241bef6539c",
            "port": "constant-out"
          },
          "target": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "offset"
          }
        },
        {
          "source": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "direction_motors"
          },
          "target": {
            "block": "926883a1-e692-4466-b690-54ad141c4fe3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "velocity"
          },
          "target": {
            "block": "b00e0f05-65ae-408a-8b8e-a44c714ddf7f",
            "port": "in"
          },
          "size": 16
        },
        {
          "source": {
            "block": "2ba105af-7195-4000-8afb-22b6761755a8",
            "port": "out"
          },
          "target": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "integer_part"
          },
          "size": 8
        },
        {
          "source": {
            "block": "a8d9e0d6-b570-4492-b872-f092af95c4ab",
            "port": "out"
          },
          "target": {
            "block": "262c082e-8602-45f0-8ac1-81741a9acb2a",
            "port": "decimal_part"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}