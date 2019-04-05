
app:	file format ELF32-arm-little

Disassembly of section .text:
app::main::h83de63fd1bb290c6:
      40:	sub	sp, #136
      42:	bl	#1182
      46:	str	r0, [sp, #40]
      48:	str	r1, [sp, #36]
      4a:	b	#-2 <app::main::h83de63fd1bb290c6+0xc>
      4c:	ldr	r0, [sp, #40]
      4e:	ldr	r1, [sp, #36]
      50:	bl	#228
      54:	str	r0, [sp, #44]
      56:	b	#-2 <app::main::h83de63fd1bb290c6+0x18>
      58:	movw	r0, #8024
      5c:	movt	r0, #0
      60:	str	r0, [sp, #84]
      62:	add	r0, sp, #84
      64:	str	r0, [sp, #80]
      66:	ldr	r0, [sp, #80]
      68:	str	r0, [sp, #88]
      6a:	ldr	r0, [sp, #88]
      6c:	movw	r1, #7615
      70:	movt	r1, #0
      74:	bl	#3342
      78:	str	r0, [sp, #32]
      7a:	str	r1, [sp, #28]
      7c:	b	#-2 <app::main::h83de63fd1bb290c6+0x3e>
      7e:	ldr	r0, [sp, #32]
      80:	str	r0, [sp, #72]
      82:	ldr	r1, [sp, #28]
      84:	str	r1, [sp, #76]
      86:	mov	r2, sp
      88:	movs	r3, #1
      8a:	str	r3, [r2, #8]
      8c:	movw	r12, #7988
      90:	movt	r12, #0
      94:	str.w	r12, [r2, #4]
      98:	str	r3, [r2]
      9a:	movw	r1, #7972
      9e:	movt	r1, #0
      a2:	add	r0, sp, #48
      a4:	movs	r2, #2
      a6:	add	r3, sp, #72
      a8:	bl	#412
      ac:	b	#-2 <app::main::h83de63fd1bb290c6+0x6e>
      ae:	add	r0, sp, #44
      b0:	add	r1, sp, #48
      b2:	bl	#844
      b6:	str	r0, [sp, #24]
      b8:	b	#-2 <app::main::h83de63fd1bb290c6+0x7a>
      ba:	movw	r0, #8025
      be:	movt	r0, #0
      c2:	str	r0, [sp, #128]
      c4:	add	r0, sp, #128
      c6:	str	r0, [sp, #124]
      c8:	ldr	r0, [sp, #124]
      ca:	str	r0, [sp, #132]
      cc:	ldr	r0, [sp, #132]
      ce:	movw	r1, #7615
      d2:	movt	r1, #0
      d6:	bl	#3244
      da:	str	r0, [sp, #20]
      dc:	str	r1, [sp, #16]
      de:	b	#-2 <app::main::h83de63fd1bb290c6+0xa0>
      e0:	ldr	r0, [sp, #20]
      e2:	str	r0, [sp, #116]
      e4:	ldr	r1, [sp, #16]
      e6:	str	r1, [sp, #120]
      e8:	mov	r2, sp
      ea:	movs	r3, #1
      ec:	str	r3, [r2, #8]
      ee:	movw	r12, #7988
      f2:	movt	r12, #0
      f6:	str.w	r12, [r2, #4]
      fa:	str	r3, [r2]
      fc:	movw	r1, #7972
     100:	movt	r1, #0
     104:	add	r0, sp, #92
     106:	movs	r2, #2
     108:	add	r3, sp, #116
     10a:	bl	#314
     10e:	b	#-2 <app::main::h83de63fd1bb290c6+0xd0>
     110:	add	r0, sp, #44
     112:	add	r1, sp, #92
     114:	bl	#746
     118:	str	r0, [sp, #12]
     11a:	b	#-2 <app::main::h83de63fd1bb290c6+0xdc>
     11c:	movs	r0, #0
     11e:	bl	#542
     122:	b	#-2 <app::main::h83de63fd1bb290c6+0xe4>
     124:	b	#-4 <app::main::h83de63fd1bb290c6+0xe4>

main:
     126:	sub	sp, #8
     128:	movw	r0, #65
     12c:	movt	r0, #0
     130:	str	r0, [sp, #4]
     132:	ldr	r0, [sp, #4]
     134:	blx	r0
     136:	trap

_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE:
     138:	sub	sp, #32
     13a:	mov	r2, r1
     13c:	mov	r3, r0
     13e:	str	r0, [sp, #16]
     140:	str	r1, [sp, #20]
     142:	ldr	r0, [sp, #16]
     144:	cmp	r0, #0
     146:	str	r2, [sp, #12]
     148:	str	r3, [sp, #8]
     14a:	str	r0, [sp, #4]
     14c:	beq	#10 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x22>
     14e:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x18>
     150:	ldr	r0, [sp, #4]
     152:	cmp	r0, #1
     154:	beq	#18 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x32>
     156:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x20>
     158:	trap
     15a:	ldr	r0, [sp, #20]
     15c:	str	r0, [sp, #24]
     15e:	ldr	r0, [sp, #24]
     160:	ldr	r1, [sp, #16]
     162:	cmp	r1, #0
     164:	str	r0, [sp]
     166:	beq	#16 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x42>
     168:	b	#20 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x48>
     16a:	movw	r0, #8026
     16e:	movt	r0, #0
     172:	movs	r1, #43
     174:	bl	#10
     178:	trap
     17a:	ldr	r0, [sp]
     17c:	add	sp, #32
     17e:	bx	lr
     180:	b	#-10 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$6unwrap17h170f5d80f5aef89aE+0x42>

core::result::unwrap_failed::h97163baae32862c6:
     182:	sub	sp, #104
     184:	mov	r2, r1
     186:	mov	r3, r0
     188:	str	r0, [sp, #36]
     18a:	str	r1, [sp, #40]
     18c:	add	r0, sp, #36
     18e:	str	r0, [sp, #88]
     190:	add	r0, sp, #44
     192:	str	r0, [sp, #92]
     194:	ldr	r0, [sp, #88]
     196:	str	r0, [sp, #96]
     198:	ldr	r0, [sp, #92]
     19a:	str	r0, [sp, #100]
     19c:	ldr	r0, [sp, #96]
     19e:	movw	r1, #681
     1a2:	movt	r1, #0
     1a6:	str	r2, [sp, #32]
     1a8:	str	r3, [sp, #28]
     1aa:	bl	#352
     1ae:	str	r0, [sp, #24]
     1b0:	str	r1, [sp, #20]
     1b2:	b	#-2 <core::result::unwrap_failed::h97163baae32862c6+0x32>
     1b4:	ldr	r0, [sp, #100]
     1b6:	movw	r1, #535
     1ba:	movt	r1, #0
     1be:	bl	#282
     1c2:	str	r0, [sp, #16]
     1c4:	str	r1, [sp, #12]
     1c6:	b	#-2 <core::result::unwrap_failed::h97163baae32862c6+0x46>
     1c8:	ldr	r0, [sp, #24]
     1ca:	str	r0, [sp, #72]
     1cc:	ldr	r1, [sp, #20]
     1ce:	str	r1, [sp, #76]
     1d0:	ldr	r2, [sp, #16]
     1d2:	str	r2, [sp, #80]
     1d4:	ldr	r3, [sp, #12]
     1d6:	str	r3, [sp, #84]
     1d8:	mov	r12, sp
     1da:	mov.w	lr, #2
     1de:	str.w	lr, [r12, #8]
     1e2:	movw	r4, #8088
     1e6:	movt	r4, #0
     1ea:	str.w	r4, [r12, #4]
     1ee:	str.w	lr, [r12]
     1f2:	movw	r1, #8072
     1f6:	movt	r1, #0
     1fa:	add	r0, sp, #48
     1fc:	add	r3, sp, #72
     1fe:	mov	r2, lr
     200:	bl	#68
     204:	b	#-2 <core::result::unwrap_failed::h97163baae32862c6+0x84>
     206:	movw	r1, #8180
     20a:	movt	r1, #0
     20e:	add	r0, sp, #48
     210:	bl	#3720
     214:	trap

<() as core::fmt::Debug>::fmt::hd98b7e440794e078:
     216:	push	{r7, lr}
     218:	sub	sp, #24
     21a:	mov	r2, r1
     21c:	mov	r3, r0
     21e:	str	r0, [sp, #16]
     220:	str	r1, [sp, #20]
     222:	ldr	r0, [sp, #20]
     224:	movw	r1, #8196
     228:	movt	r1, #0
     22c:	mov.w	r12, #2
     230:	str	r2, [sp, #12]
     232:	mov	r2, r12
     234:	str	r3, [sp, #8]
     236:	bl	#5460
     23a:	str	r0, [sp, #4]
     23c:	b	#-2 <<() as core::fmt::Debug>::fmt::hd98b7e440794e078+0x28>
     23e:	ldr	r0, [sp, #4]
     240:	and	r0, r0, #1
     244:	add	sp, #24
     246:	pop	{r7, pc}

core::fmt::Arguments::new_v1_formatted::hbe139d458bd3ab66:
     248:	push.w	{r4, r5, r6, r7, r8, lr}
     24c:	sub	sp, #48
     24e:	ldr.w	r12, [sp, #80]
     252:	ldr.w	lr, [sp, #76]
     256:	ldr	r4, [sp, #72]
     258:	mov	r5, r3
     25a:	mov	r6, r2
     25c:	mov	r7, r1
     25e:	mov	r8, r0
     260:	str	r1, [sp, #16]
     262:	str	r2, [sp, #20]
     264:	str	r3, [sp, #24]
     266:	str	r4, [sp, #28]
     268:	str.w	lr, [sp, #32]
     26c:	str.w	r12, [sp, #36]
     270:	ldr	r1, [sp, #16]
     272:	ldr	r2, [sp, #20]
     274:	ldr	r3, [sp, #32]
     276:	ldr.w	r12, [sp, #36]
     27a:	str	r3, [sp, #40]
     27c:	str.w	r12, [sp, #44]
     280:	ldr	r3, [sp, #24]
     282:	ldr.w	r12, [sp, #28]
     286:	str	r1, [r0]
     288:	str	r2, [r0, #4]
     28a:	ldr	r1, [sp, #40]
     28c:	ldr	r2, [sp, #44]
     28e:	str	r1, [r0, #8]
     290:	str	r2, [r0, #12]
     292:	str	r3, [r0, #16]
     294:	str.w	r12, [r0, #20]
     298:	str	r6, [sp, #12]
     29a:	str	r7, [sp, #8]
     29c:	str.w	r8, [sp, #4]
     2a0:	str	r5, [sp]
     2a2:	add	sp, #48
     2a4:	pop.w	{r4, r5, r6, r7, r8, pc}

<&T as core::fmt::Display>::fmt::h8b5d5e11b0b41508:
     2a8:	push	{r7, lr}
     2aa:	sub	sp, #24
     2ac:	mov	r2, r1
     2ae:	mov	r3, r0
     2b0:	str	r0, [sp, #16]
     2b2:	str	r1, [sp, #20]
     2b4:	ldr	r0, [sp, #16]
     2b6:	ldr	r1, [r0]
     2b8:	ldr	r0, [r0, #4]
     2ba:	ldr.w	r12, [sp, #20]
     2be:	str	r0, [sp, #12]
     2c0:	mov	r0, r1
     2c2:	ldr	r1, [sp, #12]
     2c4:	str	r2, [sp, #8]
     2c6:	mov	r2, r12
     2c8:	str	r3, [sp, #4]
     2ca:	bl	#6200
     2ce:	str	r0, [sp]
     2d0:	b	#-2 <<&T as core::fmt::Display>::fmt::h8b5d5e11b0b41508+0x2a>
     2d2:	ldr	r0, [sp]
     2d4:	and	r0, r0, #1
     2d8:	add	sp, #24
     2da:	pop	{r7, pc}

core::fmt::ArgumentV1::new::h0eaf04f5243ab894:
     2dc:	sub	sp, #40
     2de:	mov	r2, r1
     2e0:	mov	r3, r0
     2e2:	str	r0, [sp, #16]
     2e4:	str	r1, [sp, #20]
     2e6:	ldr	r0, [sp, #20]
     2e8:	str	r0, [sp, #32]
     2ea:	ldr	r0, [sp, #32]
     2ec:	str	r2, [sp, #12]
     2ee:	str	r3, [sp, #8]
     2f0:	str	r0, [sp, #4]
     2f2:	b	#-2 <core::fmt::ArgumentV1::new::h0eaf04f5243ab894+0x18>
     2f4:	ldr	r0, [sp, #16]
     2f6:	str	r0, [sp, #36]
     2f8:	ldr	r0, [sp, #36]
     2fa:	str	r0, [sp]
     2fc:	b	#-2 <core::fmt::ArgumentV1::new::h0eaf04f5243ab894+0x22>
     2fe:	ldr	r0, [sp]
     300:	str	r0, [sp, #24]
     302:	ldr	r1, [sp, #4]
     304:	str	r1, [sp, #28]
     306:	ldr	r0, [sp, #24]
     308:	ldr	r1, [sp, #28]
     30a:	add	sp, #40
     30c:	bx	lr

core::fmt::ArgumentV1::new::h48f02067d4a4aa6d:
     30e:	sub	sp, #40
     310:	mov	r2, r1
     312:	mov	r3, r0
     314:	str	r0, [sp, #16]
     316:	str	r1, [sp, #20]
     318:	ldr	r0, [sp, #20]
     31a:	str	r0, [sp, #32]
     31c:	ldr	r0, [sp, #32]
     31e:	str	r2, [sp, #12]
     320:	str	r3, [sp, #8]
     322:	str	r0, [sp, #4]
     324:	b	#-2 <core::fmt::ArgumentV1::new::h48f02067d4a4aa6d+0x18>
     326:	ldr	r0, [sp, #16]
     328:	str	r0, [sp, #36]
     32a:	ldr	r0, [sp, #36]
     32c:	str	r0, [sp]
     32e:	b	#-2 <core::fmt::ArgumentV1::new::h48f02067d4a4aa6d+0x22>
     330:	ldr	r0, [sp]
     332:	str	r0, [sp, #24]
     334:	ldr	r1, [sp, #4]
     336:	str	r1, [sp, #28]
     338:	ldr	r0, [sp, #24]
     33a:	ldr	r1, [sp, #28]
     33c:	add	sp, #40
     33e:	bx	lr

cortex_m_semihosting::debug::exit::h0593521188424b9e:
     340:	push	{r7, lr}
     342:	sub	sp, #24
     344:	mov	r1, r0
     346:	strb.w	r0, [sp, #11]
     34a:	ldrb.w	r0, [sp, #11]
     34e:	lsls	r2, r0, #31
     350:	cmp	r2, #0
     352:	str	r1, [sp, #4]
     354:	str	r0, [sp]
     356:	beq	#8 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x22>
     358:	b	#-2 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x1a>
     35a:	ldr	r0, [sp]
     35c:	cmp	r0, #1
     35e:	beq	#16 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x32>
     360:	b	#30 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x42>
     362:	movs	r0, #38
     364:	movt	r0, #2
     368:	str	r0, [sp, #16]
     36a:	ldr	r0, [sp, #16]
     36c:	bl	#28
     370:	b	#20 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x48>
     372:	movs	r0, #35
     374:	movt	r0, #2
     378:	str	r0, [sp, #20]
     37a:	ldr	r0, [sp, #20]
     37c:	bl	#12
     380:	b	#6 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x4a>
     382:	trap
     384:	add	sp, #24
     386:	pop	{r7, pc}
     388:	b	#-8 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x44>
     38a:	b	#-10 <cortex_m_semihosting::debug::exit::h0593521188424b9e+0x44>

cortex_m_semihosting::debug::report_exception::hadb73aeb23ab02c7:
     38c:	push	{r7, lr}
     38e:	sub	sp, #24
     390:	mov	r1, r0
     392:	str	r0, [sp, #8]
     394:	ldr	r0, [sp, #8]
     396:	str	r0, [sp, #12]
     398:	ldr	r0, [sp, #12]
     39a:	movs	r2, #24
     39c:	str	r2, [sp, #16]
     39e:	str	r0, [sp, #20]
     3a0:	ldr	r0, [sp, #16]
     3a2:	ldr	r2, [sp, #20]
     3a4:	str	r1, [sp, #4]
     3a6:	mov	r1, r2
     3a8:	bl	#2468
     3ac:	str	r0, [sp]
     3ae:	b	#-2 <cortex_m_semihosting::debug::report_exception::hadb73aeb23ab02c7+0x24>
     3b0:	add	sp, #24
     3b2:	pop	{r7, pc}

core::fmt::Write::write_char::h7028110a2492a795:
     3b4:	push	{r7, lr}
     3b6:	sub	sp, #40
     3b8:	mov	r2, r1
     3ba:	mov	r3, r0
     3bc:	str	r0, [sp, #28]
     3be:	str	r1, [sp, #32]
     3c0:	ldr	r0, [sp, #28]
     3c2:	ldr	r1, [sp, #32]
     3c4:	mov.w	r12, #0
     3c8:	str.w	r12, [sp, #36]
     3cc:	add.w	r12, sp, #36
     3d0:	mov.w	lr, #4
     3d4:	str	r0, [sp, #24]
     3d6:	mov	r0, r1
     3d8:	mov	r1, r12
     3da:	str	r2, [sp, #20]
     3dc:	mov	r2, lr
     3de:	str	r3, [sp, #16]
     3e0:	bl	#832
     3e4:	str	r0, [sp, #12]
     3e6:	str	r1, [sp, #8]
     3e8:	b	#-2 <core::fmt::Write::write_char::h7028110a2492a795+0x36>
     3ea:	ldr	r0, [sp, #24]
     3ec:	ldr	r1, [sp, #12]
     3ee:	ldr	r2, [sp, #8]
     3f0:	bl	#140
     3f4:	str	r0, [sp, #4]
     3f6:	b	#-2 <core::fmt::Write::write_char::h7028110a2492a795+0x44>
     3f8:	ldr	r0, [sp, #4]
     3fa:	and	r0, r0, #1
     3fe:	add	sp, #40
     400:	pop	{r7, pc}

core::fmt::Write::write_fmt::hc7f23d337d1b4c4b:
     402:	push.w	{r4, r5, r6, r7, r8, lr}
     406:	sub	sp, #48
     408:	mov	r2, r1
     40a:	mov	r3, r0
     40c:	str	r0, [sp, #16]
     40e:	ldr	r0, [sp, #16]
     410:	str	r0, [sp, #20]
     412:	add	r0, sp, #24
     414:	mov	r12, r0
     416:	ldm.w	r1, {r4, r5, r6, r7, r8, lr}
     41a:	stm.w	r12, {r4, r5, r6, r7, r8, lr}
     41e:	movw	r1, #8200
     422:	movt	r1, #0
     426:	add.w	r12, sp, #20
     42a:	str	r0, [sp, #12]
     42c:	mov	r0, r12
     42e:	ldr.w	r12, [sp, #12]
     432:	str	r2, [sp, #8]
     434:	mov	r2, r12
     436:	str	r3, [sp, #4]
     438:	bl	#3286
     43c:	str	r0, [sp]
     43e:	b	#-2 <core::fmt::Write::write_fmt::hc7f23d337d1b4c4b+0x3e>
     440:	ldr	r0, [sp]
     442:	and	r0, r0, #1
     446:	add	sp, #48
     448:	pop.w	{r4, r5, r6, r7, r8, pc}

cortex_m_semihosting::hio::HStdout::write_all::hfb3a598ffea9bd14:
     44c:	push	{r7, lr}
     44e:	sub	sp, #32
     450:	mov	r3, r2
     452:	mov	r12, r1
     454:	mov	lr, r0
     456:	str	r0, [sp, #20]
     458:	str	r1, [sp, #24]
     45a:	str	r2, [sp, #28]
     45c:	ldr	r0, [sp, #20]
     45e:	ldr	r0, [r0]
     460:	ldr	r1, [sp, #24]
     462:	ldr	r2, [sp, #28]
     464:	str	r3, [sp, #16]
     466:	str.w	r12, [sp, #12]
     46a:	str.w	lr, [sp, #8]
     46e:	bl	#378
     472:	str	r0, [sp, #4]
     474:	b	#-2 <cortex_m_semihosting::hio::HStdout::write_all::hfb3a598ffea9bd14+0x2a>
     476:	ldr	r0, [sp, #4]
     478:	and	r0, r0, #1
     47c:	add	sp, #32
     47e:	pop	{r7, pc}

<cortex_m_semihosting::hio::HStdout as core::fmt::Write>::write_str::h92aa93f00ac49547:
     480:	push	{r7, lr}
     482:	sub	sp, #64
     484:	mov	r3, r2
     486:	mov	r12, r1
     488:	mov	lr, r0
     48a:	str	r0, [sp, #32]
     48c:	str	r1, [sp, #36]
     48e:	str	r2, [sp, #40]
     490:	ldr	r0, [sp, #32]
     492:	ldr	r1, [sp, #36]
     494:	ldr	r2, [sp, #40]
     496:	str	r1, [sp, #48]
     498:	str	r2, [sp, #52]
     49a:	ldr	r1, [sp, #48]
     49c:	ldr	r2, [sp, #52]
     49e:	str	r1, [sp, #56]
     4a0:	str	r2, [sp, #60]
     4a2:	ldr	r1, [sp, #56]
     4a4:	ldr	r2, [sp, #60]
     4a6:	str	r3, [sp, #28]
     4a8:	str.w	r12, [sp, #24]
     4ac:	str.w	lr, [sp, #20]
     4b0:	str	r0, [sp, #16]
     4b2:	str	r1, [sp, #12]
     4b4:	str	r2, [sp, #8]
     4b6:	b	#-2 <<cortex_m_semihosting::hio::HStdout as core::fmt::Write>::write_str::h92aa93f00ac49547+0x38>
     4b8:	ldr	r0, [sp, #16]
     4ba:	ldr	r1, [sp, #12]
     4bc:	ldr	r2, [sp, #8]
     4be:	bl	#-118
     4c2:	str	r0, [sp, #4]
     4c4:	b	#-2 <<cortex_m_semihosting::hio::HStdout as core::fmt::Write>::write_str::h92aa93f00ac49547+0x46>
     4c6:	ldr	r0, [sp, #4]
     4c8:	and	r0, r0, #1
     4cc:	bl	#1996
     4d0:	str	r0, [sp]
     4d2:	b	#-2 <<cortex_m_semihosting::hio::HStdout as core::fmt::Write>::write_str::h92aa93f00ac49547+0x54>
     4d4:	ldr	r0, [sp]
     4d6:	and	r0, r0, #1
     4da:	add	sp, #64
     4dc:	pop	{r7, pc}

<cortex_m_semihosting::hio::HStdout as core::fmt::Write>::write_str::{{closure}}::h5333b1a9a6b0fa87:
     4de:	sub	sp, #8
     4e0:	add	sp, #8
     4e2:	bx	lr

cortex_m_semihosting::hio::hstdout::h7db1946702b947cf:
     4e4:	push	{r7, lr}
     4e6:	sub	sp, #24
     4e8:	movw	r0, #8224
     4ec:	movt	r0, #0
     4f0:	movs	r1, #4
     4f2:	str	r1, [sp, #16]
     4f4:	ldr	r2, [sp, #16]
     4f6:	bl	#46
     4fa:	str	r0, [sp, #12]
     4fc:	str	r1, [sp, #8]
     4fe:	b	#-2 <cortex_m_semihosting::hio::hstdout::h7db1946702b947cf+0x1c>
     500:	ldr	r0, [sp, #12]
     502:	ldr	r1, [sp, #8]
     504:	bl	#1750
     508:	str	r0, [sp, #4]
     50a:	str	r1, [sp]
     50c:	b	#-2 <cortex_m_semihosting::hio::hstdout::h7db1946702b947cf+0x2a>
     50e:	ldr	r0, [sp, #4]
     510:	ldr	r1, [sp]
     512:	add	sp, #24
     514:	pop	{r7, pc}

cortex_m_semihosting::hio::hstdout::{{closure}}::h8f3cb4114763f17a:
     516:	sub	sp, #16
     518:	mov	r1, r0
     51a:	str	r0, [sp, #8]
     51c:	ldr	r0, [sp, #8]
     51e:	str	r0, [sp, #12]
     520:	ldr	r0, [sp, #12]
     522:	str	r1, [sp]
     524:	add	sp, #16
     526:	bx	lr

cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c:
     528:	push	{r7, lr}
     52a:	sub	sp, #120
     52c:	mov	r3, r2
     52e:	mov	r12, r1
     530:	mov	lr, r0
     532:	str	r0, [sp, #40]
     534:	str	r1, [sp, #44]
     536:	str	r2, [sp, #48]
     538:	ldr	r0, [sp, #40]
     53a:	ldr	r1, [sp, #44]
     53c:	str	r0, [sp, #88]
     53e:	str	r1, [sp, #92]
     540:	ldr	r0, [sp, #88]
     542:	ldr	r1, [sp, #92]
     544:	str	r0, [sp, #96]
     546:	str	r1, [sp, #100]
     548:	ldr	r0, [sp, #96]
     54a:	ldr	r1, [sp, #100]
     54c:	str	r1, [sp, #64]
     54e:	str	r0, [sp, #60]
     550:	str	r3, [sp, #36]
     552:	str.w	r12, [sp, #32]
     556:	str.w	lr, [sp, #28]
     55a:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0x34>
     55c:	ldr	r0, [sp, #60]
     55e:	ldr	r1, [sp, #64]
     560:	bl	#2454
     564:	str	r0, [sp, #24]
     566:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0x40>
     568:	ldr	r0, [sp, #24]
     56a:	ldr	r1, [sp, #48]
     56c:	ldr	r2, [sp, #60]
     56e:	ldr	r3, [sp, #64]
     570:	str	r0, [sp, #20]
     572:	mov	r0, r2
     574:	str	r1, [sp, #16]
     576:	mov	r1, r3
     578:	bl	#2402
     57c:	str	r0, [sp, #12]
     57e:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0x58>
     580:	ldr	r0, [sp, #12]
     582:	subs	r1, r0, #1
     584:	cmp	r0, #1
     586:	str	r1, [sp, #8]
     588:	blo	#82 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0xb6>
     58a:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0x64>
     58c:	ldr	r0, [sp, #20]
     58e:	str	r0, [sp, #68]
     590:	ldr	r1, [sp, #16]
     592:	str	r1, [sp, #72]
     594:	ldr	r2, [sp, #8]
     596:	str	r2, [sp, #76]
     598:	movs	r3, #1
     59a:	str	r3, [sp, #104]
     59c:	add	r3, sp, #68
     59e:	str	r3, [sp, #108]
     5a0:	ldr	r3, [sp, #104]
     5a2:	ldr.w	r12, [sp, #108]
     5a6:	str	r3, [sp, #112]
     5a8:	str.w	r12, [sp, #116]
     5ac:	ldr	r0, [sp, #112]
     5ae:	ldr	r1, [sp, #116]
     5b0:	bl	#1948
     5b4:	str	r0, [sp, #4]
     5b6:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0x90>
     5b8:	ldr	r0, [sp, #4]
     5ba:	adds	r1, r0, #1
     5bc:	cmp	r1, #0
     5be:	bne	#6 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0xa0>
     5c0:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0x9a>
     5c2:	movs	r0, #1
     5c4:	str	r0, [sp, #52]
     5c6:	b	#12 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0xae>
     5c8:	ldr	r0, [sp, #4]
     5ca:	str	r0, [sp, #80]
     5cc:	ldr	r1, [sp, #80]
     5ce:	str	r1, [sp, #56]
     5d0:	movs	r1, #0
     5d2:	str	r1, [sp, #52]
     5d4:	b	#-2 <cortex_m_semihosting::hio::open::h87a0f7ffef5a1b7c+0xae>
     5d6:	ldr	r0, [sp, #52]
     5d8:	ldr	r1, [sp, #56]
     5da:	add	sp, #120
     5dc:	pop	{r7, pc}
     5de:	movw	r0, #8388
     5e2:	movt	r0, #0
     5e6:	bl	#2608
     5ea:	trap

cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e:
     5ec:	push	{r7, lr}
     5ee:	sub	sp, #136
     5f0:	mov	r3, r2
     5f2:	mov	r12, r1
     5f4:	mov	lr, r0
     5f6:	str	r0, [sp, #72]
     5f8:	str	r1, [sp, #76]
     5fa:	str	r2, [sp, #80]
     5fc:	str	r3, [sp, #68]
     5fe:	str.w	r12, [sp, #64]
     602:	str.w	lr, [sp, #60]
     606:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x1c>
     608:	ldr	r0, [sp, #76]
     60a:	ldr	r1, [sp, #80]
     60c:	bl	#2302
     610:	str	r0, [sp, #56]
     612:	b	#6 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x30>
     614:	movs	r0, #0
     616:	strb.w	r0, [sp, #87]
     61a:	b	#160 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xd2>
     61c:	ldr	r0, [sp, #56]
     61e:	lsls	r1, r0, #31
     620:	cmp	r1, #0
     622:	bne	#-18 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x28>
     624:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x3a>
     626:	ldr	r0, [sp, #72]
     628:	ldr	r1, [sp, #76]
     62a:	ldr	r2, [sp, #80]
     62c:	str	r0, [sp, #52]
     62e:	mov	r0, r1
     630:	mov	r1, r2
     632:	bl	#2244
     636:	str	r0, [sp, #48]
     638:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x4e>
     63a:	ldr	r0, [sp, #48]
     63c:	ldr	r1, [sp, #76]
     63e:	ldr	r2, [sp, #80]
     640:	str	r0, [sp, #44]
     642:	mov	r0, r1
     644:	mov	r1, r2
     646:	bl	#2196
     64a:	str	r0, [sp, #40]
     64c:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x62>
     64e:	ldr	r0, [sp, #52]
     650:	str	r0, [sp, #88]
     652:	ldr	r1, [sp, #44]
     654:	str	r1, [sp, #92]
     656:	ldr	r2, [sp, #40]
     658:	str	r2, [sp, #96]
     65a:	movs	r3, #5
     65c:	str	r3, [sp, #120]
     65e:	add	r3, sp, #88
     660:	str	r3, [sp, #124]
     662:	ldr	r3, [sp, #120]
     664:	ldr.w	r12, [sp, #124]
     668:	str	r3, [sp, #128]
     66a:	str.w	r12, [sp, #132]
     66e:	ldr	r0, [sp, #128]
     670:	ldr	r1, [sp, #132]
     672:	bl	#1754
     676:	str	r0, [sp, #36]
     678:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x8e>
     67a:	ldr	r0, [sp, #36]
     67c:	cmp	r0, #0
     67e:	bne	#28 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xb2>
     680:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x96>
     682:	movs	r0, #0
     684:	strb.w	r0, [sp, #87]
     688:	b	#58 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xda>
     68a:	ldr	r0, [sp, #76]
     68c:	ldr	r1, [sp, #80]
     68e:	bl	#2124
     692:	str	r0, [sp, #32]
     694:	b	#48 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xdc>
     696:	movs	r0, #1
     698:	strb.w	r0, [sp, #87]
     69c:	b	#38 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xda>
     69e:	ldr	r0, [sp, #36]
     6a0:	str	r0, [sp, #100]
     6a2:	ldr	r1, [sp, #100]
     6a4:	ldr	r0, [sp, #76]
     6a6:	ldr	r2, [sp, #80]
     6a8:	str	r1, [sp, #28]
     6aa:	mov	r1, r2
     6ac:	bl	#2094
     6b0:	str	r0, [sp, #24]
     6b2:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xc8>
     6b4:	ldr	r0, [sp, #28]
     6b6:	ldr	r1, [sp, #24]
     6b8:	cmp	r0, r1
     6ba:	bls	#-52 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x9e>
     6bc:	b	#-42 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xaa>
     6be:	ldrb.w	r0, [sp, #87]
     6c2:	add	sp, #136
     6c4:	pop	{r7, pc}
     6c6:	b	#-12 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xd2>
     6c8:	ldr	r0, [sp, #100]
     6ca:	ldr	r1, [sp, #32]
     6cc:	subs	r2, r1, r0
     6ce:	cmp	r1, r0
     6d0:	str	r2, [sp, #20]
     6d2:	blo	#52 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x11e>
     6d4:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xea>
     6d6:	ldr	r0, [sp, #20]
     6d8:	str	r0, [sp, #108]
     6da:	ldr	r0, [sp, #76]
     6dc:	ldr	r1, [sp, #80]
     6de:	bl	#2072
     6e2:	str	r0, [sp, #16]
     6e4:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0xfa>
     6e6:	ldr	r1, [sp, #108]
     6e8:	ldr	r0, [sp, #16]
     6ea:	bl	#1806
     6ee:	str	r0, [sp, #12]
     6f0:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x106>
     6f2:	ldr	r1, [sp, #100]
     6f4:	ldr	r0, [sp, #12]
     6f6:	bl	#1828
     6fa:	str	r0, [sp, #8]
     6fc:	str	r1, [sp, #4]
     6fe:	b	#-2 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x114>
     700:	ldr	r0, [sp, #8]
     702:	str	r0, [sp, #76]
     704:	ldr	r1, [sp, #4]
     706:	str	r1, [sp, #80]
     708:	b	#-260 <cortex_m_semihosting::hio::write_all::h89a943619bcb1a1e+0x1c>
     70a:	movw	r0, #8412
     70e:	movt	r0, #0
     712:	bl	#2308
     716:	trap

core::ptr::drop_in_place::hcf32a8dbdc201abe:
     718:	sub	sp, #8
     71a:	mov	r1, r0
     71c:	str	r0, [sp, #4]
     71e:	str	r1, [sp]
     720:	add	sp, #8
     722:	bx	lr

core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702:
     724:	push	{r4, r5, r6, lr}
     726:	sub	sp, #272
     728:	mov	r3, r2
     72a:	mov	r12, r1
     72c:	mov	lr, r0
     72e:	str	r0, [sp, #164]
     730:	str	r1, [sp, #168]
     732:	str	r2, [sp, #172]
     734:	ldr	r0, [sp, #164]
     736:	str	r0, [sp, #176]
     738:	ldr	r0, [sp, #176]
     73a:	cmp	r0, #128
     73c:	str	r3, [sp, #160]
     73e:	str.w	r12, [sp, #156]
     742:	str.w	lr, [sp, #152]
     746:	blo	#16 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x36>
     748:	b	#6 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x2e>
     74a:	movs	r0, #1
     74c:	strb.w	r0, [sp, #185]
     750:	b	#18 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x42>
     752:	movs	r0, #0
     754:	strb.w	r0, [sp, #185]
     758:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x42>
     75a:	ldr	r0, [sp, #168]
     75c:	ldr	r1, [sp, #172]
     75e:	bl	#1964
     762:	str	r0, [sp, #148]
     764:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x4e>
     766:	ldrb.w	r0, [sp, #185]
     76a:	lsls	r0, r0, #31
     76c:	cmp	r0, #0
     76e:	bne	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x58>
     770:	b	#32 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x70>
     772:	ldr	r0, [sp, #148]
     774:	lsls	r1, r0, #31
     776:	cmp	r1, #0
     778:	beq	#-50 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x26>
     77a:	b	#-44 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x2e>
     77c:	ldr	r0, [sp, #176]
     77e:	ldr	r1, [sp, #168]
     780:	ldr	r2, [sp, #172]
     782:	movs	r3, #0
     784:	str	r0, [sp, #144]
     786:	mov	r0, r1
     788:	mov	r1, r2
     78a:	mov	r2, r3
     78c:	bl	#1774
     790:	str	r0, [sp, #140]
     792:	b	#8 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x7a>
     794:	ldr	r0, [sp, #176]
     796:	cmp.w	r0, #2048
     79a:	blo	#28 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x96>
     79c:	b	#18 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x8e>
     79e:	ldr	r0, [sp, #144]
     7a0:	ldr	r1, [sp, #140]
     7a2:	strb	r0, [r1]
     7a4:	movs	r2, #1
     7a6:	str	r2, [sp, #180]
     7a8:	b	#666 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x322>
     7aa:	movs	r0, #1
     7ac:	strb.w	r0, [sp, #186]
     7b0:	b	#18 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xa2>
     7b2:	movs	r0, #0
     7b4:	strb.w	r0, [sp, #186]
     7b8:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xa2>
     7ba:	ldr	r0, [sp, #168]
     7bc:	ldr	r1, [sp, #172]
     7be:	bl	#1820
     7c2:	str	r0, [sp, #136]
     7c4:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xae>
     7c6:	ldrb.w	r0, [sp, #186]
     7ca:	lsls	r0, r0, #31
     7cc:	cmp	r0, #0
     7ce:	bne	#8 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xb6>
     7d0:	b	#34 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xd2>
     7d2:	ldr	r0, [sp, #136]
     7d4:	cmp	r0, #1
     7d6:	bhi	#-48 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x86>
     7d8:	b	#-42 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x8e>
     7da:	ldr	r0, [sp, #176]
     7dc:	ubfx	r0, r0, #6, #5
     7e0:	ldr	r1, [sp, #168]
     7e2:	ldr	r2, [sp, #172]
     7e4:	movs	r3, #0
     7e6:	str	r0, [sp, #132]
     7e8:	mov	r0, r1
     7ea:	mov	r1, r2
     7ec:	mov	r2, r3
     7ee:	bl	#1676
     7f2:	str	r0, [sp, #128]
     7f4:	b	#8 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xdc>
     7f6:	ldr	r0, [sp, #176]
     7f8:	cmp.w	r0, #65536
     7fc:	blo	#66 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x11e>
     7fe:	b	#56 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x116>
     800:	ldr	r0, [sp, #132]
     802:	orr	r1, r0, #192
     806:	ldr	r2, [sp, #128]
     808:	strb	r1, [r2]
     80a:	ldr	r1, [sp, #176]
     80c:	and	r1, r1, #63
     810:	ldr	r0, [sp, #168]
     812:	ldr	r3, [sp, #172]
     814:	movs	r2, #1
     816:	str	r1, [sp, #124]
     818:	mov	r1, r3
     81a:	bl	#1632
     81e:	str	r0, [sp, #120]
     820:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0xfe>
     822:	ldr	r0, [sp, #124]
     824:	orr	r1, r0, #128
     828:	ldr	r2, [sp, #120]
     82a:	strb	r1, [r2]
     82c:	movs	r1, #2
     82e:	str	r1, [sp, #180]
     830:	b	#528 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x320>
     832:	movs	r0, #1
     834:	strb.w	r0, [sp, #187]
     838:	b	#18 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x12a>
     83a:	movs	r0, #0
     83c:	strb.w	r0, [sp, #187]
     840:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x12a>
     842:	ldr	r0, [sp, #168]
     844:	ldr	r1, [sp, #172]
     846:	bl	#1684
     84a:	str	r0, [sp, #116]
     84c:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x136>
     84e:	ldrb.w	r0, [sp, #187]
     852:	lsls	r0, r0, #31
     854:	cmp	r0, #0
     856:	bne	#8 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x13e>
     858:	b	#34 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x15a>
     85a:	ldr	r0, [sp, #116]
     85c:	cmp	r0, #2
     85e:	bhi	#-48 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x10e>
     860:	b	#-42 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x116>
     862:	ldr	r0, [sp, #176]
     864:	ubfx	r0, r0, #12, #4
     868:	ldr	r1, [sp, #168]
     86a:	ldr	r2, [sp, #172]
     86c:	movs	r3, #0
     86e:	str	r0, [sp, #112]
     870:	mov	r0, r1
     872:	mov	r1, r2
     874:	mov	r2, r3
     876:	bl	#1540
     87a:	str	r0, [sp, #108]
     87c:	b	#10 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x166>
     87e:	ldr	r0, [sp, #168]
     880:	ldr	r1, [sp, #172]
     882:	bl	#1624
     886:	str	r0, [sp, #104]
     888:	b	#82 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x1ba>
     88a:	ldr	r0, [sp, #112]
     88c:	orr	r1, r0, #224
     890:	ldr	r2, [sp, #108]
     892:	strb	r1, [r2]
     894:	ldr	r1, [sp, #176]
     896:	ubfx	r1, r1, #6, #6
     89a:	ldr	r0, [sp, #168]
     89c:	ldr	r3, [sp, #172]
     89e:	movs	r2, #1
     8a0:	str	r1, [sp, #100]
     8a2:	mov	r1, r3
     8a4:	bl	#1494
     8a8:	str	r0, [sp, #96]
     8aa:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x188>
     8ac:	ldr	r0, [sp, #100]
     8ae:	orr	r1, r0, #128
     8b2:	ldr	r2, [sp, #96]
     8b4:	strb	r1, [r2]
     8b6:	ldr	r1, [sp, #176]
     8b8:	and	r1, r1, #63
     8bc:	ldr	r0, [sp, #168]
     8be:	ldr	r3, [sp, #172]
     8c0:	movs	r2, #2
     8c2:	str	r1, [sp, #92]
     8c4:	mov	r1, r3
     8c6:	bl	#1460
     8ca:	str	r0, [sp, #88]
     8cc:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x1aa>
     8ce:	ldr	r0, [sp, #92]
     8d0:	orr	r1, r0, #128
     8d4:	ldr	r2, [sp, #88]
     8d6:	strb	r1, [r2]
     8d8:	movs	r1, #3
     8da:	str	r1, [sp, #180]
     8dc:	b	#354 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x31e>
     8de:	ldr	r0, [sp, #104]
     8e0:	cmp	r0, #4
     8e2:	blo	#28 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x1de>
     8e4:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x1c2>
     8e6:	ldr	r0, [sp, #176]
     8e8:	ubfx	r0, r0, #18, #3
     8ec:	ldr	r1, [sp, #168]
     8ee:	ldr	r2, [sp, #172]
     8f0:	movs	r3, #0
     8f2:	str	r0, [sp, #84]
     8f4:	mov	r0, r1
     8f6:	mov	r1, r2
     8f8:	mov	r2, r3
     8fa:	bl	#1408
     8fe:	str	r0, [sp, #80]
     900:	b	#8 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x1e8>
     902:	ldr	r0, [sp, #176]
     904:	bl	#702
     908:	str	r0, [sp, #76]
     90a:	b	#116 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x25e>
     90c:	ldr	r0, [sp, #84]
     90e:	orr	r1, r0, #240
     912:	ldr	r2, [sp, #80]
     914:	strb	r1, [r2]
     916:	ldr	r1, [sp, #176]
     918:	ubfx	r1, r1, #12, #6
     91c:	ldr	r0, [sp, #168]
     91e:	ldr	r3, [sp, #172]
     920:	movs	r2, #1
     922:	str	r1, [sp, #72]
     924:	mov	r1, r3
     926:	bl	#1364
     92a:	str	r0, [sp, #68]
     92c:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x20a>
     92e:	ldr	r0, [sp, #72]
     930:	orr	r1, r0, #128
     934:	ldr	r2, [sp, #68]
     936:	strb	r1, [r2]
     938:	ldr	r1, [sp, #176]
     93a:	ubfx	r1, r1, #6, #6
     93e:	ldr	r0, [sp, #168]
     940:	ldr	r3, [sp, #172]
     942:	movs	r2, #2
     944:	str	r1, [sp, #64]
     946:	mov	r1, r3
     948:	bl	#1330
     94c:	str	r0, [sp, #60]
     94e:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x22c>
     950:	ldr	r0, [sp, #64]
     952:	orr	r1, r0, #128
     956:	ldr	r2, [sp, #60]
     958:	strb	r1, [r2]
     95a:	ldr	r1, [sp, #176]
     95c:	and	r1, r1, #63
     960:	ldr	r0, [sp, #168]
     962:	ldr	r3, [sp, #172]
     964:	movs	r2, #3
     966:	str	r1, [sp, #56]
     968:	mov	r1, r3
     96a:	bl	#1296
     96e:	str	r0, [sp, #52]
     970:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x24e>
     972:	ldr	r0, [sp, #56]
     974:	orr	r1, r0, #128
     978:	ldr	r2, [sp, #52]
     97a:	strb	r1, [r2]
     97c:	movs	r1, #4
     97e:	str	r1, [sp, #180]
     980:	b	#190 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x31e>
     982:	ldr	r0, [sp, #76]
     984:	bl	#232
     988:	str	r0, [sp, #248]
     98a:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x268>
     98c:	ldr	r0, [sp, #168]
     98e:	ldr	r1, [sp, #172]
     990:	bl	#1354
     994:	str	r0, [sp, #252]
     996:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x274>
     998:	add	r0, sp, #248
     99a:	str	r0, [sp, #236]
     99c:	add	r0, sp, #176
     99e:	str	r0, [sp, #240]
     9a0:	add	r0, sp, #252
     9a2:	str	r0, [sp, #244]
     9a4:	ldr	r0, [sp, #236]
     9a6:	str	r0, [sp, #256]
     9a8:	ldr	r0, [sp, #240]
     9aa:	str	r0, [sp, #260]
     9ac:	ldr	r0, [sp, #244]
     9ae:	str	r0, [sp, #264]
     9b0:	ldr	r0, [sp, #256]
     9b2:	movw	r1, #7623
     9b6:	movt	r1, #0
     9ba:	bl	#968
     9be:	str	r0, [sp, #48]
     9c0:	str	r1, [sp, #44]
     9c2:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x2a0>
     9c4:	ldr	r0, [sp, #260]
     9c6:	movw	r1, #7619
     9ca:	movt	r1, #0
     9ce:	bl	#898
     9d2:	str	r0, [sp, #40]
     9d4:	str	r1, [sp, #36]
     9d6:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x2b4>
     9d8:	ldr	r0, [sp, #264]
     9da:	movw	r1, #7623
     9de:	movt	r1, #0
     9e2:	bl	#928
     9e6:	str	r0, [sp, #32]
     9e8:	str	r1, [sp, #28]
     9ea:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x2c8>
     9ec:	ldr	r0, [sp, #48]
     9ee:	str	r0, [sp, #212]
     9f0:	ldr	r1, [sp, #44]
     9f2:	str	r1, [sp, #216]
     9f4:	ldr	r2, [sp, #40]
     9f6:	str	r2, [sp, #220]
     9f8:	ldr	r3, [sp, #36]
     9fa:	str	r3, [sp, #224]
     9fc:	ldr.w	r12, [sp, #32]
     a00:	str.w	r12, [sp, #228]
     a04:	ldr.w	lr, [sp, #28]
     a08:	str.w	lr, [sp, #232]
     a0c:	mov	r4, sp
     a0e:	movs	r5, #3
     a10:	str	r5, [r4, #8]
     a12:	movw	r6, #8520
     a16:	movt	r6, #0
     a1a:	str	r6, [r4, #4]
     a1c:	str	r5, [r4]
     a1e:	movw	r1, #8496
     a22:	movt	r1, #0
     a26:	add	r0, sp, #188
     a28:	add	r3, sp, #212
     a2a:	mov	r2, r5
     a2c:	bl	#140
     a30:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x30e>
     a32:	movw	r1, #8652
     a36:	movt	r1, #0
     a3a:	add	r0, sp, #188
     a3c:	bl	#1628
     a40:	trap
     a42:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x320>
     a44:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x322>
     a46:	ldr	r0, [sp, #168]
     a48:	ldr	r1, [sp, #172]
     a4a:	ldr	r2, [sp, #180]
     a4c:	str	r2, [sp, #268]
     a4e:	ldr	r2, [sp, #268]
     a50:	bl	#1112
     a54:	str	r0, [sp, #24]
     a56:	str	r1, [sp, #20]
     a58:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x336>
     a5a:	ldr	r0, [sp, #24]
     a5c:	ldr	r1, [sp, #20]
     a5e:	bl	#334
     a62:	str	r0, [sp, #16]
     a64:	str	r1, [sp, #12]
     a66:	b	#-2 <core::char::methods::<impl char>::encode_utf8::h50d25f95d47fb702+0x344>
     a68:	ldr	r0, [sp, #16]
     a6a:	ldr	r1, [sp, #12]
     a6c:	add	sp, #272
     a6e:	pop	{r4, r5, r6, pc}

core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43:
     a70:	sub	sp, #16
     a72:	mov	r1, r0
     a74:	str	r0, [sp, #4]
     a76:	ldr	r0, [sp, #4]
     a78:	str	r0, [sp, #12]
     a7a:	ldr	r0, [sp, #12]
     a7c:	cmp	r0, #127
     a7e:	str	r1, [sp]
     a80:	bhi	#6 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x1a>
     a82:	b	#-2 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x14>
     a84:	movs	r0, #1
     a86:	str	r0, [sp, #8]
     a88:	b	#42 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x46>
     a8a:	ldr	r0, [sp, #12]
     a8c:	movs	r1, #0
     a8e:	cmp.w	r1, r0, lsr #11
     a92:	bne	#6 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x2c>
     a94:	b	#-2 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x26>
     a96:	movs	r0, #2
     a98:	str	r0, [sp, #8]
     a9a:	b	#22 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x44>
     a9c:	ldrh.w	r0, [sp, #14]
     aa0:	cmp	r0, #0
     aa2:	bne	#6 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x3c>
     aa4:	b	#-2 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x36>
     aa6:	movs	r0, #3
     aa8:	str	r0, [sp, #8]
     aaa:	b	#4 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x42>
     aac:	movs	r0, #4
     aae:	str	r0, [sp, #8]
     ab0:	b	#-2 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x42>
     ab2:	b	#-2 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x44>
     ab4:	b	#-2 <core::char::methods::<impl char>::len_utf8::hf3f7e71c67a42a43+0x46>
     ab6:	ldr	r0, [sp, #8]
     ab8:	add	sp, #16
     aba:	bx	lr

core::fmt::Arguments::new_v1_formatted::h973c996c708b6d61:
     abc:	push.w	{r4, r5, r6, r7, r8, lr}
     ac0:	sub	sp, #48
     ac2:	ldr.w	r12, [sp, #80]
     ac6:	ldr.w	lr, [sp, #76]
     aca:	ldr	r4, [sp, #72]
     acc:	mov	r5, r3
     ace:	mov	r6, r2
     ad0:	mov	r7, r1
     ad2:	mov	r8, r0
     ad4:	str	r1, [sp, #16]
     ad6:	str	r2, [sp, #20]
     ad8:	str	r3, [sp, #24]
     ada:	str	r4, [sp, #28]
     adc:	str.w	lr, [sp, #32]
     ae0:	str.w	r12, [sp, #36]
     ae4:	ldr	r1, [sp, #16]
     ae6:	ldr	r2, [sp, #20]
     ae8:	ldr	r3, [sp, #32]
     aea:	ldr.w	r12, [sp, #36]
     aee:	str	r3, [sp, #40]
     af0:	str.w	r12, [sp, #44]
     af4:	ldr	r3, [sp, #24]
     af6:	ldr.w	r12, [sp, #28]
     afa:	str	r1, [r0]
     afc:	str	r2, [r0, #4]
     afe:	ldr	r1, [sp, #40]
     b00:	ldr	r2, [sp, #44]
     b02:	str	r1, [r0, #8]
     b04:	str	r2, [r0, #12]
     b06:	str	r3, [r0, #16]
     b08:	str.w	r12, [r0, #20]
     b0c:	str	r6, [sp, #12]
     b0e:	str	r7, [sp, #8]
     b10:	str.w	r8, [sp, #4]
     b14:	str	r5, [sp]
     b16:	add	sp, #48
     b18:	pop.w	{r4, r5, r6, r7, r8, pc}

<core::fmt::Write::write_fmt::Adapter<'_, T> as core::fmt::Write>::write_char::h0ff1cf28ef0ce42c:
     b1c:	push	{r7, lr}
     b1e:	sub	sp, #24
     b20:	mov	r2, r1
     b22:	mov	r3, r0
     b24:	str	r0, [sp, #16]
     b26:	str	r1, [sp, #20]
     b28:	ldr	r0, [sp, #16]
     b2a:	ldr	r0, [r0]
     b2c:	ldr	r1, [sp, #20]
     b2e:	str	r2, [sp, #12]
     b30:	str	r3, [sp, #8]
     b32:	bl	#-1922
     b36:	str	r0, [sp, #4]
     b38:	b	#-2 <<core::fmt::Write::write_fmt::Adapter<'_, T> as core::fmt::Write>::write_char::h0ff1cf28ef0ce42c+0x1e>
     b3a:	ldr	r0, [sp, #4]
     b3c:	and	r0, r0, #1
     b40:	add	sp, #24
     b42:	pop	{r7, pc}

<core::fmt::Write::write_fmt::Adapter<'_, T> as core::fmt::Write>::write_fmt::h276c71012c1505a5:
     b44:	push.w	{r4, r5, r6, r7, r8, r9, lr}
     b48:	sub	sp, #44
     b4a:	mov	r2, r1
     b4c:	mov	r3, r0
     b4e:	str	r0, [sp, #16]
     b50:	ldr	r0, [sp, #16]
     b52:	ldr	r0, [r0]
     b54:	add.w	r12, sp, #20
     b58:	mov	lr, r12
     b5a:	ldm.w	r1, {r4, r5, r6, r7, r8, r9}
     b5e:	stm.w	lr, {r4, r5, r6, r7, r8, r9}
     b62:	mov	r1, r12
     b64:	str	r2, [sp, #12]
     b66:	str	r3, [sp, #8]
     b68:	bl	#-1898
     b6c:	str	r0, [sp, #4]
     b6e:	b	#-2 <<core::fmt::Write::write_fmt::Adapter<'_, T> as core::fmt::Write>::write_fmt::h276c71012c1505a5+0x2c>
     b70:	ldr	r0, [sp, #4]
     b72:	and	r0, r0, #1
     b76:	add	sp, #44
     b78:	pop.w	{r4, r5, r6, r7, r8, r9, pc}

<core::fmt::Write::write_fmt::Adapter<'_, T> as core::fmt::Write>::write_str::h8e03ab91abb1a963:
     b7c:	push	{r7, lr}
     b7e:	sub	sp, #32
     b80:	mov	r3, r2
     b82:	mov	r12, r1
     b84:	mov	lr, r0
     b86:	str	r0, [sp, #20]
     b88:	str	r1, [sp, #24]
     b8a:	str	r2, [sp, #28]
     b8c:	ldr	r0, [sp, #20]
     b8e:	ldr	r0, [r0]
     b90:	ldr	r1, [sp, #24]
     b92:	ldr	r2, [sp, #28]
     b94:	str	r3, [sp, #16]
     b96:	str.w	r12, [sp, #12]
     b9a:	str.w	lr, [sp, #8]
     b9e:	bl	#-1826
     ba2:	str	r0, [sp, #4]
     ba4:	b	#-2 <<core::fmt::Write::write_fmt::Adapter<'_, T> as core::fmt::Write>::write_str::h8e03ab91abb1a963+0x2a>
     ba6:	ldr	r0, [sp, #4]
     ba8:	and	r0, r0, #1
     bac:	add	sp, #32
     bae:	pop	{r7, pc}

core::str::from_utf8_unchecked_mut::hd27451db3a1aa031:
     bb0:	sub	sp, #16
     bb2:	mov	r2, r1
     bb4:	mov	r3, r0
     bb6:	str	r0, [sp, #8]
     bb8:	str	r1, [sp, #12]
     bba:	ldr	r0, [sp, #8]
     bbc:	ldr	r1, [sp, #12]
     bbe:	str	r2, [sp, #4]
     bc0:	str	r3, [sp]
     bc2:	add	sp, #16
     bc4:	bx	lr

core::char::convert::from_u32_unchecked::h569069f1d6ec2403:
     bc6:	sub	sp, #16
     bc8:	mov	r1, r0
     bca:	str	r0, [sp, #8]
     bcc:	ldr	r0, [sp, #8]
     bce:	str	r0, [sp, #12]
     bd0:	ldr	r0, [sp, #12]
     bd2:	str	r1, [sp, #4]
     bd4:	str	r0, [sp]
     bd6:	b	#-2 <core::char::convert::from_u32_unchecked::h569069f1d6ec2403+0x12>
     bd8:	ldr	r0, [sp]
     bda:	add	sp, #16
     bdc:	bx	lr

_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE:
     bde:	push	{r7, lr}
     be0:	sub	sp, #56
     be2:	mov	r2, r1
     be4:	mov	r3, r0
     be6:	str	r0, [sp, #20]
     be8:	str	r1, [sp, #24]
     bea:	movs	r0, #0
     bec:	strb.w	r0, [sp, #55]
     bf0:	strb.w	r0, [sp, #54]
     bf4:	strb.w	r0, [sp, #53]
     bf8:	movs	r0, #1
     bfa:	strb.w	r0, [sp, #54]
     bfe:	strb.w	r0, [sp, #55]
     c02:	strb.w	r0, [sp, #53]
     c06:	ldr	r0, [sp, #20]
     c08:	cmp	r0, #0
     c0a:	str	r2, [sp, #16]
     c0c:	str	r3, [sp, #12]
     c0e:	str	r0, [sp, #8]
     c10:	beq	#10 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x40>
     c12:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x36>
     c14:	ldr	r0, [sp, #8]
     c16:	cmp	r0, #1
     c18:	beq	#30 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x5c>
     c1a:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x3e>
     c1c:	trap
     c1e:	movs	r0, #0
     c20:	strb.w	r0, [sp, #55]
     c24:	ldr	r1, [sp, #24]
     c26:	str	r1, [sp, #40]
     c28:	strb.w	r0, [sp, #53]
     c2c:	ldr	r0, [sp, #40]
     c2e:	str	r0, [sp, #48]
     c30:	ldr	r0, [sp, #48]
     c32:	bl	#-1824
     c36:	str	r0, [sp, #4]
     c38:	b	#22 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x74>
     c3a:	movs	r0, #0
     c3c:	strb.w	r0, [sp, #54]
     c40:	movs	r0, #1
     c42:	str	r0, [sp, #32]
     c44:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x68>
     c46:	ldrb.w	r0, [sp, #53]
     c4a:	lsls	r0, r0, #31
     c4c:	cmp	r0, #0
     c4e:	bne	#18 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x86>
     c50:	b	#8 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x7e>
     c52:	ldr	r0, [sp, #4]
     c54:	str	r0, [sp, #36]
     c56:	movs	r1, #0
     c58:	str	r1, [sp, #32]
     c5a:	b	#-24 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x68>
     c5c:	ldr	r0, [sp, #20]
     c5e:	cmp	r0, #0
     c60:	beq	#16 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x96>
     c62:	b	#34 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0xaa>
     c64:	movs	r0, #0
     c66:	strb.w	r0, [sp, #53]
     c6a:	b	#-18 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x7e>
     c6c:	ldr	r0, [sp, #32]
     c6e:	ldr	r1, [sp, #36]
     c70:	add	sp, #56
     c72:	pop	{r7, pc}
     c74:	ldrb.w	r0, [sp, #55]
     c78:	lsls	r0, r0, #31
     c7a:	cmp	r0, #0
     c7c:	beq	#-20 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x8e>
     c7e:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0xa2>
     c80:	movs	r0, #0
     c82:	strb.w	r0, [sp, #55]
     c86:	b	#-30 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x8e>
     c88:	ldrb.w	r0, [sp, #54]
     c8c:	lsls	r0, r0, #31
     c8e:	cmp	r0, #0
     c90:	beq	#-40 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x8e>
     c92:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0xb6>
     c94:	movs	r0, #0
     c96:	strb.w	r0, [sp, #54]
     c9a:	b	#-50 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$3map17he280cda39b0e69feE+0x8e>

_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E:
     c9c:	push	{r7, lr}
     c9e:	sub	sp, #32
     ca0:	mov	r1, r0
     ca2:	strb.w	r0, [sp, #15]
     ca6:	movs	r0, #0
     ca8:	strb.w	r0, [sp, #31]
     cac:	strb.w	r0, [sp, #30]
     cb0:	strb.w	r0, [sp, #29]
     cb4:	movs	r0, #1
     cb6:	strb.w	r0, [sp, #30]
     cba:	strb.w	r0, [sp, #31]
     cbe:	strb.w	r0, [sp, #29]
     cc2:	ldrb.w	r0, [sp, #15]
     cc6:	lsls	r2, r0, #31
     cc8:	cmp	r2, #0
     cca:	str	r1, [sp, #8]
     ccc:	str	r0, [sp, #4]
     cce:	beq	#10 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x40>
     cd0:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x36>
     cd2:	ldr	r0, [sp, #4]
     cd4:	cmp	r0, #1
     cd6:	beq	#14 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x4c>
     cd8:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x3e>
     cda:	trap
     cdc:	movs	r0, #0
     cde:	strb.w	r0, [sp, #31]
     ce2:	strb.w	r0, [sp, #19]
     ce6:	b	#14 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x5c>
     ce8:	movs	r0, #0
     cea:	strb.w	r0, [sp, #30]
     cee:	strb.w	r0, [sp, #29]
     cf2:	bl	#-2072
     cf6:	b	#10 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x68>
     cf8:	ldrb.w	r0, [sp, #29]
     cfc:	lsls	r0, r0, #31
     cfe:	cmp	r0, #0
     d00:	bne	#20 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x7c>
     d02:	b	#6 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x70>
     d04:	movs	r0, #1
     d06:	strb.w	r0, [sp, #19]
     d0a:	b	#-22 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x5c>
     d0c:	ldrb.w	r0, [sp, #15]
     d10:	lsls	r0, r0, #31
     d12:	cmp	r0, #0
     d14:	beq	#16 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x8c>
     d16:	b	#34 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0xa0>
     d18:	movs	r0, #0
     d1a:	strb.w	r0, [sp, #29]
     d1e:	b	#-22 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x70>
     d20:	ldrb.w	r0, [sp, #19]
     d24:	add	sp, #32
     d26:	pop	{r7, pc}
     d28:	ldrb.w	r0, [sp, #31]
     d2c:	lsls	r0, r0, #31
     d2e:	cmp	r0, #0
     d30:	beq	#-20 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x84>
     d32:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x98>
     d34:	movs	r0, #0
     d36:	strb.w	r0, [sp, #31]
     d3a:	b	#-30 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x84>
     d3c:	ldrb.w	r0, [sp, #30]
     d40:	lsls	r0, r0, #31
     d42:	cmp	r0, #0
     d44:	beq	#-40 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x84>
     d46:	b	#-2 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0xac>
     d48:	movs	r0, #0
     d4a:	strb.w	r0, [sp, #30]
     d4e:	b	#-50 <_ZN47_$LT$core..result..Result$LT$T$C$$u20$E$GT$$GT$7map_err17h0b2e13f44f40c141E+0x84>

__syscall:
     d50:	bkpt	#171
     d52:	bx	lr

core::fmt::ArgumentV1::new::h1a56a89849cb0e79:
     d54:	sub	sp, #40
     d56:	mov	r2, r1
     d58:	mov	r3, r0
     d5a:	str	r0, [sp, #16]
     d5c:	str	r1, [sp, #20]
     d5e:	ldr	r0, [sp, #20]
     d60:	str	r0, [sp, #32]
     d62:	ldr	r0, [sp, #32]
     d64:	str	r2, [sp, #12]
     d66:	str	r3, [sp, #8]
     d68:	str	r0, [sp, #4]
     d6a:	b	#-2 <core::fmt::ArgumentV1::new::h1a56a89849cb0e79+0x18>
     d6c:	ldr	r0, [sp, #16]
     d6e:	str	r0, [sp, #36]
     d70:	ldr	r0, [sp, #36]
     d72:	str	r0, [sp]
     d74:	b	#-2 <core::fmt::ArgumentV1::new::h1a56a89849cb0e79+0x22>
     d76:	ldr	r0, [sp]
     d78:	str	r0, [sp, #24]
     d7a:	ldr	r1, [sp, #4]
     d7c:	str	r1, [sp, #28]
     d7e:	ldr	r0, [sp, #24]
     d80:	ldr	r1, [sp, #28]
     d82:	add	sp, #40
     d84:	bx	lr

core::fmt::ArgumentV1::new::hf4cadc6f78799df0:
     d86:	sub	sp, #40
     d88:	mov	r2, r1
     d8a:	mov	r3, r0
     d8c:	str	r0, [sp, #16]
     d8e:	str	r1, [sp, #20]
     d90:	ldr	r0, [sp, #20]
     d92:	str	r0, [sp, #32]
     d94:	ldr	r0, [sp, #32]
     d96:	str	r2, [sp, #12]
     d98:	str	r3, [sp, #8]
     d9a:	str	r0, [sp, #4]
     d9c:	b	#-2 <core::fmt::ArgumentV1::new::hf4cadc6f78799df0+0x18>
     d9e:	ldr	r0, [sp, #16]
     da0:	str	r0, [sp, #36]
     da2:	ldr	r0, [sp, #36]
     da4:	str	r0, [sp]
     da6:	b	#-2 <core::fmt::ArgumentV1::new::hf4cadc6f78799df0+0x22>
     da8:	ldr	r0, [sp]
     daa:	str	r0, [sp, #24]
     dac:	ldr	r1, [sp, #4]
     dae:	str	r1, [sp, #28]
     db0:	ldr	r0, [sp, #24]
     db2:	ldr	r1, [sp, #28]
     db4:	add	sp, #40
     db6:	bx	lr

core::ptr::<impl *mut T>::add::hd19c817665f66f77:
     db8:	push	{r7, lr}
     dba:	sub	sp, #24
     dbc:	mov	r2, r1
     dbe:	mov	r3, r0
     dc0:	str	r0, [sp, #16]
     dc2:	str	r1, [sp, #20]
     dc4:	ldr	r0, [sp, #16]
     dc6:	ldr	r1, [sp, #20]
     dc8:	str	r2, [sp, #12]
     dca:	str	r3, [sp, #8]
     dcc:	bl	#10
     dd0:	str	r0, [sp, #4]
     dd2:	b	#-2 <core::ptr::<impl *mut T>::add::hd19c817665f66f77+0x1c>
     dd4:	ldr	r0, [sp, #4]
     dd6:	add	sp, #24
     dd8:	pop	{r7, pc}

core::ptr::<impl *mut T>::offset::hb4a55215d5963c30:
     dda:	sub	sp, #24
     ddc:	mov	r2, r1
     dde:	mov	r3, r0
     de0:	str	r0, [sp, #12]
     de2:	str	r1, [sp, #16]
     de4:	ldr	r0, [sp, #12]
     de6:	ldr	r1, [sp, #16]
     de8:	add	r0, r1
     dea:	str	r0, [sp, #20]
     dec:	ldr	r0, [sp, #20]
     dee:	str	r2, [sp, #8]
     df0:	str	r3, [sp, #4]
     df2:	str	r0, [sp]
     df4:	b	#-2 <core::ptr::<impl *mut T>::offset::hb4a55215d5963c30+0x1c>
     df6:	ldr	r0, [sp]
     df8:	add	sp, #24
     dfa:	bx	lr

core::ptr::<impl *const T>::offset::h781271ecb23a40af:
     dfc:	sub	sp, #24
     dfe:	mov	r2, r1
     e00:	mov	r3, r0
     e02:	str	r0, [sp, #12]
     e04:	str	r1, [sp, #16]
     e06:	ldr	r0, [sp, #12]
     e08:	ldr	r1, [sp, #16]
     e0a:	add	r0, r1
     e0c:	str	r0, [sp, #20]
     e0e:	ldr	r0, [sp, #20]
     e10:	str	r2, [sp, #8]
     e12:	str	r3, [sp, #4]
     e14:	str	r0, [sp]
     e16:	b	#-2 <core::ptr::<impl *const T>::offset::h781271ecb23a40af+0x1c>
     e18:	ldr	r0, [sp]
     e1a:	add	sp, #24
     e1c:	bx	lr

core::slice::from_raw_parts::hf886ce9aab7ef11e:
     e1e:	sub	sp, #32
     e20:	mov	r2, r1
     e22:	mov	r3, r0
     e24:	str	r0, [sp, #8]
     e26:	str	r1, [sp, #12]
     e28:	ldr	r0, [sp, #8]
     e2a:	ldr	r1, [sp, #12]
     e2c:	str	r0, [sp, #24]
     e2e:	str	r1, [sp, #28]
     e30:	ldr	r0, [sp, #24]
     e32:	ldr	r1, [sp, #28]
     e34:	str	r0, [sp, #16]
     e36:	str	r1, [sp, #20]
     e38:	ldr	r0, [sp, #16]
     e3a:	ldr	r1, [sp, #20]
     e3c:	str	r2, [sp, #4]
     e3e:	str	r3, [sp]
     e40:	add	sp, #32
     e42:	bx	lr

core::slice::from_raw_parts_mut::h26e4524cd65b9e5c:
     e44:	sub	sp, #32
     e46:	mov	r2, r1
     e48:	mov	r3, r0
     e4a:	str	r0, [sp, #8]
     e4c:	str	r1, [sp, #12]
     e4e:	ldr	r0, [sp, #8]
     e50:	ldr	r1, [sp, #12]
     e52:	str	r0, [sp, #24]
     e54:	str	r1, [sp, #28]
     e56:	ldr	r0, [sp, #24]
     e58:	ldr	r1, [sp, #28]
     e5a:	str	r0, [sp, #16]
     e5c:	str	r1, [sp, #20]
     e5e:	ldr	r0, [sp, #16]
     e60:	ldr	r1, [sp, #20]
     e62:	str	r2, [sp, #4]
     e64:	str	r3, [sp]
     e66:	add	sp, #32
     e68:	bx	lr

core::slice::<impl [T]>::as_mut_ptr::hff2534f16e8532f3:
     e6a:	sub	sp, #16
     e6c:	mov	r2, r1
     e6e:	mov	r3, r0
     e70:	str	r0, [sp, #8]
     e72:	str	r1, [sp, #12]
     e74:	ldr	r0, [sp, #8]
     e76:	str	r2, [sp, #4]
     e78:	str	r3, [sp]
     e7a:	add	sp, #16
     e7c:	bx	lr

core::slice::<impl [T]>::get_unchecked_mut::h10a61ea7ba8ef832:
     e7e:	push	{r7, lr}
     e80:	sub	sp, #32
     e82:	mov	r3, r2
     e84:	mov	r12, r1
     e86:	mov	lr, r0
     e88:	str	r0, [sp, #20]
     e8a:	str	r1, [sp, #24]
     e8c:	str	r2, [sp, #28]
     e8e:	ldr	r0, [sp, #28]
     e90:	ldr	r1, [sp, #20]
     e92:	ldr	r2, [sp, #24]
     e94:	str	r3, [sp, #16]
     e96:	str.w	r12, [sp, #12]
     e9a:	str.w	lr, [sp, #8]
     e9e:	bl	#148
     ea2:	str	r0, [sp, #4]
     ea4:	b	#-2 <core::slice::<impl [T]>::get_unchecked_mut::h10a61ea7ba8ef832+0x28>
     ea6:	ldr	r0, [sp, #4]
     ea8:	add	sp, #32
     eaa:	pop	{r7, pc}

core::slice::<impl [T]>::get_unchecked_mut::h3d51a69349a80b99:
     eac:	push	{r7, lr}
     eae:	sub	sp, #32
     eb0:	mov	r3, r2
     eb2:	mov	r12, r1
     eb4:	mov	lr, r0
     eb6:	str	r0, [sp, #20]
     eb8:	str	r1, [sp, #24]
     eba:	str	r2, [sp, #28]
     ebc:	ldr	r0, [sp, #28]
     ebe:	ldr	r1, [sp, #20]
     ec0:	ldr	r2, [sp, #24]
     ec2:	str	r3, [sp, #16]
     ec4:	str.w	r12, [sp, #12]
     ec8:	str.w	lr, [sp, #8]
     ecc:	bl	#158
     ed0:	str	r0, [sp, #4]
     ed2:	str	r1, [sp]
     ed4:	b	#-2 <core::slice::<impl [T]>::get_unchecked_mut::h3d51a69349a80b99+0x2a>
     ed6:	ldr	r0, [sp, #4]
     ed8:	ldr	r1, [sp]
     eda:	add	sp, #32
     edc:	pop	{r7, pc}

core::slice::<impl [T]>::len::h28ec7adc0cd65606:
     ede:	sub	sp, #24
     ee0:	mov	r2, r1
     ee2:	mov	r3, r0
     ee4:	str	r0, [sp, #8]
     ee6:	str	r1, [sp, #12]
     ee8:	ldr	r0, [sp, #8]
     eea:	ldr	r1, [sp, #12]
     eec:	str	r0, [sp, #16]
     eee:	str	r1, [sp, #20]
     ef0:	ldr	r0, [sp, #20]
     ef2:	str	r2, [sp, #4]
     ef4:	str	r3, [sp]
     ef6:	add	sp, #24
     ef8:	bx	lr

core::slice::<impl [T]>::as_ptr::hbd2e2c037c1edcdb:
     efa:	sub	sp, #16
     efc:	mov	r2, r1
     efe:	mov	r3, r0
     f00:	str	r0, [sp, #8]
     f02:	str	r1, [sp, #12]
     f04:	ldr	r0, [sp, #8]
     f06:	str	r2, [sp, #4]
     f08:	str	r3, [sp]
     f0a:	add	sp, #16
     f0c:	bx	lr

core::slice::<impl [T]>::is_empty::h307ca52df7a89111:
     f0e:	push	{r7, lr}
     f10:	sub	sp, #24
     f12:	mov	r2, r1
     f14:	mov	r3, r0
     f16:	str	r0, [sp, #16]
     f18:	str	r1, [sp, #20]
     f1a:	ldr	r0, [sp, #16]
     f1c:	ldr	r1, [sp, #20]
     f1e:	str	r2, [sp, #12]
     f20:	str	r3, [sp, #8]
     f22:	bl	#-72
     f26:	str	r0, [sp, #4]
     f28:	b	#-2 <core::slice::<impl [T]>::is_empty::h307ca52df7a89111+0x1c>
     f2a:	ldr	r0, [sp, #4]
     f2c:	clz	r1, r0
     f30:	lsrs	r0, r1, #5
     f32:	add	sp, #24
     f34:	pop	{r7, pc}

<usize as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h9694f738a58bd762:
     f36:	push	{r7, lr}
     f38:	sub	sp, #32
     f3a:	mov	r3, r2
     f3c:	mov	r12, r1
     f3e:	mov	lr, r0
     f40:	str	r0, [sp, #20]
     f42:	str	r1, [sp, #24]
     f44:	str	r2, [sp, #28]
     f46:	ldr	r0, [sp, #24]
     f48:	ldr	r1, [sp, #28]
     f4a:	str	r3, [sp, #16]
     f4c:	str.w	r12, [sp, #12]
     f50:	str.w	lr, [sp, #8]
     f54:	bl	#-238
     f58:	str	r0, [sp, #4]
     f5a:	b	#-2 <<usize as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h9694f738a58bd762+0x26>
     f5c:	ldr	r1, [sp, #20]
     f5e:	ldr	r0, [sp, #4]
     f60:	bl	#-428
     f64:	str	r0, [sp]
     f66:	b	#-2 <<usize as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h9694f738a58bd762+0x32>
     f68:	ldr	r0, [sp]
     f6a:	add	sp, #32
     f6c:	pop	{r7, pc}

<core::ops::range::RangeTo<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h43aaa17aba823999:
     f6e:	push	{r4, lr}
     f70:	sub	sp, #48
     f72:	mov	r3, r2
     f74:	mov	r12, r1
     f76:	mov	lr, r0
     f78:	str	r0, [sp, #28]
     f7a:	str	r1, [sp, #32]
     f7c:	str	r2, [sp, #36]
     f7e:	ldr	r0, [sp, #28]
     f80:	movs	r1, #0
     f82:	str	r1, [sp, #40]
     f84:	str	r0, [sp, #44]
     f86:	ldr	r2, [sp, #32]
     f88:	ldr	r0, [sp, #36]
     f8a:	ldr	r1, [sp, #40]
     f8c:	ldr	r4, [sp, #44]
     f8e:	str	r0, [sp, #24]
     f90:	mov	r0, r1
     f92:	mov	r1, r4
     f94:	ldr	r4, [sp, #24]
     f96:	str	r3, [sp, #20]
     f98:	mov	r3, r4
     f9a:	str.w	r12, [sp, #16]
     f9e:	str.w	lr, [sp, #12]
     fa2:	bl	#14
     fa6:	str	r0, [sp, #8]
     fa8:	str	r1, [sp, #4]
     faa:	b	#-2 <<core::ops::range::RangeTo<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h43aaa17aba823999+0x3e>
     fac:	ldr	r0, [sp, #8]
     fae:	ldr	r1, [sp, #4]
     fb0:	add	sp, #48
     fb2:	pop	{r4, pc}

<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h49cfb5f20c02abed:
     fb4:	push	{r4, r5, r7, lr}
     fb6:	sub	sp, #48
     fb8:	mov	r12, r3
     fba:	mov	lr, r2
     fbc:	mov	r4, r1
     fbe:	mov	r5, r0
     fc0:	str	r0, [sp, #32]
     fc2:	str	r1, [sp, #36]
     fc4:	str	r2, [sp, #40]
     fc6:	str	r3, [sp, #44]
     fc8:	ldr	r0, [sp, #40]
     fca:	ldr	r1, [sp, #44]
     fcc:	str.w	r12, [sp, #28]
     fd0:	str.w	lr, [sp, #24]
     fd4:	str	r4, [sp, #20]
     fd6:	str	r5, [sp, #16]
     fd8:	bl	#-370
     fdc:	str	r0, [sp, #12]
     fde:	b	#-2 <<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h49cfb5f20c02abed+0x2c>
     fe0:	ldr	r1, [sp, #32]
     fe2:	ldr	r0, [sp, #12]
     fe4:	bl	#-560
     fe8:	str	r0, [sp, #8]
     fea:	b	#-2 <<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h49cfb5f20c02abed+0x38>
     fec:	ldr	r0, [sp, #32]
     fee:	ldr	r1, [sp, #36]
     ff0:	subs	r1, r1, r0
     ff2:	ldr	r0, [sp, #8]
     ff4:	bl	#-436
     ff8:	str	r0, [sp, #4]
     ffa:	str	r1, [sp]
     ffc:	b	#-2 <<core::ops::range::Range<usize> as core::slice::SliceIndex<[T]>>::get_unchecked_mut::h49cfb5f20c02abed+0x4a>
     ffe:	ldr	r0, [sp, #4]
    1000:	ldr	r1, [sp]
    1002:	add	sp, #48
    1004:	pop	{r4, r5, r7, pc}

core::ptr::drop_in_place::h069b35e6cf6f7a9f:
    1006:	bx	lr

<T as core::any::Any>::get_type_id::hbf4dd71c5ff3c298:
    1008:	movw	r0, #28204
    100c:	movw	r1, #59039
    1010:	movt	r0, #40765
    1014:	movt	r1, #56366
    1018:	bx	lr

core::panicking::panic::hb72d0ef6755b034c:
    101a:	sub	sp, #48
    101c:	ldm.w	r0, {r1, r2, r12}
    1020:	ldrd	r3, lr, [r0, #12]
    1024:	ldr	r0, [r0, #20]
    1026:	strd	r1, r2, [sp, #24]
    102a:	add	r1, sp, #24
    102c:	movw	r2, #8668
    1030:	str	r1, [sp]
    1032:	movs	r1, #1
    1034:	movt	r2, #0
    1038:	str	r1, [sp, #4]
    103a:	movs	r1, #0
    103c:	strd	r1, r1, [sp, #8]
    1040:	strd	r2, r1, [sp, #16]
    1044:	add	r1, sp, #32
    1046:	strd	r12, r3, [sp, #32]
    104a:	strd	lr, r0, [sp, #40]
    104e:	mov	r0, sp
    1050:	bl	#72
    1054:	trap

core::panicking::panic_bounds_check::ha28a4057cd1f79d0:
    1056:	sub	sp, #48
    1058:	mov	r3, r0
    105a:	movw	r0, #7363
    105e:	strd	r1, r2, [sp]
    1062:	movt	r0, #0
    1066:	add	r1, sp, #4
    1068:	str	r0, [sp, #36]
    106a:	str	r1, [sp, #32]
    106c:	mov	r1, sp
    106e:	strd	r1, r0, [sp, #40]
    1072:	movw	r0, #8812
    1076:	movw	r1, #8704
    107a:	movt	r0, #0
    107e:	str	r0, [sp, #8]
    1080:	movs	r0, #2
    1082:	movt	r1, #0
    1086:	str	r0, [sp, #12]
    1088:	strd	r1, r0, [sp, #16]
    108c:	add	r1, sp, #32
    108e:	strd	r1, r0, [sp, #24]
    1092:	add	r0, sp, #8
    1094:	mov	r1, r3
    1096:	bl	#2
    109a:	trap

core::panicking::panic_fmt::hf0ad6b5f2c531ba1:
    109c:	sub	sp, #32
    109e:	ldm.w	r1, {r2, r3, r12, lr}
    10a2:	movw	r1, #8776
    10a6:	movt	r1, #0
    10aa:	str	r1, [sp, #8]
    10ac:	movw	r1, #8668
    10b0:	movt	r1, #0
    10b4:	str	r1, [sp, #4]
    10b6:	add	r1, sp, #12
    10b8:	stm.w	r1, {r0, r2, r3, r12, lr}
    10bc:	add	r0, sp, #4
    10be:	bl	#3474
    10c2:	trap

core::slice::slice_index_order_fail::h24de6fc206a8f59a:
    10c4:	sub	sp, #48
    10c6:	strd	r0, r1, [sp]
    10ca:	movw	r0, #7363
    10ce:	movt	r0, #0
    10d2:	mov	r1, sp
    10d4:	str	r0, [sp, #36]
    10d6:	str	r1, [sp, #32]
    10d8:	add	r1, sp, #4
    10da:	strd	r1, r0, [sp, #40]
    10de:	movw	r0, #8968
    10e2:	movw	r1, #8704
    10e6:	movt	r0, #0
    10ea:	str	r0, [sp, #8]
    10ec:	movs	r0, #2
    10ee:	movt	r1, #0
    10f2:	str	r0, [sp, #12]
    10f4:	strd	r1, r0, [sp, #16]
    10f8:	add	r1, sp, #32
    10fa:	strd	r1, r0, [sp, #24]
    10fe:	movw	r1, #8984
    1102:	add	r0, sp, #8
    1104:	movt	r1, #0
    1108:	bl	#-112
    110c:	trap

core::fmt::ArgumentV1::show_usize::h2f64ea251b5e41b5:
    110e:	b.w	#2992 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b>

core::fmt::write::ha3bded2ae0740edd:
    1112:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    1116:	sub	sp, #68
    1118:	ldrd	r5, r3, [r2, #16]
    111c:	movs	r7, #32
    111e:	str	r7, [sp, #12]
    1120:	movs	r7, #0
    1122:	movs	r6, #3
    1124:	add.w	r12, sp, #32
    1128:	str	r7, [sp, #8]
    112a:	strb.w	r6, [sp, #56]
    112e:	str	r7, [sp, #16]
    1130:	str	r7, [sp, #24]
    1132:	stm.w	r12, {r0, r1, r5}
    1136:	add.w	r0, r5, r3, lsl #3
    113a:	strd	r5, r3, [sp, #48]
    113e:	str	r0, [sp, #44]
    1140:	ldrd	r11, r0, [r2]
    1144:	ldr	r7, [r2, #8]
    1146:	add.w	r9, r11, r0, lsl #3
    114a:	str.w	r11, [sp, #60]
    114e:	cmp	r7, #0
    1150:	str.w	r9, [sp, #64]
    1154:	beq.w	#348 <core::fmt::write::ha3bded2ae0740edd+0x1a2>
    1158:	ldr	r1, [r2, #12]
    115a:	lsl.w	r10, r0, #3
    115e:	str.w	r9, [sp, #4]
    1162:	add.w	r6, r7, #28
    1166:	add.w	r9, sp, #8
    116a:	movs	r4, #0
    116c:	add.w	r0, r1, r1, lsl #3
    1170:	lsls	r5, r0, #2
    1172:	cmp	r5, #0
    1174:	beq.w	#374 <core::fmt::write::ha3bded2ae0740edd+0x1dc>
    1178:	cmp	r10, r4
    117a:	beq.w	#376 <core::fmt::write::ha3bded2ae0740edd+0x1e4>
    117e:	add.w	r8, r11, r4
    1182:	ldrd	r0, r3, [sp, #32]
    1186:	ldr.w	r1, [r11, r4]
    118a:	ldr.w	r2, [r8, #4]
    118e:	ldr	r3, [r3, #12]
    1190:	blx	r3
    1192:	cmp	r0, #0
    1194:	bne.w	#276 <core::fmt::write::ha3bded2ae0740edd+0x19a>
    1198:	ldr	r0, [r7, #8]
    119a:	str	r0, [sp, #12]
    119c:	ldrb.w	r0, [r7, #32]
    11a0:	strb.w	r0, [sp, #56]
    11a4:	ldr	r0, [r7, #12]
    11a6:	str	r0, [sp, #8]
    11a8:	ldr	r0, [r7, #24]
    11aa:	cmp	r0, #1
    11ac:	beq	#40 <core::fmt::write::ha3bded2ae0740edd+0xc6>
    11ae:	cmp	r0, #3
    11b0:	beq	#74 <core::fmt::write::ha3bded2ae0740edd+0xec>
    11b2:	cmp	r0, #2
    11b4:	bne	#74 <core::fmt::write::ha3bded2ae0740edd+0xf0>
    11b6:	ldrd	r0, r1, [sp, #40]
    11ba:	cmp	r0, r1
    11bc:	beq	#62 <core::fmt::write::ha3bded2ae0740edd+0xec>
    11be:	add.w	r1, r0, #8
    11c2:	str	r1, [sp, #40]
    11c4:	ldr	r1, [r0, #4]
    11c6:	movw	r2, #4367
    11ca:	movt	r2, #0
    11ce:	cmp	r1, r2
    11d0:	bne	#42 <core::fmt::write::ha3bded2ae0740edd+0xec>
    11d2:	ldr	r0, [r0]
    11d4:	ldr	r1, [r0]
    11d6:	b	#42 <core::fmt::write::ha3bded2ae0740edd+0xf2>
    11d8:	ldr	r2, [sp, #52]
    11da:	ldr	r1, [r6]
    11dc:	cmp	r1, r2
    11de:	bhs.w	#326 <core::fmt::write::ha3bded2ae0740edd+0x216>
    11e2:	ldr	r0, [sp, #48]
    11e4:	movw	r3, #4367
    11e8:	movt	r3, #0
    11ec:	add.w	r2, r0, r1, lsl #3
    11f0:	ldr	r2, [r2, #4]
    11f2:	cmp	r2, r3
    11f4:	bne	#6 <core::fmt::write::ha3bded2ae0740edd+0xec>
    11f6:	ldr.w	r0, [r0, r1, lsl #3]
    11fa:	ldr	r1, [r0]
    11fc:	b	#4 <core::fmt::write::ha3bded2ae0740edd+0xf2>
    11fe:	movs	r0, #0
    1200:	b	#2 <core::fmt::write::ha3bded2ae0740edd+0xf4>
    1202:	ldr	r1, [r6]
    1204:	movs	r0, #1
    1206:	strd	r0, r1, [sp, #16]
    120a:	ldr	r0, [r7, #16]
    120c:	cmp	r0, #1
    120e:	beq	#40 <core::fmt::write::ha3bded2ae0740edd+0x128>
    1210:	cmp	r0, #3
    1212:	beq	#74 <core::fmt::write::ha3bded2ae0740edd+0x14e>
    1214:	cmp	r0, #2
    1216:	bne	#74 <core::fmt::write::ha3bded2ae0740edd+0x152>
    1218:	ldrd	r0, r1, [sp, #40]
    121c:	cmp	r0, r1
    121e:	beq	#62 <core::fmt::write::ha3bded2ae0740edd+0x14e>
    1220:	add.w	r1, r0, #8
    1224:	str	r1, [sp, #40]
    1226:	ldr	r1, [r0, #4]
    1228:	movw	r2, #4367
    122c:	movt	r2, #0
    1230:	cmp	r1, r2
    1232:	bne	#42 <core::fmt::write::ha3bded2ae0740edd+0x14e>
    1234:	ldr	r0, [r0]
    1236:	ldr	r1, [r0]
    1238:	b	#44 <core::fmt::write::ha3bded2ae0740edd+0x156>
    123a:	ldr	r2, [sp, #52]
    123c:	ldr	r1, [r6, #-8]
    1240:	cmp	r1, r2
    1242:	bhs	#226 <core::fmt::write::ha3bded2ae0740edd+0x216>
    1244:	ldr	r0, [sp, #48]
    1246:	movw	r3, #4367
    124a:	movt	r3, #0
    124e:	add.w	r2, r0, r1, lsl #3
    1252:	ldr	r2, [r2, #4]
    1254:	cmp	r2, r3
    1256:	bne	#6 <core::fmt::write::ha3bded2ae0740edd+0x14e>
    1258:	ldr.w	r0, [r0, r1, lsl #3]
    125c:	ldr	r1, [r0]
    125e:	b	#6 <core::fmt::write::ha3bded2ae0740edd+0x156>
    1260:	movs	r0, #0
    1262:	b	#4 <core::fmt::write::ha3bded2ae0740edd+0x158>
    1264:	ldr	r1, [r6, #-8]
    1268:	movs	r0, #1
    126a:	strd	r0, r1, [sp, #24]
    126e:	ldr	r0, [r7]
    1270:	cmp	r0, #1
    1272:	bne	#16 <core::fmt::write::ha3bded2ae0740edd+0x174>
    1274:	ldr	r2, [sp, #52]
    1276:	ldr	r1, [r6, #-24]
    127a:	cmp	r1, r2
    127c:	bhs	#182 <core::fmt::write::ha3bded2ae0740edd+0x224>
    127e:	ldr	r0, [sp, #48]
    1280:	add.w	r0, r0, r1, lsl #3
    1284:	b	#12 <core::fmt::write::ha3bded2ae0740edd+0x182>
    1286:	ldrd	r0, r1, [sp, #40]
    128a:	cmp	r0, r1
    128c:	beq	#180 <core::fmt::write::ha3bded2ae0740edd+0x232>
    128e:	add.w	r1, r0, #8
    1292:	str	r1, [sp, #40]
    1294:	adds	r1, r0, #4
    1296:	ldr	r0, [r0]
    1298:	adds	r7, #36
    129a:	ldr	r2, [r1]
    129c:	mov	r1, r9
    129e:	blx	r2
    12a0:	subs	r5, #36
    12a2:	adds	r6, #36
    12a4:	adds	r4, #8
    12a6:	cmp	r0, #0
    12a8:	beq.w	#-314 <core::fmt::write::ha3bded2ae0740edd+0x60>
    12ac:	add.w	r0, r8, #8
    12b0:	str	r0, [sp, #60]
    12b2:	b	#98 <core::fmt::write::ha3bded2ae0740edd+0x206>
    12b4:	add.w	r8, sp, #8
    12b8:	lsls	r6, r3, #3
    12ba:	lsls	r7, r0, #3
    12bc:	cbz	r6, #60
    12be:	cbz	r7, #56
    12c0:	ldrd	r0, r3, [sp, #32]
    12c4:	ldrd	r1, r2, [r11]
    12c8:	ldr	r3, [r3, #12]
    12ca:	blx	r3
    12cc:	add.w	r11, r11, #8
    12d0:	cbnz	r0, #20
    12d2:	ldrd	r0, r2, [r5]
    12d6:	mov	r1, r8
    12d8:	add.w	r4, r5, #8
    12dc:	blx	r2
    12de:	subs	r6, #8
    12e0:	subs	r7, #8
    12e2:	cmp	r0, #0
    12e4:	mov	r5, r4
    12e6:	beq	#-46 <core::fmt::write::ha3bded2ae0740edd+0x1aa>
    12e8:	str.w	r11, [sp, #60]
    12ec:	b	#40 <core::fmt::write::ha3bded2ae0740edd+0x206>
    12ee:	ldr.w	r9, [sp, #4]
    12f2:	add	r11, r4
    12f4:	b	#4 <core::fmt::write::ha3bded2ae0740edd+0x1ea>
    12f6:	ldr.w	r9, [sp, #4]
    12fa:	mov	r11, r9
    12fc:	cmp	r11, r9
    12fe:	str.w	r11, [sp, #60]
    1302:	beq	#26 <core::fmt::write::ha3bded2ae0740edd+0x20e>
    1304:	ldrd	r0, r3, [sp, #32]
    1308:	add.w	r1, r11, #8
    130c:	str	r1, [sp, #60]
    130e:	ldrd	r1, r2, [r11]
    1312:	ldr	r3, [r3, #12]
    1314:	blx	r3
    1316:	cbz	r0, #6
    1318:	movs	r0, #1
    131a:	add	sp, #68
    131c:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    1320:	movs	r0, #0
    1322:	add	sp, #68
    1324:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    1328:	movw	r0, #9044
    132c:	movt	r0, #0
    1330:	bl	#-734
    1334:	trap
    1336:	movw	r0, #9028
    133a:	movt	r0, #0
    133e:	bl	#-748
    1342:	trap
    1344:	movw	r0, #8888
    1348:	movt	r0, #0
    134c:	bl	#-822
    1350:	trap

core::fmt::Formatter::pad_integral::h967031c2002e3775:
    1352:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    1356:	sub	sp, #36
    1358:	ldr.w	r10, [sp, #76]
    135c:	mov	r8, r0
    135e:	cmp	r1, #0
    1360:	mov.w	r0, #1114112
    1364:	strd	r2, r3, [sp, #4]
    1368:	str	r0, [sp, #12]
    136a:	beq	#12 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x28>
    136c:	ldr.w	lr, [r8]
    1370:	lsls.w	r1, lr, #31
    1374:	bne	#12 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x32>
    1376:	mov	r9, r10
    1378:	b	#16 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x3a>
    137a:	movs	r0, #45
    137c:	str	r0, [sp, #12]
    137e:	ldr.w	lr, [r8]
    1382:	b	#2 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x36>
    1384:	movs	r1, #43
    1386:	str	r1, [sp, #12]
    1388:	add.w	r9, r10, #1
    138c:	movs	r1, #0
    138e:	strb.w	r1, [sp, #19]
    1392:	lsls.w	r1, lr, #29
    1396:	bpl	#156 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xe4>
    1398:	movs	r1, #1
    139a:	cmp	r3, #0
    139c:	strb.w	r1, [sp, #19]
    13a0:	beq	#18 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x64>
    13a2:	subs	r1, r3, #1
    13a4:	and	r12, r3, #3
    13a8:	cmp	r1, #3
    13aa:	bhs	#12 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x68>
    13ac:	movs	r1, #0
    13ae:	cmp.w	r12, #0
    13b2:	bne	#72 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xac>
    13b4:	b	#118 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xdc>
    13b6:	movs	r1, #0
    13b8:	b	#114 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xdc>
    13ba:	sub.w	r5, r12, r3
    13be:	movs	r1, #0
    13c0:	ldrb	r7, [r2]
    13c2:	ldrb	r6, [r2, #1]
    13c4:	ldrb	r0, [r2, #2]
    13c6:	and	r7, r7, #192
    13ca:	ldrb	r4, [r2, #3]
    13cc:	cmp	r7, #128
    13ce:	and	r6, r6, #192
    13d2:	it	eq
    13d4:	addeq	r1, #1
    13d6:	cmp	r6, #128
    13d8:	and	r0, r0, #192
    13dc:	it	eq
    13de:	addeq	r1, #1
    13e0:	cmp	r0, #128
    13e2:	and	r0, r4, #192
    13e6:	it	eq
    13e8:	addeq	r1, #1
    13ea:	cmp	r0, #128
    13ec:	add.w	r2, r2, #4
    13f0:	it	eq
    13f2:	addeq	r1, #1
    13f4:	adds	r5, #4
    13f6:	bne	#-58 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x6e>
    13f8:	cmp.w	r12, #0
    13fc:	beq	#46 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xdc>
    13fe:	ldrb	r0, [r2]
    1400:	and	r0, r0, #192
    1404:	cmp	r0, #128
    1406:	it	eq
    1408:	addeq	r1, #1
    140a:	cmp.w	r12, #1
    140e:	beq	#28 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xdc>
    1410:	ldrb	r0, [r2, #1]
    1412:	and	r0, r0, #192
    1416:	cmp	r0, #128
    1418:	it	eq
    141a:	addeq	r1, #1
    141c:	cmp.w	r12, #2
    1420:	beq	#10 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0xdc>
    1422:	ldrb	r0, [r2, #2]
    1424:	and	r0, r0, #192
    1428:	cmp	r0, #128
    142a:	it	eq
    142c:	addeq	r1, #1
    142e:	add.w	r0, r9, r3
    1432:	sub.w	r9, r0, r1
    1436:	add.w	r0, sp, #19
    143a:	str	r0, [sp, #24]
    143c:	add	r0, sp, #12
    143e:	str	r0, [sp, #20]
    1440:	add	r0, sp, #4
    1442:	str	r0, [sp, #28]
    1444:	ldr.w	r0, [r8, #8]
    1448:	ldr	r4, [sp, #72]
    144a:	cmp	r0, #1
    144c:	bne	#46 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x12c>
    144e:	ldr.w	r5, [r8, #12]
    1452:	cmp	r5, r9
    1454:	bls	#38 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x12c>
    1456:	lsls.w	r0, lr, #28
    145a:	bmi	#72 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x154>
    145c:	ldrb.w	r0, [r8, #48]
    1460:	sub.w	r11, r5, r9
    1464:	cmp	r0, #3
    1466:	it	eq
    1468:	moveq	r0, #1
    146a:	ands	r1, r0, #3
    146e:	mov.w	r0, #0
    1472:	beq	#122 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x19e>
    1474:	cmp	r1, #2
    1476:	beq	#102 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x18e>
    1478:	mov.w	r9, #0
    147c:	b	#118 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x1a4>
    147e:	add	r0, sp, #20
    1480:	mov	r1, r8
    1482:	bl	#576
    1486:	cbz	r0, #6
    1488:	movs	r0, #1
    148a:	add	sp, #36
    148c:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    1490:	ldr.w	r1, [r8, #28]
    1494:	mov	r2, r10
    1496:	ldr.w	r0, [r8, #24]
    149a:	ldr	r3, [r1, #12]
    149c:	mov	r1, r4
    149e:	blx	r3
    14a0:	add	sp, #36
    14a2:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    14a6:	movs	r0, #1
    14a8:	mov	r1, r8
    14aa:	strb.w	r0, [r8, #48]
    14ae:	movs	r0, #48
    14b0:	str.w	r0, [r8, #4]
    14b4:	add	r0, sp, #20
    14b6:	bl	#524
    14ba:	cmp	r0, #0
    14bc:	bne	#-56 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    14be:	ldrb.w	r0, [r8, #48]
    14c2:	sub.w	r11, r5, r9
    14c6:	cmp	r0, #3
    14c8:	it	eq
    14ca:	moveq	r0, #1
    14cc:	ands	r1, r0, #3
    14d0:	mov.w	r0, #0
    14d4:	beq	#138 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x210>
    14d6:	cmp	r1, #2
    14d8:	beq	#118 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x200>
    14da:	mov.w	r9, #0
    14de:	b	#134 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x216>
    14e0:	add.w	r2, r11, #1
    14e4:	lsr.w	r1, r11, #1
    14e8:	mov	r11, r1
    14ea:	lsr.w	r9, r2, #1
    14ee:	b	#4 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x1a4>
    14f0:	mov	r9, r11
    14f2:	mov.w	r11, #0
    14f6:	str	r0, [sp, #32]
    14f8:	ldr.w	r0, [r8, #4]
    14fc:	cmp	r0, #127
    14fe:	bhi	#6 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x1b6>
    1500:	strb.w	r0, [sp, #32]
    1504:	movs	r7, #1
    1506:	b	#184 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x270>
    1508:	movs	r1, #0
    150a:	cmp.w	r1, r0, lsr #11
    150e:	bne	#22 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x1d6>
    1510:	movs	r7, #2
    1512:	lsrs	r1, r0, #6
    1514:	bfi	r0, r7, #6, #26
    1518:	strb.w	r0, [sp, #33]
    151c:	movs	r0, #6
    151e:	bfi	r1, r0, #5, #27
    1522:	strb.w	r1, [sp, #32]
    1526:	b	#152 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x270>
    1528:	cmp.w	r1, r0, lsr #16
    152c:	bne	#106 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x248>
    152e:	lsrs	r1, r0, #6
    1530:	movs	r2, #2
    1532:	bfi	r1, r2, #6, #26
    1536:	strb.w	r1, [sp, #33]
    153a:	lsrs	r1, r0, #12
    153c:	movs	r3, #14
    153e:	bfi	r1, r3, #4, #28
    1542:	strb.w	r1, [sp, #32]
    1546:	bfi	r0, r2, #6, #26
    154a:	strb.w	r0, [sp, #34]
    154e:	movs	r7, #3
    1550:	b	#110 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x270>
    1552:	add.w	r2, r11, #1
    1556:	lsr.w	r1, r11, #1
    155a:	mov	r11, r1
    155c:	lsr.w	r9, r2, #1
    1560:	b	#4 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x216>
    1562:	mov	r9, r11
    1564:	mov.w	r11, #0
    1568:	str	r0, [sp, #32]
    156a:	ldr.w	r0, [r8, #4]
    156e:	cmp	r0, #127
    1570:	bhi	#6 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x228>
    1572:	strb.w	r0, [sp, #32]
    1576:	movs	r7, #1
    1578:	b	#244 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x31e>
    157a:	movs	r1, #0
    157c:	cmp.w	r1, r0, lsr #11
    1580:	bne	#154 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x2cc>
    1582:	movs	r7, #2
    1584:	lsrs	r1, r0, #6
    1586:	bfi	r0, r7, #6, #26
    158a:	strb.w	r0, [sp, #33]
    158e:	movs	r0, #6
    1590:	bfi	r1, r0, #5, #27
    1594:	strb.w	r1, [sp, #32]
    1598:	b	#212 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x31e>
    159a:	lsrs	r1, r0, #12
    159c:	movs	r2, #2
    159e:	bfi	r1, r2, #6, #26
    15a2:	strb.w	r1, [sp, #33]
    15a6:	lsrs	r1, r0, #18
    15a8:	movs	r7, #4
    15aa:	adds	r1, #240
    15ac:	strb.w	r1, [sp, #32]
    15b0:	lsrs	r1, r0, #6
    15b2:	bfi	r0, r2, #6, #26
    15b6:	bfi	r1, r2, #6, #26
    15ba:	strb.w	r1, [sp, #34]
    15be:	strb.w	r0, [sp, #35]
    15c2:	add	r6, sp, #32
    15c4:	mov.w	r5, #4294967295
    15c8:	adds	r5, #1
    15ca:	cmp	r5, r11
    15cc:	bhs	#16 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x28e>
    15ce:	ldrd	r0, r1, [r8, #24]
    15d2:	mov	r2, r7
    15d4:	ldr	r3, [r1, #12]
    15d6:	mov	r1, r6
    15d8:	blx	r3
    15da:	cmp	r0, #0
    15dc:	beq	#-24 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x276>
    15de:	b	#-346 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    15e0:	add	r0, sp, #20
    15e2:	mov	r1, r8
    15e4:	bl	#222
    15e8:	cmp	r0, #0
    15ea:	bne.w	#-358 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    15ee:	ldrd	r0, r1, [r8, #24]
    15f2:	mov	r2, r10
    15f4:	ldr	r3, [r1, #12]
    15f6:	mov	r1, r4
    15f8:	blx	r3
    15fa:	cmp	r0, #0
    15fc:	bne.w	#-376 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    1600:	add	r5, sp, #32
    1602:	mov.w	r6, #4294967295
    1606:	adds	r6, #1
    1608:	cmp	r6, r9
    160a:	bhs	#176 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x36c>
    160c:	ldrd	r0, r1, [r8, #24]
    1610:	mov	r2, r7
    1612:	ldr	r3, [r1, #12]
    1614:	mov	r1, r5
    1616:	blx	r3
    1618:	cmp	r0, #0
    161a:	beq	#-24 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x2b4>
    161c:	b	#-408 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    161e:	cmp.w	r1, r0, lsr #16
    1622:	bne	#34 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x2f6>
    1624:	lsrs	r1, r0, #6
    1626:	movs	r2, #2
    1628:	bfi	r1, r2, #6, #26
    162c:	strb.w	r1, [sp, #33]
    1630:	lsrs	r1, r0, #12
    1632:	movs	r3, #14
    1634:	bfi	r1, r3, #4, #28
    1638:	strb.w	r1, [sp, #32]
    163c:	bfi	r0, r2, #6, #26
    1640:	strb.w	r0, [sp, #34]
    1644:	movs	r7, #3
    1646:	b	#38 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x31e>
    1648:	lsrs	r1, r0, #12
    164a:	movs	r2, #2
    164c:	bfi	r1, r2, #6, #26
    1650:	strb.w	r1, [sp, #33]
    1654:	lsrs	r1, r0, #18
    1656:	movs	r7, #4
    1658:	adds	r1, #240
    165a:	strb.w	r1, [sp, #32]
    165e:	lsrs	r1, r0, #6
    1660:	bfi	r0, r2, #6, #26
    1664:	bfi	r1, r2, #6, #26
    1668:	strb.w	r1, [sp, #34]
    166c:	strb.w	r0, [sp, #35]
    1670:	add	r6, sp, #32
    1672:	mov.w	r5, #4294967295
    1676:	adds	r5, #1
    1678:	cmp	r5, r11
    167a:	bhs	#16 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x33c>
    167c:	ldrd	r0, r1, [r8, #24]
    1680:	mov	r2, r7
    1682:	ldr	r3, [r1, #12]
    1684:	mov	r1, r6
    1686:	blx	r3
    1688:	cmp	r0, #0
    168a:	beq	#-24 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x324>
    168c:	b	#-520 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    168e:	ldrd	r0, r1, [r8, #24]
    1692:	mov	r2, r10
    1694:	ldr	r3, [r1, #12]
    1696:	mov	r1, r4
    1698:	blx	r3
    169a:	cmp	r0, #0
    169c:	bne.w	#-536 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    16a0:	add	r5, sp, #32
    16a2:	mov.w	r6, #4294967295
    16a6:	adds	r6, #1
    16a8:	cmp	r6, r9
    16aa:	bhs	#16 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x36c>
    16ac:	ldrd	r0, r1, [r8, #24]
    16b0:	mov	r2, r7
    16b2:	ldr	r3, [r1, #12]
    16b4:	mov	r1, r5
    16b6:	blx	r3
    16b8:	cmp	r0, #0
    16ba:	beq	#-24 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x354>
    16bc:	b	#-568 <core::fmt::Formatter::pad_integral::h967031c2002e3775+0x136>
    16be:	movs	r0, #0
    16c0:	add	sp, #36
    16c2:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191:
    16c6:	push	{r4, r5, r7, lr}
    16c8:	sub	sp, #8
    16ca:	mov	r5, r0
    16cc:	ldr	r0, [r0]
    16ce:	mov	r4, r1
    16d0:	ldr	r3, [r0]
    16d2:	cmp.w	r3, #1114112
    16d6:	beq	#150 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0xaa>
    16d8:	ldrd	r0, r12, [r4, #24]
    16dc:	movs	r2, #0
    16de:	cmp	r3, #127
    16e0:	str	r2, [sp, #4]
    16e2:	bhi	#6 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0x26>
    16e4:	strb.w	r3, [sp, #4]
    16e8:	movs	r2, #1
    16ea:	b	#114 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0x9a>
    16ec:	cmp.w	r2, r3, lsr #11
    16f0:	bne	#22 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0x44>
    16f2:	movs	r2, #2
    16f4:	lsrs	r1, r3, #6
    16f6:	bfi	r3, r2, #6, #26
    16fa:	strb.w	r3, [sp, #5]
    16fe:	movs	r3, #6
    1700:	bfi	r1, r3, #5, #27
    1704:	strb.w	r1, [sp, #4]
    1708:	b	#84 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0x9a>
    170a:	movs	r1, #0
    170c:	cmp.w	r1, r3, lsr #16
    1710:	bne	#36 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0x72>
    1712:	lsrs	r1, r3, #6
    1714:	mov.w	lr, #2
    1718:	bfi	r1, lr, #6, #26
    171c:	strb.w	r1, [sp, #5]
    1720:	lsrs	r1, r3, #12
    1722:	movs	r2, #14
    1724:	bfi	r1, r2, #4, #28
    1728:	strb.w	r1, [sp, #4]
    172c:	bfi	r3, lr, #6, #26
    1730:	strb.w	r3, [sp, #6]
    1734:	movs	r2, #3
    1736:	b	#38 <core::fmt::Formatter::pad_integral::{{closure}}::h79961a1a0706a191+0x9a>
    1738:	lsrs	r1, r3, #12
    173a:	movs	r2, #2
    173c:	bfi	r1, r2, #6, #26
    1740:	strb.w	r1, [sp, #5]
    1744:	lsrs	r1, r3, #18
    1746:	adds	r1, #240
    1748:	strb.w	r1, [sp, #4]
    174c:	lsrs	r1, r3, #6
    174e:	bfi	r3, r2, #6, #26
    1752:	bfi	r1, r2, #6, #26
    1756:	movs	r2, #4
    1758:	strb.w	r1, [sp, #6]
    175c:	strb.w	r3, [sp, #7]
    1760:	ldr.w	r3, [r12, #12]
    1764:	add	r1, sp, #4
    1766:	blx	r3
    1768:	cbz	r0, #4
    176a:	movs	r0, #1
    176c:	add	sp, #8
    176e:	pop	{r4, r5, r7, pc}
    1770:	ldr	r0, [r5, #4]
    1772:	ldrb	r0, [r0]
    1774:	cbz	r0, #16
    1776:	ldr	r2, [r5, #8]
    1778:	ldrd	r0, r3, [r4, #24]
    177c:	ldrd	r1, r2, [r2]
    1780:	ldr	r3, [r3, #12]
    1782:	blx	r3
    1784:	add	sp, #8
    1786:	pop	{r4, r5, r7, pc}
    1788:	movs	r0, #0
    178a:	add	sp, #8
    178c:	pop	{r4, r5, r7, pc}

core::fmt::Formatter::pad::hc6e04bde0177048b:
    178e:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    1792:	sub	sp, #4
    1794:	ldr.w	lr, [r0, #8]
    1798:	mov	r11, r0
    179a:	ldr	r0, [r0, #16]
    179c:	mov	r10, r2
    179e:	mov	r8, r1
    17a0:	cmp.w	lr, #1
    17a4:	bne	#30 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x38>
    17a6:	cbnz	r0, #34
    17a8:	cmp.w	r10, #0
    17ac:	beq.w	#344 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x17a>
    17b0:	sub.w	r1, r10, #1
    17b4:	and	r0, r10, #3
    17b8:	cmp	r1, #3
    17ba:	bhs	#194 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xf2>
    17bc:	movs	r1, #0
    17be:	mov	r2, r8
    17c0:	cmp	r0, #0
    17c2:	bne	#252 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x134>
    17c4:	b	#322 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x17c>
    17c6:	cmp	r0, #0
    17c8:	beq.w	#360 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x1a6>
    17cc:	cmp.w	r10, #0
    17d0:	beq	#158 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xe4>
    17d2:	ldr.w	r0, [r11, #20]
    17d6:	add.w	r1, r8, r10
    17da:	movs	r2, #0
    17dc:	mov	r5, r8
    17de:	mvns	r3, r0
    17e0:	mov	r0, r8
    17e2:	mov	r6, r5
    17e4:	ldrsb	r4, [r6], #1
    17e8:	cmp	r4, #0
    17ea:	uxtb	r7, r4
    17ec:	bge	#80 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xb2>
    17ee:	cmp	r6, r1
    17f0:	beq	#10 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x70>
    17f2:	ldrb	r4, [r5, #1]
    17f4:	adds	r6, r5, #2
    17f6:	and	r4, r4, #63
    17fa:	mov	r5, r6
    17fc:	b	#2 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x74>
    17fe:	movs	r4, #0
    1800:	mov	r5, r1
    1802:	and	r9, r7, #31
    1806:	cmp	r7, #224
    1808:	blo	#14 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x8c>
    180a:	cmp	r5, r1
    180c:	beq	#16 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x92>
    180e:	ldrb	r6, [r5], #1
    1812:	and	r12, r6, #63
    1816:	mov	r6, r5
    1818:	b	#10 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x98>
    181a:	orr.w	r7, r4, r9, lsl #6
    181e:	b	#30 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xb2>
    1820:	mov.w	r12, #0
    1824:	mov	r5, r1
    1826:	orr.w	r4, r12, r4, lsl #6
    182a:	cmp	r7, #240
    182c:	blo	#12 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xae>
    182e:	cmp	r5, r1
    1830:	beq	#20 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xba>
    1832:	ldrb	r7, [r5], #1
    1836:	and	r7, r7, #63
    183a:	b	#14 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xbe>
    183c:	orr.w	r7, r4, r9, lsl #12
    1840:	mov	r5, r6
    1842:	adds	r3, #1
    1844:	bne	#28 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xd6>
    1846:	b	#166 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x162>
    1848:	movs	r7, #0
    184a:	mov	r5, r6
    184c:	mov.w	r6, #1835008
    1850:	and.w	r6, r6, r9, lsl #18
    1854:	orr.w	r6, r6, r4, lsl #6
    1858:	add	r7, r6
    185a:	cmp.w	r7, #1114112
    185e:	beq	#148 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x168>
    1860:	adds	r3, #1
    1862:	beq	#138 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x162>
    1864:	subs	r0, r2, r0
    1866:	cmp	r1, r5
    1868:	add.w	r2, r0, r5
    186c:	mov	r0, r5
    186e:	bne	#-144 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x54>
    1870:	b	#130 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x168>
    1872:	movs	r2, #0
    1874:	cmp.w	lr, #0
    1878:	bne	#130 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x170>
    187a:	ldrd	r0, r1, [r11, #24]
    187e:	b	#188 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x1b0>
    1880:	sub.w	r3, r0, r10
    1884:	movs	r1, #0
    1886:	mov	r2, r8
    1888:	ldrb	r7, [r2]
    188a:	ldrb	r6, [r2, #1]
    188c:	and	r7, r7, #192
    1890:	ldrb	r5, [r2, #2]
    1892:	ldrb	r4, [r2, #3]
    1894:	cmp	r7, #128
    1896:	and	r7, r6, #192
    189a:	it	eq
    189c:	addeq	r1, #1
    189e:	cmp	r7, #128
    18a0:	and	r7, r5, #192
    18a4:	it	eq
    18a6:	addeq	r1, #1
    18a8:	cmp	r7, #128
    18aa:	and	r7, r4, #192
    18ae:	it	eq
    18b0:	addeq	r1, #1
    18b2:	cmp	r7, #128
    18b4:	add.w	r2, r2, #4
    18b8:	it	eq
    18ba:	addeq	r1, #1
    18bc:	adds	r3, #4
    18be:	bne	#-58 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xfa>
    18c0:	cbz	r0, #70
    18c2:	ldrb	r3, [r2]
    18c4:	and	r3, r3, #192
    18c8:	cmp	r3, #128
    18ca:	it	eq
    18cc:	addeq	r1, #1
    18ce:	cmp	r0, #1
    18d0:	beq	#54 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x17c>
    18d2:	ldrb	r3, [r2, #1]
    18d4:	and	r3, r3, #192
    18d8:	cmp	r3, #128
    18da:	it	eq
    18dc:	addeq	r1, #1
    18de:	cmp	r0, #2
    18e0:	beq	#38 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x17c>
    18e2:	ldrb	r0, [r2, #2]
    18e4:	and	r0, r0, #192
    18e8:	cmp	r0, #128
    18ea:	it	eq
    18ec:	addeq	r1, #1
    18ee:	b	#24 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x17c>
    18f0:	cmp.w	r7, #1114112
    18f4:	bne	#240 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x25a>
    18f6:	mov	r2, r10
    18f8:	cmp.w	lr, #0
    18fc:	beq	#-134 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xec>
    18fe:	mov	r10, r2
    1900:	cmp.w	r10, #0
    1904:	bne.w	#-344 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x22>
    1908:	movs	r1, #0
    190a:	ldr.w	r0, [r11, #12]
    190e:	sub.w	r1, r10, r1
    1912:	cmp	r1, r0
    1914:	bhs	#28 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x1a6>
    1916:	cmp.w	r10, #0
    191a:	beq	#44 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x1bc>
    191c:	sub.w	r1, r10, #1
    1920:	and	r12, r10, #3
    1924:	cmp	r1, #3
    1926:	bhs	#36 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x1c0>
    1928:	movs	r1, #0
    192a:	mov	r3, r8
    192c:	cmp.w	r12, #0
    1930:	bne	#96 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x206>
    1932:	b	#142 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x236>
    1934:	ldr.w	r1, [r11, #28]
    1938:	mov	r2, r10
    193a:	ldr.w	r0, [r11, #24]
    193e:	ldr	r3, [r1, #12]
    1940:	mov	r1, r8
    1942:	add	sp, #4
    1944:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    1948:	bx	r3
    194a:	movs	r1, #0
    194c:	b	#116 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x236>
    194e:	sub.w	r7, r12, r10
    1952:	movs	r1, #0
    1954:	mov	r3, r8
    1956:	ldrb	r6, [r3]
    1958:	ldrb	r5, [r3, #1]
    195a:	and	r6, r6, #192
    195e:	ldrb	r4, [r3, #2]
    1960:	ldrb	r2, [r3, #3]
    1962:	cmp	r6, #128
    1964:	and	r6, r5, #192
    1968:	it	eq
    196a:	addeq	r1, #1
    196c:	cmp	r6, #128
    196e:	and	r6, r4, #192
    1972:	it	eq
    1974:	addeq	r1, #1
    1976:	cmp	r6, #128
    1978:	and	r2, r2, #192
    197c:	it	eq
    197e:	addeq	r1, #1
    1980:	cmp	r2, #128
    1982:	add.w	r3, r3, #4
    1986:	it	eq
    1988:	addeq	r1, #1
    198a:	adds	r7, #4
    198c:	bne	#-58 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x1c8>
    198e:	cmp.w	r12, #0
    1992:	beq	#46 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x236>
    1994:	ldrb	r2, [r3]
    1996:	and	r2, r2, #192
    199a:	cmp	r2, #128
    199c:	it	eq
    199e:	addeq	r1, #1
    19a0:	cmp.w	r12, #1
    19a4:	beq	#28 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x236>
    19a6:	ldrb	r2, [r3, #1]
    19a8:	and	r2, r2, #192
    19ac:	cmp	r2, #128
    19ae:	it	eq
    19b0:	addeq	r1, #1
    19b2:	cmp.w	r12, #2
    19b6:	beq	#10 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x236>
    19b8:	ldrb	r2, [r3, #2]
    19ba:	and	r2, r2, #192
    19be:	cmp	r2, #128
    19c0:	it	eq
    19c2:	addeq	r1, #1
    19c4:	ldrb.w	r2, [r11, #48]
    19c8:	sub.w	r1, r1, r10
    19cc:	adds	r6, r1, r0
    19ce:	subs	r0, r2, #3
    19d0:	it	ne
    19d2:	movne	r0, r2
    19d4:	ands	r1, r0, #3
    19d8:	mov.w	r0, #0
    19dc:	beq	#20 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x266>
    19de:	cmp	r1, #2
    19e0:	beq	#22 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x26c>
    19e2:	mov.w	r9, #0
    19e6:	b	#26 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x276>
    19e8:	cmp	r2, #0
    19ea:	it	ne
    19ec:	cmpne	r2, r10
    19ee:	bne	#238 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x352>
    19f0:	mov	r0, r8
    19f2:	b	#254 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x366>
    19f4:	mov	r9, r6
    19f6:	movs	r6, #0
    19f8:	b	#8 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x276>
    19fa:	adds	r2, r6, #1
    19fc:	lsrs	r1, r6, #1
    19fe:	mov	r6, r1
    1a00:	lsr.w	r9, r2, #1
    1a04:	str	r0, [sp]
    1a06:	ldr.w	r0, [r11, #4]
    1a0a:	cmp	r0, #127
    1a0c:	bhi	#6 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x288>
    1a0e:	strb.w	r0, [sp]
    1a12:	movs	r7, #1
    1a14:	b	#112 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x2fa>
    1a16:	movs	r1, #0
    1a18:	cmp.w	r1, r0, lsr #11
    1a1c:	bne	#22 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x2a8>
    1a1e:	movs	r7, #2
    1a20:	lsrs	r1, r0, #6
    1a22:	bfi	r0, r7, #6, #26
    1a26:	strb.w	r0, [sp, #1]
    1a2a:	movs	r0, #6
    1a2c:	bfi	r1, r0, #5, #27
    1a30:	strb.w	r1, [sp]
    1a34:	b	#80 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x2fa>
    1a36:	cmp.w	r1, r0, lsr #16
    1a3a:	bne	#34 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x2d2>
    1a3c:	lsrs	r1, r0, #6
    1a3e:	movs	r2, #2
    1a40:	bfi	r1, r2, #6, #26
    1a44:	strb.w	r1, [sp, #1]
    1a48:	lsrs	r1, r0, #12
    1a4a:	movs	r3, #14
    1a4c:	bfi	r1, r3, #4, #28
    1a50:	strb.w	r1, [sp]
    1a54:	bfi	r0, r2, #6, #26
    1a58:	strb.w	r0, [sp, #2]
    1a5c:	movs	r7, #3
    1a5e:	b	#38 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x2fa>
    1a60:	lsrs	r1, r0, #12
    1a62:	movs	r2, #2
    1a64:	bfi	r1, r2, #6, #26
    1a68:	strb.w	r1, [sp, #1]
    1a6c:	lsrs	r1, r0, #18
    1a6e:	movs	r7, #4
    1a70:	adds	r1, #240
    1a72:	strb.w	r1, [sp]
    1a76:	lsrs	r1, r0, #6
    1a78:	bfi	r0, r2, #6, #26
    1a7c:	bfi	r1, r2, #6, #26
    1a80:	strb.w	r1, [sp, #2]
    1a84:	strb.w	r0, [sp, #3]
    1a88:	mov.w	r4, #4294967295
    1a8c:	mov	r5, sp
    1a8e:	adds	r4, #1
    1a90:	cmp	r4, r6
    1a92:	bhs	#16 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x318>
    1a94:	ldrd	r0, r1, [r11, #24]
    1a98:	mov	r2, r7
    1a9a:	ldr	r3, [r1, #12]
    1a9c:	mov	r1, r5
    1a9e:	blx	r3
    1aa0:	cmp	r0, #0
    1aa2:	beq	#-24 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x300>
    1aa4:	b	#40 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x342>
    1aa6:	ldrd	r0, r1, [r11, #24]
    1aaa:	mov	r2, r10
    1aac:	ldr	r3, [r1, #12]
    1aae:	mov	r1, r8
    1ab0:	blx	r3
    1ab2:	cbnz	r0, #26
    1ab4:	mov.w	r4, #4294967295
    1ab8:	mov	r5, sp
    1aba:	adds	r4, #1
    1abc:	cmp	r4, r9
    1abe:	bhs	#22 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x34a>
    1ac0:	ldrd	r0, r1, [r11, #24]
    1ac4:	mov	r2, r7
    1ac6:	ldr	r3, [r1, #12]
    1ac8:	mov	r1, r5
    1aca:	blx	r3
    1acc:	cmp	r0, #0
    1ace:	beq	#-24 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x32c>
    1ad0:	movs	r0, #1
    1ad2:	add	sp, #4
    1ad4:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    1ad8:	movs	r0, #0
    1ada:	add	sp, #4
    1adc:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    1ae0:	cmp	r2, r10
    1ae2:	bhs	#10 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x362>
    1ae4:	ldrsb.w	r0, [r8, r2]
    1ae8:	cmn.w	r0, #64
    1aec:	bge.w	#-256 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x262>
    1af0:	movs	r2, #0
    1af2:	movs	r0, #0
    1af4:	cmp	r0, #0
    1af6:	ite	eq
    1af8:	moveq	r2, r10
    1afa:	movne	r8, r0
    1afc:	cmp.w	lr, #0
    1b00:	bne.w	#-518 <core::fmt::Formatter::pad::hc6e04bde0177048b+0x170>
    1b04:	b	#-654 <core::fmt::Formatter::pad::hc6e04bde0177048b+0xec>

<str as core::fmt::Display>::fmt::hee0e6214a89412e1:
    1b06:	mov	r3, r1
    1b08:	mov	r1, r0
    1b0a:	mov	r0, r2
    1b0c:	mov	r2, r3
    1b0e:	b.w	#-900 <core::fmt::Formatter::pad::hc6e04bde0177048b>

core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80:
    1b12:	push	{r4, r5, r7, lr}
    1b14:	sub	sp, #136
    1b16:	ldr	r0, [r0]
    1b18:	add.w	lr, sp, #8
    1b1c:	mov	r12, r1
    1b1e:	movs	r3, #129
    1b20:	movs	r1, #0
    1b22:	and	r2, r0, #15
    1b26:	add.w	r4, r2, #87
    1b2a:	cmp	r2, #10
    1b2c:	it	lo
    1b2e:	addlo.w	r4, r2, #48
    1b32:	add.w	r2, lr, r3
    1b36:	cmp.w	r1, r0, lsr #4
    1b3a:	strb	r4, [r2, #-2]
    1b3e:	beq	#98 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0x92>
    1b40:	lsrs	r4, r0, #4
    1b42:	and	r4, r4, #15
    1b46:	add.w	r5, r4, #87
    1b4a:	cmp	r4, #10
    1b4c:	it	lo
    1b4e:	addlo.w	r5, r4, #48
    1b52:	cmp.w	r1, r0, lsr #8
    1b56:	strb	r5, [r2, #-3]
    1b5a:	beq	#82 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0x9e>
    1b5c:	lsrs	r4, r0, #8
    1b5e:	and	r4, r4, #15
    1b62:	add.w	r5, r4, #87
    1b66:	cmp	r4, #10
    1b68:	it	lo
    1b6a:	addlo.w	r5, r4, #48
    1b6e:	cmp.w	r1, r0, lsr #12
    1b72:	strb	r5, [r2, #-4]
    1b76:	beq	#64 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xa8>
    1b78:	lsrs	r4, r0, #12
    1b7a:	subs	r3, #4
    1b7c:	and	r4, r4, #15
    1b80:	add.w	r5, r4, #87
    1b84:	cmp	r4, #10
    1b86:	it	lo
    1b88:	addlo.w	r5, r4, #48
    1b8c:	cmp.w	r1, r0, lsr #16
    1b90:	strb	r5, [r2, #-5]
    1b94:	lsr.w	r2, r0, #16
    1b98:	mov	r0, r2
    1b9a:	bne	#-124 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0x10>
    1b9c:	subs	r0, r3, #1
    1b9e:	cmp	r0, #129
    1ba0:	blo	#30 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xb0>
    1ba2:	b	#60 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xd0>
    1ba4:	subs	r1, r3, #1
    1ba6:	subs	r0, r3, #2
    1ba8:	mov	r3, r1
    1baa:	cmp	r0, #129
    1bac:	blo	#18 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xb0>
    1bae:	b	#48 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xd0>
    1bb0:	subs	r0, r3, #3
    1bb2:	subs	r3, #2
    1bb4:	cmp	r0, #129
    1bb6:	blo	#8 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xb0>
    1bb8:	b	#38 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xd0>
    1bba:	subs	r0, r3, #4
    1bbc:	subs	r3, #3
    1bbe:	cmp	r0, #129
    1bc0:	bhs	#30 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80+0xd0>
    1bc2:	rsb.w	r1, r3, #129
    1bc6:	movw	r2, #9000
    1bca:	add	r0, lr
    1bcc:	movt	r2, #0
    1bd0:	strd	r0, r1, [sp]
    1bd4:	mov	r0, r12
    1bd6:	movs	r1, #1
    1bd8:	movs	r3, #2
    1bda:	bl	#-2188
    1bde:	add	sp, #136
    1be0:	pop	{r4, r5, r7, pc}
    1be2:	movs	r1, #128
    1be4:	bl	#-2852
    1be8:	trap

core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2:
    1bea:	push	{r4, r5, r7, lr}
    1bec:	sub	sp, #136
    1bee:	ldr	r0, [r0]
    1bf0:	add.w	lr, sp, #8
    1bf4:	mov	r12, r1
    1bf6:	movs	r3, #129
    1bf8:	movs	r1, #0
    1bfa:	and	r2, r0, #15
    1bfe:	add.w	r4, r2, #55
    1c02:	cmp	r2, #10
    1c04:	it	lo
    1c06:	addlo.w	r4, r2, #48
    1c0a:	add.w	r2, lr, r3
    1c0e:	cmp.w	r1, r0, lsr #4
    1c12:	strb	r4, [r2, #-2]
    1c16:	beq	#98 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0x92>
    1c18:	lsrs	r4, r0, #4
    1c1a:	and	r4, r4, #15
    1c1e:	add.w	r5, r4, #55
    1c22:	cmp	r4, #10
    1c24:	it	lo
    1c26:	addlo.w	r5, r4, #48
    1c2a:	cmp.w	r1, r0, lsr #8
    1c2e:	strb	r5, [r2, #-3]
    1c32:	beq	#82 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0x9e>
    1c34:	lsrs	r4, r0, #8
    1c36:	and	r4, r4, #15
    1c3a:	add.w	r5, r4, #55
    1c3e:	cmp	r4, #10
    1c40:	it	lo
    1c42:	addlo.w	r5, r4, #48
    1c46:	cmp.w	r1, r0, lsr #12
    1c4a:	strb	r5, [r2, #-4]
    1c4e:	beq	#64 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xa8>
    1c50:	lsrs	r4, r0, #12
    1c52:	subs	r3, #4
    1c54:	and	r4, r4, #15
    1c58:	add.w	r5, r4, #55
    1c5c:	cmp	r4, #10
    1c5e:	it	lo
    1c60:	addlo.w	r5, r4, #48
    1c64:	cmp.w	r1, r0, lsr #16
    1c68:	strb	r5, [r2, #-5]
    1c6c:	lsr.w	r2, r0, #16
    1c70:	mov	r0, r2
    1c72:	bne	#-124 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0x10>
    1c74:	subs	r0, r3, #1
    1c76:	cmp	r0, #129
    1c78:	blo	#30 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xb0>
    1c7a:	b	#60 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xd0>
    1c7c:	subs	r1, r3, #1
    1c7e:	subs	r0, r3, #2
    1c80:	mov	r3, r1
    1c82:	cmp	r0, #129
    1c84:	blo	#18 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xb0>
    1c86:	b	#48 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xd0>
    1c88:	subs	r0, r3, #3
    1c8a:	subs	r3, #2
    1c8c:	cmp	r0, #129
    1c8e:	blo	#8 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xb0>
    1c90:	b	#38 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xd0>
    1c92:	subs	r0, r3, #4
    1c94:	subs	r3, #3
    1c96:	cmp	r0, #129
    1c98:	bhs	#30 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2+0xd0>
    1c9a:	rsb.w	r1, r3, #129
    1c9e:	movw	r2, #9000
    1ca2:	add	r0, lr
    1ca4:	movt	r2, #0
    1ca8:	strd	r0, r1, [sp]
    1cac:	mov	r0, r12
    1cae:	movs	r1, #1
    1cb0:	movs	r3, #2
    1cb2:	bl	#-2404
    1cb6:	add	sp, #136
    1cb8:	pop	{r4, r5, r7, pc}
    1cba:	movs	r1, #128
    1cbc:	bl	#-3068
    1cc0:	trap

core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b:
    1cc2:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    1cc6:	sub	sp, #52
    1cc8:	mov	r12, r1
    1cca:	ldr	r1, [r0]
    1ccc:	movw	lr, #10000
    1cd0:	cmp	r1, lr
    1cd2:	blo	#132 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0x98>
    1cd4:	movw	r8, #5977
    1cd8:	movw	r9, #34079
    1cdc:	movw	r5, #9060
    1ce0:	movw	r7, #57599
    1ce4:	add.w	r11, sp, #13
    1ce8:	movs	r3, #0
    1cea:	movt	r8, #53687
    1cee:	movt	r9, #20971
    1cf2:	mov.w	r10, #100
    1cf6:	movt	r5, #0
    1cfa:	movt	r7, #1525
    1cfe:	umull	r0, r2, r1, r8
    1d02:	cmp	r1, r7
    1d04:	lsr.w	r0, r2, #13
    1d08:	mls	r2, r0, lr, r1
    1d0c:	mov	r1, r0
    1d0e:	umull	r4, r6, r2, r9
    1d12:	lsr.w	r4, r6, #5
    1d16:	add.w	r6, r11, r3
    1d1a:	mls	r2, r4, r10, r2
    1d1e:	ldrh.w	r4, [r5, r4, lsl #1]
    1d22:	sub.w	r3, r3, #4
    1d26:	strh.w	r4, [r6, #35]
    1d2a:	ldrh.w	r2, [r5, r2, lsl #1]
    1d2e:	strh.w	r2, [r6, #37]
    1d32:	bhi	#-56 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0x3c>
    1d34:	add.w	r2, r3, #39
    1d38:	mov	r1, r0
    1d3a:	cmp	r1, #100
    1d3c:	bge	#32 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0x9e>
    1d3e:	mov	r3, r1
    1d40:	cmp	r3, #9
    1d42:	ble	#74 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0xce>
    1d44:	movw	r1, #9060
    1d48:	subs	r0, r2, #2
    1d4a:	movt	r1, #0
    1d4e:	add.w	r2, sp, #13
    1d52:	ldrh.w	r1, [r1, r3, lsl #1]
    1d56:	strh	r1, [r2, r0]
    1d58:	b	#64 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0xda>
    1d5a:	movs	r2, #39
    1d5c:	cmp	r1, #100
    1d5e:	blt	#-36 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0x7c>
    1d60:	movw	r3, #34079
    1d64:	uxth	r0, r1
    1d66:	movt	r3, #20971
    1d6a:	subs	r2, #2
    1d6c:	umull	r0, r3, r0, r3
    1d70:	movs	r0, #100
    1d72:	lsrs	r3, r3, #5
    1d74:	mls	r0, r3, r0, r1
    1d78:	movw	r1, #9060
    1d7c:	movt	r1, #0
    1d80:	uxth	r0, r0
    1d82:	ldrh.w	r0, [r1, r0, lsl #1]
    1d86:	add.w	r1, sp, #13
    1d8a:	strh	r0, [r1, r2]
    1d8c:	cmp	r3, #9
    1d8e:	bgt	#-78 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b+0x82>
    1d90:	subs	r0, r2, #1
    1d92:	add.w	r2, sp, #13
    1d96:	add.w	r1, r3, #48
    1d9a:	strb	r1, [r2, r0]
    1d9c:	adds	r1, r2, r0
    1d9e:	rsb.w	r0, r0, #39
    1da2:	movw	r2, #8668
    1da6:	movs	r3, #0
    1da8:	strd	r1, r0, [sp]
    1dac:	movt	r2, #0
    1db0:	mov	r0, r12
    1db2:	movs	r1, #1
    1db4:	bl	#-2662
    1db8:	add	sp, #52
    1dba:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt::h20a3fd03b76cad72:
    1dbe:	b.w	#-688 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt::hd8c88c33b55aca80>

core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt::hb183dca0a7342aa9:
    1dc2:	b.w	#-476 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::hfb78e2fca06ebea2>

core::fmt::num::<impl core::fmt::Display for usize>::fmt::hed77ac86472c3428:
    1dc6:	b.w	#-264 <core::fmt::num::<impl core::fmt::Display for u32>::fmt::h689a1eb345a3a03b>

Reset:
    1dca:	sub	sp, #24
    1dcc:	movw	r0, #0
    1dd0:	movt	r0, #8192
    1dd4:	movw	r1, #0
    1dd8:	movt	r1, #8192
    1ddc:	subs	r2, r1, r0
    1dde:	cmp	r1, r0
    1de0:	str	r2, [sp, #12]
    1de2:	blo	#82 <Reset+0x6e>
    1de4:	b	#-2 <Reset+0x1c>
    1de6:	ldr	r0, [sp, #12]
    1de8:	str	r0, [sp, #16]
    1dea:	ldr	r1, [sp, #16]
    1dec:	movw	r0, #0
    1df0:	movt	r0, #8192
    1df4:	bl	#280
    1df8:	b	#-2 <Reset+0x30>
    1dfa:	movw	r0, #0
    1dfe:	movt	r0, #8192
    1e02:	movw	r1, #0
    1e06:	movt	r1, #8192
    1e0a:	subs	r2, r1, r0
    1e0c:	cmp	r1, r0
    1e0e:	str	r2, [sp, #8]
    1e10:	blo	#50 <Reset+0x7c>
    1e12:	b	#-2 <Reset+0x4a>
    1e14:	ldr	r0, [sp, #8]
    1e16:	str	r0, [sp, #20]
    1e18:	ldr	r2, [sp, #20]
    1e1a:	movw	r0, #0
    1e1e:	movt	r0, #8192
    1e22:	movw	r1, #9396
    1e26:	movt	r1, #0
    1e2a:	bl	#54
    1e2e:	str	r0, [sp, #4]
    1e30:	b	#-2 <Reset+0x68>
    1e32:	bl	#-7440
    1e36:	trap
    1e38:	movw	r0, #9348
    1e3c:	movt	r0, #0
    1e40:	bl	#-3626
    1e44:	trap
    1e46:	movw	r0, #9372
    1e4a:	movt	r0, #0
    1e4e:	bl	#-3640
    1e52:	trap

rust_begin_unwind:
    1e54:	sub	sp, #8
    1e56:	mov	r1, r0
    1e58:	str	r0, [sp, #4]
    1e5a:	str	r1, [sp]
    1e5c:	b	#-2 <rust_begin_unwind+0xa>
    1e5e:	b	#-4 <rust_begin_unwind+0xa>

DefaultExceptionHandler:
    1e60:	b	#-2 <UsageFault+0x1>

UsageFault:
    1e61:	cdp2	p0, #14, c11, c7, c7, #7

__aeabi_memcpy:
    1e64:	push	{r4, r5, r7, lr}
    1e66:	cbz	r2, #86
    1e68:	subs	r3, r2, #1
    1e6a:	and	r12, r2, #3
    1e6e:	cmp	r3, #3
    1e70:	bhs	#8 <__aeabi_memcpy+0x18>
    1e72:	movs	r2, #0
    1e74:	cmp.w	r12, #0
    1e78:	bne	#38 <__aeabi_memcpy+0x3e>
    1e7a:	b	#66 <__aeabi_memcpy+0x5c>
    1e7c:	sub.w	lr, r2, r12
    1e80:	movs	r2, #0
    1e82:	ldrb	r3, [r1, r2]
    1e84:	adds	r5, r0, r2
    1e86:	strb	r3, [r0, r2]
    1e88:	adds	r3, r1, r2
    1e8a:	adds	r2, #4
    1e8c:	ldrb	r4, [r3, #1]
    1e8e:	cmp	lr, r2
    1e90:	strb	r4, [r5, #1]
    1e92:	ldrb	r4, [r3, #2]
    1e94:	strb	r4, [r5, #2]
    1e96:	ldrb	r3, [r3, #3]
    1e98:	strb	r3, [r5, #3]
    1e9a:	bne	#-28 <__aeabi_memcpy+0x1e>
    1e9c:	cmp.w	r12, #0
    1ea0:	beq	#28 <__aeabi_memcpy+0x5c>
    1ea2:	ldrb	r3, [r1, r2]
    1ea4:	cmp.w	r12, #1
    1ea8:	strb	r3, [r0, r2]
    1eaa:	beq	#18 <__aeabi_memcpy+0x5c>
    1eac:	adds	r3, r2, #1
    1eae:	cmp.w	r12, #2
    1eb2:	ldrb	r5, [r1, r3]
    1eb4:	strb	r5, [r0, r3]
    1eb6:	it	eq
    1eb8:	popeq	{r4, r5, r7, pc}
    1eba:	adds	r2, #2
    1ebc:	ldrb	r1, [r1, r2]
    1ebe:	strb	r1, [r0, r2]
    1ec0:	pop	{r4, r5, r7, pc}

__aeabi_memset:
    1ec2:	cmp	r1, #0
    1ec4:	it	eq
    1ec6:	bxeq	lr
    1ec8:	push	{r7, lr}
    1eca:	subs	r3, r1, #1
    1ecc:	and	r12, r1, #3
    1ed0:	cmp	r3, #3
    1ed2:	bhs	#2 <__aeabi_memset+0x16>
    1ed4:	movs	r1, #0
    1ed6:	b	#20 <__aeabi_memset+0x2c>
    1ed8:	sub.w	lr, r1, r12
    1edc:	movs	r1, #0
    1ede:	strb	r2, [r0, r1]
    1ee0:	adds	r3, r0, r1
    1ee2:	adds	r1, #4
    1ee4:	cmp	lr, r1
    1ee6:	strb	r2, [r3, #1]
    1ee8:	strb	r2, [r3, #2]
    1eea:	strb	r2, [r3, #3]
    1eec:	bne	#-18 <__aeabi_memset+0x1c>
    1eee:	cmp.w	r12, #0
    1ef2:	pop.w	{r7, lr}
    1ef6:	itt	ne
    1ef8:	strbne	r2, [r0, r1]
    1efa:	cmpne.w	r12, #1
    1efe:	bne	#0 <__aeabi_memset+0x40>
    1f00:	bx	lr
    1f02:	add	r0, r1
    1f04:	cmp.w	r12, #2
    1f08:	strb	r2, [r0, #1]
    1f0a:	it	ne
    1f0c:	strbne	r2, [r0, #2]
    1f0e:	bx	lr

__aeabi_memclr:
    1f10:	movs	r2, #0
    1f12:	b.w	#-84 <__aeabi_memset>
