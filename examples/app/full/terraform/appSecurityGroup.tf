variable "appSecurityRules" {
  default = { 
    name = "httpd-sg",
    rules = [
      {
        name      = "httpd-port-80",
        direction = "inbound",
        source    = "0.0.0.0/0",
        tcp = {
            port_max = 80,
            port_min = 80
        }
      },
      {
        name      = "ssh-port-22",
        direction = "inbound",
        source    = "0.0.0.0/0",
        tcp = {
            port_max = 22,
            port_min = 22
        }
      },
      {
        name      = "outbound-off",
        direction = "outbound",
        source    = "0.0.0.0/0"
      },
      { 
        name      = "httpd-port-443",
        direction = "inbound",
        source    = "0.0.0.0/0",
        tcp = {
            port_max = 443,
            port_min = 443
        }
      }
    ]
  }
}