(module $a.out
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (func $__wasm_call_ctors (;0;) (type 0))
  (func $two (;1;) (type 1) (result i32)
    (local i32)
    i32.const 2
    local.set 0
    local.get 0
    return
  )
  (memory (;0;) 2)
  (global $__stack_pointer (;0;) (mut i32) i32.const 66560)
  (global (;1;) i32 i32.const 1024)
  (global (;2;) i32 i32.const 1024)
  (global (;3;) i32 i32.const 1024)
  (global (;4;) i32 i32.const 66560)
  (global (;5;) i32 i32.const 1024)
  (global (;6;) i32 i32.const 66560)
  (global (;7;) i32 i32.const 131072)
  (global (;8;) i32 i32.const 0)
  (global (;9;) i32 i32.const 1)
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "two" (func $two))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9))
  (@producers
    (processed-by "Homebrew clang" "18.1.8")
  )
  (@custom "target_features" (after code) "\02+\0fmutable-globals+\08sign-ext")
)
