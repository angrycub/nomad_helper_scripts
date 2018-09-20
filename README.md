# Nomad Helper Scripts

> **NOTE**: Some of these files are in high flux or are placeholders, because I am in the process of rebuilding them from memory.  :(

These are just some bash scripts that I use to make my reproduction life at work slightly less bad.  They are based on my lab cluster, so your mileage may vary.


 * [nomad_gc](nomad_gc) - Calls the API endpoint to run Nomad's garbage collection.  Used in nomad_reset and nomad_stop_all.  Useful on its own.
 * [nomad_push](nomad_push) - This script enables me to push in Nomad versions into the /opt/nomad/bin folders on all of the lab machines.
 * [nomad_reset](nomad_reset) - Stops all of the jobs in the cluster, tries to unmount any allocation mounts that might be orphaned, wipes the state.
 * [nomad_start](nomad_start) - **Experimental** Starts a small collection of work in a cluster based on paths in a configuration file.
 * [nomad\_stop\_all](nomad_stop_all) - Iteratively stops all of the work in a cluster. Passes the `-purge` flag optionally.
 * [nomad_tls](nomad_tls) - Installs and conficures development TLS certs from the nomad project.
 * [nomad_version](nomad_version) - Selects a version from /opt/nomad/bin and sets it on the node.  Can be uned interactively with -i (menu) or by passing a version identifier (the file name excluding the "nomad-" part).


 * [cluster_push](cluster_push) - Useful for flinging files across the whole cluster from my local machine.
 * [consul_push](consul_push) - Enables me to push in Consul versions into the /opt/consul/bin folders on all of the lab machines.
