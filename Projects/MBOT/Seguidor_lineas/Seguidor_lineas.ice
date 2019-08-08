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
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "421d268a-d748-4ae7-8f84-bc8d0ab1e1d3",
          "type": "basic.output",
          "data": {
            "name": "D1",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1016,
            "y": -440
          }
        },
        {
          "id": "b048d187-d794-42b8-a9a5-19db8b008b29",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 184,
            "y": -160
          }
        },
        {
          "id": "2df702c0-573d-47ad-b365-83b5e982648b",
          "type": "basic.output",
          "data": {
            "name": "Motor_IZQ",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1016,
            "y": -120
          }
        },
        {
          "id": "f09d4a83-f50b-4fe9-ba49-5c1594ea04a1",
          "type": "basic.input",
          "data": {
            "name": "IR_IZQ",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": -104
          }
        },
        {
          "id": "2c3bffab-694d-4835-b90f-00af92936413",
          "type": "basic.output",
          "data": {
            "name": "DEBUG_IR",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 184,
            "y": 24
          }
        },
        {
          "id": "a10e9568-fa2b-4d54-a55c-e53ef8ad1432",
          "type": "basic.output",
          "data": {
            "name": "Motor_DER",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "117"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1008,
            "y": 64
          }
        },
        {
          "id": "614a1edc-8868-4907-b153-031100a4cf34",
          "type": "basic.input",
          "data": {
            "name": "IR_DER",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": 80
          }
        },
        {
          "id": "796058db-53dc-4fbe-b24f-0a8d75ee90e7",
          "type": "basic.constant",
          "data": {
            "name": "velocity_IZQ",
            "value": "16'd2000",
            "local": false
          },
          "position": {
            "x": 592,
            "y": -248
          }
        },
        {
          "id": "ad4b6a15-7e55-4980-a99a-679480157d2c",
          "type": "basic.constant",
          "data": {
            "name": "velocity_DER",
            "value": "16'd2000",
            "local": false
          },
          "position": {
            "x": 592,
            "y": -56
          }
        },
        {
          "id": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 24,
            "y": -104
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
          "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
          "position": {
            "x": 24,
            "y": 80
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b1398baa-e1ab-432a-abd6-8c15406835b7",
          "type": "e156d3e9bfab13f2760227aab507b823f967f912",
          "position": {
            "x": 592,
            "y": -448
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "f445f4e3-9984-452c-b406-c3a3a7edced4",
          "type": "4f986a8dfa6eeb14c177f1f6a4b76b4d48e58186",
          "position": {
            "x": 592,
            "y": -120
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "26ff0cf8-b4cf-4e71-9275-34d8283b562d",
          "type": "4f986a8dfa6eeb14c177f1f6a4b76b4d48e58186",
          "position": {
            "x": 592,
            "y": 64
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "72648128-7539-485c-9ab6-156e98a571d7",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": 296,
            "y": -384
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8bbbf807-0a60-4a28-ba73-c7ddcbbaef26",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 400,
            "y": -104
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "60e4030b-147a-4e13-bfcf-89f9ac01c801",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 400,
            "y": 80
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f09d4a83-f50b-4fe9-ba49-5c1594ea04a1",
            "port": "out"
          },
          "target": {
            "block": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "fa5cd101-8698-4ba8-bd8b-3122527324cf",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "b048d187-d794-42b8-a9a5-19db8b008b29",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "614a1edc-8868-4907-b153-031100a4cf34",
            "port": "out"
          },
          "target": {
            "block": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "b67746f7-24ae-4aa8-84cb-1afc80537c84",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "2c3bffab-694d-4835-b90f-00af92936413",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f445f4e3-9984-452c-b406-c3a3a7edced4",
            "port": "63a66901-b384-423f-9b70-76f155bebb40"
          },
          "target": {
            "block": "2df702c0-573d-47ad-b365-83b5e982648b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "26ff0cf8-b4cf-4e71-9275-34d8283b562d",
            "port": "63a66901-b384-423f-9b70-76f155bebb40"
          },
          "target": {
            "block": "a10e9568-fa2b-4d54-a55c-e53ef8ad1432",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "72648128-7539-485c-9ab6-156e98a571d7",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b1398baa-e1ab-432a-abd6-8c15406835b7",
            "port": "c8da2f1b-b72c-4337-bbda-82283cfeca57"
          }
        },
        {
          "source": {
            "block": "b1398baa-e1ab-432a-abd6-8c15406835b7",
            "port": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d"
          },
          "target": {
            "block": "421d268a-d748-4ae7-8f84-bc8d0ab1e1d3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "796058db-53dc-4fbe-b24f-0a8d75ee90e7",
            "port": "constant-out"
          },
          "target": {
            "block": "f445f4e3-9984-452c-b406-c3a3a7edced4",
            "port": "94314d85-3bc8-485e-8267-57d52d038baa"
          }
        },
        {
          "source": {
            "block": "ad4b6a15-7e55-4980-a99a-679480157d2c",
            "port": "constant-out"
          },
          "target": {
            "block": "26ff0cf8-b4cf-4e71-9275-34d8283b562d",
            "port": "94314d85-3bc8-485e-8267-57d52d038baa"
          }
        },
        {
          "source": {
            "block": "8bbbf807-0a60-4a28-ba73-c7ddcbbaef26",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "f445f4e3-9984-452c-b406-c3a3a7edced4",
            "port": "8b33b8c2-e685-4d38-b041-0d9fae82e57f"
          }
        },
        {
          "source": {
            "block": "60e4030b-147a-4e13-bfcf-89f9ac01c801",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "26ff0cf8-b4cf-4e71-9275-34d8283b562d",
            "port": "8b33b8c2-e685-4d38-b041-0d9fae82e57f"
          }
        }
      ]
    }
  },
  "dependencies": {
    "7f3e9f0a05c929c3761852e259027fbe8e977795": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22111.588%22%20height=%2268.24%22%20version=%221%22%3E%3Cpath%20d=%22M24.372%201.5l57.29%2032.619-57.29%2032.62V1.5z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%2291.101%22%20cy=%2234.017%22%20rx=%227.572%22%20ry=%227.677%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.014%2034.281h23.1m75.26%200h11.2%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2228.438%22%20y=%2239.46%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2228.438%22%20y=%2239.46%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 400,
                "height": 256
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "e156d3e9bfab13f2760227aab507b823f967f912": {
      "package": {
        "name": "MC33925 Driver Motor",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez",
        "image": "%3Csvg%20viewBox=%220%200%20256%20256%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cstyle%3E.st0%7Bfill:#d5e2eb%7D.st1%7Bfill:none;stroke:#00a388;stroke-width:4;stroke-miterlimit:10%7D.st2%7Bfill:#fff%7D.st3%7Bfill:#cc4e47%7D.st4%7Bfill:#ea685e%7D.st5%7Bfill:#4b687f%7D.st6%7Bfill:#2c3e50%7D.st7%7Bfill:#3e5063%7D.st8%7Bfill:#ffab80%7D.st9%7Bfilter:url(#Adobe_OpacityMaskFilter)%7D.st10%7Bmask:url(#SVGID_2_)%7D.st11%7Bfill:#f09a79%7D.st12%7Bfill:#00886f%7D.st13%7Bfill:#00a388%7D.st14%7Bfill:none;stroke:#3e5063;stroke-width:4;stroke-miterlimit:10%7D.st15%7Bfill:#ffd766%7D.st16%7Bfill:#5488b7%7D.st17%7Bfill:#8c623b%7D.st18%7Bfill:#e6e6e6;stroke:#3e5063;stroke-width:16;stroke-miterlimit:10%7D.st19%7Bopacity:.6%7D.st20%7Bfill:#e6e6e6%7D.st21%7Bfill:none;stroke:#d5e2eb;stroke-width:5;stroke-miterlimit:10%7D.st22%7Bfill:#ffec9f%7D.st23%7Bfill:#603813%7D.st24%7Bfilter:url(#Adobe_OpacityMaskFilter_1_)%7D.st25%7Bmask:url(#SVGID_1_)%7D%3C/style%3E%3Ccircle%20class=%22st0%22%20cx=%22128%22%20cy=%22128%22%20r=%22120%22%20id=%22Layer_2%22/%3E%3Cg%20id=%22Layer_1%22%3E%3Cpath%20class=%22st3%22%20d=%22M197.727%20124.78a3.909%203.909%200%200%200-3.522-3.536l-11.812-1.113c-1.598-.147-2.955-1.268-3.367-2.822a52.705%2052.705%200%200%200-5.268-12.703%203.865%203.865%200%200%201%20.383-4.385l7.575-9.144a3.904%203.904%200%200%200-.015-4.988%2071.28%2071.28%200%200%200-8.79-8.79%203.905%203.905%200%200%200-4.996-.015l-9.137%207.575a3.863%203.863%200%200%201-4.391.376%2052.601%2052.601%200%200%200-12.704-5.276c-1.554-.413-2.667-1.769-2.822-3.368l-1.105-11.804a3.9%203.9%200%200%200-3.537-3.515%2069.389%2069.389%200%200%200-6.22-.272c-2.099%200-4.17.088-6.218.272a3.9%203.9%200%200%200-3.537%203.515l-1.105%2011.804c-.155%201.6-1.267%202.955-2.822%203.368a52.602%2052.602%200%200%200-12.704%205.276c-1.4.81-3.146.648-4.391-.376l-9.137-7.575a3.905%203.905%200%200%200-4.995.015%2071.28%2071.28%200%200%200-8.791%208.79%203.904%203.904%200%200%200-.015%204.988l7.575%209.137c1.024%201.245%201.186%203%20.376%204.392a52.208%2052.208%200%200%200-5.268%2012.703%203.876%203.876%200%200%201-3.375%202.83l-11.805%201.105a3.907%203.907%200%200%200-3.514%203.53A69.552%2069.552%200%200%200%2058%20131c0%202.092.088%204.17.273%206.219a3.9%203.9%200%200%200%203.514%203.53l11.805%201.112a3.86%203.86%200%200%201%203.375%202.822%2052.12%2052.12%200%200%200%205.268%2012.703c.81%201.392.648%203.147-.376%204.392l-7.575%209.137a3.904%203.904%200%200%200%20.015%204.988%2070.827%2070.827%200%200%200%208.79%208.791%203.905%203.905%200%200%200%204.996.015l9.137-7.568a3.84%203.84%200%200%201%204.384-.383%2052.411%2052.411%200%200%200%2012.71%205.26%203.87%203.87%200%200%201%202.823%203.376l1.105%2011.812a3.894%203.894%200%200%200%203.537%203.514%2069.377%2069.377%200%200%200%2012.438%200%203.894%203.894%200%200%200%203.537-3.514l1.105-11.812a3.869%203.869%200%200%201%202.822-3.375%2052.444%2052.444%200%200%200%2012.71-5.26%203.84%203.84%200%200%201%204.385.382l9.137%207.568a3.905%203.905%200%200%200%204.995-.015%2070.718%2070.718%200%200%200%208.79-8.79%203.904%203.904%200%200%200%20.016-4.989l-7.575-9.144a3.864%203.864%200%200%201-.383-4.384%2052.672%2052.672%200%200%200%205.268-12.703c.412-1.555%201.769-2.675%203.367-2.823l11.812-1.112a3.9%203.9%200%200%200%203.522-3.53c.185-2.048.273-4.126.273-6.218a69.42%2069.42%200%200%200-.273-6.22zM128%20163.356c-17.868%200-32.363-14.486-32.363-32.355%200-17.876%2014.494-32.362%2032.363-32.362S160.36%20113.124%20160.36%20131c0%2017.868-14.493%2032.355-32.362%2032.355z%22/%3E%3Cpath%20class=%22st4%22%20d=%22M197.727%20118.78a3.909%203.909%200%200%200-3.522-3.536l-11.812-1.113c-1.598-.147-2.955-1.268-3.367-2.822a52.705%2052.705%200%200%200-5.268-12.703%203.865%203.865%200%200%201%20.383-4.385l7.575-9.144a3.904%203.904%200%200%200-.015-4.988%2071.28%2071.28%200%200%200-8.79-8.79%203.905%203.905%200%200%200-4.996-.015l-9.137%207.575a3.863%203.863%200%200%201-4.391.376%2052.601%2052.601%200%200%200-12.704-5.276c-1.554-.413-2.667-1.769-2.822-3.368l-1.105-11.804a3.9%203.9%200%200%200-3.537-3.515%2069.389%2069.389%200%200%200-6.22-.272c-2.099%200-4.17.088-6.218.272a3.9%203.9%200%200%200-3.537%203.515l-1.105%2011.804c-.155%201.6-1.267%202.955-2.822%203.368a52.602%2052.602%200%200%200-12.704%205.276c-1.4.81-3.146.648-4.391-.376l-9.137-7.575a3.905%203.905%200%200%200-4.995.015%2071.28%2071.28%200%200%200-8.791%208.79%203.904%203.904%200%200%200-.015%204.988l7.575%209.137c1.024%201.245%201.186%203%20.376%204.392a52.208%2052.208%200%200%200-5.268%2012.703%203.876%203.876%200%200%201-3.375%202.83l-11.805%201.105a3.907%203.907%200%200%200-3.514%203.53A69.552%2069.552%200%200%200%2058%20125c0%202.092.088%204.17.273%206.219a3.9%203.9%200%200%200%203.514%203.53l11.805%201.112a3.86%203.86%200%200%201%203.375%202.822%2052.12%2052.12%200%200%200%205.268%2012.703c.81%201.392.648%203.147-.376%204.392l-7.575%209.137a3.904%203.904%200%200%200%20.015%204.988%2070.827%2070.827%200%200%200%208.79%208.791%203.905%203.905%200%200%200%204.996.015l9.137-7.568a3.84%203.84%200%200%201%204.384-.383%2052.411%2052.411%200%200%200%2012.71%205.26%203.87%203.87%200%200%201%202.823%203.376l1.105%2011.812a3.894%203.894%200%200%200%203.537%203.514%2069.377%2069.377%200%200%200%2012.438%200%203.894%203.894%200%200%200%203.537-3.514l1.105-11.812a3.869%203.869%200%200%201%202.822-3.375%2052.444%2052.444%200%200%200%2012.71-5.26%203.84%203.84%200%200%201%204.385.382l9.137%207.568a3.905%203.905%200%200%200%204.995-.015%2070.718%2070.718%200%200%200%208.79-8.79%203.904%203.904%200%200%200%20.016-4.989l-7.575-9.144a3.864%203.864%200%200%201-.383-4.384%2052.672%2052.672%200%200%200%205.268-12.703c.412-1.555%201.769-2.675%203.367-2.823l11.812-1.112a3.9%203.9%200%200%200%203.522-3.53c.185-2.048.273-4.126.273-6.218a69.42%2069.42%200%200%200-.273-6.22zM128%20157.356c-17.868%200-32.363-14.486-32.363-32.355%200-17.876%2014.494-32.362%2032.363-32.362S160.36%20107.124%20160.36%20125c0%2017.868-14.493%2032.355-32.362%2032.355z%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d",
              "type": "basic.output",
              "data": {
                "name": "INV"
              },
              "position": {
                "x": 512,
                "y": -296
              }
            },
            {
              "id": "b44b9148-8c19-4ee1-b971-6bf0cfc807be",
              "type": "basic.output",
              "data": {
                "name": "IN1"
              },
              "position": {
                "x": 512,
                "y": -232
              }
            },
            {
              "id": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c",
              "type": "basic.output",
              "data": {
                "name": "IN2"
              },
              "position": {
                "x": 512,
                "y": -176
              }
            },
            {
              "id": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3",
              "type": "basic.output",
              "data": {
                "name": "EN"
              },
              "position": {
                "x": 512,
                "y": -120
              }
            },
            {
              "id": "c8da2f1b-b72c-4337-bbda-82283cfeca57",
              "type": "basic.input",
              "data": {
                "name": "change_direction",
                "clock": false
              },
              "position": {
                "x": -512,
                "y": -104
              }
            },
            {
              "id": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1",
              "type": "basic.output",
              "data": {
                "name": "SF"
              },
              "position": {
                "x": 512,
                "y": -56
              }
            },
            {
              "id": "aa38018e-ebf9-460c-ad23-5bc17cf62e41",
              "type": "basic.output",
              "data": {
                "name": "D1"
              },
              "position": {
                "x": 512,
                "y": 24
              }
            },
            {
              "id": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
              "type": "basic.code",
              "data": {
                "code": "\n\n\n\nreg EN_reg = 1;//sleep mode \nreg D1_reg = 0; //para configurar el triestado de la salida, para controlar si es el dutty el que maneja o tiempo en baja\n//D2_reg <= 1;//para configurar el trisestado de la salida\nreg IN1_reg = 1; //se estable un sentido para el mov\nreg IN2_reg = 0; //se estable un sentido para el mov, negado de in1 si queremos que se mueva\n//reg INV_reg = 0; //si cambiamos inv la rueda cambia de sentido\n\n\nassign INV = change_direction;\nassign IN1 = IN1_reg;\nassign IN2 = IN2_reg;\nassign EN = EN_reg;\nassign D1 = D1_reg;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "change_direction"
                    }
                  ],
                  "out": [
                    {
                      "name": "INV"
                    },
                    {
                      "name": "IN1"
                    },
                    {
                      "name": "IN2"
                    },
                    {
                      "name": "EN"
                    },
                    {
                      "name": "SF"
                    },
                    {
                      "name": "D1"
                    }
                  ]
                }
              },
              "position": {
                "x": -248,
                "y": -272
              },
              "size": {
                "width": 688,
                "height": 400
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "EN"
              },
              "target": {
                "block": "5f2d8d44-8ceb-4084-9a2f-53a680bd49d3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "IN1"
              },
              "target": {
                "block": "b44b9148-8c19-4ee1-b971-6bf0cfc807be",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "IN2"
              },
              "target": {
                "block": "0a523239-d3f4-4a5f-9572-cebd69eb4f6c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "SF"
              },
              "target": {
                "block": "c7021b32-fb9e-46f2-9bd4-5a4a86558bc1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "INV"
              },
              "target": {
                "block": "0cdc2b14-ba97-4dc0-a41f-3e6f9ce7310d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "D1"
              },
              "target": {
                "block": "aa38018e-ebf9-460c-ad23-5bc17cf62e41",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c8da2f1b-b72c-4337-bbda-82283cfeca57",
                "port": "out"
              },
              "target": {
                "block": "399849ad-3ce3-4383-90cd-a15b2e7fb179",
                "port": "change_direction"
              }
            }
          ]
        }
      }
    },
    "4f986a8dfa6eeb14c177f1f6a4b76b4d48e58186": {
      "package": {
        "name": "PWM_CONTROLLER",
        "version": "1.0.0",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cg%20fill=%22#f2f2f2%22%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22256%22/%3E%3Cpath%20d=%22M256%20256zM256%20256zM256%20256zM256%20256zM256%20256zM256%20256z%22/%3E%3C/g%3E%3Cpath%20d=%22M481.067%20256H393.6c0-25.6-6.4-48-18.133-69.333-11.733-21.333-29.867-38.4-50.133-50.133L369.067%2060.8C403.2%2081.067%20432%20108.8%20451.2%20142.933c18.133%2034.134%2029.867%2072.534%2029.867%20113.067z%22%20fill=%22#f8b64c%22/%3E%3Cpath%20d=%22M481.067%20256c0%2040.533-10.667%2078.933-29.867%20112-19.2%2034.133-48%2062.933-82.133%2082.133L325.333%20374.4c21.333-11.733%2038.4-29.867%2050.133-50.133C387.2%20304%20393.6%20280.533%20393.6%20254.933h87.467V256z%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M186.667%20136.533c-21.333%2011.733-38.4%2029.867-50.133%2050.133C124.8%20206.933%20118.4%20230.4%20118.4%20256H30.933c0-40.533%2010.667-78.933%2029.867-112%2019.2-34.133%2048-62.933%2082.133-82.133l43.734%2074.666z%22%20fill=%22#54c0eb%22/%3E%3Cpath%20d=%22M186.667%20375.467L142.933%20451.2C108.8%20432%2080%20403.2%2060.8%20369.067%2042.667%20334.933%2030.933%20296.533%2030.933%20256H118.4c0%2025.6%206.4%2049.067%2018.133%2069.333a160.656%20160.656%200%200%200%2050.134%2050.134z%22%20fill=%22#84dbff%22/%3E%3Cpath%20d=%22M368%2061.867L324.267%20137.6c-20.267-11.733-43.733-18.133-69.333-18.133s-48%206.4-69.333%2018.133l-43.733-75.733c35.2-19.2%2073.6-30.933%20114.133-30.933S334.933%2042.667%20368%2061.867z%22%20fill=%22#ffd15c%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22137.6%22%20fill=%22#f2f2f2%22/%3E%3Cpath%20d=%22M273.067%20230.4c12.8%209.6%2016%2027.733%207.467%2040.533-9.6%2012.8-27.733%2016-40.533%207.467-12.8-9.6-87.467-96-87.467-96s106.666%2038.4%20120.533%2048z%22%20fill=%22#40596b%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22253.867%22%20r=%2217.067%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M256%2052.267c120.533%200%20218.667%2094.933%20224%20214.4%200-3.2%201.067-7.467%201.067-10.667C481.067%20132.267%20380.8%2030.933%20256%2030.933S30.933%20132.267%2030.933%20256c0%203.2%200%207.467%201.067%2010.667%205.333-119.467%20103.467-214.4%20224-214.4z%22%20opacity=%22.15%22%20fill=%22#40596b%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "159fd93f-0f27-4956-93b1-1343b7692189",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -224,
                "y": -272
              }
            },
            {
              "id": "63a66901-b384-423f-9b70-76f155bebb40",
              "type": "basic.output",
              "data": {
                "name": "PWM"
              },
              "position": {
                "x": 1232,
                "y": -144
              }
            },
            {
              "id": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
              "type": "basic.input",
              "data": {
                "name": "ON_OFF",
                "clock": false
              },
              "position": {
                "x": -224,
                "y": -16
              }
            },
            {
              "id": "94314d85-3bc8-485e-8267-57d52d038baa",
              "type": "basic.constant",
              "data": {
                "name": "velocity",
                "value": "16'd0",
                "local": false
              },
              "position": {
                "x": 512,
                "y": -576
              }
            },
            {
              "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
              "type": "basic.code",
              "data": {
                "code": "localparam pulses_nedded = 16'd7000; \r\n\r\nreg [15:0] pulses_nedded_velocity = 16'd0; //24009 maximo\r\nreg [15:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= ((velocity/16'd9) >=pulses_nedded) ? pulses_nedded: (velocity/16'd9);\r\n\r\nend\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  if(start==1'b1)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM = T;\r\n",
                "params": [
                  {
                    "name": "velocity"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "PWM"
                    }
                  ]
                }
              },
              "position": {
                "x": -8,
                "y": -368
              },
              "size": {
                "width": 1136,
                "height": 512
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "159fd93f-0f27-4956-93b1-1343b7692189",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "PWM"
              },
              "target": {
                "block": "63a66901-b384-423f-9b70-76f155bebb40",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "94314d85-3bc8-485e-8267-57d52d038baa",
                "port": "constant-out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "velocity"
              }
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
    },
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