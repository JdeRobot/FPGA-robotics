{
  "version": "1.1",
  "package": {
    "name": "PWM_CONTROLLER",
    "version": "1.0.0",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "159fd93f-0f27-4956-93b1-1343b7692189",
          "type": "basic.input",
          "data": {
            "name": "clock",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -200,
            "y": -320
          }
        },
        {
          "id": "63a66901-b384-423f-9b70-76f155bebb40",
          "type": "basic.output",
          "data": {
            "name": "PWM",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1232,
            "y": -144
          }
        },
        {
          "id": "1f30916c-b512-4417-bb91-c5af740aa502",
          "type": "basic.input",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -200,
            "y": -144
          }
        },
        {
          "id": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
          "type": "basic.input",
          "data": {
            "name": "start",
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
            "x": -200,
            "y": 24
          }
        },
        {
          "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
          "type": "basic.code",
          "data": {
            "code": "localparam pulses_nedded = 16'd7000; \r\n\r\nreg [15:0] pulses_nedded_velocity = 16'd0; //24009 maximo\r\nreg [15:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= ((velocity/16'd9) >=pulses_nedded) ? pulses_nedded: (velocity/16'd9);\r\n\r\nend\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  if(start==1'b1)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM = T;\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clock"
                },
                {
                  "name": "velocity",
                  "range": "[15:0]",
                  "size": 16
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
            "block": "1f30916c-b512-4417-bb91-c5af740aa502",
            "port": "out"
          },
          "target": {
            "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
            "port": "velocity"
          },
          "size": 16
        }
      ]
    }
  },
  "dependencies": {}
}