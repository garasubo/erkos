pub fn get_sp() -> u32 {
    let result;
    unsafe {
        llvm_asm!(
            "
            mov sp, r0
            "
            :"={r0}"(result)
            :::"volatile"
        );
    }
    result
}
