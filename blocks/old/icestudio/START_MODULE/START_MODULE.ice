{
  "version": "1.1",
  "package": {
    "name": "START_MODULE",
    "version": "1.0",
    "description": "This module is only a flag in order to start a specified behaviour",
    "author": "Juan Ordoñez Cerezo",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20489.888%20489.888%22%3E%3Cpath%20d=%22M25.383%20290.5c-7.2-77.5%2025.9-147.7%2080.8-192.3%2021.4-17.4%2053.4-2.5%2053.4%2025%200%2010.1-4.8%2019.4-12.6%2025.7-38.9%2031.7-62.3%2081.7-56.6%20136.9%207.4%2071.9%2065%20130.1%20136.8%20138.1%2093.7%2010.5%20173.3-62.9%20173.3-154.5%200-48.6-22.5-92.1-57.6-120.6-7.8-6.3-12.5-15.6-12.5-25.6%200-27.2%2031.5-42.6%2052.7-25.6%2050.2%2040.5%2082.4%20102.4%2082.4%20171.8%200%20126.9-107.8%20229.2-236.7%20219.9-106.6-7.5-193.5-92.4-203.4-198.8zM244.883%200c-18%200-32.5%2014.6-32.5%2032.5v149.7c0%2018%2014.6%2032.5%2032.5%2032.5s32.5-14.6%2032.5-32.5V32.5c0-17.9-14.5-32.5-32.5-32.5z%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
          "type": "basic.input",
          "data": {
            "name": "s1",
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
            "x": 64,
            "y": 184
          }
        },
        {
          "id": "2515087a-5907-41f4-b2ef-f525321654cd",
          "type": "basic.output",
          "data": {
            "name": "start",
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
            "x": 792,
            "y": 184
          }
        },
        {
          "id": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
          "type": "basic.code",
          "data": {
            "code": "reg aux = 0;\nalways @(posedge s1) begin\n      aux <= 1;\nend\nassign start = aux;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "s1"
                }
              ],
              "out": [
                {
                  "name": "start"
                }
              ]
            }
          },
          "position": {
            "x": 232,
            "y": 80
          },
          "size": {
            "width": 512,
            "height": 272
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
            "port": "out"
          },
          "target": {
            "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
            "port": "s1"
          }
        },
        {
          "source": {
            "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
            "port": "start"
          },
          "target": {
            "block": "2515087a-5907-41f4-b2ef-f525321654cd",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 493,
        "y": 261.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}