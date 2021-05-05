use rt::Vector;

#[link_section = ".irq_table"]
#[used]
#[no_mangle]
pub static mut IRQS: [Vector; 137] = [Vector { reserved: 0 }; 137];
