#PingSweep

**PingSweep** is a bash script designed for simple network reconnaissance. It pings all possible hosts within a subnet, identifies active IP addresses, sorts them, and then scans the active hosts for open ports using `nmap`. This tool is useful for quickly identifying devices on a local network and assessing their exposure.

## Features

- Automatically detects the first three octets of the connected network's IP address.
- Pings all possible hosts (1-254) in the detected subnet to check if they are active.
- Sorts and lists all active IPs.
- Uses `nmap` to scan for open ports on the active IPs.

## Requirements

- `ifconfig` (usually part of the `net-tools` package)
- `nmap`

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/zouheir411/PingSweep.git
   cd PingSweep
