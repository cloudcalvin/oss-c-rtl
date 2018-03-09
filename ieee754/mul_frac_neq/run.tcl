compile_c -top_module top -enable_float top.cpp
compile_v -top_module mul mul.v

# init_reg_to_zero

set latency 10

set_spec_latency    1
set_impl_latency    $latency

set_impl_clock clk

set_input_map impl.mul_a spec.a
set_input_map impl.mul_b spec.b

assert "impl.mul_z@$latency == spec.c || (impl.mul_z@$latency[30:23] == spec.c[30:23] && spec.c[30:23] == 8'hff && spec.c[22:0] != 0)"

cverify

# debug
