//// Activity 04:

`include "uvm_macros.svh"
import uvm_pkg::*;
 
//////////////////////////////////////////////////
class component extends uvm_component;
  `uvm_component_utils(component)
  
  function new(string path , uvm_component parent);
    super.new(path, parent);
  endfunction

  task run();
    `uvm_info("CMP1", "Executed CMP1 Code", UVM_DEBUG);
    `uvm_info("CMP2", "Executed CMP2 Code", UVM_DEBUG);
  endtask
endclass

module tb;

component cmp;
 
 initial begin
   cmp = new("CMP", null);
   
    cmp.set_report_id_verbosity("CMP1", UVM_DEBUG); 

   $display("Default Verbosity level : %0d ", cmp.get_report_verbosity_level);
   cmp.run();
   #1 $finish;
  end

endmodule
