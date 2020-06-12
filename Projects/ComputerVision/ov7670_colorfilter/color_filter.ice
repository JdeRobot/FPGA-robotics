{
  "version": "1.2",
  "package": {
    "name": "color_proc",
    "version": "1.0",
    "description": "Applies different color filters to the original image and saves in another memory",
    "author": "Felipe Machado",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22199.988%22%20height=%22204.837%22%20viewBox=%220%200%2052.913582%2054.196503%22%3E%3Cg%20transform=%22translate(-44.575%20-85.824)%22%3E%3Cpath%20fill=%22#fff%22%20paint-order=%22markers%20stroke%20fill%22%20d=%22M44.631%2085.824h52.858v53.992H44.631z%22/%3E%3Ccircle%20cx=%2271.032%22%20cy=%22105.177%22%20r=%2215%22%20fill=%22#f0f%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Ccircle%20r=%2215%22%20cy=%22125.021%22%20cx=%2282.489%22%20fill=%22#ff0%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Ccircle%20cx=%2259.575%22%20cy=%22125.021%22%20r=%2215%22%20fill=%22#0ff%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M59.575%20110.02a15%2015%200%200%200-2.64.24%2015%2015%200%200%200%2014.097%209.917%2015%2015%200%200%200%202.641-.239%2015%2015%200%200%200-14.098-9.917z%22%20fill=%22#00f%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M82.489%20110.02a15%2015%200%200%200-14.09%209.91%2015%2015%200%200%200%202.633.247%2015%2015%200%200%200%2014.09-9.91%2015%2015%200%200%200-2.633-.246z%22%20fill=%22red%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M71.022%20115.351a15%2015%200%200%200-3.533%209.67%2015%2015%200%200%200%203.553%209.67%2015%2015%200%200%200%203.533-9.67%2015%2015%200%200%200-3.553-9.67z%22%20fill=%22#0f0%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Cpath%20d=%22M71.032%20115.386a15%2015%200%200%200-.278.318%2015%2015%200%200%200-.022.028%2015%2015%200%200%200-2.302%204.114%2015%2015%200%200%200-.028.077%2015%2015%200%200%200%20.169.03%2015%2015%200%200%200%201.073.142%2015%2015%200%200%200%20.675.051%2015%2015%200%200%200%20.713.031%2015%2015%200%200%200%201.543-.084%2015%2015%200%200%200%201.081-.164%2015%2015%200%200%200-.095-.257%2015%2015%200%200%200-.357-.857%2015%2015%200%200%200-.28-.576%2015%2015%200%200%200-.383-.71%2015%2015%200%200%200-.393-.638%2015%2015%200%200%200-.395-.584%2015%2015%200%200%200-.524-.686%2015%2015%200%200%200-.197-.235z%22%20paint-order=%22markers%20stroke%20fill%22/%3E%3Ctext%20style=%22line-height:12.19570637px;-inkscape-font-specification:Arial%22%20x=%2259.984%22%20y=%2289.613%22%20font-weight=%22400%22%20font-size=%225.204%22%20font-family=%22Arial%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%3E%3Ctspan%20x=%2259.984%22%20y=%2289.613%22%3Ecolor%20filter%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "528f5933-e16b-49ad-84ce-ea1ba898ae30",
          "type": "basic.input",
          "data": {
            "name": "rst",
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
            "x": 256,
            "y": 144
          }
        },
        {
          "id": "630b1e3c-6916-44c2-8935-69f4f5bdf3e1",
          "type": "basic.output",
          "data": {
            "name": "proc_we",
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
            "x": 936,
            "y": 144
          }
        },
        {
          "id": "e9ea4f5e-5219-49ea-8ace-3948c71a70ea",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 264,
            "y": 208
          }
        },
        {
          "id": "d94ecd50-4fc0-4b18-acbc-84272ff9e389",
          "type": "basic.output",
          "data": {
            "name": "proc_img_addr",
            "range": "[12:0]",
            "pins": [
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "x": 1024,
            "y": 208
          }
        },
        {
          "id": "877821ee-1b00-4c1f-b4e8-7facac2680ad",
          "type": "basic.input",
          "data": {
            "name": "proc_ctrl",
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
            "x": 256,
            "y": 280
          }
        },
        {
          "id": "accb0dfb-9f49-4e96-af27-4a5989ae8e1f",
          "type": "basic.output",
          "data": {
            "name": "proc_img_pxl",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "x": 1008,
            "y": 280
          }
        },
        {
          "id": "6c9cb566-0074-44fd-8d9b-8b7810e14a18",
          "type": "basic.input",
          "data": {
            "name": "orig_img_pxl",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "x": 208,
            "y": 344
          }
        },
        {
          "id": "4253eff9-5483-4d7d-9f7e-21a5f121da9b",
          "type": "basic.output",
          "data": {
            "name": "orig_img_addr",
            "range": "[12:0]",
            "pins": [
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
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
            "x": 1000,
            "y": 344
          }
        },
        {
          "id": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
          "type": "basic.code",
          "data": {
            "code": "// @include color_proc.v\n\n    color_proc lnk2vrlg\n  (\n     .rst        (rst),\n     .clk        (clk),\n     .proc_ctrl  (proc_ctrl),\n     // from original image frame buffer\n     .orig_addr  (orig_img_addr),\n     .orig_pxl   (orig_img_pxl),\n     // to processed image frame buffer\n     .proc_we        (proc_we),\n     .proc_addr  (proc_img_addr),\n     .proc_pxl   (proc_img_pxl)\n  );",
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
                  "name": "proc_ctrl"
                },
                {
                  "name": "orig_img_pxl",
                  "range": "[11:0]",
                  "size": 12
                }
              ],
              "out": [
                {
                  "name": "proc_we"
                },
                {
                  "name": "proc_img_addr",
                  "range": "[12:0]",
                  "size": 13
                },
                {
                  "name": "proc_img_pxl",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "orig_img_addr",
                  "range": "[12:0]",
                  "size": 13
                }
              ]
            }
          },
          "position": {
            "x": 432,
            "y": 144
          },
          "size": {
            "width": 400,
            "height": 264
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "528f5933-e16b-49ad-84ce-ea1ba898ae30",
            "port": "out"
          },
          "target": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "e9ea4f5e-5219-49ea-8ace-3948c71a70ea",
            "port": "out"
          },
          "target": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "877821ee-1b00-4c1f-b4e8-7facac2680ad",
            "port": "out"
          },
          "target": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "proc_ctrl"
          }
        },
        {
          "source": {
            "block": "6c9cb566-0074-44fd-8d9b-8b7810e14a18",
            "port": "out"
          },
          "target": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "orig_img_pxl"
          },
          "size": 12
        },
        {
          "source": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "proc_we"
          },
          "target": {
            "block": "630b1e3c-6916-44c2-8935-69f4f5bdf3e1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "proc_img_pxl"
          },
          "target": {
            "block": "accb0dfb-9f49-4e96-af27-4a5989ae8e1f",
            "port": "in"
          },
          "size": 12
        },
        {
          "source": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "proc_img_addr"
          },
          "target": {
            "block": "d94ecd50-4fc0-4b18-acbc-84272ff9e389",
            "port": "in"
          },
          "size": 13
        },
        {
          "source": {
            "block": "9ea97a7f-91d6-460b-a64e-d77fe547bc35",
            "port": "orig_img_addr"
          },
          "target": {
            "block": "4253eff9-5483-4d7d-9f7e-21a5f121da9b",
            "port": "in"
          },
          "size": 13
        }
      ]
    }
  },
  "dependencies": {}
}