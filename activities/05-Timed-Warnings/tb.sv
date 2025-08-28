////// Activity 05:

`include "uvm_macros.svh"
import uvm_pkg::*;
 
//////////////////////////////////////////////////
class a extends uvm_component;
  `uvm_component_utils(a)
  
  function new(string path , uvm_component parent);
    super.new(path, parent);
  endfunction
  
  task run();
    `uvm_warning("a", "Warning #1");
    #10;
    `uvm_warning("a", "Warning #2");
    #10;
    `uvm_warning("a", "Warning #3");
    #10;
    `uvm_warning("a", "Warning #4");
    #10;
  endtask
endclass
 
/////////////////////////////////////////////
 
module tb;
a a_new;

 initial begin
    a_new = new("DRV", null);
    a_new.set_report_max_quit_count(4);
    a_new.set_report_severity_action(UVM_WARNING, UVM_DISPLAY | UVM_COUNT);
    a_new.run();

  end
endmodule
