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
          "id": "160f7b8b-bdd1-49a8-be04-2e93a9d9f40e",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 168,
            "y": 152
          }
        },
        {
          "id": "f7ae7ed1-da0e-4656-ace6-d13e4abb8d31",
          "type": "basic.output",
          "data": {
            "name": "rgbmode",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 696,
            "y": 176
          }
        },
        {
          "id": "59d34d5d-e138-470f-a77a-24cf197dba62",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 176,
            "y": 240
          }
        },
        {
          "id": "ecd97962-3a35-4477-bb4a-4e4832bce1e7",
          "type": "basic.output",
          "data": {
            "name": "testmode",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 696,
            "y": 296
          }
        },
        {
          "id": "99bc1efe-34ca-4402-abb0-3ccc5bf89106",
          "type": "basic.input",
          "data": {
            "name": "sig_in",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 152,
            "y": 320
          }
        },
        {
          "id": "20509680-33a3-44cd-a346-35da07f0b9b5",
          "type": "basic.code",
          "data": {
            "code": " // @include mode_sel.v\n \n    mode_sel lnk2vrlg \n    (\n      .rst     (rst),\n      .clk     (clk),\n      .sig_in  (sig_in),\n      .rgbmode (rgbmode),\n      .testmode(testmode)\n    );",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
                },
                {
                  "name": "sig_in"
                }
              ],
              "out": [
                {
                  "name": "rgbmode"
                },
                {
                  "name": "testmode"
                }
              ]
            }
          },
          "position": {
            "x": 312,
            "y": 144
          },
          "size": {
            "width": 312,
            "height": 248
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "160f7b8b-bdd1-49a8-be04-2e93a9d9f40e",
            "port": "out"
          },
          "target": {
            "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "59d34d5d-e138-470f-a77a-24cf197dba62",
            "port": "out"
          },
          "target": {
            "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "99bc1efe-34ca-4402-abb0-3ccc5bf89106",
            "port": "out"
          },
          "target": {
            "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
            "port": "sig_in"
          }
        },
        {
          "source": {
            "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
            "port": "rgbmode"
          },
          "target": {
            "block": "f7ae7ed1-da0e-4656-ace6-d13e4abb8d31",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "20509680-33a3-44cd-a346-35da07f0b9b5",
            "port": "testmode"
          },
          "target": {
            "block": "ecd97962-3a35-4477-bb4a-4e4832bce1e7",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}