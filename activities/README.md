# Activities
Activity 01 – Reporting macro
Printed my first RTL’s name at default verbosity using `uvm_info (no overrides).

Activity 02 – Verbosity check
Queried and raised the environment verbosity (e.g., to UVM_DEBUG) and confirmed on the console.

Activity 03 – Auto-stop on warnings
Overrode UVM_WARNING to include UVM_COUNT and set the quit threshold; the sim exits automatically after 3 warnings.

Activity 04 – ID-based filtering (no component edits)
Allowed messages with ID CMP1 while suppressing CMP2 using set_report_id_verbosity().

Activity 05 – Timed warnings
Emitted 4 independent warnings at 0 ns, 10 ns, 20 ns, 30 ns. Each warning increments the quit counter; the 4th warning cleanly stops the simulation.
