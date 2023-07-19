# Nomad helper scripts

> **NOTE**: some of these files are in high flux or are placeholders, because I
am working on rebuilding them from memory.

These are just some bash scripts that I use to make reproduction life at work slightly less bad. They are based on my lab cluster, so your mileage may vary.

- [`install.sh](install.sh) - Creates symlinks to these scripts in
`/usr/local/bin`

- [`nomad_push`](nomad_push) - This script pushes Nomad versions into the
`/opt/nomad/bin` folders on all the lab machines.

- [`nomad_reset`](nomad_reset) - Stops all the jobs in the cluster, tries to unmount any allocation mounts that might be orphaned, wipes the state.

- [`nomad_start`](nomad_start) - **Experimental** Starts a small collection of work in a cluster based on paths in a configuration file.

- [`nomad_stop_all`](nomad_stop_all) - Iteratively stops all work in a cluster. Passes the `-purge` flag optionally.

- [`gen_test_certs`](gen_test_certs) - Generates development TLS certs using the
`consul tls` command.

- [`nomad_version`](nomad_version) - Selects a version from `/opt/nomad/bin` and sets it on the node. Can be used interactively with -i (menu) or by passing a version identifier (the filename excluding the "nomad-" part).

- [`collect`](collect) - WIP collection script for Nomad state data

- [`consul_push`](consul_push) - Used to push Consul versions into the
`/opt/consul/bin` folders on all the lab machines.

- [`fetch`](fetch) - Helper to download any version of the HashiCorp software on
<releases.hashicorp.com>. Usage information in the file.
