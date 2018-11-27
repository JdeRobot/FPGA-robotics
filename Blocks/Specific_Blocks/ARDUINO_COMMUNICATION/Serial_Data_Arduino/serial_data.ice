{
  "version": "1.1",
  "package": {
    "name": "SerialDataArduino",
    "version": "v1.0.0",
    "description": "",
    "author": "Juan Ordoñez Cerezo",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2232%22%20height=%2232%22%20version=%221%22%3E%3Cpath%20opacity=%22.2%22%20d=%22M11%208a9%209%200%200%200-9%209%209%209%200%200%200%209%209%209%209%200%200%200%204.998-1.523A9%209%200%200%200%2021%2026a9%209%200%200%200%209-9%209%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%208z%22/%3E%3Cpath%20fill=%22#19979d%22%20d=%22M11%207a9%209%200%200%200-9%209%209%209%200%200%200%209%209%209%209%200%200%200%204.998-1.523A9%209%200%200%200%2021%2025a9%209%200%200%200%209-9%209%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%207z%22/%3E%3Cpath%20opacity=%22.2%22%20d=%22M10.869%2012c-.634%200-1.266.127-1.853.375-.588.248-1.125.614-1.579%201.076s-.817%201.015-1.064%201.623A5.12%205.12%200%200%200%206%2016.998c0%20.66.126%201.316.373%201.924.247.608.611%201.159%201.065%201.62a4.768%204.768%200%200%200%203.389%201.45l.042.002c1.507.072%202.72-.526%203.61-1.394.607-.594%201.085-1.296%201.521-2.01.436.714.914%201.416%201.522%202.01.888.868%202.102%201.466%203.609%201.394l.043-.002a4.76%204.76%200%200%200%201.81-.373%204.864%204.864%200%200%200%201.578-1.076l.004-.006a4.99%204.99%200%200%200%201.061-1.615c.247-.608.373-1.264.373-1.924s-.126-1.316-.373-1.924l-.006-.01a5.02%205.02%200%200%200-1.059-1.613%204.856%204.856%200%200%200-1.578-1.076A4.768%204.768%200%200%200%2021.131%2012c-1.588%200-2.842.652-3.768%201.561-.535.524-.969%201.124-1.363%201.738-.394-.614-.828-1.214-1.363-1.738-.926-.909-2.18-1.56-3.768-1.56zm.182%202c1.128%200%201.848.38%202.51%201.012.524.5.983%201.181%201.439%201.923-.52.868-1.023%201.66-1.588%202.198-.622.592-1.266.918-2.32.861h-.041a3.076%203.076%200%200%201-2.156-.879l-.012-.01a2.967%202.967%200%200%201-.657-3.246c.15-.358.376-.692.656-.97l.012-.012A3.07%203.07%200%200%201%2011.051%2014zm9.898%200a3.07%203.07%200%200%201%202.156.877l.012.012a2.957%202.957%200%200%201%200%204.216l-.011.01a3.076%203.076%200%200%201-2.157.878h-.04c-1.055.058-1.698-.269-2.32-.86-.566-.538-1.069-1.33-1.589-2.198.456-.743.915-1.424%201.44-1.924C19.1%2014.38%2019.82%2014%2020.95%2014zM20%2015v1h-1v2h1v1h2v-1h1v-2h-1v-1h-2zM9%2016v2h4v-2H9z%22/%3E%3Cpath%20fill=%22#79ff88%22%20d=%22M10.869%2011c-.634%200-1.266.127-1.853.375-.588.248-1.125.614-1.579%201.076s-.817%201.015-1.064%201.623A5.12%205.12%200%200%200%206%2015.998c0%20.66.126%201.316.373%201.924.247.608.611%201.159%201.065%201.62a4.768%204.768%200%200%200%203.389%201.45l.042.002c1.507.072%202.72-.526%203.61-1.394.607-.594%201.085-1.296%201.521-2.01.436.714.914%201.416%201.522%202.01.888.868%202.102%201.466%203.609%201.394l.043-.002a4.76%204.76%200%200%200%201.81-.373%204.864%204.864%200%200%200%201.578-1.076l.004-.006a4.99%204.99%200%200%200%201.061-1.615c.247-.608.373-1.264.373-1.924s-.126-1.316-.373-1.924l-.006-.01a5.02%205.02%200%200%200-1.059-1.613%204.856%204.856%200%200%200-1.578-1.076A4.768%204.768%200%200%200%2021.131%2011c-1.588%200-2.842.652-3.768%201.561-.535.524-.969%201.124-1.363%201.738-.394-.614-.828-1.214-1.363-1.738-.926-.909-2.18-1.56-3.768-1.56zm.182%202c1.128%200%201.848.38%202.51%201.012.524.5.983%201.181%201.439%201.923-.52.868-1.023%201.66-1.588%202.198-.622.592-1.266.918-2.32.861h-.041a3.076%203.076%200%200%201-2.156-.879l-.012-.01a2.967%202.967%200%200%201-.657-3.246c.15-.358.376-.692.656-.97l.012-.012A3.07%203.07%200%200%201%2011.051%2013zm9.898%200a3.07%203.07%200%200%201%202.156.877l.012.012a2.957%202.957%200%200%201%200%204.216l-.011.01a3.076%203.076%200%200%201-2.157.878h-.04c-1.055.058-1.698-.269-2.32-.86-.566-.538-1.069-1.33-1.589-2.198.456-.743.915-1.424%201.44-1.924C19.1%2013.38%2019.82%2013%2020.95%2013zM20%2014v1h-1v2h1v1h2v-1h1v-2h-1v-1h-2zM9%2015v2h4v-2H9z%22/%3E%3Cpath%20fill=%22#fff%22%20opacity=%22.2%22%20d=%22M11%207a9%209%200%200%200-9%209%209%209%200%200%200%20.021.424A9%209%200%200%201%2011%208a9%209%200%200%201%205.002%201.523A9%209%200%200%201%2021%208a9%209%200%200%201%208.979%208.576A9%209%200%200%200%2030%2016a9%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%207z%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74",
          "type": "basic.output",
          "data": {
            "name": "data",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": 0
              },
              {
                "index": "6",
                "name": "",
                "value": 0
              },
              {
                "index": "5",
                "name": "",
                "value": 0
              },
              {
                "index": "4",
                "name": "",
                "value": 0
              },
              {
                "index": "3",
                "name": "",
                "value": 0
              },
              {
                "index": "2",
                "name": "",
                "value": 0
              },
              {
                "index": "1",
                "name": "",
                "value": 0
              },
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1112,
            "y": -272
          }
        },
        {
          "id": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca",
          "type": "basic.output",
          "data": {
            "name": "clock_data_debug",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 480,
            "y": -272
          }
        },
        {
          "id": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
          "type": "basic.input",
          "data": {
            "name": "serial_data",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -856,
            "y": -40
          }
        },
        {
          "id": "527befc1-aab3-45c7-b1b3-e30330205cb4",
          "type": "basic.output",
          "data": {
            "name": "byte_ready",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1152,
            "y": 216
          }
        },
        {
          "id": "d4a68ff1-27b2-495b-a45f-39ade7eec2ae",
          "type": "basic.input",
          "data": {
            "name": "clock",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -872,
            "y": 320
          }
        },
        {
          "id": "3321091d-26b2-48f2-8afb-b4edc3d59883",
          "type": "basic.output",
          "data": {
            "name": "bit_ready",
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
            "x": 608,
            "y": 528
          }
        },
        {
          "id": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
          "type": "basic.code",
          "data": {
            "code": "reg [9:0] count = 10'd0;\r\nreg[2:0] bits_data= 3'd0;\r\nreg clock_data_reg = 1'd0;\r\nreg bit_ready_reg = 1'b0;\r\nreg flag = 1'b1;\r\nreg start = 1'b0;\r\nlocalparam IDLE=4'd0;\r\nlocalparam START=4'd1;\r\nlocalparam DATAS=4'd2;\r\nlocalparam STOP=4'd3;\r\nlocalparam CONTROL_DATA=4'd4;\r\n\r\nreg [3:0] state = IDLE;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n    case(state)\r\n    IDLE:\r\n    begin\r\n        state<= (serial_data==1'b0) ? START:IDLE;\r\n    end\r\n    START:\r\n    begin\r\n        clock_data_reg<= 1'b0;\r\n        if(count==10'd624)\r\n        begin\r\n            count<=10'd0;\r\n            state<=DATAS;\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            state<= START;\r\n        end\r\n    end\r\n    DATAS:\r\n    begin\r\n        clock_data_reg<= flag;\r\n        if(count==10'd624)\r\n        begin\r\n            count<=10'd0;\r\n            bits_data<= bits_data+3'd1; //esto solo debe suceder 8 veces, por eso vamos a otro estado que lo controle\r\n            flag<=!flag; // en realidad es solo visual, daria igual dejarlo siempre igual\r\n            state<= CONTROL_DATA; //vamos al estado que controla si volvemos aqui o nos vamos a stop\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            bit_ready_reg<= (count>10'd300 && count<10'd320)? 1:0;//esto solo nos informa de que ya podemos coger un bit, guay\r\n            state<= DATAS;\r\n        end \r\n    end\r\n    STOP:\r\n    begin\r\n        clock_data_reg<= 1'b1;\r\n        if(count==10'd600)\r\n        begin\r\n            count<=10'd0;\r\n            state<=IDLE;\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            state<= STOP;\r\n        end\r\n    end\r\n    CONTROL_DATA:\r\n    begin\r\n       state<=(bits_data==0)?STOP:DATAS; \r\n    end\r\n    endcase\r\nend\r\n\r\nassign clock_data = clock_data_reg;\r\nassign ready = bit_ready_reg;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "serial_data"
                },
                {
                  "name": "clock"
                }
              ],
              "out": [
                {
                  "name": "clock_data"
                },
                {
                  "name": "ready"
                }
              ]
            }
          },
          "position": {
            "x": -376,
            "y": -192
          },
          "size": {
            "width": 752,
            "height": 720
          }
        },
        {
          "id": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] data_reg = 8'd0;\nreg [2:0] count_bits = 3'd7;\nreg byte_ready_reg = 1'b1;\n\nalways@(negedge ready)\nbegin \n    data_reg[count_bits]<= serial_data;\n    byte_ready_reg<=(count_bits==3'd7)?1:0 ;\nend\n\nalways@(posedge ready)\nbegin \n    count_bits<= count_bits+3'd1;\nend\n\nassign data = data_reg;\nassign byte_ready = byte_ready_reg;\n\n//en este bloque vamos cogiendo los bits hasta qie llegemos al byte",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clock_data"
                },
                {
                  "name": "ready"
                },
                {
                  "name": "serial_data"
                }
              ],
              "out": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "byte_ready"
                }
              ]
            }
          },
          "position": {
            "x": 528,
            "y": 64
          },
          "size": {
            "width": 528,
            "height": 416
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d4a68ff1-27b2-495b-a45f-39ade7eec2ae",
            "port": "out"
          },
          "target": {
            "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
            "port": "clock"
          }
        },
        {
          "source": {
            "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
            "port": "clock_data"
          },
          "target": {
            "block": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
            "port": "clock_data"
          },
          "target": {
            "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
            "port": "clock_data"
          }
        },
        {
          "source": {
            "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
            "port": "data"
          },
          "target": {
            "block": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
            "port": "out"
          },
          "target": {
            "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
            "port": "serial_data"
          }
        },
        {
          "source": {
            "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
            "port": "ready"
          },
          "target": {
            "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
            "port": "ready"
          },
          "vertices": [
            {
              "x": 440,
              "y": 328
            }
          ]
        },
        {
          "source": {
            "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
            "port": "byte_ready"
          },
          "target": {
            "block": "527befc1-aab3-45c7-b1b3-e30330205cb4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
            "port": "out"
          },
          "target": {
            "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
            "port": "serial_data"
          },
          "vertices": [
            {
              "x": 360,
              "y": 576
            }
          ]
        },
        {
          "source": {
            "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
            "port": "ready"
          },
          "target": {
            "block": "3321091d-26b2-48f2-8afb-b4edc3d59883",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}