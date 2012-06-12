#!/bin/bash -ex

TOP_DIR=$(cd $(dirname "$0") && pwd)
source $TOP_DIR/functions


tenant="tenant001"
net_name="net001"
vif_id="cbebaf45-5d9c-43ab-bb4a-75b85c8ca001"

create_net $tenant "${net_name}_one"
rename_net $tenant $net_id $net_name
create_port $tenant $net_id
activate_port $tenant $net_id $port_id
plug_iface $tenant $net_id $port_id $vif_id

stopstop

unplug_iface $tenant $net_id $port_id
deactivate_port $tenant $net_id $port_id
delete_port $tenant $net_id $port_id
delete_net $tenant $net_id

ok_farm
