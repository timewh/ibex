// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

class ibex_icache_core_agent extends dv_base_agent #(
  .CFG_T          (ibex_icache_core_agent_cfg),
  .DRIVER_T       (ibex_icache_core_driver),
  .SEQUENCER_T    (ibex_icache_core_sequencer),
  .MONITOR_T      (ibex_icache_core_monitor),
  .COV_T          (ibex_icache_core_agent_cov)
);

  `uvm_component_utils(ibex_icache_core_agent)

  `uvm_component_new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // get ibex_icache_core_if handle
    if (!uvm_config_db#(virtual ibex_icache_core_if)::get(this, "", "vif", cfg.vif)) begin
      `uvm_fatal(`gfn, "failed to get ibex_icache_core_if handle from uvm_config_db")
    end
  endfunction

endclass
