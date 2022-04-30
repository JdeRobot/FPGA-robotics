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
          "id": "a114ee8c-25ac-404b-9bda-3274d7311051",
          "type": "basic.input",
          "data": {
            "name": "number",
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
            "x": -344,
            "y": 96
          }
        },
        {
          "id": "dec5e19b-7b93-463d-adc2-8a0bd68bb0f2",
          "type": "basic.output",
          "data": {
            "name": "flag",
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
            "x": -344,
            "y": 272
          }
        },
        {
          "id": "7808ff1d-68d9-46cc-8c7a-ceabd4b60c65",
          "type": "basic.input",
          "data": {
            "name": "pc_clk",
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
        "x": 341.9741,
        "y": 252.6477
      },
      "zoom": 0.8095
    }
  },
  "dependencies": {}
}