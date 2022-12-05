# Nomad helper scripts

## Download helpers

- [`fetch`](fetch) - Helper to download any version of the HashiCorp software on
   `releases.hashicorp.com`. Usage information in the file.

## Node helpers

- [`nomad_reset`](nomad_reset) - Stops all the jobs in the cluster, tries to
  unmount any allocation mounts that might be orphaned, wipes the state.

- [`nomad_start`](nomad_start) - **Experimental** Starts a small collection of
  work in a cluster based on paths in a configuration file.

- [`nomad_stop_all`](nomad_stop_all) - Iteratively stops all the work in a
  cluster. Passes the `-purge` flag optionally.

- [`nomad_tls`](nomad_tls) - Installs and configures development TLS certs from
  the Nomad project.

- [`nomad_version`](nomad_version) - Selects a version from `/opt/nomad/bin` and
  sets it on the node. Can be used interactively with `-i` (menu) or by passing
  a version identifier (the filename excluding the `nomad-` part).

## Lab helpers

These scripts push executables and files into a cluster

- [`cluster_push`](cluster_push) - Useful for flinging files across the whole
  cluster from a local machine.

- [`nomad_push`](nomad_push) - Push a Nomad version into the `/opt/nomad/bin`
  folders on all the lab machines.

- [`consul_push`](consul_push) - Push a specific Consul versions into the
  `/opt/consul/bin` folders on all the lab machines.

## Deprecated

- [`nomad_gc`](nomad_gc) - **DEPRECATED:** Use `nomad system gc` instead. Calls
   the API endpoint to run Nomad's garbage collection. Formerly used in
   `nomad_stop_all`.
