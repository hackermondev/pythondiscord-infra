#!/bin/bash

# This script is available via pydis.com/bootstrap
# Paste the below lines into netcup 'custom script' box to use.
: '
#! bin/bash
apt-get update
apt-get install -y curl
curl -fsSL https://raw.githubusercontent.com/python-discord/infra/main/server_bootstrap.sh | bash
'

set -e

apt-get upgrade -y

mkdir -p /root/.ssh
touch /root/.ssh/authorized_keys
cat <<EOT >> /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBYx/b++w2CpKyhSl0mY9lL6c093ghb5eD0uNPkgQTa5cCIaYy73q0w3uTmqoIDuaQk3eHVu0Jk2DvUH16u9f5jLXrMIAbeiQv6giPqyGdulqqJ4LsMCXT8xIV1myTpkXwlzJs6R48byOiupALTkO47MUGFMT+dUsKKSYQqZxdXr5EPxYLM0iziYuIvu2D8wF5Hc9HmL86/E6ScxO4iGGEq452k38hH7appQ9BIJDhDKnsxMm/povO7EBwm9q45b7ifnbiDKO+G041hYwpWx78b+ryUrvHoDv9jUjAHc2HDnN95fbXvbYPKRg2naf1A4Ra+4CKywE3sc/u3oZ9UJUHB3fEXir/MgviztrbSkxhMFwWckxEt6l6H3y71HQx0rFXnzYSuj1T647ntxZBeZZUnHw6DkKYbovLzXiOL4wMr9Xq/9tr7kGxEoKgvTYwk69Win8cQfncXyWfacV3311GNOPx6SCFYnWCVNODyPb+s8R8L+6GfGGRy0V8mEwSJu0= chris@mercury
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPyNdEOw7tfOHWCM0w2A7UzspnYYpNiF+nak51dcx3d7 joe@nsa.gov
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKiFMHHOaLMdDiUYPlZruOOCkfqrNXVrPGY+/gWVgpd2 johannes-b-christ@coffeeshop.local
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQB1EyvFt+yLF21iaCAweUFhuCLqRfFHUYIfGsPeaAg1zFxsYgKyxfXSQCIWQjTOZhrHKJ7SVoN9rIYOtE48LFhW4vUiuOb+fGgQsxRgRiKE7XFW9PzFhb1GKyCuIeQvJcA/LJ7kCXk+CPeYMKtYfmbzLG5LXtko1Znh5pIZODHID9/cXhF++D1hXfJTMMjrCEAruLPPk9/JalF1VbRtEcxGS5Spr4dLvj5aOPkKXNNh9goPbaEajG1drmgP8lROCdzc9VBOD3Abq+4CkUasXvuleS972UwpLef4dT6tiRl9vJCECN/ben01VcQxdU/r9dQqtsIRKIVIAMOrTpxg+jet scale@windows-xp
EOT