//===-- Passes.td - FIRRTL pass definition file ------------*- tablegen -*-===//
//
// This file contains definitions for passes that work on the FIRRTL dialect.
//
//===----------------------------------------------------------------------===//

#ifndef CIRCT_DIALECT_FIRRTL_PASSES_TD
#define CIRCT_DIALECT_FIRRTL_PASSES_TD

include "mlir/Pass/PassBase.td"

def LowerFIRRTLToRTL : Pass<"lower-firrtl-to-rtl", "firrtl::FModuleOp"> {
  let summary = "Lower FIRRTL to RTL";
  let constructor = "circt::firrtl::createLowerFIRRTLToRTLPass()";
}

#endif // CIRCT_DIALECT_FIRRTL_PASSES_TD