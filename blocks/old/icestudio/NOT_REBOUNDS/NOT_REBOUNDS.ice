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
          "id": "c60545bb-e1ba-4f21-817d-b8cb1155b82e",
          "type": "basic.output",
          "data": {
            "name": "signal_without_rebounds",
            "pins": [
              {
                "index": "0",
                "name": "DD3",
                "value": "81"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1496,
            "y": 528
          }
        },
        {
          "id": "de1aaa87-3c45-4ec8-84a8-197b308918e1",
          "type": "basic.input",
          "data": {
            "name": "signal",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 528
          }
        },
        {
          "id": "39b58cc0-3608-45bf-8e65-50f666a13512",
          "type": "basic.code",
          "data": {
            "code": "reg signal_without_rebounds_reg = 1'b0;\r\nreg [9:0] count =10'd0;\r\nlocalparam TIME =10'd1022;\r\n\r\nalways @(posedge signal)\r\nbegin\r\n  if(count >= TIME)\r\n    begin\r\n        signal_without_rebounds_reg <= signal;\r\n        count <= 10'd0;\r\n    end\r\n  else begin\r\n        count<= count + 10'd1;\r\n        signal_without_rebounds_reg <= 1'b1;\r\n  end \r\n\r\nend\r\nassign signal_without_rebounds = signal_without_rebounds_reg;\r\n\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "signal"
                }
              ],
              "out": [
                {
                  "name": "signal_without_rebounds"
                }
              ]
            }
          },
          "position": {
            "x": 408,
            "y": 288
          },
          "size": {
            "width": 952,
            "height": 536
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "de1aaa87-3c45-4ec8-84a8-197b308918e1",
            "port": "out"
          },
          "target": {
            "block": "39b58cc0-3608-45bf-8e65-50f666a13512",
            "port": "signal"
          }
        },
        {
          "source": {
            "block": "39b58cc0-3608-45bf-8e65-50f666a13512",
            "port": "signal_without_rebounds"
          },
          "target": {
            "block": "c60545bb-e1ba-4f21-817d-b8cb1155b82e",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}