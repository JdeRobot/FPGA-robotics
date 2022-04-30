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
          "id": "b6b0c6d3-fcdb-45db-8ca8-c4fc807d822d",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1432,
            "y": 216
          }
        },
        {
          "id": "7a992624-4c3d-4dca-af2e-b8beb5f66bae",
          "type": "basic.input",
          "data": {
            "name": "CLK",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "49"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 296,
            "y": 288
          }
        },
        {
          "id": "3edb1ec3-d354-4162-afa9-28aed9bc6ac2",
          "type": "basic.output",
          "data": {
            "name": "led3",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "42"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1384,
            "y": 304
          }
        },
        {
          "id": "b1e00d3a-9cf2-4ff6-ac0f-942b61ddefa6",
          "type": "basic.output",
          "data": {
            "name": "D11",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "21"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1448,
            "y": 424
          }
        },
        {
          "id": "03cfe8cc-f327-4bd2-998b-9a8259de7c6a",
          "type": "basic.input",
          "data": {
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "33"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 64,
            "y": 440
          }
        },
        {
          "id": "412a3daf-043c-4203-b7f2-585dd83445bc",
          "type": "basic.output",
          "data": {
            "name": "D10",
            "pins": [
              {
                "index": "0",
                "name": "D8",
                "value": "20"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1600,
            "y": 496
          }
        },
        {
          "id": "dbd01e09-b8de-4ada-a386-0fee30c8c47b",
          "type": "basic.output",
          "data": {
            "name": "led2",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "43"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 344,
            "y": 704
          }
        },
        {
          "id": "46a8747a-9b7b-47d1-baf0-357794ebcd2a",
          "type": "basic.input",
          "data": {
            "name": "TRIGGER",
            "pins": [
              {
                "index": "0",
                "name": "DD5",
                "value": "119"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 488,
            "y": 872
          }
        },
        {
          "id": "3c1c750a-1b7b-478f-8040-3b3ba30c8510",
          "type": "basic.output",
          "data": {
            "name": "DOUT",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "22"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1080,
            "y": 904
          }
        },
        {
          "id": "fb57ddd7-1b7d-414f-b042-6b5b30914ac1",
          "type": "d19205000eb70c811bed1d06d8fe045fae94badd",
          "position": {
            "x": 768,
            "y": 888
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "fb2279df-5072-4309-a339-a58f14d4abc3",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": 208,
            "y": 440
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c003942d-345a-45b3-a545-56c821ccc032",
          "type": "basic.code",
          "data": {
            "code": "//Podemos tener de 2 a 400cm\n\nreg TRIG_out_reg = 1'b0;\nreg TRIG_change_reg = 1'b1;\nreg [18:0] COUNTER = 19'd0; \nreg ENABLE_reg = 1'b0;\nreg DIST_reg = 1'b0;\n\n/*tiempo que tiene que durar el flag bits 10ms 120 000*/\nlocalparam COUNT_10ms = 19'd120000;\n/*tiempo maximo de distancia pero puede ser modificable 40ms 480 000*/\nlocalparam COUNT_40ms =19'd480000;\n\nlocalparam FLAG_10ms = 4'd0;\nlocalparam COUNT = 4'd3;\nreg [3:0] STATE = FLAG_10ms;\n\n\nalways @(posedge CLK)\nbegin \n\nif(start==1'b1)\n    begin\n        case(STATE)\n        \n            FLAG_10ms:\n            begin\n                  if(COUNTER == COUNT_10ms)\n                  begin\n                    TRIG_out_reg <= 1'b0;\n                    //canal libre, modo lectura\n                    TRIG_change_reg <= 1'b0;\n                    COUNTER <= 19'd0;\n                    STATE <= COUNT;\n                    DIST_reg <= 1'b1;\n                  end\n                  else \n                  begin\n                    //canal ocupado, en modo escritura\n                    TRIG_change_reg <= 1'b1;\n                    TRIG_out_reg <= 1'b1;\n                    COUNTER <= COUNTER + 19'd1;\n                    STATE <= FLAG_10ms;\n                  end\n            end\n            \n            COUNT:\n            begin\n                if(TRIG_in <= 1'b1)\n                begin\n                    COUNTER<=COUNTER + 19'd1;\n                    STATE<= COUNT;\n                end\n                else if(TRIG_in <= 1'b0)\n                begin\n                    if (COUNTER <= COUNT)\n                    begin\n                        ENABLE_reg <= 1'b1;                 \n                    end\n                COUNTER <= 19'd0;\n                STATE <= FLAG_10ms;\n                end\n            end\n        endcase\n    end\nend \n\nassign TRIG_out = TRIG_out_reg;\nassign TRIG_change = TRIG_change_reg;\nassign TRIG_in_test = TRIG_in;\nassign ENABLE = ENABLE_reg;\nassign DIST = DIST_reg;",
            "params": [
              {
                "name": "MIN_DISTANCE"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "CLK"
                },
                {
                  "name": "TRIG_in"
                },
                {
                  "name": "start"
                }
              ],
              "out": [
                {
                  "name": "ENABLE"
                },
                {
                  "name": "DIST"
                },
                {
                  "name": "TRIG_in_test"
                },
                {
                  "name": "TRIG_out"
                },
                {
                  "name": "TRIG_change"
                }
              ]
            }
          },
          "position": {
            "x": 528,
            "y": 176
          },
          "size": {
            "width": 744,
            "height": 560
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "fb57ddd7-1b7d-414f-b042-6b5b30914ac1",
            "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
          },
          "target": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "TRIG_in"
          }
        },
        {
          "source": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "TRIG_change"
          },
          "target": {
            "block": "fb57ddd7-1b7d-414f-b042-6b5b30914ac1",
            "port": "f96a1baf-fc8b-4c25-b132-12552605743f"
          }
        },
        {
          "source": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "TRIG_out"
          },
          "target": {
            "block": "fb57ddd7-1b7d-414f-b042-6b5b30914ac1",
            "port": "04fdb7a7-2740-4ff1-ad26-56407ef5b958"
          },
          "vertices": [
            {
              "x": 1216,
              "y": 1024
            }
          ]
        },
        {
          "source": {
            "block": "46a8747a-9b7b-47d1-baf0-357794ebcd2a",
            "port": "out"
          },
          "target": {
            "block": "fb57ddd7-1b7d-414f-b042-6b5b30914ac1",
            "port": "076fd025-aa42-4f23-ae97-b65aec2298ce"
          }
        },
        {
          "source": {
            "block": "7a992624-4c3d-4dca-af2e-b8beb5f66bae",
            "port": "out"
          },
          "target": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "CLK"
          }
        },
        {
          "source": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "ENABLE"
          },
          "target": {
            "block": "b6b0c6d3-fcdb-45db-8ca8-c4fc807d822d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "03cfe8cc-f327-4bd2-998b-9a8259de7c6a",
            "port": "out"
          },
          "target": {
            "block": "fb2279df-5072-4309-a339-a58f14d4abc3",
            "port": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "fb2279df-5072-4309-a339-a58f14d4abc3",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "start"
          },
          "vertices": [
            {
              "x": 384,
              "y": 584
            }
          ]
        },
        {
          "source": {
            "block": "fb2279df-5072-4309-a339-a58f14d4abc3",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "dbd01e09-b8de-4ada-a386-0fee30c8c47b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fb57ddd7-1b7d-414f-b042-6b5b30914ac1",
            "port": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058"
          },
          "target": {
            "block": "3c1c750a-1b7b-478f-8040-3b3ba30c8510",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "DIST"
          },
          "target": {
            "block": "3edb1ec3-d354-4162-afa9-28aed9bc6ac2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "TRIG_out"
          },
          "target": {
            "block": "412a3daf-043c-4203-b7f2-585dd83445bc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c003942d-345a-45b3-a545-56c821ccc032",
            "port": "TRIG_in_test"
          },
          "target": {
            "block": "b1e00d3a-9cf2-4ff6-ac0f-942b61ddefa6",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "d19205000eb70c811bed1d06d8fe045fae94badd": {
      "package": {
        "name": "Tri-state",
        "version": "1.0.0",
        "description": "Tri-state logic block",
        "author": "Salvador E. Tropea",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-265%20401.5%2063.5%2038.4%22%20id=%22svg2%22%3E%3Cstyle%20id=%22style3%22/%3E%3Cpath%20d=%22M-9.78%203.538l-4.214%2024.984-19.53-16.141z%22%20transform=%22matrix(.62422%20-.11476%20.1058%20.67701%20-219.33%20413.046)%22%20id=%22path3008%22%20fill=%22none%22%20stroke=%22#0b0b0b%22%20stroke-width=%221.885%22/%3E%3Cpath%20d=%22M-9.78%203.538l-4.214%2024.984-19.53-16.141z%22%20transform=%22matrix(-.62422%20-.11476%20-.1058%20.67701%20-244.991%20400.53)%22%20id=%22path3008-6%22%20fill=%22none%22%20stroke=%22#0b0b0b%22%20stroke-width=%221.885%22/%3E%3Cpath%20d=%22M40.154%2011.247H63.74%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3800%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M25.945%2023.73l-7.364.058V11.305h7.076%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3802%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M-265.029%20412.747l18.582.058%22%20id=%22path3804%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M.081%2023.919h12.936v7.566h19.037V27.58%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3806%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3Cpath%20d=%22M0%2035.96h49.302V24.162h-9.356%22%20transform=%22translate(-265%20401.5)%22%20id=%22path3812%22%20fill=%22none%22%20stroke=%22#000%22/%3E%3C/svg%3E"
      },
      "design": {
        "config": "true",
        "graph": {
          "blocks": [
            {
              "id": "076fd025-aa42-4f23-ae97-b65aec2298ce",
              "type": "basic.input",
              "data": {
                "name": "pin"
              },
              "position": {
                "x": 32,
                "y": 40
              }
            },
            {
              "id": "f96a1baf-fc8b-4c25-b132-12552605743f",
              "type": "basic.input",
              "data": {
                "name": "oe"
              },
              "position": {
                "x": 32,
                "y": 128
              }
            },
            {
              "id": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
              "type": "basic.output",
              "data": {
                "name": "dout"
              },
              "position": {
                "x": 760,
                "y": 128
              }
            },
            {
              "id": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
              "type": "basic.input",
              "data": {
                "name": "din"
              },
              "position": {
                "x": 32,
                "y": 216
              }
            },
            {
              "id": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
              "type": "basic.code",
              "data": {
                "code": "  SB_IO #(\n      .PIN_TYPE(6'b1010_01),\n      .PULLUP(1'b0)\n  ) triState (\n      .PACKAGE_PIN(pin),\n      .OUTPUT_ENABLE(oe),\n      .D_OUT_0(din),\n      .D_IN_0(dout)\n  );",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "pin"
                    },
                    {
                      "name": "oe"
                    },
                    {
                      "name": "din"
                    }
                  ],
                  "out": [
                    {
                      "name": "dout"
                    }
                  ]
                }
              },
              "position": {
                "x": 248,
                "y": 32
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
                "block": "076fd025-aa42-4f23-ae97-b65aec2298ce",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "pin"
              }
            },
            {
              "source": {
                "block": "f96a1baf-fc8b-4c25-b132-12552605743f",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "oe"
              }
            },
            {
              "source": {
                "block": "04fdb7a7-2740-4ff1-ad26-56407ef5b958",
                "port": "out"
              },
              "target": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "din"
              }
            },
            {
              "source": {
                "block": "5c8e9a35-33e7-46ef-a0cc-cc27edcc99c0",
                "port": "dout"
              },
              "target": {
                "block": "0b2a85b3-b6ac-4e8a-8b16-dd5a195fb058",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "1374ebd258036ea0ace53cbfce7f63fbf69e9c18": {
      "package": {
        "name": "START_MODULE",
        "version": "1.0",
        "description": "This module is only a flag in order to start a specified behaviour",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20489.888%20489.888%22%3E%3Cpath%20d=%22M25.383%20290.5c-7.2-77.5%2025.9-147.7%2080.8-192.3%2021.4-17.4%2053.4-2.5%2053.4%2025%200%2010.1-4.8%2019.4-12.6%2025.7-38.9%2031.7-62.3%2081.7-56.6%20136.9%207.4%2071.9%2065%20130.1%20136.8%20138.1%2093.7%2010.5%20173.3-62.9%20173.3-154.5%200-48.6-22.5-92.1-57.6-120.6-7.8-6.3-12.5-15.6-12.5-25.6%200-27.2%2031.5-42.6%2052.7-25.6%2050.2%2040.5%2082.4%20102.4%2082.4%20171.8%200%20126.9-107.8%20229.2-236.7%20219.9-106.6-7.5-193.5-92.4-203.4-198.8zM244.883%200c-18%200-32.5%2014.6-32.5%2032.5v149.7c0%2018%2014.6%2032.5%2032.5%2032.5s32.5-14.6%2032.5-32.5V32.5c0-17.9-14.5-32.5-32.5-32.5z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
              "type": "basic.input",
              "data": {
                "name": "s1",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 184
              }
            },
            {
              "id": "2515087a-5907-41f4-b2ef-f525321654cd",
              "type": "basic.output",
              "data": {
                "name": "start"
              },
              "position": {
                "x": 792,
                "y": 184
              }
            },
            {
              "id": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
              "type": "basic.code",
              "data": {
                "code": "reg aux = 0;\nalways @(posedge s1) begin\n      aux <= 1;\nend\nassign start = aux;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "s1"
                    }
                  ],
                  "out": [
                    {
                      "name": "start"
                    }
                  ]
                }
              },
              "position": {
                "x": 232,
                "y": 80
              },
              "size": {
                "width": 512,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
                "port": "out"
              },
              "target": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "s1"
              }
            },
            {
              "source": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "start"
              },
              "target": {
                "block": "2515087a-5907-41f4-b2ef-f525321654cd",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}