pub fn get_sp() -> u32 {
    let result;
    unsafe {
        asm!(
            "
            mov sp, r0
            "
            :"={r0}"(result)
            :::"volatile"
        );
    }
    result
}
