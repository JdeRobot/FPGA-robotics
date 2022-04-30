{
  "version": "1.1",
  "package": {
    "name": "ESC_CONTROLLER",
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
            "y": -336
          }
        },
        {
          "id": "a4550e0b-eaaa-4b46-82cc-c0b941252edd",
          "type": "basic.input",
          "data": {
            "name": "ready",
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
            "x": -192,
            "y": -208
          }
        },
        {
          "id": "63a66901-b384-423f-9b70-76f155bebb40",
          "type": "basic.output",
          "data": {
            "name": "PWM_ESC",
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
          "id": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56",
          "type": "basic.input",
          "data": {
            "name": "velocity",
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
            "x": -192,
            "y": -80
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
            "y": 40
          }
        },
        {
          "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
          "type": "basic.code",
          "data": {
            "code": "localparam pulses_nedded = 240000; \r\nlocalparam pulses_nedded_1ms = 12000;\r\n\r\nreg [17:0] pulses_nedded_velocity = 10000; //24009 maximo\r\nreg [17:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= (18'd12000+(velocity*18'd47) >=24000) ? 23999: 18'd12000+(velocity*18'd47);\r\n\r\nend\r\n\r\nalways @(clock)\r\nbegin\r\n  if(ready==1'b1 && start==1'b1)\r\n    T <= (count <= pulses_nedded_1ms) ? 1:0;\r\n  else if(ready==1'b0)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM_ESC = T;\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clock"
                },
                {
                  "name": "ready"
                },
                {
                  "name": "velocity",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "start"
                }
              ],
              "out": [
                {
                  "name": "PWM_ESC"
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
            "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
            "port": "PWM_ESC"
          },
          "target": {
            "block": "63a66901-b384-423f-9b70-76f155bebb40",
            "port": "in"
          }
        },
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
            "block": "a4550e0b-eaaa-4b46-82cc-c0b941252edd",
            "port": "out"
          },
          "target": {
            "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
            "port": "ready"
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
            "block": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56",
            "port": "out"
          },
          "target": {
            "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
            "port": "velocity"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": 645,
        "y": 724.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}