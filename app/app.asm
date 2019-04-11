
app:	file format ELF32-arm-little

Disassembly of section .text:
0000000008000040 app::Process::create::h8272f1f9090370a1:
 8000040:	push	{r7, lr}
 8000042:	sub	sp, #80
 8000044:	mov	r2, r1
 8000046:	mov	r3, r0
 8000048:	str	r0, [sp, #56]
 800004a:	str	r1, [sp, #60]
 800004c:	ldr	r0, [sp, #60]
 800004e:	sub.w	r1, r0, #32
 8000052:	cmp	r0, #32
 8000054:	str	r2, [sp, #52]
 8000056:	str	r3, [sp, #48]
 8000058:	str	r1, [sp, #44]
 800005a:	blo	#176 <app::Process::create::h8272f1f9090370a1+0xce>
 800005c:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x1e>
 800005e:	ldr	r0, [sp, #44]
 8000060:	str	r0, [sp, #68]
 8000062:	ldr	r0, [sp, #68]
 8000064:	movs	r1, #8
 8000066:	bl	#464
 800006a:	str	r0, [sp, #40]
 800006c:	str	r1, [sp, #36]
 800006e:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x30>
 8000070:	ldr	r0, [sp, #40]
 8000072:	str	r0, [sp, #72]
 8000074:	ldr	r1, [sp, #36]
 8000076:	str	r1, [sp, #76]
 8000078:	ldr	r2, [sp, #76]
 800007a:	cmp	r2, #0
 800007c:	str	r2, [sp, #32]
 800007e:	beq	#154 <app::Process::create::h8272f1f9090370a1+0xdc>
 8000080:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x42>
 8000082:	ldr	r0, [sp, #72]
 8000084:	movs	r1, #0
 8000086:	str	r1, [r0]
 8000088:	ldr	r0, [sp, #76]
 800008a:	cmp	r0, #2
 800008c:	str	r0, [sp, #28]
 800008e:	blo	#156 <app::Process::create::h8272f1f9090370a1+0xee>
 8000090:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x52>
 8000092:	ldr	r0, [sp, #72]
 8000094:	movs	r1, #2
 8000096:	str	r1, [r0, #4]
 8000098:	ldr	r0, [sp, #76]
 800009a:	cmp	r0, #3
 800009c:	str	r0, [sp, #24]
 800009e:	blo	#158 <app::Process::create::h8272f1f9090370a1+0x100>
 80000a0:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x62>
 80000a2:	ldr	r0, [sp, #72]
 80000a4:	movs	r1, #0
 80000a6:	str	r1, [r0, #8]
 80000a8:	ldr	r0, [sp, #76]
 80000aa:	cmp	r0, #4
 80000ac:	str	r0, [sp, #20]
 80000ae:	blo	#160 <app::Process::create::h8272f1f9090370a1+0x112>
 80000b0:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x72>
 80000b2:	ldr	r0, [sp, #72]
 80000b4:	movs	r1, #0
 80000b6:	str	r1, [r0, #12]
 80000b8:	ldr	r0, [sp, #76]
 80000ba:	cmp	r0, #5
 80000bc:	str	r0, [sp, #16]
 80000be:	blo	#162 <app::Process::create::h8272f1f9090370a1+0x124>
 80000c0:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x82>
 80000c2:	ldr	r0, [sp, #72]
 80000c4:	movs	r1, #0
 80000c6:	str	r1, [r0, #16]
 80000c8:	ldr	r0, [sp, #76]
 80000ca:	cmp	r0, #6
 80000cc:	str	r0, [sp, #12]
 80000ce:	blo	#164 <app::Process::create::h8272f1f9090370a1+0x136>
 80000d0:	b	#-2 <app::Process::create::h8272f1f9090370a1+0x92>
 80000d2:	ldr	r0, [sp, #72]
 80000d4:	movs	r1, #0
 80000d6:	str	r1, [r0, #20]
 80000d8:	ldr	r0, [sp, #56]
 80000da:	subs	r1, r0, #1
 80000dc:	cmp	r0, #1
 80000de:	str	r1, [sp, #8]
 80000e0:	blo	#164 <app::Process::create::h8272f1f9090370a1+0x148>
 80000e2:	b	#-2 <app::Process::create::h8272f1f9090370a1+0xa4>
 80000e4:	ldr	r0, [sp, #76]
 80000e6:	cmp	r0, #7
 80000e8:	str	r0, [sp, #4]
 80000ea:	blo	#168 <app::Process::create::h8272f1f9090370a1+0x156>
 80000ec:	b	#-2 <app::Process::create::h8272f1f9090370a1+0xae>
 80000ee:	ldr	r0, [sp, #72]
 80000f0:	ldr	r1, [sp, #8]
 80000f2:	str	r1, [r0, #24]
 80000f4:	ldr	r0, [sp, #76]
 80000f6:	cmp	r0, #8
 80000f8:	str	r0, [sp]
 80000fa:	blo	#170 <app::Process::create::h8272f1f9090370a1+0x168>
 80000fc:	b	#-2 <app::Process::create::h8272f1f9090370a1+0xbe>
 80000fe:	ldr	r0, [sp, #72]
 8000100:	movs	r1, #0
 8000102:	str	r1, [r0, #28]
 8000104:	ldr	r0, [sp, #68]
 8000106:	str	r0, [sp, #64]
 8000108:	ldr	r0, [sp, #64]
 800010a:	add	sp, #80
 800010c:	pop	{r7, pc}
 800010e:	movw	r0, #2356
 8000112:	movt	r0, #2048
 8000116:	bl	#466
 800011a:	trap
 800011c:	movw	r0, #2380
 8000120:	movt	r0, #2048
 8000124:	movs	r1, #0
 8000126:	ldr	r2, [sp, #32]
 8000128:	bl	#506
 800012c:	trap
 800012e:	movw	r0, #2396
 8000132:	movt	r0, #2048
 8000136:	movs	r1, #1
 8000138:	ldr	r2, [sp, #28]
 800013a:	bl	#488
 800013e:	trap
 8000140:	movw	r0, #2412
 8000144:	movt	r0, #2048
 8000148:	movs	r1, #2
 800014a:	ldr	r2, [sp, #24]
 800014c:	bl	#470
 8000150:	trap
 8000152:	movw	r0, #2428
 8000156:	movt	r0, #2048
 800015a:	movs	r1, #3
 800015c:	ldr	r2, [sp, #20]
 800015e:	bl	#452
 8000162:	trap
 8000164:	movw	r0, #2444
 8000168:	movt	r0, #2048
 800016c:	movs	r1, #4
 800016e:	ldr	r2, [sp, #16]
 8000170:	bl	#434
 8000174:	trap
 8000176:	movw	r0, #2460
 800017a:	movt	r0, #2048
 800017e:	movs	r1, #5
 8000180:	ldr	r2, [sp, #12]
 8000182:	bl	#416
 8000186:	trap
 8000188:	movw	r0, #2476
 800018c:	movt	r0, #2048
 8000190:	bl	#344
 8000194:	trap
 8000196:	movw	r0, #2500
 800019a:	movt	r0, #2048
 800019e:	movs	r1, #6
 80001a0:	ldr	r2, [sp, #4]
 80001a2:	bl	#384
 80001a6:	trap
 80001a8:	movw	r0, #2516
 80001ac:	movt	r0, #2048
 80001b0:	movs	r1, #7
 80001b2:	ldr	r2, [sp]
 80001b4:	bl	#366
 80001b8:	trap

00000000080001ba app::main::h9b3929279b850d83:
 80001ba:	sub	sp, #16
 80001bc:	b	#-2 <app::main::h9b3929279b850d83+0x4>
 80001be:	movw	r0, #0
 80001c2:	movt	r0, #8192
 80001c6:	add.w	r1, r0, #1024
 80001ca:	mov	r2, r1
 80001cc:	cmp	r1, r0
 80001ce:	str	r2, [sp, #4]
 80001d0:	blo	#40 <app::main::h9b3929279b850d83+0x42>
 80001d2:	b	#-2 <app::main::h9b3929279b850d83+0x1a>
 80001d4:	ldr	r0, [sp, #4]
 80001d6:	str	r0, [sp, #8]
 80001d8:	ldr	r1, [sp, #8]
 80001da:	movw	r0, #523
 80001de:	movt	r0, #2048
 80001e2:	bl	#-422
 80001e6:	str	r0, [sp, #12]
 80001e8:	b	#-2 <app::main::h9b3929279b850d83+0x30>
 80001ea:	ldr	r0, [sp, #12]
 80001ec:	msr	psp, r0
 80001f0:	svc	#0
 80001f2:	movs	r0, #0
 80001f4:	bl	#104
 80001f8:	b	#-2 <app::main::h9b3929279b850d83+0x40>
 80001fa:	b	#-4 <app::main::h9b3929279b850d83+0x40>
 80001fc:	movw	r0, #2572
 8000200:	movt	r0, #2048
 8000204:	bl	#228
 8000208:	trap

000000000800020a app_main:
 800020a:	sub	sp, #24
 800020c:	mov	r3, r2
 800020e:	mov	r12, r1
 8000210:	mov	lr, r0
 8000212:	str	r0, [sp, #12]
 8000214:	str	r1, [sp, #16]
 8000216:	str	r2, [sp, #20]
 8000218:	svc	#1
 800021a:	str	r3, [sp, #8]
 800021c:	str.w	r12, [sp, #4]
 8000220:	str.w	lr, [sp]
 8000224:	b	#-2 <app_main+0x1c>
 8000226:	b	#-4 <app_main+0x1c>

0000000008000228 main:
 8000228:	sub	sp, #8
 800022a:	movw	r0, #443
 800022e:	movt	r0, #2048
 8000232:	str	r0, [sp, #4]
 8000234:	ldr	r0, [sp, #4]
 8000236:	blx	r0
 8000238:	trap

000000000800023a core::slice::from_raw_parts_mut::he3351c8d08e93d56:
 800023a:	sub	sp, #32
 800023c:	mov	r2, r1
 800023e:	mov	r3, r0
 8000240:	str	r0, [sp, #8]
 8000242:	str	r1, [sp, #12]
 8000244:	ldr	r0, [sp, #8]
 8000246:	ldr	r1, [sp, #12]
 8000248:	str	r0, [sp, #24]
 800024a:	str	r1, [sp, #28]
 800024c:	ldr	r0, [sp, #24]
 800024e:	ldr	r1, [sp, #28]
 8000250:	str	r0, [sp, #16]
 8000252:	str	r1, [sp, #20]
 8000254:	ldr	r0, [sp, #16]
 8000256:	ldr	r1, [sp, #20]
 8000258:	str	r2, [sp, #4]
 800025a:	str	r3, [sp]
 800025c:	add	sp, #32
 800025e:	bx	lr

0000000008000260 cortex_m_semihosting::debug::exit::ha23e0343b8040f7a:
 8000260:	push	{r7, lr}
 8000262:	sub	sp, #24
 8000264:	mov	r1, r0
 8000266:	strb.w	r0, [sp, #11]
 800026a:	ldrb.w	r0, [sp, #11]
 800026e:	lsls	r2, r0, #31
 8000270:	cmp	r2, #0
 8000272:	str	r1, [sp, #4]
 8000274:	str	r0, [sp]
 8000276:	beq	#10 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x24>
 8000278:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x1a>
 800027a:	ldr	r0, [sp]
 800027c:	cmp	r0, #1
 800027e:	beq	#20 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x36>
 8000280:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x22>
 8000282:	trap
 8000284:	movs	r0, #38
 8000286:	movt	r0, #2
 800028a:	str	r0, [sp, #16]
 800028c:	ldr	r0, [sp, #16]
 800028e:	bl	#26
 8000292:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x34>
 8000294:	b	#16 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x48>
 8000296:	movs	r0, #35
 8000298:	movt	r0, #2
 800029c:	str	r0, [sp, #20]
 800029e:	ldr	r0, [sp, #20]
 80002a0:	bl	#8
 80002a4:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x46>
 80002a6:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x48>
 80002a8:	add	sp, #24
 80002aa:	pop	{r7, pc}

00000000080002ac cortex_m_semihosting::debug::report_exception::h1a4497b193f7e60c:
 80002ac:	push	{r7, lr}
 80002ae:	sub	sp, #24
 80002b0:	mov	r1, r0
 80002b2:	str	r0, [sp, #8]
 80002b4:	ldr	r0, [sp, #8]
 80002b6:	str	r0, [sp, #12]
 80002b8:	ldr	r0, [sp, #12]
 80002ba:	movs	r2, #24
 80002bc:	str	r2, [sp, #16]
 80002be:	str	r0, [sp, #20]
 80002c0:	ldr	r0, [sp, #16]
 80002c2:	ldr	r2, [sp, #20]
 80002c4:	str	r1, [sp, #4]
 80002c6:	mov	r1, r2
 80002c8:	bl	#8
 80002cc:	str	r0, [sp]
 80002ce:	b	#-2 <cortex_m_semihosting::debug::report_exception::h1a4497b193f7e60c+0x24>
 80002d0:	add	sp, #24
 80002d2:	pop	{r7, pc}

00000000080002d4 __syscall:
 80002d4:	bkpt	#171
 80002d6:	bx	lr

00000000080002d8 core::ptr::real_drop_in_place::h23cf0cad6a44011b:
 80002d8:	bx	lr

00000000080002da <T as core::any::Any>::type_id::h2ace5de7d4d0b66d:
 80002da:	movw	r0, #53730
 80002de:	movw	r1, #50104
 80002e2:	movt	r0, #59659
 80002e6:	movt	r1, #47116
 80002ea:	bx	lr

00000000080002ec core::panicking::panic::h9490155bdf63a737:
 80002ec:	sub	sp, #48
 80002ee:	ldm.w	r0, {r1, r2, r12, lr}
 80002f2:	ldrd	r3, r0, [r0, #16]
 80002f6:	strd	r1, r2, [sp, #24]
 80002fa:	movw	r2, #2596
 80002fe:	movs	r1, #0
 8000300:	movt	r2, #2048
 8000304:	str	r1, [sp, #20]
 8000306:	str	r2, [sp, #16]
 8000308:	strd	r1, r1, [sp, #8]
 800030c:	movs	r1, #1
 800030e:	str	r1, [sp, #4]
 8000310:	add	r1, sp, #24
 8000312:	str	r1, [sp]
 8000314:	add	r1, sp, #32
 8000316:	strd	r3, r0, [sp, #40]
 800031a:	mov	r0, sp
 800031c:	strd	r12, lr, [sp, #32]
 8000320:	bl	#66
 8000324:	trap

0000000008000326 core::panicking::panic_bounds_check::h10dc177417d6cdb0:
 8000326:	sub	sp, #48
 8000328:	mov	r3, r0
 800032a:	movw	r0, #1815
 800032e:	strd	r1, r2, [sp]
 8000332:	movt	r0, #2048
 8000336:	mov	r1, sp
 8000338:	str	r0, [sp, #44]
 800033a:	strd	r0, r1, [sp, #36]
 800033e:	add	r0, sp, #4
 8000340:	str	r0, [sp, #32]
 8000342:	movs	r0, #2
 8000344:	add	r1, sp, #32
 8000346:	str	r0, [sp, #28]
 8000348:	str	r1, [sp, #24]
 800034a:	movs	r1, #0
 800034c:	str	r1, [sp, #20]
 800034e:	strd	r0, r1, [sp, #12]
 8000352:	movw	r0, #2692
 8000356:	movt	r0, #2048
 800035a:	mov	r1, r3
 800035c:	str	r0, [sp, #8]
 800035e:	add	r0, sp, #8
 8000360:	bl	#2
 8000364:	trap

0000000008000366 core::panicking::panic_fmt::ha529b0a1690ccc0a:
 8000366:	sub	sp, #32
 8000368:	ldrd	r12, r3, [r1]
 800036c:	ldrd	r2, r1, [r1, #8]
 8000370:	str	r1, [sp, #28]
 8000372:	strd	r3, r2, [sp, #20]
 8000376:	strd	r0, r12, [sp, #12]
 800037a:	movw	r0, #2656
 800037e:	movt	r0, #2048
 8000382:	str	r0, [sp, #8]
 8000384:	movw	r0, #2596
 8000388:	movt	r0, #2048
 800038c:	str	r0, [sp, #4]
 800038e:	add	r0, sp, #4
 8000390:	bl	#1046
 8000394:	trap

0000000008000396 core::fmt::Formatter::pad_integral::hfca3854939f4e6bc:
 8000396:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 800039a:	sub	sp, #12
 800039c:	ldrd	r6, r9, [sp, #48]
 80003a0:	mov	r7, r3
 80003a2:	mov	r10, r2
 80003a4:	mov	r4, r0
 80003a6:	cbz	r1, #50
 80003a8:	ldr.w	lr, [r4]
 80003ac:	mov.w	r8, #43
 80003b0:	ands	r1, lr, #1
 80003b4:	it	eq
 80003b6:	moveq.w	r8, #1114112
 80003ba:	add.w	r11, r1, r9
 80003be:	lsls.w	r1, lr, #29
 80003c2:	bpl	#40 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x58>
 80003c4:	cbz	r7, #46
 80003c6:	subs	r1, r7, #1
 80003c8:	and	r12, r7, #3
 80003cc:	cmp	r1, #3
 80003ce:	bhs	#40 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x64>
 80003d0:	movs	r1, #0
 80003d2:	mov	r3, r10
 80003d4:	cmp.w	r12, #0
 80003d8:	bne	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xb2>
 80003da:	b	#154 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 80003dc:	ldr.w	lr, [r4]
 80003e0:	add.w	r11, r9, #1
 80003e4:	mov.w	r8, #45
 80003e8:	lsls.w	r1, lr, #29
 80003ec:	bmi	#-44 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x2e>
 80003ee:	movs	r7, #0
 80003f0:	mov.w	r10, #0
 80003f4:	b	#136 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xea>
 80003f6:	movs	r1, #0
 80003f8:	b	#124 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 80003fa:	strd	r9, r6, [sp, #4]
 80003fe:	sub.w	r6, r12, r7
 8000402:	movs	r1, #0
 8000404:	mov	r3, r10
 8000406:	ldrb	r5, [r3]
 8000408:	ldrb	r2, [r3, #1]
 800040a:	ldrb	r0, [r3, #2]
 800040c:	and	r5, r5, #192
 8000410:	ldrb.w	r9, [r3, #3]
 8000414:	cmp	r5, #128
 8000416:	and	r2, r2, #192
 800041a:	it	eq
 800041c:	addeq	r1, #1
 800041e:	cmp	r2, #128
 8000420:	and	r0, r0, #192
 8000424:	it	eq
 8000426:	addeq	r1, #1
 8000428:	cmp	r0, #128
 800042a:	and	r0, r9, #192
 800042e:	it	eq
 8000430:	addeq	r1, #1
 8000432:	cmp	r0, #128
 8000434:	it	eq
 8000436:	addeq	r1, #1
 8000438:	adds	r3, #4
 800043a:	adds	r6, #4
 800043c:	bne	#-58 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x70>
 800043e:	ldrd	r9, r6, [sp, #4]
 8000442:	cmp.w	r12, #0
 8000446:	beq	#46 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 8000448:	ldrb	r0, [r3]
 800044a:	and	r0, r0, #192
 800044e:	cmp	r0, #128
 8000450:	it	eq
 8000452:	addeq	r1, #1
 8000454:	cmp.w	r12, #1
 8000458:	beq	#28 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 800045a:	ldrb	r0, [r3, #1]
 800045c:	and	r0, r0, #192
 8000460:	cmp	r0, #128
 8000462:	it	eq
 8000464:	addeq	r1, #1
 8000466:	cmp.w	r12, #2
 800046a:	beq	#10 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 800046c:	ldrb	r0, [r3, #2]
 800046e:	and	r0, r0, #192
 8000472:	cmp	r0, #128
 8000474:	it	eq
 8000476:	addeq	r1, #1
 8000478:	add.w	r0, r11, r7
 800047c:	sub.w	r11, r0, r1
 8000480:	ldr	r0, [r4, #8]
 8000482:	cmp	r0, #1
 8000484:	bne	#42 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x11c>
 8000486:	ldr	r5, [r4, #12]
 8000488:	cmp	r5, r11
 800048a:	bls	#36 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x11c>
 800048c:	lsls.w	r0, lr, #28
 8000490:	str	r6, [sp, #8]
 8000492:	bmi	#70 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x146>
 8000494:	ldrb.w	r1, [r4, #48]
 8000498:	sub.w	r0, r5, r11
 800049c:	cmp	r1, #3
 800049e:	it	eq
 80004a0:	moveq	r1, #1
 80004a2:	lsls	r2, r1, #30
 80004a4:	beq	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x17e>
 80004a6:	cmp	r1, #2
 80004a8:	beq	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x182>
 80004aa:	movs	r1, #0
 80004ac:	mov	r5, r0
 80004ae:	str	r1, [sp, #4]
 80004b0:	b	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x18a>
 80004b2:	mov	r0, r4
 80004b4:	mov	r1, r8
 80004b6:	mov	r2, r10
 80004b8:	mov	r3, r7
 80004ba:	bl	#288
 80004be:	cbz	r0, #8
 80004c0:	movs	r6, #1
 80004c2:	mov	r0, r6
 80004c4:	add	sp, #12
 80004c6:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 80004ca:	ldr	r1, [r4, #28]
 80004cc:	mov	r2, r9
 80004ce:	ldr	r0, [r4, #24]
 80004d0:	ldr	r3, [r1, #12]
 80004d2:	mov	r1, r6
 80004d4:	add	sp, #12
 80004d6:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80004da:	bx	r3
 80004dc:	movs	r6, #1
 80004de:	movs	r0, #48
 80004e0:	strb.w	r6, [r4, #48]
 80004e4:	mov	r1, r8
 80004e6:	str	r0, [r4, #4]
 80004e8:	mov	r0, r4
 80004ea:	mov	r2, r10
 80004ec:	mov	r3, r7
 80004ee:	bl	#236
 80004f2:	cmp	r0, #0
 80004f4:	bne	#-54 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>
 80004f6:	ldrb.w	r1, [r4, #48]
 80004fa:	sub.w	r0, r5, r11
 80004fe:	cmp	r1, #3
 8000500:	it	eq
 8000502:	moveq	r1, #1
 8000504:	lsls	r2, r1, #30
 8000506:	beq	#116 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1e8>
 8000508:	cmp	r1, #2
 800050a:	beq	#118 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1ee>
 800050c:	mov.w	r8, #0
 8000510:	mov	r5, r0
 8000512:	b	#118 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1f6>
 8000514:	movs	r5, #0
 8000516:	b	#4 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x188>
 8000518:	lsrs	r5, r0, #1
 800051a:	adds	r0, #1
 800051c:	lsrs	r0, r0, #1
 800051e:	str	r0, [sp, #4]
 8000520:	mov.w	r6, #4294967295
 8000524:	adds	r6, #1
 8000526:	cmp	r6, r5
 8000528:	bhs	#14 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1a4>
 800052a:	ldr	r1, [r4, #4]
 800052c:	ldrd	r0, r2, [r4, #24]
 8000530:	ldr	r2, [r2, #16]
 8000532:	blx	r2
 8000534:	cmp	r0, #0
 8000536:	beq	#-22 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x18e>
 8000538:	b	#-124 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 800053a:	mov	r0, r4
 800053c:	mov	r1, r8
 800053e:	mov	r2, r10
 8000540:	mov	r3, r7
 8000542:	ldr.w	r11, [r4, #4]
 8000546:	bl	#148
 800054a:	cmp	r0, #0
 800054c:	bne	#-144 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 800054e:	ldrd	r0, r1, [r4, #24]
 8000552:	mov	r2, r9
 8000554:	ldr	r3, [r1, #12]
 8000556:	ldr	r1, [sp, #8]
 8000558:	blx	r3
 800055a:	cmp	r0, #0
 800055c:	bne	#-160 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 800055e:	ldrd	r8, r4, [r4, #24]
 8000562:	mov.w	r7, #4294967295
 8000566:	ldr	r5, [sp, #4]
 8000568:	movs	r6, #1
 800056a:	adds	r7, #1
 800056c:	cmp	r7, r5
 800056e:	bhs	#104 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x244>
 8000570:	ldr	r2, [r4, #16]
 8000572:	mov	r0, r8
 8000574:	mov	r1, r11
 8000576:	blx	r2
 8000578:	cmp	r0, #0
 800057a:	beq	#-20 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1d4>
 800057c:	b	#-190 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>
 800057e:	movs	r5, #0
 8000580:	mov	r8, r0
 8000582:	b	#6 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1f6>
 8000584:	lsrs	r5, r0, #1
 8000586:	adds	r0, #1
 8000588:	lsr.w	r8, r0, #1
 800058c:	mov.w	r6, #4294967295
 8000590:	adds	r6, #1
 8000592:	cmp	r6, r5
 8000594:	bhs	#14 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x210>
 8000596:	ldr	r1, [r4, #4]
 8000598:	ldrd	r0, r2, [r4, #24]
 800059c:	ldr	r2, [r2, #16]
 800059e:	blx	r2
 80005a0:	cmp	r0, #0
 80005a2:	beq	#-22 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1fa>
 80005a4:	b	#-232 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 80005a6:	ldr.w	r10, [r4, #4]
 80005aa:	mov	r2, r9
 80005ac:	ldrd	r0, r1, [r4, #24]
 80005b0:	ldr	r3, [r1, #12]
 80005b2:	ldr	r1, [sp, #8]
 80005b4:	blx	r3
 80005b6:	cmp	r0, #0
 80005b8:	bne.w	#-252 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 80005bc:	ldrd	r7, r4, [r4, #24]
 80005c0:	mov.w	r5, #4294967295
 80005c4:	movs	r6, #1
 80005c6:	adds	r5, #1
 80005c8:	cmp	r5, r8
 80005ca:	bhs	#12 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x244>
 80005cc:	ldr	r2, [r4, #16]
 80005ce:	mov	r0, r7
 80005d0:	mov	r1, r10
 80005d2:	blx	r2
 80005d4:	cmp	r0, #0
 80005d6:	beq	#-20 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x230>
 80005d8:	b	#-282 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>
 80005da:	movs	r6, #0
 80005dc:	b	#-286 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>

00000000080005de core::fmt::Formatter::pad_integral::write_prefix::h4fed2352a68de687:
 80005de:	push	{r4, r5, r6, lr}
 80005e0:	mov	r4, r3
 80005e2:	mov	r5, r2
 80005e4:	mov	r6, r0
 80005e6:	cmp.w	r1, #1114112
 80005ea:	beq	#12 <core::fmt::Formatter::pad_integral::write_prefix::h4fed2352a68de687+0x1c>
 80005ec:	ldrd	r0, r2, [r6, #24]
 80005f0:	ldr	r2, [r2, #16]
 80005f2:	blx	r2
 80005f4:	cbz	r0, #2
 80005f6:	movs	r0, #1
 80005f8:	pop	{r4, r5, r6, pc}
 80005fa:	cbz	r5, #14
 80005fc:	ldrd	r0, r1, [r6, #24]
 8000600:	mov	r2, r4
 8000602:	ldr	r3, [r1, #12]
 8000604:	mov	r1, r5
 8000606:	pop.w	{r4, r5, r6, lr}
 800060a:	bx	r3
 800060c:	movs	r0, #0
 800060e:	pop	{r4, r5, r6, pc}

0000000008000610 core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5:
 8000610:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 8000614:	sub	sp, #60
 8000616:	mov	r6, r1
 8000618:	movw	r1, #10000
 800061c:	mov	r7, r2
 800061e:	cmp	r0, r1
 8000620:	blo	#138 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x9e>
 8000622:	movw	r8, #5977
 8000626:	movw	r9, #34079
 800062a:	movw	lr, #57599
 800062e:	strd	r6, r7, [sp, #12]
 8000632:	movw	r6, #2708
 8000636:	add.w	r11, sp, #21
 800063a:	movs	r3, #0
 800063c:	movt	r8, #53687
 8000640:	movt	r9, #20971
 8000644:	mov.w	r10, #100
 8000648:	movt	r6, #2048
 800064c:	movt	lr, #1525
 8000650:	umull	r4, r5, r0, r8
 8000654:	add.w	r2, r11, r3
 8000658:	subs	r3, #4
 800065a:	cmp	r0, lr
 800065c:	lsr.w	r4, r5, #13
 8000660:	mls	r5, r4, r1, r0
 8000664:	mov	r0, r4
 8000666:	umull	r7, r12, r5, r9
 800066a:	lsr.w	r7, r12, #5
 800066e:	mls	r5, r7, r10, r5
 8000672:	ldrh.w	r7, [r6, r7, lsl #1]
 8000676:	strh.w	r7, [r2, #35]
 800067a:	ldrh.w	r5, [r6, r5, lsl #1]
 800067e:	strh.w	r5, [r2, #37]
 8000682:	bhi	#-54 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x40>
 8000684:	ldrd	r6, r7, [sp, #12]
 8000688:	add.w	r2, r3, #39
 800068c:	mov	r0, r4
 800068e:	cmp	r0, #99
 8000690:	bgt	#32 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0xa4>
 8000692:	mov	r3, r0
 8000694:	cmp	r3, #9
 8000696:	ble	#74 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0xd4>
 8000698:	movw	r1, #2708
 800069c:	subs	r0, r2, #2
 800069e:	movt	r1, #2048
 80006a2:	add.w	r2, sp, #21
 80006a6:	ldrh.w	r1, [r1, r3, lsl #1]
 80006aa:	strh	r1, [r2, r0]
 80006ac:	b	#64 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0xe0>
 80006ae:	movs	r2, #39
 80006b0:	cmp	r0, #99
 80006b2:	ble	#-36 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x82>
 80006b4:	movw	r3, #34079
 80006b8:	uxth	r1, r0
 80006ba:	movt	r3, #20971
 80006be:	subs	r2, #2
 80006c0:	umull	r1, r3, r1, r3
 80006c4:	movs	r1, #100
 80006c6:	lsrs	r3, r3, #5
 80006c8:	mls	r0, r3, r1, r0
 80006cc:	movw	r1, #2708
 80006d0:	movt	r1, #2048
 80006d4:	uxth	r0, r0
 80006d6:	ldrh.w	r0, [r1, r0, lsl #1]
 80006da:	add.w	r1, sp, #21
 80006de:	strh	r0, [r1, r2]
 80006e0:	cmp	r3, #9
 80006e2:	bgt	#-78 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x88>
 80006e4:	subs	r0, r2, #1
 80006e6:	add.w	r2, sp, #21
 80006ea:	add.w	r1, r3, #48
 80006ee:	strb	r1, [r2, r0]
 80006f0:	rsb.w	r1, r0, #39
 80006f4:	add.w	r2, sp, #21
 80006f8:	add	r0, r2
 80006fa:	movw	r2, #2596
 80006fe:	strd	r0, r1, [sp]
 8000702:	movt	r2, #2048
 8000706:	mov	r0, r7
 8000708:	mov	r1, r6
 800070a:	movs	r3, #0
 800070c:	bl	#-890
 8000710:	add	sp, #60
 8000712:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

0000000008000716 core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h00bdabc63447a895:
 8000716:	ldr	r0, [r0]
 8000718:	mov	r2, r1
 800071a:	movs	r1, #1
 800071c:	b.w	#-272 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5>

0000000008000720 Reset:
 8000720:	sub	sp, #16
 8000722:	movw	r0, #0
 8000726:	movt	r0, #8192
 800072a:	movw	r1, #0
 800072e:	movt	r1, #8192
 8000732:	subs	r2, r1, r0
 8000734:	cmp	r1, r0
 8000736:	str	r2, [sp, #4]
 8000738:	blo	#82 <Reset+0x6e>
 800073a:	b	#-2 <Reset+0x1c>
 800073c:	ldr	r0, [sp, #4]
 800073e:	str	r0, [sp, #8]
 8000740:	ldr	r2, [sp, #8]
 8000742:	movw	r0, #0
 8000746:	movt	r0, #8192
 800074a:	movs	r1, #0
 800074c:	bl	#158
 8000750:	b	#-2 <Reset+0x32>
 8000752:	movw	r0, #0
 8000756:	movt	r0, #8192
 800075a:	movw	r1, #0
 800075e:	movt	r1, #8192
 8000762:	subs	r2, r1, r0
 8000764:	cmp	r1, r0
 8000766:	str	r2, [sp]
 8000768:	blo	#48 <Reset+0x7c>
 800076a:	b	#-2 <Reset+0x4c>
 800076c:	ldr	r0, [sp]
 800076e:	str	r0, [sp, #12]
 8000770:	ldr	r2, [sp, #12]
 8000772:	movw	r0, #3060
 8000776:	movt	r0, #2048
 800077a:	movw	r1, #0
 800077e:	movt	r1, #8192
 8000782:	bl	#150
 8000786:	b	#-2 <Reset+0x68>
 8000788:	bl	#-1380
 800078c:	trap
 800078e:	movw	r0, #3012
 8000792:	movt	r0, #2048
 8000796:	bl	#-1198
 800079a:	trap
 800079c:	movw	r0, #3036
 80007a0:	movt	r0, #2048
 80007a4:	bl	#-1212
 80007a8:	trap

00000000080007aa rust_begin_unwind:
 80007aa:	sub	sp, #8
 80007ac:	mov	r1, r0
 80007ae:	str	r0, [sp, #4]
 80007b0:	str	r1, [sp]
 80007b2:	b	#-2 <rust_begin_unwind+0xa>
 80007b4:	b	#-4 <rust_begin_unwind+0xa>

00000000080007b6 DefaultExceptionHandler:
 80007b6:	push	{r7, lr}

00000000080007b7 UsageFault:
 80007b7:	lsls	r5, r6, #2
 80007b9: <unknown>
 80007ba:	bl	#-1374
 80007be:	b	#-2 <UsageFault+0x9>
 80007c0:	b	#-4 <UsageFault+0x9>

00000000080007c2 SVCall:
 80007c2:	cmn.w	lr, #7
 80007c6:	bne	#16 <to_kernel>
 80007c8:	mov.w	r0, #1
 80007cc:	msr	control, r0
 80007d0:	movw	lr, #65533
 80007d4:	movt	lr, #65535
 80007d8:	bx	lr

00000000080007da to_kernel:
 80007da:	mov.w	r0, #0
 80007de:	msr	control, r0
 80007e2:	movw	lr, #65529
 80007e6:	movt	lr, #65535
 80007ea:	bx	lr
 80007ec:	bx	lr

00000000080007ee core::intrinsics::write_bytes::hc6c8ee6f767e88d2:
 80007ee:	push	{r7, lr}
 80007f0:	sub	sp, #24
 80007f2:	mov	r3, r2
 80007f4:	mov	r12, r1
 80007f6:	mov	lr, r0
 80007f8:	str	r0, [sp, #12]
 80007fa:	strb.w	r1, [sp, #19]
 80007fe:	str	r2, [sp, #20]
 8000800:	ldr	r0, [sp, #12]
 8000802:	ldrb.w	r2, [sp, #19]
 8000806:	ldr	r1, [sp, #20]
 8000808:	str	r3, [sp, #8]
 800080a:	str.w	r12, [sp, #4]
 800080e:	str.w	lr, [sp]
 8000812:	bl	#144
 8000816:	b	#-2 <core::intrinsics::write_bytes::hc6c8ee6f767e88d2+0x2a>
 8000818:	add	sp, #24
 800081a:	pop	{r7, pc}

000000000800081c core::intrinsics::copy_nonoverlapping::hc5bb1fe71390ddbc:
 800081c:	push	{r7, lr}
 800081e:	sub	sp, #32
 8000820:	mov	r3, r2
 8000822:	mov	r12, r1
 8000824:	mov	lr, r0
 8000826:	str	r0, [sp, #20]
 8000828:	str	r1, [sp, #24]
 800082a:	str	r2, [sp, #28]
 800082c:	ldr	r1, [sp, #20]
 800082e:	ldr	r0, [sp, #24]
 8000830:	ldr	r2, [sp, #28]
 8000832:	str	r3, [sp, #16]
 8000834:	str.w	r12, [sp, #12]
 8000838:	str.w	lr, [sp, #8]
 800083c:	bl	#8
 8000840:	str	r0, [sp, #4]
 8000842:	b	#-2 <core::intrinsics::copy_nonoverlapping::hc5bb1fe71390ddbc+0x28>
 8000844:	add	sp, #32
 8000846:	pop	{r7, pc}

0000000008000848 __aeabi_memcpy:
 8000848:	push	{r4, r5, r7, lr}
 800084a:	cbz	r2, #86
 800084c:	subs	r3, r2, #1
 800084e:	and	r12, r2, #3
 8000852:	cmp	r3, #3
 8000854:	bhs	#8 <__aeabi_memcpy+0x18>
 8000856:	movs	r2, #0
 8000858:	cmp.w	r12, #0
 800085c:	bne	#38 <__aeabi_memcpy+0x3e>
 800085e:	b	#66 <__aeabi_memcpy+0x5c>
 8000860:	sub.w	lr, r2, r12
 8000864:	movs	r2, #0
 8000866:	ldrb	r3, [r1, r2]
 8000868:	adds	r5, r0, r2
 800086a:	strb	r3, [r0, r2]
 800086c:	adds	r3, r1, r2
 800086e:	adds	r2, #4
 8000870:	ldrb	r4, [r3, #1]
 8000872:	cmp	lr, r2
 8000874:	strb	r4, [r5, #1]
 8000876:	ldrb	r4, [r3, #2]
 8000878:	strb	r4, [r5, #2]
 800087a:	ldrb	r3, [r3, #3]
 800087c:	strb	r3, [r5, #3]
 800087e:	bne	#-28 <__aeabi_memcpy+0x1e>
 8000880:	cmp.w	r12, #0
 8000884:	beq	#28 <__aeabi_memcpy+0x5c>
 8000886:	ldrb	r3, [r1, r2]
 8000888:	cmp.w	r12, #1
 800088c:	strb	r3, [r0, r2]
 800088e:	beq	#18 <__aeabi_memcpy+0x5c>
 8000890:	adds	r3, r2, #1
 8000892:	cmp.w	r12, #2
 8000896:	ldrb	r5, [r1, r3]
 8000898:	strb	r5, [r0, r3]
 800089a:	it	eq
 800089c:	popeq	{r4, r5, r7, pc}
 800089e:	adds	r2, #2
 80008a0:	ldrb	r1, [r1, r2]
 80008a2:	strb	r1, [r0, r2]
 80008a4:	pop	{r4, r5, r7, pc}

00000000080008a6 __aeabi_memset:
 80008a6:	cmp	r1, #0
 80008a8:	it	eq
 80008aa:	bxeq	lr
 80008ac:	push	{r7, lr}
 80008ae:	subs	r3, r1, #1
 80008b0:	and	r12, r1, #3
 80008b4:	cmp	r3, #3
 80008b6:	bhs	#2 <__aeabi_memset+0x16>
 80008b8:	movs	r1, #0
 80008ba:	b	#20 <__aeabi_memset+0x2c>
 80008bc:	sub.w	lr, r1, r12
 80008c0:	movs	r1, #0
 80008c2:	strb	r2, [r0, r1]
 80008c4:	adds	r3, r0, r1
 80008c6:	adds	r1, #4
 80008c8:	cmp	lr, r1
 80008ca:	strb	r2, [r3, #3]
 80008cc:	strb	r2, [r3, #2]
 80008ce:	strb	r2, [r3, #1]
 80008d0:	bne	#-18 <__aeabi_memset+0x1c>
 80008d2:	cmp.w	r12, #0
 80008d6:	pop.w	{r7, lr}
 80008da:	itt	ne
 80008dc:	strbne	r2, [r0, r1]
 80008de:	cmpne.w	r12, #1
 80008e2:	bne	#0 <__aeabi_memset+0x40>
 80008e4:	bx	lr
 80008e6:	add	r0, r1
 80008e8:	cmp.w	r12, #2
 80008ec:	strb	r2, [r0, #1]
 80008ee:	it	ne
 80008f0:	strbne	r2, [r0, #2]
 80008f2:	bx	lr
