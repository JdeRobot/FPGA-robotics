{
  "version": "1.1",
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
          "id": "cd560e27-a869-4a46-aca1-025e55a18345",
          "type": "basic.input",
          "data": {
            "name": "number1",
            "range": "[3:0]",
            "pins": [
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
            "x": -728,
            "y": -512
          }
        },
        {
          "id": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
          "type": "basic.input",
          "data": {
            "name": "px_clk",
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
            "x": -728,
            "y": -448
          }
        },
        {
          "id": "00098a0e-c294-4491-8461-bf6c7db7096d",
          "type": "basic.input",
          "data": {
            "name": "x_px",
            "range": "[9:0]",
            "pins": [
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -728,
            "y": -384
          }
        },
        {
          "id": "08d61e84-f657-4446-84ca-ca043c8efd7e",
          "type": "basic.input",
          "data": {
            "name": "number2",
            "range": "[3:0]",
            "pins": [
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
            "x": -728,
            "y": -312
          }
        },
        {
          "id": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
          "type": "basic.input",
          "data": {
            "name": "y_px",
            "range": "[9:0]",
            "pins": [
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -728,
            "y": -248
          }
        },
        {
          "id": "c80ec847-8a2f-41db-8e5e-9112a75ac48a",
          "type": "basic.output",
          "data": {
            "name": "flag",
            "range": "[2:0]",
            "pins": [
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
            "x": 680,
            "y": -232
          }
        },
        {
          "id": "521aed69-e5bb-4522-a61b-28447825918b",
          "type": "basic.input",
          "data": {
            "name": "number3",
            "range": "[3:0]",
            "pins": [
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
            "x": -728,
            "y": -136
          }
        },
        {
          "id": "5889d6b3-ecc4-48c9-8ee2-cec2339203c2",
          "type": "basic.constant",
          "data": {
            "name": "ofsset1",
            "value": "9'd0",
            "local": false
          },
          "position": {
            "x": 8,
            "y": -632
          }
        },
        {
          "id": "e9f0ce17-4c8f-43e5-878a-e2fa13ff8b1d",
          "type": "basic.constant",
          "data": {
            "name": "ofsset2",
            "value": "9'd106",
            "local": false
          },
          "position": {
            "x": 112,
            "y": -632
          }
        },
        {
          "id": "6f29d83d-eb38-4826-808d-84a909cf8e2f",
          "type": "basic.constant",
          "data": {
            "name": "ofsset3",
            "value": "9'd212",
            "local": false
          },
          "position": {
            "x": 216,
            "y": -632
          }
        },
        {
          "id": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
          "type": "ed760625604b02587ac856379cf011f512f27256",
          "position": {
            "x": -88,
            "y": -496
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
          "type": "ed760625604b02587ac856379cf011f512f27256",
          "position": {
            "x": -88,
            "y": -296
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
          "type": "ed760625604b02587ac856379cf011f512f27256",
          "position": {
            "x": -88,
            "y": -120
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
          "type": "basic.code",
          "data": {
            "code": "assign flag = {flag1, flag2, flag3};",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "flag1"
                },
                {
                  "name": "flag2"
                },
                {
                  "name": "flag3"
                }
              ],
              "out": [
                {
                  "name": "flag",
                  "range": "[2:0]",
                  "size": 3
                }
              ]
            }
          },
          "position": {
            "x": 416,
            "y": -264
          },
          "size": {
            "width": 192,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cd560e27-a869-4a46-aca1-025e55a18345",
            "port": "out"
          },
          "target": {
            "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
            "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
          },
          "size": 4
        },
        {
          "source": {
            "block": "08d61e84-f657-4446-84ca-ca043c8efd7e",
            "port": "out"
          },
          "target": {
            "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
            "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
          },
          "size": 4
        },
        {
          "source": {
            "block": "521aed69-e5bb-4522-a61b-28447825918b",
            "port": "out"
          },
          "target": {
            "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
            "port": "a114ee8c-25ac-404b-9bda-3274d7311051"
          },
          "size": 4
        },
        {
          "source": {
            "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
            "port": "out"
          },
          "target": {
            "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
            "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
          }
        },
        {
          "source": {
            "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
            "port": "out"
          },
          "target": {
            "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
            "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
          }
        },
        {
          "source": {
            "block": "13b02f24-65bb-4a75-8668-dbce47e9a8c3",
            "port": "out"
          },
          "target": {
            "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
            "port": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65"
          }
        },
        {
          "source": {
            "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
            "port": "out"
          },
          "target": {
            "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
            "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
          },
          "vertices": [
            {
              "x": -288,
              "y": -392
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
            "port": "out"
          },
          "target": {
            "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
            "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
          },
          "vertices": [
            {
              "x": -264,
              "y": -352
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
            "port": "out"
          },
          "target": {
            "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
            "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
          },
          "vertices": [
            {
              "x": -288,
              "y": -312
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "00098a0e-c294-4491-8461-bf6c7db7096d",
            "port": "out"
          },
          "target": {
            "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
            "port": "cde93eaa-4865-41b3-9376-12f06c67c336"
          },
          "vertices": [
            {
              "x": -288,
              "y": -312
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
            "port": "out"
          },
          "target": {
            "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
            "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
          },
          "vertices": [
            {
              "x": -264,
              "y": -168
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "c3b21994-654f-4f7c-aa67-61fd0dc8ec24",
            "port": "out"
          },
          "target": {
            "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
            "port": "cfa5070a-6d43-450c-b964-8f2321c7d15a"
          },
          "size": 10
        },
        {
          "source": {
            "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
            "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
          },
          "target": {
            "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
            "port": "flag1"
          }
        },
        {
          "source": {
            "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
            "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
          },
          "target": {
            "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
            "port": "flag2"
          }
        },
        {
          "source": {
            "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
            "port": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2"
          },
          "target": {
            "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
            "port": "flag3"
          }
        },
        {
          "source": {
            "block": "5889d6b3-ecc4-48c9-8ee2-cec2339203c2",
            "port": "constant-out"
          },
          "target": {
            "block": "f3d1f786-7ce2-4b0d-8ec1-2920ce0019b9",
            "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
          }
        },
        {
          "source": {
            "block": "e9f0ce17-4c8f-43e5-878a-e2fa13ff8b1d",
            "port": "constant-out"
          },
          "target": {
            "block": "fc5fc0bd-f8e4-43e9-ab83-2e1bfcb0f46f",
            "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
          }
        },
        {
          "source": {
            "block": "6f29d83d-eb38-4826-808d-84a909cf8e2f",
            "port": "constant-out"
          },
          "target": {
            "block": "880c2e93-f691-4669-9b9e-8e1d7dfd2d5d",
            "port": "a635bd72-0016-4b0d-bc96-50a0bfb0b352"
          }
        },
        {
          "source": {
            "block": "5e05af76-b68e-41bf-a55d-52ae0c0bb757",
            "port": "flag"
          },
          "target": {
            "block": "c80ec847-8a2f-41db-8e5e-9112a75ac48a",
            "port": "in"
          },
          "size": 3
        }
      ]
    },
    "state": {
      "pan": {
        "x": 444.6596,
        "y": 456.4255
      },
      "zoom": 0.5559
    }
  },
  "dependencies": {
    "ed760625604b02587ac856379cf011f512f27256": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a114ee8c-25ac-404b-9bda-3274d7311051",
              "type": "basic.input",
              "data": {
                "name": "number",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -344,
                "y": -80
              }
            },
            {
              "id": "cde93eaa-4865-41b3-9376-12f06c67c336",
              "type": "basic.input",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -344,
                "y": 96
              }
            },
            {
              "id": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
              "type": "basic.output",
              "data": {
                "name": "flag"
              },
              "position": {
                "x": 1136,
                "y": 184
              }
            },
            {
              "id": "cfa5070a-6d43-450c-b964-8f2321c7d15a",
              "type": "basic.input",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -344,
                "y": 272
              }
            },
            {
              "id": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
              "type": "basic.input",
              "data": {
                "name": "pc_clk",
                "clock": false
              },
              "position": {
                "x": -344,
                "y": 448
              }
            },
            {
              "id": "a635bd72-0016-4b0d-bc96-50a0bfb0b352",
              "type": "basic.constant",
              "data": {
                "name": "offset",
                "value": "9'd0",
                "local": false
              },
              "position": {
                "x": 288,
                "y": -240
              }
            },
            {
              "id": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
              "type": "basic.code",
              "data": {
                "code": "/*input : offset, number, x_px[9:0], y_px[9:0], px_clk\r\n\r\noutput: flag\r\n\r\nbehaviour: With the offset we can control the position of the number on the screen. This module \r\ncheck if the actual pixel has to be drawn*/\r\n\r\n\r\n/**********************************************************************/\r\nwire area1, area2, area3, area4, area5, area6, area7, area8, area9, areadif1;\r\nreg flag;\r\nparameter init_h = 108;\r\nparameter init_v = 140;\r\n/***********************************************************************/\r\n\r\nassign area1= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;\r\nassign area2= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;\r\nassign area3= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;\r\nassign area4= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+97 && y_px<=init_v+101) ? 1:0;\r\nassign area5= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;\r\nassign area6= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;\r\nassign area7= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+186 && y_px<=init_v+190) ? 1:0;\r\nassign area8= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;\r\nassign areadif1 = (x_px<=init_h+55+offset && x_px>=init_h+51+offset && y_px>=init_v+142 && y_px<=init_v+146) ? 1:0;\r\n\r\n\r\n\r\nalways @ (posedge px_clk)\r\n\r\nbegin\r\n\r\n  case (number)\r\n      4'd0 :\r\n      begin\r\n        if (area1 || area2 || area3 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else \r\n          flag = 1'b0;\r\n      end\r\n      4'd1:\r\n      begin\r\n        if (area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd2:\r\n      begin\r\n        if (area2 || area3 || area4 || area5 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd3:\r\n      begin\r\n        if (area2 || area3 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd4:\r\n      begin\r\n         if (area1 || area4 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd5:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd6:\r\n      begin\r\n        if (area2 || area1 || area4 || area6 || area7 || area5)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd7:\r\n      begin\r\n         if (area2 || area3 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd8:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area5 || area6 || area7 || area8)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd9:\r\n      begin\r\n        if (area1 || area2 || area3 || area4 || area6)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd10: //A\r\n      begin\r\n        if (area1 || area2 || area4|| area3 || area5 || area6 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd11: //B\r\n      begin\r\n         if (area1 || area4 || area5 || area6 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd12: //C\r\n      begin\r\n         if (area1 || area2 || area5 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd13: //D\r\n      begin\r\n         if (area3  || area4 || area5 || area6 ||area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd14: //E\r\n      begin\r\n         if (area1 || area2 ||area4 || area5 || area7 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n      4'd15: //F\r\n      begin\r\n         if (area1 || area2 || area4 || area5 || areadif1)\r\n          flag = 1'b1;\r\n        else\r\n          flag = 1'b0;\r\n      end\r\n  endcase\r\n\r\nend",
                "params": [
                  {
                    "name": "offset"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "number",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "x_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "y_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "px_clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "flag"
                    }
                  ]
                }
              },
              "position": {
                "x": -96,
                "y": -136
              },
              "size": {
                "width": 1136,
                "height": 704
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "flag"
              },
              "target": {
                "block": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a114ee8c-25ac-404b-9bda-3274d7311051",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "number"
              },
              "size": 4
            },
            {
              "source": {
                "block": "cde93eaa-4865-41b3-9376-12f06c67c336",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "x_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "cfa5070a-6d43-450c-b964-8f2321c7d15a",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "y_px"
              },
              "size": 10
            },
            {
              "source": {
                "block": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
                "port": "out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "a635bd72-0016-4b0d-bc96-50a0bfb0b352",
                "port": "constant-out"
              },
              "target": {
                "block": "0107c5a9-e6a5-462b-a9b6-8dbdd00d5788",
                "port": "offset"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 524,
            "y": 317.5
          },
          "zoom": 1
        }
      }
    }
  }
}