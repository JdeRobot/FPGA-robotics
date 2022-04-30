{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22546.509%22%20height=%22546.509%22%20viewBox=%220%200%20546.509%20546.509%22%3E%3Cpath%20d=%22M0%20446.434h128.195V100.087H0v346.347zm64.09-64.658c-16.143%200-29.241-13.087-29.241-29.235%200-16.153%2013.092-29.234%2029.241-29.234%2016.148%200%2029.241%2013.081%2029.241%2029.234%200%2016.143-13.093%2029.235-29.241%2029.235zm-35.6-247.945h67.844v124.998H28.49V133.831zm0%20135.486h67.844v12.939H28.49v-12.939zm8.993-125.003h49.482v20.995H37.483v-20.995zm112.071%20302.12H277.75V100.087H149.554v346.347zm64.096-64.658c-16.143%200-29.241-13.087-29.241-29.235%200-16.153%2013.092-29.234%2029.241-29.234%2016.148%200%2029.234%2013.081%2029.234%2029.234.001%2016.143-13.086%2029.235-29.234%2029.235zm-35.606-247.945h67.844v124.998h-67.844V133.831zm0%20135.486h67.844v12.939h-67.844v-12.939zm8.993-125.003h49.482v20.995h-49.482v-20.995zm225.327-55.541l-118.186%2049.65%20134.139%20319.312%20118.191-49.639L412.364%2088.773zm-78.855%2069.721l62.548-26.273%2048.421%20115.248-62.548%2026.279-48.421-115.254zm52.475%20124.933l62.548-26.273%205.013%2011.922-62.548%2026.279-5.013-11.928zm76.391%2089.879c-14.883%206.254-32.024-.744-38.277-15.64-6.254-14.884.744-32.013%2015.628-38.267%2014.883-6.26%2032.024.733%2038.277%2015.628%206.248%2014.884-.744%2032.025-15.628%2038.279zm-62.76-208.426l-45.62%2019.157-8.133-19.352%2045.619-19.154%208.134%2019.349z%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "f9fbdcad-f2a1-41e0-ab3d-95faedbed7d4",
          "type": "basic.output",
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
            "virtual": true
          },
          "position": {
            "x": 1248,
            "y": 48
          }
        },
        {
          "id": "fd828ea4-6e03-484e-98c4-d1796cc02dbc",
          "type": "basic.input",
          "data": {
            "name": "data",
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
            "x": -176,
            "y": 96
          }
        },
        {
          "id": "509870fc-8b34-41a9-a123-1d8a42cbc07e",
          "type": "basic.output",
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
            "virtual": true
          },
          "position": {
            "x": 1248,
            "y": 240
          }
        },
        {
          "id": "6cab70ea-a1e3-40d3-9084-4ed2c8cbd496",
          "type": "basic.input",
          "data": {
            "name": "byte_ready",
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
            "x": -184,
            "y": 376
          }
        },
        {
          "id": "be4b4e23-96da-4352-88e0-4b247ab94b85",
          "type": "basic.output",
          "data": {
            "name": "data_ready",
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
            "x": 1248,
            "y": 424
          }
        },
        {
          "id": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] decimal_part_reg = 8'd0;\r\nreg [7:0] integer_part_reg = 8'd0;\r\nreg data_ready_reg= 1'b0;\r\nlocalparam DATA1 = 1'b0;\r\nlocalparam DATA2 = 1'b1;\r\nreg state1= DATA1;\r\n\r\nalways @(posedge byte_ready)\r\nbegin\r\n    case(state1)\r\n    DATA1:\r\n    begin\r\n      integer_part_reg<=data;\r\n      state1<=DATA2;\r\n      data_ready_reg<=1'b0;\r\n    end\r\n    DATA2:\r\n    begin\r\n      decimal_part_reg<=data;\r\n      state1<=DATA1;\r\n      data_ready_reg<=1'b1;\r\n    end\r\n    endcase\r\nend\r\nassign decimal_part = decimal_part_reg;\r\nassign integer_part = integer_part_reg;\r\nassign data_ready= data_ready_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "byte_ready"
                }
              ],
              "out": [
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
              ]
            }
          },
          "position": {
            "x": 16,
            "y": -16
          },
          "size": {
            "width": 1120,
            "height": 568
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "fd828ea4-6e03-484e-98c4-d1796cc02dbc",
            "port": "out"
          },
          "target": {
            "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
            "port": "data"
          },
          "size": 8
        },
        {
          "source": {
            "block": "6cab70ea-a1e3-40d3-9084-4ed2c8cbd496",
            "port": "out"
          },
          "target": {
            "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
            "port": "byte_ready"
          }
        },
        {
          "source": {
            "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
            "port": "integer_part"
          },
          "target": {
            "block": "f9fbdcad-f2a1-41e0-ab3d-95faedbed7d4",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
            "port": "decimal_part"
          },
          "target": {
            "block": "509870fc-8b34-41a9-a123-1d8a42cbc07e",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "3635918f-c21b-4fe9-b97f-b6ca3548f646",
            "port": "data_ready"
          },
          "target": {
            "block": "be4b4e23-96da-4352-88e0-4b247ab94b85",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}