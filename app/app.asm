
app:	file format ELF32-arm-little

Disassembly of section .text:
00000000080001ac core::option::Option<T>::map::h48368be18eb99f4d:
 80001ac:	push	{r7, lr}
 80001ae:	sub	sp, #48
 80001b0:	mov	r2, r1
 80001b2:	mov	r3, r0
 80001b4:	str	r0, [sp, #20]
 80001b6:	str	r1, [sp, #24]
 80001b8:	movs	r0, #0
 80001ba:	strb.w	r0, [sp, #47]
 80001be:	strb.w	r0, [sp, #46]
 80001c2:	movs	r0, #1
 80001c4:	strb.w	r0, [sp, #47]
 80001c8:	strb.w	r0, [sp, #46]
 80001cc:	ldr	r0, [sp, #20]
 80001ce:	cmp	r0, #0
 80001d0:	str	r2, [sp, #16]
 80001d2:	str	r3, [sp, #12]
 80001d4:	str	r0, [sp, #8]
 80001d6:	beq	#44 <core::option::Option<T>::map::h48368be18eb99f4d+0x5a>
 80001d8:	b	#-2 <core::option::Option<T>::map::h48368be18eb99f4d+0x2e>
 80001da:	ldr	r0, [sp, #8]
 80001dc:	cmp	r0, #1
 80001de:	beq	#2 <core::option::Option<T>::map::h48368be18eb99f4d+0x38>
 80001e0:	b	#-2 <core::option::Option<T>::map::h48368be18eb99f4d+0x36>
 80001e2:	trap
 80001e4:	movs	r0, #0
 80001e6:	strb.w	r0, [sp, #47]
 80001ea:	ldr	r1, [sp, #24]
 80001ec:	str	r1, [sp, #36]
 80001ee:	strb.w	r0, [sp, #46]
 80001f2:	ldr	r0, [sp, #36]
 80001f4:	str	r0, [sp, #40]
 80001f6:	ldr	r0, [sp, #40]
 80001f8:	bl	#1886
 80001fc:	str	r0, [sp, #4]
 80001fe:	b	#-2 <core::option::Option<T>::map::h48368be18eb99f4d+0x54>
 8000200:	ldr	r0, [sp, #4]
 8000202:	str	r0, [sp, #32]
 8000204:	b	#10 <core::option::Option<T>::map::h48368be18eb99f4d+0x66>
 8000206:	movs	r0, #0
 8000208:	str	r0, [sp, #32]
 800020a:	mov.w	r0, #1114112
 800020e:	str	r0, [sp, #32]
 8000210:	b	#-2 <core::option::Option<T>::map::h48368be18eb99f4d+0x66>
 8000212:	ldrb.w	r0, [sp, #46]
 8000216:	lsls	r0, r0, #31
 8000218:	cmp	r0, #0
 800021a:	bne	#8 <core::option::Option<T>::map::h48368be18eb99f4d+0x7a>
 800021c:	b	#-2 <core::option::Option<T>::map::h48368be18eb99f4d+0x72>
 800021e:	ldr	r0, [sp, #20]
 8000220:	cmp	r0, #1
 8000222:	beq	#14 <core::option::Option<T>::map::h48368be18eb99f4d+0x88>
 8000224:	b	#32 <core::option::Option<T>::map::h48368be18eb99f4d+0x9c>
 8000226:	movs	r0, #0
 8000228:	strb.w	r0, [sp, #46]
 800022c:	b	#-18 <core::option::Option<T>::map::h48368be18eb99f4d+0x72>
 800022e:	ldr	r0, [sp, #32]
 8000230:	add	sp, #48
 8000232:	pop	{r7, pc}
 8000234:	ldrb.w	r0, [sp, #47]
 8000238:	lsls	r0, r0, #31
 800023a:	cmp	r0, #0
 800023c:	beq	#-18 <core::option::Option<T>::map::h48368be18eb99f4d+0x82>
 800023e:	b	#-2 <core::option::Option<T>::map::h48368be18eb99f4d+0x94>
 8000240:	movs	r0, #0
 8000242:	strb.w	r0, [sp, #47]
 8000246:	b	#-28 <core::option::Option<T>::map::h48368be18eb99f4d+0x82>
 8000248:	b	#-30 <core::option::Option<T>::map::h48368be18eb99f4d+0x82>

000000000800024a core::option::Option<T>::ok_or::h6dc7bc9826faddf9:
 800024a:	sub	sp, #28
 800024c:	mov	r1, r0
 800024e:	str	r0, [sp, #8]
 8000250:	movs	r0, #0
 8000252:	strb.w	r0, [sp, #27]
 8000256:	strb.w	r0, [sp, #26]
 800025a:	movs	r0, #1
 800025c:	strb.w	r0, [sp, #27]
 8000260:	strb.w	r0, [sp, #26]
 8000264:	ldr	r0, [sp, #8]
 8000266:	cmp	r0, #0
 8000268:	mov	r2, r0
 800026a:	it	ne
 800026c:	movne	r2, #1
 800026e:	cmp	r0, #0
 8000270:	str	r1, [sp, #4]
 8000272:	str	r2, [sp]
 8000274:	beq	#26 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x48>
 8000276:	b	#-2 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x2e>
 8000278:	ldr	r0, [sp]
 800027a:	cmp	r0, #1
 800027c:	beq	#2 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x38>
 800027e:	b	#-2 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x36>
 8000280:	trap
 8000282:	movs	r0, #0
 8000284:	strb.w	r0, [sp, #27]
 8000288:	ldr	r0, [sp, #8]
 800028a:	str	r0, [sp, #20]
 800028c:	ldr	r0, [sp, #20]
 800028e:	str	r0, [sp, #16]
 8000290:	b	#8 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x52>
 8000292:	movs	r0, #0
 8000294:	strb.w	r0, [sp, #26]
 8000298:	str	r0, [sp, #16]
 800029a:	b	#-2 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x52>
 800029c:	ldrb.w	r0, [sp, #26]
 80002a0:	lsls	r0, r0, #31
 80002a2:	cmp	r0, #0
 80002a4:	bne	#8 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x66>
 80002a6:	b	#-2 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x5e>
 80002a8:	ldr	r0, [sp, #8]
 80002aa:	cmp	r0, #0
 80002ac:	bne	#14 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x74>
 80002ae:	b	#32 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x88>
 80002b0:	movs	r0, #0
 80002b2:	strb.w	r0, [sp, #26]
 80002b6:	b	#-18 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x5e>
 80002b8:	ldr	r0, [sp, #16]
 80002ba:	add	sp, #28
 80002bc:	bx	lr
 80002be:	ldrb.w	r0, [sp, #27]
 80002c2:	lsls	r0, r0, #31
 80002c4:	cmp	r0, #0
 80002c6:	beq	#-18 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x6e>
 80002c8:	b	#-2 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x80>
 80002ca:	movs	r0, #0
 80002cc:	strb.w	r0, [sp, #27]
 80002d0:	b	#-28 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x6e>
 80002d2:	b	#-30 <core::option::Option<T>::ok_or::h6dc7bc9826faddf9+0x6e>

00000000080002d4 <T as core::convert::From<T>>::from::h9d9b3b97b74e4aa2:
 80002d4:	sub	sp, #4
 80002d6:	add	sp, #4
 80002d8:	bx	lr

00000000080002da <core::option::Option<T> as core::ops::try::Try>::from_error::hacd3e49ce59f2766:
 80002da:	sub	sp, #12
 80002dc:	movs	r0, #0
 80002de:	str	r0, [sp, #4]
 80002e0:	ldr	r0, [sp, #4]
 80002e2:	ldr	r1, [sp, #8]
 80002e4:	add	sp, #12
 80002e6:	bx	lr

00000000080002e8 <core::option::Option<T> as core::ops::try::Try>::into_result::hf7cad2b12dd1fbf0:
 80002e8:	push	{r7, lr}
 80002ea:	sub	sp, #16
 80002ec:	mov	r1, r0
 80002ee:	str	r0, [sp, #8]
 80002f0:	ldr	r0, [sp, #8]
 80002f2:	str	r1, [sp, #4]
 80002f4:	bl	#-174
 80002f8:	str	r0, [sp]
 80002fa:	b	#-2 <<core::option::Option<T> as core::ops::try::Try>::into_result::hf7cad2b12dd1fbf0+0x14>
 80002fc:	ldr	r0, [sp]
 80002fe:	add	sp, #16
 8000300:	pop	{r7, pc}

0000000008000302 app::Process::create::h935b93b1ff4ec230:
 8000302:	push	{r7, lr}
 8000304:	sub	sp, #96
 8000306:	mov	r3, r2
 8000308:	mov	r12, r1
 800030a:	mov	lr, r0
 800030c:	str	r0, [sp, #64]
 800030e:	str	r1, [sp, #68]
 8000310:	str	r2, [sp, #72]
 8000312:	ldr	r0, [sp, #68]
 8000314:	sub.w	r1, r0, #32
 8000318:	cmp	r0, #32
 800031a:	str	r3, [sp, #60]
 800031c:	str.w	r12, [sp, #56]
 8000320:	str.w	lr, [sp, #52]
 8000324:	str	r1, [sp, #48]
 8000326:	blo	#176 <app::Process::create::h935b93b1ff4ec230+0xd8>
 8000328:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x28>
 800032a:	ldr	r0, [sp, #48]
 800032c:	str	r0, [sp, #84]
 800032e:	ldr	r0, [sp, #84]
 8000330:	movs	r1, #8
 8000332:	bl	#1598
 8000336:	str	r0, [sp, #44]
 8000338:	str	r1, [sp, #40]
 800033a:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x3a>
 800033c:	ldr	r0, [sp, #44]
 800033e:	str	r0, [sp, #88]
 8000340:	ldr	r1, [sp, #40]
 8000342:	str	r1, [sp, #92]
 8000344:	ldr	r2, [sp, #92]
 8000346:	cmp	r2, #0
 8000348:	str	r2, [sp, #36]
 800034a:	beq	#154 <app::Process::create::h935b93b1ff4ec230+0xe6>
 800034c:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x4c>
 800034e:	ldr	r0, [sp, #88]
 8000350:	movs	r1, #0
 8000352:	str	r1, [r0]
 8000354:	ldr	r0, [sp, #92]
 8000356:	cmp	r0, #2
 8000358:	str	r0, [sp, #32]
 800035a:	blo	#156 <app::Process::create::h935b93b1ff4ec230+0xf8>
 800035c:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x5c>
 800035e:	ldr	r0, [sp, #88]
 8000360:	movs	r1, #2
 8000362:	str	r1, [r0, #4]
 8000364:	ldr	r0, [sp, #92]
 8000366:	cmp	r0, #3
 8000368:	str	r0, [sp, #28]
 800036a:	blo	#158 <app::Process::create::h935b93b1ff4ec230+0x10a>
 800036c:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x6c>
 800036e:	ldr	r0, [sp, #88]
 8000370:	movs	r1, #0
 8000372:	str	r1, [r0, #8]
 8000374:	ldr	r0, [sp, #92]
 8000376:	cmp	r0, #4
 8000378:	str	r0, [sp, #24]
 800037a:	blo	#160 <app::Process::create::h935b93b1ff4ec230+0x11c>
 800037c:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x7c>
 800037e:	ldr	r0, [sp, #88]
 8000380:	movs	r1, #0
 8000382:	str	r1, [r0, #12]
 8000384:	ldr	r0, [sp, #92]
 8000386:	cmp	r0, #5
 8000388:	str	r0, [sp, #20]
 800038a:	blo	#162 <app::Process::create::h935b93b1ff4ec230+0x12e>
 800038c:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x8c>
 800038e:	ldr	r0, [sp, #88]
 8000390:	movs	r1, #0
 8000392:	str	r1, [r0, #16]
 8000394:	ldr	r0, [sp, #92]
 8000396:	cmp	r0, #6
 8000398:	str	r0, [sp, #16]
 800039a:	blo	#164 <app::Process::create::h935b93b1ff4ec230+0x140>
 800039c:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0x9c>
 800039e:	ldr	r0, [sp, #88]
 80003a0:	movs	r1, #0
 80003a2:	str	r1, [r0, #20]
 80003a4:	ldr	r0, [sp, #64]
 80003a6:	ldr	r1, [sp, #92]
 80003a8:	cmp	r1, #7
 80003aa:	str	r0, [sp, #12]
 80003ac:	str	r1, [sp, #8]
 80003ae:	blo	#162 <app::Process::create::h935b93b1ff4ec230+0x152>
 80003b0:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0xb0>
 80003b2:	ldr	r0, [sp, #88]
 80003b4:	ldr	r1, [sp, #12]
 80003b6:	str	r1, [r0, #24]
 80003b8:	ldr	r0, [sp, #92]
 80003ba:	cmp	r0, #8
 80003bc:	str	r0, [sp, #4]
 80003be:	blo	#164 <app::Process::create::h935b93b1ff4ec230+0x164>
 80003c0:	b	#-2 <app::Process::create::h935b93b1ff4ec230+0xc0>
 80003c2:	ldr	r0, [sp, #88]
 80003c4:	mov.w	r1, #16777216
 80003c8:	str	r1, [r0, #28]
 80003ca:	ldr	r0, [sp, #84]
 80003cc:	ldr	r1, [sp, #72]
 80003ce:	str	r0, [sp, #76]
 80003d0:	str	r1, [sp, #80]
 80003d2:	ldr	r0, [sp, #76]
 80003d4:	ldr	r1, [sp, #80]
 80003d6:	add	sp, #96
 80003d8:	pop	{r7, pc}
 80003da:	movw	r0, #5972
 80003de:	movt	r0, #2048
 80003e2:	bl	#3272
 80003e6:	trap
 80003e8:	movw	r0, #5996
 80003ec:	movt	r0, #2048
 80003f0:	movs	r1, #0
 80003f2:	ldr	r2, [sp, #36]
 80003f4:	bl	#3312
 80003f8:	trap
 80003fa:	movw	r0, #6012
 80003fe:	movt	r0, #2048
 8000402:	movs	r1, #1
 8000404:	ldr	r2, [sp, #32]
 8000406:	bl	#3294
 800040a:	trap
 800040c:	movw	r0, #6028
 8000410:	movt	r0, #2048
 8000414:	movs	r1, #2
 8000416:	ldr	r2, [sp, #28]
 8000418:	bl	#3276
 800041c:	trap
 800041e:	movw	r0, #6044
 8000422:	movt	r0, #2048
 8000426:	movs	r1, #3
 8000428:	ldr	r2, [sp, #24]
 800042a:	bl	#3258
 800042e:	trap
 8000430:	movw	r0, #6060
 8000434:	movt	r0, #2048
 8000438:	movs	r1, #4
 800043a:	ldr	r2, [sp, #20]
 800043c:	bl	#3240
 8000440:	trap
 8000442:	movw	r0, #6076
 8000446:	movt	r0, #2048
 800044a:	movs	r1, #5
 800044c:	ldr	r2, [sp, #16]
 800044e:	bl	#3222
 8000452:	trap
 8000454:	movw	r0, #6092
 8000458:	movt	r0, #2048
 800045c:	movs	r1, #6
 800045e:	ldr	r2, [sp, #8]
 8000460:	bl	#3204
 8000464:	trap
 8000466:	movw	r0, #6108
 800046a:	movt	r0, #2048
 800046e:	movs	r1, #7
 8000470:	ldr	r2, [sp, #4]
 8000472:	bl	#3186
 8000476:	trap

0000000008000478 app::main::h699c7f4d7846db26:
 8000478:	sub	sp, #176
 800047a:	b	#-2 <app::main::h699c7f4d7846db26+0x4>
 800047c:	movw	r0, #0
 8000480:	movt	r0, #8192
 8000484:	add.w	r1, r0, #1024
 8000488:	mov	r2, r1
 800048a:	cmp	r1, r0
 800048c:	str	r2, [sp, #56]
 800048e:	blo.w	#414 <app::main::h699c7f4d7846db26+0x1b8>
 8000492:	b	#-2 <app::main::h699c7f4d7846db26+0x1c>
 8000494:	ldr	r0, [sp, #56]
 8000496:	str	r0, [sp, #60]
 8000498:	movs	r1, #0
 800049a:	str	r1, [sp, #92]
 800049c:	str	r1, [sp, #88]
 800049e:	str	r1, [sp, #84]
 80004a0:	str	r1, [sp, #80]
 80004a2:	str	r1, [sp, #76]
 80004a4:	str	r1, [sp, #72]
 80004a6:	str	r1, [sp, #68]
 80004a8:	str	r1, [sp, #64]
 80004aa:	ldr	r1, [sp, #60]
 80004ac:	movw	r0, #1641
 80004b0:	movt	r0, #2048
 80004b4:	add	r2, sp, #64
 80004b6:	bl	#-440
 80004ba:	str	r1, [sp, #100]
 80004bc:	str	r0, [sp, #96]
 80004be:	b	#-2 <app::main::h699c7f4d7846db26+0x48>
 80004c0:	movw	r0, #6264
 80004c4:	movt	r0, #2048
 80004c8:	bl	#2412
 80004cc:	str	r0, [sp, #104]
 80004ce:	b	#-2 <app::main::h699c7f4d7846db26+0x58>
 80004d0:	ldr	r0, [sp, #104]
 80004d2:	adds	r0, #64
 80004d4:	str	r0, [sp, #52]
 80004d6:	b	#-2 <app::main::h699c7f4d7846db26+0x60>
 80004d8:	ldr	r0, [sp, #52]
 80004da:	str	r0, [sp, #160]
 80004dc:	mov.w	r1, #262144
 80004e0:	str	r1, [sp, #164]
 80004e2:	ldr	r0, [sp, #160]
 80004e4:	bl	#2802
 80004e8:	ldr	r1, [sp, #164]
 80004ea:	bl	#2836
 80004ee:	b	#-2 <app::main::h699c7f4d7846db26+0x78>
 80004f0:	ldr	r0, [sp, #104]
 80004f2:	adds	r0, #48
 80004f4:	str	r0, [sp, #48]
 80004f6:	b	#-2 <app::main::h699c7f4d7846db26+0x80>
 80004f8:	ldr	r0, [sp, #48]
 80004fa:	str	r0, [sp, #168]
 80004fc:	movs	r1, #8
 80004fe:	str	r1, [sp, #172]
 8000500:	ldr	r0, [sp, #168]
 8000502:	bl	#2772
 8000506:	ldr	r1, [sp, #172]
 8000508:	bl	#2806
 800050c:	b	#-2 <app::main::h699c7f4d7846db26+0x96>
 800050e:	bl	#2116
 8000512:	str	r0, [sp, #108]
 8000514:	b	#-2 <app::main::h699c7f4d7846db26+0x9e>
 8000516:	bl	#2414
 800051a:	b	#-2 <app::main::h699c7f4d7846db26+0xa4>
 800051c:	movs	r0, #39
 800051e:	movs	r1, #0
 8000520:	cmp	r1, #0
 8000522:	str	r0, [sp, #44]
 8000524:	bne.w	#278 <app::main::h699c7f4d7846db26+0x1c6>
 8000528:	b	#-2 <app::main::h699c7f4d7846db26+0xb2>
 800052a:	add	r0, sp, #112
 800052c:	ldr	r1, [sp, #44]
 800052e:	bl	#2416
 8000532:	b	#-2 <app::main::h699c7f4d7846db26+0xbc>
 8000534:	movw	r0, #6204
 8000538:	movt	r0, #2048
 800053c:	movs	r1, #11
 800053e:	bl	#1602
 8000542:	str	r0, [sp, #40]
 8000544:	str	r1, [sp, #36]
 8000546:	b	#-2 <app::main::h699c7f4d7846db26+0xd0>
 8000548:	ldr	r0, [sp, #40]
 800054a:	ldr	r1, [sp, #36]
 800054c:	bl	#1012
 8000550:	str	r0, [sp, #32]
 8000552:	str	r1, [sp, #28]
 8000554:	b	#-2 <app::main::h699c7f4d7846db26+0xde>
 8000556:	ldr	r0, [sp, #32]
 8000558:	str	r0, [sp, #120]
 800055a:	ldr	r1, [sp, #28]
 800055c:	str	r1, [sp, #124]
 800055e:	b	#-2 <app::main::h699c7f4d7846db26+0xe8>
 8000560:	add	r0, sp, #120
 8000562:	bl	#1638
 8000566:	str	r0, [sp, #132]
 8000568:	b	#-2 <app::main::h699c7f4d7846db26+0xf2>
 800056a:	ldr	r0, [sp, #132]
 800056c:	subs.w	r1, r0, #1114112
 8000570:	it	ne
 8000572:	movne	r1, #1
 8000574:	cmp.w	r0, #1114112
 8000578:	str	r1, [sp, #24]
 800057a:	beq	#34 <app::main::h699c7f4d7846db26+0x128>
 800057c:	b	#-2 <app::main::h699c7f4d7846db26+0x106>
 800057e:	ldr	r0, [sp, #24]
 8000580:	cmp	r0, #1
 8000582:	beq	#2 <app::main::h699c7f4d7846db26+0x110>
 8000584:	b	#-2 <app::main::h699c7f4d7846db26+0x10e>
 8000586:	trap
 8000588:	ldr	r0, [sp, #132]
 800058a:	str	r0, [sp, #136]
 800058c:	ldr	r0, [sp, #136]
 800058e:	str	r0, [sp, #128]
 8000590:	ldr	r0, [sp, #128]
 8000592:	str	r0, [sp, #140]
 8000594:	ldr	r1, [sp, #140]
 8000596:	add	r0, sp, #108
 8000598:	bl	#1812
 800059c:	str	r0, [sp, #20]
 800059e:	b	#0 <app::main::h699c7f4d7846db26+0x12a>
 80005a0:	b	#0 <app::main::h699c7f4d7846db26+0x12c>
 80005a2:	b	#-70 <app::main::h699c7f4d7846db26+0xe8>
 80005a4:	movw	r0, #64
 80005a8:	movt	r0, #2048
 80005ac:	movs	r1, #0
 80005ae:	str	r1, [r0]
 80005b0:	movs	r0, #255
 80005b2:	strb.w	r0, [sp, #147]
 80005b6:	ldrb.w	r0, [sp, #147]
 80005ba:	mrs	r0, basepri
 80005be:	b	#-2 <app::main::h699c7f4d7846db26+0x148>
 80005c0:	ldr	r0, [sp, #96]
 80005c2:	ldr	r1, [sp, #100]
 80005c4:	msr	psp, r0
 80005c8:	ldm.w	r1, {r4, r5, r6, r7, r8, r9, r10, r11}
 80005cc:	svc	#0
 80005ce:	stm.w	r1, {r4, r5, r6, r7, r8, r9, r10, r11}
 80005d2:	mrs	r0, psp
 80005d6:	str	r0, [sp, #96]
 80005d8:	movs	r0, #39
 80005da:	movs	r1, #0
 80005dc:	cmp	r1, #0
 80005de:	str	r0, [sp, #16]
 80005e0:	bne	#104 <app::main::h699c7f4d7846db26+0x1d4>
 80005e2:	b	#-2 <app::main::h699c7f4d7846db26+0x16c>
 80005e4:	add	r0, sp, #112
 80005e6:	ldr	r1, [sp, #16]
 80005e8:	bl	#2382
 80005ec:	str	r0, [sp, #12]
 80005ee:	b	#-2 <app::main::h699c7f4d7846db26+0x178>
 80005f0:	ldr	r0, [sp, #12]
 80005f2:	lsls	r1, r0, #31
 80005f4:	cmp	r1, #0
 80005f6:	beq	#52 <app::main::h699c7f4d7846db26+0x1b6>
 80005f8:	b	#-2 <app::main::h699c7f4d7846db26+0x182>
 80005fa:	add	r0, sp, #148
 80005fc:	add	r1, sp, #108
 80005fe:	bl	#1592
 8000602:	b	#-2 <app::main::h699c7f4d7846db26+0x18c>
 8000604:	add	r0, sp, #108
 8000606:	str	r0, [sp, #156]
 8000608:	ldr	r1, [sp, #156]
 800060a:	add	r0, sp, #148
 800060c:	bl	#280
 8000610:	str	r0, [sp, #8]
 8000612:	str	r1, [sp, #4]
 8000614:	b	#-2 <app::main::h699c7f4d7846db26+0x19e>
 8000616:	movs	r0, #39
 8000618:	movs	r1, #0
 800061a:	cmp	r1, #0
 800061c:	str	r0, [sp]
 800061e:	bne	#56 <app::main::h699c7f4d7846db26+0x1e2>
 8000620:	b	#-2 <app::main::h699c7f4d7846db26+0x1aa>
 8000622:	add	r0, sp, #112
 8000624:	ldr	r1, [sp]
 8000626:	bl	#2168
 800062a:	b	#-2 <app::main::h699c7f4d7846db26+0x1b4>
 800062c:	b	#-2 <app::main::h699c7f4d7846db26+0x1b6>
 800062e:	b	#-114 <app::main::h699c7f4d7846db26+0x148>
 8000630:	movw	r0, #6156
 8000634:	movt	r0, #2048
 8000638:	bl	#2674
 800063c:	trap
 800063e:	movw	r0, #6180
 8000642:	movt	r0, #2048
 8000646:	bl	#2660
 800064a:	trap
 800064c:	movw	r0, #6216
 8000650:	movt	r0, #2048
 8000654:	bl	#2646
 8000658:	trap
 800065a:	movw	r0, #6240
 800065e:	movt	r0, #2048
 8000662:	bl	#2632
 8000666:	trap

0000000008000668 app_main:
 8000668:	sub	sp, #24
 800066a:	mov	r3, r2
 800066c:	mov	r12, r1
 800066e:	mov	lr, r0
 8000670:	str	r0, [sp, #12]
 8000672:	str	r1, [sp, #16]
 8000674:	str	r2, [sp, #20]
 8000676:	svc	#1
 8000678:	str	r3, [sp, #8]
 800067a:	str.w	r12, [sp, #4]
 800067e:	str.w	lr, [sp]
 8000682:	b	#-2 <app_main+0x1c>
 8000684:	b	#-4 <app_main+0x1c>

0000000008000686 main:
 8000686:	sub	sp, #8
 8000688:	movw	r0, #1145
 800068c:	movt	r0, #2048
 8000690:	str	r0, [sp, #4]
 8000692:	ldr	r0, [sp, #4]
 8000694:	blx	r0
 8000696:	trap

0000000008000698 core::ptr::<impl *const T>::wrapping_add::h782401e4ef114cec:
 8000698:	push	{r7, lr}
 800069a:	sub	sp, #24
 800069c:	mov	r2, r1
 800069e:	mov	r3, r0
 80006a0:	str	r0, [sp, #16]
 80006a2:	str	r1, [sp, #20]
 80006a4:	ldr	r0, [sp, #16]
 80006a6:	ldr	r1, [sp, #20]
 80006a8:	str	r2, [sp, #12]
 80006aa:	str	r3, [sp, #8]
 80006ac:	bl	#10
 80006b0:	str	r0, [sp, #4]
 80006b2:	b	#-2 <core::ptr::<impl *const T>::wrapping_add::h782401e4ef114cec+0x1c>
 80006b4:	ldr	r0, [sp, #4]
 80006b6:	add	sp, #24
 80006b8:	pop	{r7, pc}

00000000080006ba core::ptr::<impl *const T>::wrapping_offset::h3ce04ada8c6571d1:
 80006ba:	sub	sp, #24
 80006bc:	mov	r2, r1
 80006be:	mov	r3, r0
 80006c0:	str	r0, [sp, #12]
 80006c2:	str	r1, [sp, #16]
 80006c4:	ldr	r0, [sp, #12]
 80006c6:	ldr	r1, [sp, #16]
 80006c8:	add	r0, r1
 80006ca:	str	r0, [sp, #20]
 80006cc:	ldr	r0, [sp, #20]
 80006ce:	str	r2, [sp, #8]
 80006d0:	str	r3, [sp, #4]
 80006d2:	str	r0, [sp]
 80006d4:	b	#-2 <core::ptr::<impl *const T>::wrapping_offset::h3ce04ada8c6571d1+0x1c>
 80006d6:	ldr	r0, [sp]
 80006d8:	add	sp, #24
 80006da:	bx	lr

00000000080006dc core::ptr::<impl *const T>::add::h3438f9f6d521f7bd:
 80006dc:	push	{r7, lr}
 80006de:	sub	sp, #24
 80006e0:	mov	r2, r1
 80006e2:	mov	r3, r0
 80006e4:	str	r0, [sp, #16]
 80006e6:	str	r1, [sp, #20]
 80006e8:	ldr	r0, [sp, #16]
 80006ea:	ldr	r1, [sp, #20]
 80006ec:	str	r2, [sp, #12]
 80006ee:	str	r3, [sp, #8]
 80006f0:	bl	#2344
 80006f4:	str	r0, [sp, #4]
 80006f6:	b	#-2 <core::ptr::<impl *const T>::add::h3438f9f6d521f7bd+0x1c>
 80006f8:	ldr	r0, [sp, #4]
 80006fa:	add	sp, #24
 80006fc:	pop	{r7, pc}

00000000080006fe core::ptr::<impl *const T>::is_null::h0c8894747f8c1393:
 80006fe:	push	{r7, lr}
 8000700:	sub	sp, #16
 8000702:	mov	r1, r0
 8000704:	str	r0, [sp, #12]
 8000706:	ldr	r0, [sp, #12]
 8000708:	str	r1, [sp, #8]
 800070a:	str	r0, [sp, #4]
 800070c:	bl	#20
 8000710:	str	r0, [sp]
 8000712:	b	#-2 <core::ptr::<impl *const T>::is_null::h0c8894747f8c1393+0x16>
 8000714:	ldr	r0, [sp, #4]
 8000716:	ldr	r1, [sp]
 8000718:	subs	r2, r0, r1
 800071a:	clz	r2, r2
 800071e:	lsrs	r0, r2, #5
 8000720:	add	sp, #16
 8000722:	pop	{r7, pc}

0000000008000724 core::ptr::null::h0a6f30bb60678557:
 8000724:	movs	r0, #0
 8000726:	bx	lr

0000000008000728 _ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E:
 8000728:	push	{r7, lr}
 800072a:	sub	sp, #40
 800072c:	mov	r2, r1
 800072e:	mov	r3, r0
 8000730:	str	r1, [sp, #20]
 8000732:	movs	r1, #0
 8000734:	strb.w	r1, [sp, #39]
 8000738:	strb.w	r1, [sp, #38]
 800073c:	strb.w	r1, [sp, #37]
 8000740:	movs	r1, #1
 8000742:	strb.w	r1, [sp, #38]
 8000746:	strb.w	r1, [sp, #39]
 800074a:	strb.w	r1, [sp, #37]
 800074e:	ldrb	r0, [r0]
 8000750:	lsls	r1, r0, #31
 8000752:	cmp	r1, #0
 8000754:	str	r2, [sp, #16]
 8000756:	str	r3, [sp, #12]
 8000758:	str	r0, [sp, #8]
 800075a:	beq	#10 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x40>
 800075c:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x36>
 800075e:	ldr	r0, [sp, #8]
 8000760:	cmp	r0, #1
 8000762:	beq	#50 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x70>
 8000764:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x3e>
 8000766:	trap
 8000768:	movs	r0, #0
 800076a:	strb.w	r0, [sp, #39]
 800076e:	ldr	r1, [sp, #12]
 8000770:	ldr	r2, [r1, #4]
 8000772:	str	r2, [sp, #28]
 8000774:	strb.w	r0, [sp, #37]
 8000778:	ldr	r0, [sp, #20]
 800077a:	ldr	r2, [sp, #28]
 800077c:	str	r2, [sp, #32]
 800077e:	ldr	r1, [sp, #32]
 8000780:	bl	#1136
 8000784:	uxtb	r0, r0
 8000786:	str	r0, [sp, #4]
 8000788:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x62>
 800078a:	ldr	r0, [sp, #4]
 800078c:	strb.w	r0, [sp, #25]
 8000790:	movs	r1, #0
 8000792:	strb.w	r1, [sp, #24]
 8000796:	b	#28 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x8e>
 8000798:	movs	r0, #0
 800079a:	strb.w	r0, [sp, #38]
 800079e:	ldr	r0, [sp, #12]
 80007a0:	ldrb	r1, [r0, #1]
 80007a2:	strb.w	r1, [sp, #36]
 80007a6:	ldrb.w	r1, [sp, #36]
 80007aa:	strb.w	r1, [sp, #25]
 80007ae:	movs	r1, #1
 80007b0:	strb.w	r1, [sp, #24]
 80007b4:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x8e>
 80007b6:	ldrb.w	r0, [sp, #37]
 80007ba:	lsls	r0, r0, #31
 80007bc:	cmp	r0, #0
 80007be:	bne	#12 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xa6>
 80007c0:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x9a>
 80007c2:	ldr	r0, [sp, #12]
 80007c4:	ldrb	r1, [r0]
 80007c6:	lsls	r1, r1, #31
 80007c8:	cmp	r1, #0
 80007ca:	beq	#20 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xba>
 80007cc:	b	#38 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xce>
 80007ce:	movs	r0, #0
 80007d0:	strb.w	r0, [sp, #37]
 80007d4:	b	#-22 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0x9a>
 80007d6:	ldrb.w	r0, [sp, #24]
 80007da:	ldrb.w	r1, [sp, #25]
 80007de:	add	sp, #40
 80007e0:	pop	{r7, pc}
 80007e2:	ldrb.w	r0, [sp, #39]
 80007e6:	lsls	r0, r0, #31
 80007e8:	cmp	r0, #0
 80007ea:	beq	#-24 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xae>
 80007ec:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xc6>
 80007ee:	movs	r0, #0
 80007f0:	strb.w	r0, [sp, #39]
 80007f4:	b	#-34 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xae>
 80007f6:	ldrb.w	r0, [sp, #38]
 80007fa:	lsls	r0, r0, #31
 80007fc:	cmp	r0, #0
 80007fe:	beq	#-44 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xae>
 8000800:	b	#-2 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xda>
 8000802:	movs	r0, #0
 8000804:	strb.w	r0, [sp, #38]
 8000808:	b	#-54 <_ZN4core6result19Result$LT$T$C$E$GT$3map17h575b47c3e9fd3be1E+0xae>

000000000800080a core::str::next_code_point::hd1f1799271f9b2b2:
 800080a:	push	{r7, lr}
 800080c:	sub	sp, #88
 800080e:	mov	r1, r0
 8000810:	str	r0, [sp, #36]
 8000812:	ldr	r0, [sp, #36]
 8000814:	str	r1, [sp, #32]
 8000816:	bl	#528
 800081a:	str	r0, [sp, #28]
 800081c:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x14>
 800081e:	ldr	r0, [sp, #28]
 8000820:	bl	#-1340
 8000824:	str	r0, [sp, #52]
 8000826:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x1e>
 8000828:	ldr	r0, [sp, #52]
 800082a:	clz	r1, r0
 800082e:	lsrs	r1, r1, #5
 8000830:	cmp	r0, #0
 8000832:	str	r1, [sp, #24]
 8000834:	bne	#38 <core::str::next_code_point::hd1f1799271f9b2b2+0x54>
 8000836:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x2e>
 8000838:	ldr	r0, [sp, #24]
 800083a:	cmp	r0, #1
 800083c:	beq	#2 <core::str::next_code_point::hd1f1799271f9b2b2+0x38>
 800083e:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x36>
 8000840:	trap
 8000842:	bl	#-1394
 8000846:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x3e>
 8000848:	bl	#-1394
 800084c:	str	r1, [sp, #44]
 800084e:	str	r0, [sp, #40]
 8000850:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x48>
 8000852:	b	#6 <core::str::next_code_point::hd1f1799271f9b2b2+0x52>
 8000854:	ldr	r0, [sp, #40]
 8000856:	ldr	r1, [sp, #44]
 8000858:	add	sp, #88
 800085a:	pop	{r7, pc}
 800085c:	b	#-12 <core::str::next_code_point::hd1f1799271f9b2b2+0x4a>
 800085e:	ldr	r0, [sp, #52]
 8000860:	str	r0, [sp, #60]
 8000862:	ldr	r0, [sp, #60]
 8000864:	ldrb	r0, [r0]
 8000866:	strb.w	r0, [sp, #51]
 800086a:	ldrsb.w	r0, [sp, #51]
 800086e:	cmp	r0, #0
 8000870:	blt	#12 <core::str::next_code_point::hd1f1799271f9b2b2+0x76>
 8000872:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x6a>
 8000874:	ldrb.w	r0, [sp, #51]
 8000878:	str	r0, [sp, #44]
 800087a:	movs	r0, #1
 800087c:	str	r0, [sp, #40]
 800087e:	b	#-38 <core::str::next_code_point::hd1f1799271f9b2b2+0x52>
 8000880:	ldrb.w	r0, [sp, #51]
 8000884:	movs	r1, #2
 8000886:	bl	#688
 800088a:	str	r0, [sp, #64]
 800088c:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x84>
 800088e:	ldr	r0, [sp, #36]
 8000890:	bl	#406
 8000894:	str	r0, [sp, #20]
 8000896:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x8e>
 8000898:	ldr	r0, [sp, #20]
 800089a:	bl	#598
 800089e:	strb.w	r0, [sp, #71]
 80008a2:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x9a>
 80008a4:	ldr	r0, [sp, #64]
 80008a6:	ldrb.w	r1, [sp, #71]
 80008aa:	bl	#692
 80008ae:	str	r0, [sp, #72]
 80008b0:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xa8>
 80008b2:	ldrb.w	r0, [sp, #51]
 80008b6:	cmp	r0, #224
 80008b8:	blo	#126 <core::str::next_code_point::hd1f1799271f9b2b2+0x130>
 80008ba:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xb2>
 80008bc:	ldr	r0, [sp, #36]
 80008be:	bl	#360
 80008c2:	str	r0, [sp, #16]
 80008c4:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xbc>
 80008c6:	ldr	r0, [sp, #16]
 80008c8:	bl	#552
 80008cc:	strb.w	r0, [sp, #79]
 80008d0:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xc8>
 80008d2:	ldrb.w	r0, [sp, #71]
 80008d6:	and	r0, r0, #63
 80008da:	ldrb.w	r1, [sp, #79]
 80008de:	bl	#640
 80008e2:	str	r0, [sp, #80]
 80008e4:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xdc>
 80008e6:	ldr	r0, [sp, #64]
 80008e8:	ldr	r1, [sp, #80]
 80008ea:	orr.w	r0, r1, r0, lsl #12
 80008ee:	str	r0, [sp, #72]
 80008f0:	ldrb.w	r0, [sp, #51]
 80008f4:	cmp	r0, #240
 80008f6:	blo	#62 <core::str::next_code_point::hd1f1799271f9b2b2+0x12e>
 80008f8:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xf0>
 80008fa:	ldr	r0, [sp, #36]
 80008fc:	bl	#298
 8000900:	str	r0, [sp, #12]
 8000902:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0xfa>
 8000904:	ldr	r0, [sp, #12]
 8000906:	bl	#490
 800090a:	strb.w	r0, [sp, #87]
 800090e:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x106>
 8000910:	ldr	r0, [sp, #64]
 8000912:	and	r0, r0, #7
 8000916:	lsls	r0, r0, #18
 8000918:	ldr	r1, [sp, #80]
 800091a:	ldrb.w	r2, [sp, #87]
 800091e:	str	r0, [sp, #8]
 8000920:	mov	r0, r1
 8000922:	mov	r1, r2
 8000924:	bl	#570
 8000928:	str	r0, [sp, #4]
 800092a:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x122>
 800092c:	ldr	r0, [sp, #8]
 800092e:	ldr	r1, [sp, #4]
 8000930:	orr.w	r2, r0, r1
 8000934:	str	r2, [sp, #72]
 8000936:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x12e>
 8000938:	b	#-2 <core::str::next_code_point::hd1f1799271f9b2b2+0x130>
 800093a:	ldr	r0, [sp, #72]
 800093c:	str	r0, [sp, #44]
 800093e:	movs	r0, #1
 8000940:	str	r0, [sp, #40]
 8000942:	b	#-242 <core::str::next_code_point::hd1f1799271f9b2b2+0x4a>

0000000008000944 <I as core::iter::traits::collect::IntoIterator>::into_iter::h0f0ff9c450fd6cb1:
 8000944:	sub	sp, #16
 8000946:	mov	r2, r1
 8000948:	mov	r3, r0
 800094a:	str	r0, [sp, #8]
 800094c:	str	r1, [sp, #12]
 800094e:	ldr	r0, [sp, #8]
 8000950:	ldr	r1, [sp, #12]
 8000952:	str	r2, [sp, #4]
 8000954:	str	r3, [sp]
 8000956:	add	sp, #16
 8000958:	bx	lr

000000000800095a <core::str::Chars as core::iter::traits::iterator::Iterator>::next::{{closure}}::h25be58123eb0e133:
 800095a:	push	{r7, lr}
 800095c:	sub	sp, #16
 800095e:	mov	r1, r0
 8000960:	str	r0, [sp, #12]
 8000962:	ldr	r0, [sp, #12]
 8000964:	str	r1, [sp, #4]
 8000966:	bl	#352
 800096a:	str	r0, [sp]
 800096c:	b	#-2 <<core::str::Chars as core::iter::traits::iterator::Iterator>::next::{{closure}}::h25be58123eb0e133+0x14>
 800096e:	ldr	r0, [sp]
 8000970:	add	sp, #16
 8000972:	pop	{r7, pc}

0000000008000974 core::slice::from_raw_parts_mut::hd737c02bc7d5a83c:
 8000974:	sub	sp, #32
 8000976:	mov	r2, r1
 8000978:	mov	r3, r0
 800097a:	str	r0, [sp, #8]
 800097c:	str	r1, [sp, #12]
 800097e:	ldr	r0, [sp, #8]
 8000980:	ldr	r1, [sp, #12]
 8000982:	str	r0, [sp, #24]
 8000984:	str	r1, [sp, #28]
 8000986:	ldr	r0, [sp, #24]
 8000988:	ldr	r1, [sp, #28]
 800098a:	str	r0, [sp, #16]
 800098c:	str	r1, [sp, #20]
 800098e:	ldr	r0, [sp, #16]
 8000990:	ldr	r1, [sp, #20]
 8000992:	str	r2, [sp, #4]
 8000994:	str	r3, [sp]
 8000996:	add	sp, #32
 8000998:	bx	lr

000000000800099a core::slice::<impl [T]>::iter::h9d83ff0f1233be15:
 800099a:	push	{r7, lr}
 800099c:	sub	sp, #64
 800099e:	mov	r2, r1
 80009a0:	mov	r3, r0
 80009a2:	str	r0, [sp, #36]
 80009a4:	str	r1, [sp, #40]
 80009a6:	ldr	r0, [sp, #36]
 80009a8:	ldr	r1, [sp, #40]
 80009aa:	str	r2, [sp, #32]
 80009ac:	str	r3, [sp, #28]
 80009ae:	bl	#1748
 80009b2:	str	r0, [sp, #52]
 80009b4:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x1c>
 80009b6:	ldr	r0, [sp, #52]
 80009b8:	bl	#-702
 80009bc:	str	r0, [sp, #24]
 80009be:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x26>
 80009c0:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x28>
 80009c2:	bl	#284
 80009c6:	str	r0, [sp, #20]
 80009c8:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x30>
 80009ca:	ldr	r0, [sp, #20]
 80009cc:	cmp	r0, #0
 80009ce:	bne	#20 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x4c>
 80009d0:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x38>
 80009d2:	ldr	r0, [sp, #52]
 80009d4:	ldr	r1, [sp, #36]
 80009d6:	ldr	r2, [sp, #40]
 80009d8:	str	r0, [sp, #16]
 80009da:	mov	r0, r1
 80009dc:	mov	r1, r2
 80009de:	bl	#1672
 80009e2:	str	r0, [sp, #12]
 80009e4:	b	#18 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x60>
 80009e6:	ldr	r0, [sp, #52]
 80009e8:	ldr	r1, [sp, #36]
 80009ea:	ldr	r2, [sp, #40]
 80009ec:	str	r0, [sp, #8]
 80009ee:	mov	r0, r1
 80009f0:	mov	r1, r2
 80009f2:	bl	#1652
 80009f6:	str	r0, [sp, #4]
 80009f8:	b	#16 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x72>
 80009fa:	ldr	r0, [sp, #16]
 80009fc:	ldr	r1, [sp, #12]
 80009fe:	bl	#-874
 8000a02:	str	r0, [sp]
 8000a04:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x6c>
 8000a06:	ldr	r0, [sp]
 8000a08:	str	r0, [sp, #56]
 8000a0a:	b	#12 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x80>
 8000a0c:	ldr	r0, [sp, #8]
 8000a0e:	ldr	r1, [sp, #4]
 8000a10:	bl	#-824
 8000a14:	str	r0, [sp, #56]
 8000a16:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x7e>
 8000a18:	b	#-2 <core::slice::<impl [T]>::iter::h9d83ff0f1233be15+0x80>
 8000a1a:	ldr	r0, [sp, #52]
 8000a1c:	ldr	r1, [sp, #56]
 8000a1e:	str	r0, [sp, #44]
 8000a20:	str	r1, [sp, #48]
 8000a22:	ldr	r0, [sp, #44]
 8000a24:	ldr	r1, [sp, #48]
 8000a26:	add	sp, #64
 8000a28:	pop	{r7, pc}

0000000008000a2a <core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481:
 8000a2a:	push	{r7, lr}
 8000a2c:	sub	sp, #48
 8000a2e:	mov	r1, r0
 8000a30:	str	r0, [sp, #24]
 8000a32:	ldr	r0, [sp, #24]
 8000a34:	ldr	r0, [r0]
 8000a36:	str	r1, [sp, #20]
 8000a38:	bl	#-830
 8000a3c:	str	r0, [sp, #16]
 8000a3e:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x16>
 8000a40:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x18>
 8000a42:	bl	#156
 8000a46:	str	r0, [sp, #12]
 8000a48:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x20>
 8000a4a:	ldr	r0, [sp, #12]
 8000a4c:	cmp	r0, #0
 8000a4e:	beq	#16 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x38>
 8000a50:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x28>
 8000a52:	ldr	r0, [sp, #24]
 8000a54:	ldr	r0, [r0, #4]
 8000a56:	bl	#-860
 8000a5a:	str	r0, [sp, #8]
 8000a5c:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x34>
 8000a5e:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x36>
 8000a60:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x38>
 8000a62:	ldr	r0, [sp, #24]
 8000a64:	ldr	r1, [r0]
 8000a66:	ldr	r0, [r0, #4]
 8000a68:	cmp	r1, r0
 8000a6a:	bne	#6 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x4a>
 8000a6c:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x44>
 8000a6e:	movs	r0, #0
 8000a70:	str	r0, [sp, #28]
 8000a72:	b	#78 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x9a>
 8000a74:	ldr	r0, [sp, #24]
 8000a76:	str	r0, [sp, #32]
 8000a78:	movs	r0, #1
 8000a7a:	str	r0, [sp, #36]
 8000a7c:	bl	#98
 8000a80:	cmp	r0, #0
 8000a82:	bne	#24 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x74>
 8000a84:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x5c>
 8000a86:	ldr	r0, [sp, #32]
 8000a88:	ldr	r0, [r0, #4]
 8000a8a:	ldr	r1, [sp, #36]
 8000a8c:	rsbs	r1, r1, #0
 8000a8e:	bl	#-984
 8000a92:	ldr	r1, [sp, #32]
 8000a94:	str	r0, [r1, #4]
 8000a96:	ldr	r0, [sp, #32]
 8000a98:	ldr	r0, [r0]
 8000a9a:	str	r0, [sp, #40]
 8000a9c:	b	#24 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x8e>
 8000a9e:	ldr	r0, [sp, #32]
 8000aa0:	ldr	r0, [r0]
 8000aa2:	str	r0, [sp, #44]
 8000aa4:	ldr	r0, [sp, #32]
 8000aa6:	ldr	r0, [r0]
 8000aa8:	ldr	r1, [sp, #36]
 8000aaa:	bl	#1390
 8000aae:	ldr	r1, [sp, #32]
 8000ab0:	str	r0, [r1]
 8000ab2:	ldr	r0, [sp, #44]
 8000ab4:	str	r0, [sp, #40]
 8000ab6:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x8e>
 8000ab8:	ldr	r0, [sp, #40]
 8000aba:	str	r0, [sp, #4]
 8000abc:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x94>
 8000abe:	ldr	r0, [sp, #4]
 8000ac0:	str	r0, [sp, #28]
 8000ac2:	b	#-2 <<core::slice::Iter<T> as core::iter::traits::iterator::Iterator>::next::hfc9c2dbde71d5481+0x9a>
 8000ac4:	ldr	r0, [sp, #28]
 8000ac6:	add	sp, #48
 8000ac8:	pop	{r7, pc}

0000000008000aca core::char::convert::from_u32_unchecked::hed4289168c53e886:
 8000aca:	sub	sp, #16
 8000acc:	mov	r1, r0
 8000ace:	str	r0, [sp, #8]
 8000ad0:	ldr	r0, [sp, #8]
 8000ad2:	str	r0, [sp, #12]
 8000ad4:	ldr	r0, [sp, #12]
 8000ad6:	str	r1, [sp, #4]
 8000ad8:	str	r0, [sp]
 8000ada:	b	#-2 <core::char::convert::from_u32_unchecked::hed4289168c53e886+0x12>
 8000adc:	ldr	r0, [sp]
 8000ade:	add	sp, #16
 8000ae0:	bx	lr

0000000008000ae2 core::mem::size_of::hde43c0b296638787:
 8000ae2:	sub	sp, #8
 8000ae4:	movs	r0, #1
 8000ae6:	str	r0, [sp, #4]
 8000ae8:	ldr	r0, [sp, #4]
 8000aea:	str	r0, [sp]
 8000aec:	b	#-2 <core::mem::size_of::hde43c0b296638787+0xc>
 8000aee:	ldr	r0, [sp]
 8000af0:	add	sp, #8
 8000af2:	bx	lr

0000000008000af4 core::str::unwrap_or_0::hf16e946c40ff0af4:
 8000af4:	sub	sp, #16
 8000af6:	mov	r1, r0
 8000af8:	str	r0, [sp, #8]
 8000afa:	ldr	r0, [sp, #8]
 8000afc:	cmp	r0, #0
 8000afe:	mov	r2, r0
 8000b00:	it	ne
 8000b02:	movne	r2, #1
 8000b04:	cmp	r0, #0
 8000b06:	str	r1, [sp, #4]
 8000b08:	str	r2, [sp]
 8000b0a:	beq	#28 <core::str::unwrap_or_0::hf16e946c40ff0af4+0x36>
 8000b0c:	b	#-2 <core::str::unwrap_or_0::hf16e946c40ff0af4+0x1a>
 8000b0e:	ldr	r0, [sp]
 8000b10:	cmp	r0, #1
 8000b12:	beq	#2 <core::str::unwrap_or_0::hf16e946c40ff0af4+0x24>
 8000b14:	b	#-2 <core::str::unwrap_or_0::hf16e946c40ff0af4+0x22>
 8000b16:	trap
 8000b18:	ldr	r0, [sp, #8]
 8000b1a:	ldrb	r0, [r0]
 8000b1c:	strb.w	r0, [sp, #15]
 8000b20:	ldrb.w	r0, [sp, #15]
 8000b24:	strb.w	r0, [sp, #14]
 8000b28:	b	#6 <core::str::unwrap_or_0::hf16e946c40ff0af4+0x3e>
 8000b2a:	movs	r0, #0
 8000b2c:	strb.w	r0, [sp, #14]
 8000b30:	b	#-2 <core::str::unwrap_or_0::hf16e946c40ff0af4+0x3e>
 8000b32:	ldrb.w	r0, [sp, #14]
 8000b36:	add	sp, #16
 8000b38:	bx	lr

0000000008000b3a core::str::utf8_first_byte::he23bf2613cafe958:
 8000b3a:	sub	sp, #16
 8000b3c:	mov	r2, r1
 8000b3e:	mov	r3, r0
 8000b40:	strb.w	r0, [sp, #11]
 8000b44:	str	r1, [sp, #12]
 8000b46:	ldrb.w	r0, [sp, #11]
 8000b4a:	ldr	r1, [sp, #12]
 8000b4c:	and	r1, r1, #7
 8000b50:	mov.w	r12, #127
 8000b54:	lsr.w	r1, r12, r1
 8000b58:	ands	r0, r1
 8000b5a:	str	r2, [sp, #4]
 8000b5c:	str	r3, [sp]
 8000b5e:	add	sp, #16
 8000b60:	bx	lr

0000000008000b62 core::str::utf8_acc_cont_byte::h88d01021f03600cc:
 8000b62:	sub	sp, #16
 8000b64:	mov	r2, r1
 8000b66:	mov	r3, r0
 8000b68:	str	r0, [sp, #8]
 8000b6a:	strb.w	r1, [sp, #15]
 8000b6e:	ldr	r0, [sp, #8]
 8000b70:	ldrb.w	r1, [sp, #15]
 8000b74:	and	r1, r1, #63
 8000b78:	orr.w	r0, r1, r0, lsl #6
 8000b7c:	str	r2, [sp, #4]
 8000b7e:	str	r3, [sp]
 8000b80:	add	sp, #16
 8000b82:	bx	lr

0000000008000b84 core::str::<impl str>::chars::hdbdac6b21defe0c2:
 8000b84:	push	{r7, lr}
 8000b86:	sub	sp, #56
 8000b88:	mov	r2, r1
 8000b8a:	mov	r3, r0
 8000b8c:	str	r0, [sp, #24]
 8000b8e:	str	r1, [sp, #28]
 8000b90:	ldr	r0, [sp, #24]
 8000b92:	ldr	r1, [sp, #28]
 8000b94:	str	r0, [sp, #40]
 8000b96:	str	r1, [sp, #44]
 8000b98:	ldr	r0, [sp, #40]
 8000b9a:	ldr	r1, [sp, #44]
 8000b9c:	str	r0, [sp, #48]
 8000b9e:	str	r1, [sp, #52]
 8000ba0:	ldr	r0, [sp, #48]
 8000ba2:	ldr	r1, [sp, #52]
 8000ba4:	str	r2, [sp, #20]
 8000ba6:	str	r3, [sp, #16]
 8000ba8:	str	r0, [sp, #12]
 8000baa:	str	r1, [sp, #8]
 8000bac:	b	#-2 <core::str::<impl str>::chars::hdbdac6b21defe0c2+0x2a>
 8000bae:	ldr	r0, [sp, #12]
 8000bb0:	ldr	r1, [sp, #8]
 8000bb2:	bl	#-540
 8000bb6:	str	r0, [sp, #4]
 8000bb8:	str	r1, [sp]
 8000bba:	b	#-2 <core::str::<impl str>::chars::hdbdac6b21defe0c2+0x38>
 8000bbc:	ldr	r0, [sp, #4]
 8000bbe:	str	r0, [sp, #32]
 8000bc0:	ldr	r1, [sp]
 8000bc2:	str	r1, [sp, #36]
 8000bc4:	ldr	r0, [sp, #32]
 8000bc6:	ldr	r1, [sp, #36]
 8000bc8:	add	sp, #56
 8000bca:	pop	{r7, pc}

0000000008000bcc <core::str::Chars as core::iter::traits::iterator::Iterator>::next::hf2f15838497d34f1:
 8000bcc:	push	{r7, lr}
 8000bce:	sub	sp, #24
 8000bd0:	mov	r1, r0
 8000bd2:	str	r0, [sp, #16]
 8000bd4:	ldr	r0, [sp, #16]
 8000bd6:	str	r1, [sp, #12]
 8000bd8:	bl	#-978
 8000bdc:	str	r0, [sp, #8]
 8000bde:	str	r1, [sp, #4]
 8000be0:	b	#-2 <<core::str::Chars as core::iter::traits::iterator::Iterator>::next::hf2f15838497d34f1+0x16>
 8000be2:	ldr	r0, [sp, #8]
 8000be4:	ldr	r1, [sp, #4]
 8000be6:	bl	#-2622
 8000bea:	str	r0, [sp]
 8000bec:	b	#-2 <<core::str::Chars as core::iter::traits::iterator::Iterator>::next::hf2f15838497d34f1+0x22>
 8000bee:	ldr	r0, [sp]
 8000bf0:	add	sp, #24
 8000bf2:	pop	{r7, pc}

0000000008000bf4 app::main::{{closure}}::h63a51b4bb0b06fee:
 8000bf4:	push	{r7, lr}
 8000bf6:	sub	sp, #24
 8000bf8:	mov	r2, r1
 8000bfa:	mov	r3, r0
 8000bfc:	str	r0, [sp, #16]
 8000bfe:	str	r1, [sp, #20]
 8000c00:	ldr	r0, [sp, #16]
 8000c02:	ldr	r1, [sp, #20]
 8000c04:	str	r2, [sp, #12]
 8000c06:	str	r3, [sp, #8]
 8000c08:	bl	#164
 8000c0c:	uxtb	r0, r0
 8000c0e:	str	r0, [sp, #4]
 8000c10:	b	#-2 <app::main::{{closure}}::h63a51b4bb0b06fee+0x1e>
 8000c12:	ldr	r0, [sp, #4]
 8000c14:	add	sp, #24
 8000c16:	pop	{r7, pc}

0000000008000c18 device::serial::Usart::new::h4df303e07f000e77:
 8000c18:	sub	sp, #12
 8000c1a:	mov	r1, r0
 8000c1c:	str	r0, [sp, #4]
 8000c1e:	ldr	r0, [sp, #4]
 8000c20:	str	r0, [sp, #8]
 8000c22:	ldr	r0, [sp, #8]
 8000c24:	str	r1, [sp]
 8000c26:	add	sp, #12
 8000c28:	bx	lr

0000000008000c2a device::serial::Usart::get_registers_ref::h0468853add54df39:
 8000c2a:	sub	sp, #8
 8000c2c:	mov	r1, r0
 8000c2e:	str	r0, [sp, #4]
 8000c30:	ldr	r0, [sp, #4]
 8000c32:	ldr	r0, [r0]
 8000c34:	str	r1, [sp]
 8000c36:	add	sp, #8
 8000c38:	bx	lr

0000000008000c3a <device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e:
 8000c3a:	push	{r7, lr}
 8000c3c:	sub	sp, #40
 8000c3e:	mov	r2, r1
 8000c40:	str	r1, [sp, #20]
 8000c42:	ldr	r1, [sp, #20]
 8000c44:	str	r0, [sp, #16]
 8000c46:	mov	r0, r1
 8000c48:	str	r2, [sp, #12]
 8000c4a:	bl	#-36
 8000c4e:	str	r0, [sp, #24]
 8000c50:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x18>
 8000c52:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x1a>
 8000c54:	ldr	r0, [sp, #24]
 8000c56:	str	r0, [sp, #32]
 8000c58:	ldr	r0, [sp, #32]
 8000c5a:	bl	#892
 8000c5e:	bl	#902
 8000c62:	str	r0, [sp, #8]
 8000c64:	b	#18 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x40>
 8000c66:	ldr	r0, [sp, #24]
 8000c68:	adds	r0, #4
 8000c6a:	str	r0, [sp, #36]
 8000c6c:	ldr	r0, [sp, #36]
 8000c6e:	bl	#872
 8000c72:	bl	#882
 8000c76:	str	r0, [sp, #4]
 8000c78:	b	#10 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x4c>
 8000c7a:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x42>
 8000c7c:	ldr	r0, [sp, #8]
 8000c7e:	lsls	r1, r0, #26
 8000c80:	cmp	r1, #0
 8000c82:	bpl	#-50 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x1a>
 8000c84:	b	#-34 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x2c>
 8000c86:	ldr	r0, [sp, #4]
 8000c88:	uxtb	r1, r0
 8000c8a:	str	r1, [sp, #28]
 8000c8c:	ldr	r1, [sp, #28]
 8000c8e:	cmp	r1, #13
 8000c90:	bne	#12 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x66>
 8000c92:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x5a>
 8000c94:	movs	r0, #10
 8000c96:	ldr	r1, [sp, #16]
 8000c98:	str	r0, [r1, #4]
 8000c9a:	movs	r0, #0
 8000c9c:	strb	r0, [r1]
 8000c9e:	b	#10 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x72>
 8000ca0:	ldr	r0, [sp, #28]
 8000ca2:	ldr	r1, [sp, #16]
 8000ca4:	str	r0, [r1, #4]
 8000ca6:	movs	r0, #0
 8000ca8:	strb	r0, [r1]
 8000caa:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Read<char>>::read::h0ff0ff24dcbdda2e+0x72>
 8000cac:	add	sp, #40
 8000cae:	pop	{r7, pc}

0000000008000cb0 <device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72:
 8000cb0:	push	{r7, lr}
 8000cb2:	sub	sp, #64
 8000cb4:	mov	r2, r1
 8000cb6:	mov	r3, r0
 8000cb8:	str	r0, [sp, #20]
 8000cba:	str	r1, [sp, #24]
 8000cbc:	ldr	r0, [sp, #20]
 8000cbe:	str	r2, [sp, #16]
 8000cc0:	str	r3, [sp, #12]
 8000cc2:	bl	#-156
 8000cc6:	str	r0, [sp, #32]
 8000cc8:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x1a>
 8000cca:	ldr	r0, [sp, #24]
 8000ccc:	cmp	r0, #10
 8000cce:	bne	#56 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x5a>
 8000cd0:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x22>
 8000cd2:	ldr	r0, [sp, #32]
 8000cd4:	str	r0, [sp, #40]
 8000cd6:	ldr	r0, [sp, #40]
 8000cd8:	bl	#766
 8000cdc:	bl	#776
 8000ce0:	str	r0, [sp, #8]
 8000ce2:	b	#22 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x4c>
 8000ce4:	ldr	r0, [sp, #32]
 8000ce6:	adds	r0, #4
 8000ce8:	str	r0, [sp, #44]
 8000cea:	movs	r0, #13
 8000cec:	str	r0, [sp, #48]
 8000cee:	ldr	r0, [sp, #44]
 8000cf0:	bl	#742
 8000cf4:	ldr	r1, [sp, #48]
 8000cf6:	bl	#776
 8000cfa:	b	#10 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x58>
 8000cfc:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x4e>
 8000cfe:	ldr	r0, [sp, #8]
 8000d00:	lsls	r1, r0, #24
 8000d02:	cmp	r1, #0
 8000d04:	bpl	#-54 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x22>
 8000d06:	b	#-38 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x34>
 8000d08:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x5a>
 8000d0a:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x5c>
 8000d0c:	ldr	r0, [sp, #32]
 8000d0e:	str	r0, [sp, #52]
 8000d10:	ldr	r0, [sp, #52]
 8000d12:	bl	#708
 8000d16:	bl	#718
 8000d1a:	str	r0, [sp, #4]
 8000d1c:	b	#22 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x86>
 8000d1e:	ldr	r0, [sp, #32]
 8000d20:	adds	r0, #4
 8000d22:	ldr	r1, [sp, #24]
 8000d24:	str	r0, [sp, #56]
 8000d26:	str	r1, [sp, #60]
 8000d28:	ldr	r0, [sp, #56]
 8000d2a:	bl	#684
 8000d2e:	ldr	r1, [sp, #60]
 8000d30:	bl	#718
 8000d34:	b	#10 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x92>
 8000d36:	b	#-2 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x88>
 8000d38:	ldr	r0, [sp, #4]
 8000d3a:	lsls	r1, r0, #24
 8000d3c:	cmp	r1, #0
 8000d3e:	bpl	#-54 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x5c>
 8000d40:	b	#-38 <<device::serial::Serial<device::serial::Usart> as embedded_hal::serial::Write<char>>::write::h4f3b2dae16ed4e72+0x6e>
 8000d42:	movs	r0, #0
 8000d44:	strb.w	r0, [sp, #31]
 8000d48:	movs	r0, #2
 8000d4a:	strb.w	r0, [sp, #31]
 8000d4e:	ldrb.w	r0, [sp, #31]
 8000d52:	add	sp, #64
 8000d54:	pop	{r7, pc}

0000000008000d56 device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2:
 8000d56:	push	{r7, lr}
 8000d58:	sub	sp, #64
 8000d5a:	movw	r0, #3072
 8000d5e:	movt	r0, #16386
 8000d62:	bl	#176
 8000d66:	str	r0, [sp, #16]
 8000d68:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x14>
 8000d6a:	add	r0, sp, #16
 8000d6c:	bl	#184
 8000d70:	str	r0, [sp, #20]
 8000d72:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x1e>
 8000d74:	ldr	r0, [sp, #20]
 8000d76:	str	r0, [sp, #8]
 8000d78:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x24>
 8000d7a:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x26>
 8000d7c:	ldr	r0, [sp, #8]
 8000d7e:	str	r0, [sp, #32]
 8000d80:	mov.w	r1, #655360
 8000d84:	str	r1, [sp, #36]
 8000d86:	ldr	r0, [sp, #32]
 8000d88:	bl	#590
 8000d8c:	ldr	r1, [sp, #36]
 8000d8e:	bl	#624
 8000d92:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x3e>
 8000d94:	ldr	r0, [sp, #20]
 8000d96:	adds	r0, #36
 8000d98:	str	r0, [sp, #4]
 8000d9a:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x46>
 8000d9c:	ldr	r0, [sp, #4]
 8000d9e:	str	r0, [sp, #40]
 8000da0:	movs	r1, #119
 8000da2:	str	r1, [sp, #44]
 8000da4:	ldr	r0, [sp, #40]
 8000da6:	bl	#560
 8000daa:	ldr	r1, [sp, #44]
 8000dac:	bl	#594
 8000db0:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x5c>
 8000db2:	movw	r0, #18432
 8000db6:	movt	r0, #16384
 8000dba:	bl	#-422
 8000dbe:	str	r0, [sp, #24]
 8000dc0:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x6c>
 8000dc2:	add	r0, sp, #24
 8000dc4:	bl	#-414
 8000dc8:	str	r0, [sp, #28]
 8000dca:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x76>
 8000dcc:	ldr	r0, [sp, #28]
 8000dce:	adds	r0, #8
 8000dd0:	str	r0, [sp, #48]
 8000dd2:	movw	r0, #1667
 8000dd6:	str	r0, [sp, #52]
 8000dd8:	ldr	r0, [sp, #48]
 8000dda:	bl	#508
 8000dde:	ldr	r1, [sp, #52]
 8000de0:	bl	#542
 8000de4:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x90>
 8000de6:	ldr	r0, [sp, #28]
 8000de8:	adds	r0, #12
 8000dea:	str	r0, [sp]
 8000dec:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x98>
 8000dee:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x9a>
 8000df0:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x9c>
 8000df2:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0x9e>
 8000df4:	ldr	r0, [sp]
 8000df6:	str	r0, [sp, #56]
 8000df8:	movw	r1, #8236
 8000dfc:	str	r1, [sp, #60]
 8000dfe:	ldr	r0, [sp, #56]
 8000e00:	bl	#470
 8000e04:	ldr	r1, [sp, #60]
 8000e06:	bl	#504
 8000e0a:	b	#-2 <device::serial::Serial<device::serial::Usart>::usart3::h707d04b4b52568d2+0xb6>
 8000e0c:	ldr	r0, [sp, #24]
 8000e0e:	str	r0, [sp, #12]
 8000e10:	ldr	r0, [sp, #12]
 8000e12:	add	sp, #64
 8000e14:	pop	{r7, pc}

0000000008000e16 device::gpio::Gpio::new::hf5358e540ad04821:
 8000e16:	sub	sp, #12
 8000e18:	mov	r1, r0
 8000e1a:	str	r0, [sp, #4]
 8000e1c:	ldr	r0, [sp, #4]
 8000e1e:	str	r0, [sp, #8]
 8000e20:	ldr	r0, [sp, #8]
 8000e22:	str	r1, [sp]
 8000e24:	add	sp, #12
 8000e26:	bx	lr

0000000008000e28 device::gpio::Gpio::get_registers_ref::h0d28675aa51543e4:
 8000e28:	sub	sp, #8
 8000e2a:	mov	r1, r0
 8000e2c:	str	r0, [sp, #4]
 8000e2e:	ldr	r0, [sp, #4]
 8000e30:	ldr	r0, [r0]
 8000e32:	str	r1, [sp]
 8000e34:	add	sp, #8
 8000e36:	bx	lr

0000000008000e38 device::rcc::Rcc::get_registers_ref::h8852f3f942a565d8:
 8000e38:	sub	sp, #12
 8000e3a:	mov	r1, r0
 8000e3c:	str	r0, [sp, #4]
 8000e3e:	ldr	r0, [sp, #4]
 8000e40:	ldr	r0, [r0]
 8000e42:	str	r0, [sp, #8]
 8000e44:	ldr	r0, [sp, #8]
 8000e46:	str	r1, [sp]
 8000e48:	add	sp, #12
 8000e4a:	bx	lr

0000000008000e4c DefaultIrqHandler:
 8000e4c:	cmn.w	lr, #3
 8000e50:	bne	#14 <from_kernel>
 8000e52:	mov	r1, sp
 8000e54:	ldr	r1, [r1, #4]
 8000e56:	stm.w	r1, {r4, r5, r6, r7, r8, r9, r10, r11}
 8000e5a:	movw	lr, #65529
 8000e5e:	movt	lr, #65535

0000000008000e62 from_kernel:
 8000e62:	mrs	r0, ipsr
 8000e66:	and	r0, r0, #255
 8000e6a:	sub.w	r0, r0, #16
 8000e6e:	lsrs	r1, r0, #5
 8000e70:	movs	r3, #1
 8000e72:	and	r0, r0, #31
 8000e76:	lsl.w	r0, r3, r0
 8000e7a:	movw	r2, #57728
 8000e7e:	movt	r2, #57344
 8000e82:	str.w	r0, [r2, r1, lsl #2]
 8000e86:	bx	lr

0000000008000e88 device::nvic::Nvic::new::h1eed452a20c88ec2:
 8000e88:	bx	lr

0000000008000e8a device::nvic::Nvic::get_registers_ref::h511f1fbe7b3dbc0c:
 8000e8a:	sub	sp, #12
 8000e8c:	mov	r1, r0
 8000e8e:	str	r0, [sp, #4]
 8000e90:	movw	r0, #57600
 8000e94:	movt	r0, #57344
 8000e98:	str	r0, [sp, #8]
 8000e9a:	ldr	r0, [sp, #8]
 8000e9c:	str	r1, [sp]
 8000e9e:	add	sp, #12
 8000ea0:	bx	lr

0000000008000ea2 device::nvic::Nvic::enable::hb9f52f04aefe5961:
 8000ea2:	push	{r7, lr}
 8000ea4:	sub	sp, #64
 8000ea6:	mov	r2, r1
 8000ea8:	mov	r3, r0
 8000eaa:	str	r0, [sp, #32]
 8000eac:	str	r1, [sp, #36]
 8000eae:	ldr	r0, [sp, #32]
 8000eb0:	str	r2, [sp, #28]
 8000eb2:	str	r3, [sp, #24]
 8000eb4:	bl	#-46
 8000eb8:	str	r0, [sp, #40]
 8000eba:	b	#-2 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x1a>
 8000ebc:	ldr	r0, [sp, #36]
 8000ebe:	str	r0, [sp, #20]
 8000ec0:	b	#-2 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x20>
 8000ec2:	ldr	r0, [sp, #20]
 8000ec4:	lsrs	r1, r0, #5
 8000ec6:	str	r1, [sp, #44]
 8000ec8:	ldr	r1, [sp, #44]
 8000eca:	cmp	r1, #15
 8000ecc:	str	r1, [sp, #16]
 8000ece:	bhi	#72 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x78>
 8000ed0:	b	#-2 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x30>
 8000ed2:	ldr	r0, [sp, #40]
 8000ed4:	ldr	r1, [sp, #16]
 8000ed6:	add.w	r0, r0, r1, lsl #2
 8000eda:	ldr	r2, [sp, #36]
 8000edc:	str	r0, [sp, #12]
 8000ede:	str	r2, [sp, #8]
 8000ee0:	b	#-2 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x40>
 8000ee2:	ldr	r0, [sp, #8]
 8000ee4:	and	r1, r0, #31
 8000ee8:	movs	r2, #1
 8000eea:	lsl.w	r1, r2, r1
 8000eee:	movs	r2, #0
 8000ef0:	cmp	r2, #0
 8000ef2:	str	r1, [sp, #4]
 8000ef4:	bne	#52 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x8a>
 8000ef6:	b	#-2 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x56>
 8000ef8:	ldr	r0, [sp, #12]
 8000efa:	str	r0, [sp, #48]
 8000efc:	ldr	r1, [sp, #4]
 8000efe:	str	r1, [sp, #52]
 8000f00:	ldr	r2, [sp, #48]
 8000f02:	ldr	r3, [sp, #52]
 8000f04:	str	r2, [sp, #56]
 8000f06:	str	r3, [sp, #60]
 8000f08:	ldr	r0, [sp, #56]
 8000f0a:	bl	#204
 8000f0e:	ldr	r1, [sp, #60]
 8000f10:	bl	#238
 8000f14:	b	#-2 <device::nvic::Nvic::enable::hb9f52f04aefe5961+0x74>
 8000f16:	add	sp, #64
 8000f18:	pop	{r7, pc}
 8000f1a:	movw	r0, #6332
 8000f1e:	movt	r0, #2048
 8000f22:	movs	r2, #16
 8000f24:	ldr	r1, [sp, #16]
 8000f26:	bl	#446
 8000f2a:	trap
 8000f2c:	movw	r0, #6388
 8000f30:	movt	r0, #2048
 8000f34:	bl	#374
 8000f38:	trap

0000000008000f3a device::nvic::Nvic::is_pending::h187590472a5a3ffe:
 8000f3a:	push	{r7, lr}
 8000f3c:	sub	sp, #56
 8000f3e:	mov	r2, r1
 8000f40:	mov	r3, r0
 8000f42:	str	r0, [sp, #32]
 8000f44:	str	r1, [sp, #36]
 8000f46:	ldr	r0, [sp, #32]
 8000f48:	str	r2, [sp, #28]
 8000f4a:	str	r3, [sp, #24]
 8000f4c:	bl	#-198
 8000f50:	str	r0, [sp, #40]
 8000f52:	b	#-2 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x1a>
 8000f54:	ldr	r0, [sp, #36]
 8000f56:	str	r0, [sp, #20]
 8000f58:	b	#-2 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x20>
 8000f5a:	ldr	r0, [sp, #20]
 8000f5c:	lsrs	r1, r0, #5
 8000f5e:	str	r1, [sp, #44]
 8000f60:	ldr	r1, [sp, #44]
 8000f62:	cmp	r1, #15
 8000f64:	str	r1, [sp, #16]
 8000f66:	bhi	#80 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x80>
 8000f68:	b	#-2 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x30>
 8000f6a:	ldr	r0, [sp, #40]
 8000f6c:	ldr	r1, [sp, #16]
 8000f6e:	add.w	r0, r0, r1, lsl #2
 8000f72:	add.w	r0, r0, #256
 8000f76:	str	r0, [sp, #48]
 8000f78:	ldr	r0, [sp, #48]
 8000f7a:	str	r0, [sp, #52]
 8000f7c:	ldr	r0, [sp, #52]
 8000f7e:	bl	#88
 8000f82:	bl	#98
 8000f86:	str	r0, [sp, #12]
 8000f88:	b	#-2 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x50>
 8000f8a:	ldr	r0, [sp, #36]
 8000f8c:	str	r0, [sp, #8]
 8000f8e:	b	#-2 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x56>
 8000f90:	ldr	r0, [sp, #8]
 8000f92:	and	r1, r0, #31
 8000f96:	movs	r2, #1
 8000f98:	lsl.w	r1, r2, r1
 8000f9c:	movs	r2, #0
 8000f9e:	cmp	r2, #0
 8000fa0:	str	r1, [sp, #4]
 8000fa2:	bne	#38 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x92>
 8000fa4:	b	#-2 <device::nvic::Nvic::is_pending::h187590472a5a3ffe+0x6c>
 8000fa6:	ldr	r0, [sp, #12]
 8000fa8:	ldr	r1, [sp, #4]
 8000faa:	and.w	r2, r0, r1
 8000fae:	cmp	r2, #0
 8000fb0:	it	ne
 8000fb2:	movne	r2, #1
 8000fb4:	mov	r0, r2
 8000fb6:	add	sp, #56
 8000fb8:	pop	{r7, pc}
 8000fba:	movw	r0, #6412
 8000fbe:	movt	r0, #2048
 8000fc2:	movs	r2, #16
 8000fc4:	ldr	r1, [sp, #16]
 8000fc6:	bl	#286
 8000fca:	trap
 8000fcc:	movw	r0, #6428
 8000fd0:	movt	r0, #2048
 8000fd4:	bl	#214
 8000fd8:	trap

0000000008000fda core::cell::UnsafeCell<T>::get::hdc41e8e3ccf3801e:
 8000fda:	sub	sp, #8
 8000fdc:	mov	r1, r0
 8000fde:	str	r0, [sp, #4]
 8000fe0:	ldr	r0, [sp, #4]
 8000fe2:	str	r1, [sp]
 8000fe4:	add	sp, #8
 8000fe6:	bx	lr

0000000008000fe8 core::ptr::read_volatile::hd762cddbe21c8eed:
 8000fe8:	sub	sp, #16
 8000fea:	mov	r1, r0
 8000fec:	str	r0, [sp, #8]
 8000fee:	ldr	r0, [sp, #8]
 8000ff0:	ldr	r0, [r0]
 8000ff2:	str	r0, [sp, #12]
 8000ff4:	ldr	r0, [sp, #12]
 8000ff6:	str	r1, [sp, #4]
 8000ff8:	str	r0, [sp]
 8000ffa:	b	#-2 <core::ptr::read_volatile::hd762cddbe21c8eed+0x14>
 8000ffc:	ldr	r0, [sp]
 8000ffe:	add	sp, #16
 8001000:	bx	lr

0000000008001002 core::ptr::write_volatile::h210d3b4184f9607e:
 8001002:	sub	sp, #16
 8001004:	mov	r2, r1
 8001006:	mov	r3, r0
 8001008:	str	r0, [sp, #8]
 800100a:	str	r1, [sp, #12]
 800100c:	ldr	r0, [sp, #8]
 800100e:	ldr	r1, [sp, #12]
 8001010:	str	r1, [r0]
 8001012:	str	r2, [sp, #4]
 8001014:	str	r3, [sp]
 8001016:	b	#-2 <core::ptr::write_volatile::h210d3b4184f9607e+0x16>
 8001018:	add	sp, #16
 800101a:	bx	lr

000000000800101c core::ptr::<impl *const T>::offset::hcf03c62b7742004c:
 800101c:	sub	sp, #24
 800101e:	mov	r2, r1
 8001020:	mov	r3, r0
 8001022:	str	r0, [sp, #12]
 8001024:	str	r1, [sp, #16]
 8001026:	ldr	r0, [sp, #12]
 8001028:	ldr	r1, [sp, #16]
 800102a:	add	r0, r1
 800102c:	str	r0, [sp, #20]
 800102e:	ldr	r0, [sp, #20]
 8001030:	str	r2, [sp, #8]
 8001032:	str	r3, [sp, #4]
 8001034:	str	r0, [sp]
 8001036:	b	#-2 <core::ptr::<impl *const T>::offset::hcf03c62b7742004c+0x1c>
 8001038:	ldr	r0, [sp]
 800103a:	add	sp, #24
 800103c:	bx	lr

000000000800103e core::intrinsics::copy_nonoverlapping::hc5bb1fe71390ddbc:
 800103e:	push	{r7, lr}
 8001040:	sub	sp, #32
 8001042:	mov	r3, r2
 8001044:	mov	r12, r1
 8001046:	mov	lr, r0
 8001048:	str	r0, [sp, #20]
 800104a:	str	r1, [sp, #24]
 800104c:	str	r2, [sp, #28]
 800104e:	ldr	r1, [sp, #20]
 8001050:	ldr	r0, [sp, #24]
 8001052:	ldr	r2, [sp, #28]
 8001054:	str	r3, [sp, #16]
 8001056:	str.w	r12, [sp, #12]
 800105a:	str.w	lr, [sp, #8]
 800105e:	bl	#1524
 8001062:	str	r0, [sp, #4]
 8001064:	b	#-2 <core::intrinsics::copy_nonoverlapping::hc5bb1fe71390ddbc+0x28>
 8001066:	add	sp, #32
 8001068:	pop	{r7, pc}

000000000800106a core::slice::<impl [T]>::len::h69821ad470f21ad5:
 800106a:	sub	sp, #24
 800106c:	mov	r2, r1
 800106e:	mov	r3, r0
 8001070:	str	r0, [sp, #8]
 8001072:	str	r1, [sp, #12]
 8001074:	ldr	r0, [sp, #8]
 8001076:	ldr	r1, [sp, #12]
 8001078:	str	r0, [sp, #16]
 800107a:	str	r1, [sp, #20]
 800107c:	ldr	r0, [sp, #20]
 800107e:	str	r2, [sp, #4]
 8001080:	str	r3, [sp]
 8001082:	add	sp, #24
 8001084:	bx	lr

0000000008001086 core::slice::<impl [T]>::as_ptr::h3d27d9c6ecbcd8e1:
 8001086:	sub	sp, #16
 8001088:	mov	r2, r1
 800108a:	mov	r3, r0
 800108c:	str	r0, [sp, #8]
 800108e:	str	r1, [sp, #12]
 8001090:	ldr	r0, [sp, #8]
 8001092:	str	r2, [sp, #4]
 8001094:	str	r3, [sp]
 8001096:	add	sp, #16
 8001098:	bx	lr

000000000800109a core::ptr::real_drop_in_place::h23cf0cad6a44011b:
 800109a:	bx	lr

000000000800109c <T as core::any::Any>::type_id::h2ace5de7d4d0b66d:
 800109c:	movw	r0, #53730
 80010a0:	movw	r1, #50104
 80010a4:	movt	r0, #59659
 80010a8:	movt	r1, #47116
 80010ac:	bx	lr

00000000080010ae core::panicking::panic::h9490155bdf63a737:
 80010ae:	sub	sp, #48
 80010b0:	ldm.w	r0, {r1, r2, r12, lr}
 80010b4:	ldrd	r3, r0, [r0, #16]
 80010b8:	strd	r1, r2, [sp, #24]
 80010bc:	movw	r2, #6452
 80010c0:	movs	r1, #0
 80010c2:	movt	r2, #2048
 80010c6:	str	r1, [sp, #20]
 80010c8:	str	r2, [sp, #16]
 80010ca:	strd	r1, r1, [sp, #8]
 80010ce:	movs	r1, #1
 80010d0:	str	r1, [sp, #4]
 80010d2:	add	r1, sp, #24
 80010d4:	str	r1, [sp]
 80010d6:	add	r1, sp, #32
 80010d8:	strd	r3, r0, [sp, #40]
 80010dc:	mov	r0, sp
 80010de:	strd	r12, lr, [sp, #32]
 80010e2:	bl	#66
 80010e6:	trap

00000000080010e8 core::panicking::panic_bounds_check::h10dc177417d6cdb0:
 80010e8:	sub	sp, #48
 80010ea:	mov	r3, r0
 80010ec:	movw	r0, #5337
 80010f0:	strd	r1, r2, [sp]
 80010f4:	movt	r0, #2048
 80010f8:	mov	r1, sp
 80010fa:	str	r0, [sp, #44]
 80010fc:	strd	r0, r1, [sp, #36]
 8001100:	add	r0, sp, #4
 8001102:	str	r0, [sp, #32]
 8001104:	movs	r0, #2
 8001106:	add	r1, sp, #32
 8001108:	str	r0, [sp, #28]
 800110a:	str	r1, [sp, #24]
 800110c:	movs	r1, #0
 800110e:	str	r1, [sp, #20]
 8001110:	strd	r0, r1, [sp, #12]
 8001114:	movw	r0, #6532
 8001118:	movt	r0, #2048
 800111c:	mov	r1, r3
 800111e:	str	r0, [sp, #8]
 8001120:	add	r0, sp, #8
 8001122:	bl	#2
 8001126:	trap

0000000008001128 core::panicking::panic_fmt::ha529b0a1690ccc0a:
 8001128:	sub	sp, #32
 800112a:	ldrd	r12, r3, [r1]
 800112e:	ldrd	r2, r1, [r1, #8]
 8001132:	str	r1, [sp, #28]
 8001134:	strd	r3, r2, [sp, #20]
 8001138:	strd	r0, r12, [sp, #12]
 800113c:	movw	r0, #6496
 8001140:	movt	r0, #2048
 8001144:	str	r0, [sp, #8]
 8001146:	movw	r0, #6452
 800114a:	movt	r0, #2048
 800114e:	str	r0, [sp, #4]
 8001150:	add	r0, sp, #4
 8001152:	bl	#1046
 8001156:	trap

0000000008001158 core::fmt::Formatter::pad_integral::hfca3854939f4e6bc:
 8001158:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 800115c:	sub	sp, #12
 800115e:	ldrd	r6, r9, [sp, #48]
 8001162:	mov	r7, r3
 8001164:	mov	r10, r2
 8001166:	mov	r4, r0
 8001168:	cbz	r1, #50
 800116a:	ldr.w	lr, [r4]
 800116e:	mov.w	r8, #43
 8001172:	ands	r1, lr, #1
 8001176:	it	eq
 8001178:	moveq.w	r8, #1114112
 800117c:	add.w	r11, r1, r9
 8001180:	lsls.w	r1, lr, #29
 8001184:	bpl	#40 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x58>
 8001186:	cbz	r7, #46
 8001188:	subs	r1, r7, #1
 800118a:	and	r12, r7, #3
 800118e:	cmp	r1, #3
 8001190:	bhs	#40 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x64>
 8001192:	movs	r1, #0
 8001194:	mov	r3, r10
 8001196:	cmp.w	r12, #0
 800119a:	bne	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xb2>
 800119c:	b	#154 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 800119e:	ldr.w	lr, [r4]
 80011a2:	add.w	r11, r9, #1
 80011a6:	mov.w	r8, #45
 80011aa:	lsls.w	r1, lr, #29
 80011ae:	bmi	#-44 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x2e>
 80011b0:	movs	r7, #0
 80011b2:	mov.w	r10, #0
 80011b6:	b	#136 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xea>
 80011b8:	movs	r1, #0
 80011ba:	b	#124 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 80011bc:	strd	r9, r6, [sp, #4]
 80011c0:	sub.w	r6, r12, r7
 80011c4:	movs	r1, #0
 80011c6:	mov	r3, r10
 80011c8:	ldrb	r5, [r3]
 80011ca:	ldrb	r2, [r3, #1]
 80011cc:	ldrb	r0, [r3, #2]
 80011ce:	and	r5, r5, #192
 80011d2:	ldrb.w	r9, [r3, #3]
 80011d6:	cmp	r5, #128
 80011d8:	and	r2, r2, #192
 80011dc:	it	eq
 80011de:	addeq	r1, #1
 80011e0:	cmp	r2, #128
 80011e2:	and	r0, r0, #192
 80011e6:	it	eq
 80011e8:	addeq	r1, #1
 80011ea:	cmp	r0, #128
 80011ec:	and	r0, r9, #192
 80011f0:	it	eq
 80011f2:	addeq	r1, #1
 80011f4:	cmp	r0, #128
 80011f6:	it	eq
 80011f8:	addeq	r1, #1
 80011fa:	adds	r3, #4
 80011fc:	adds	r6, #4
 80011fe:	bne	#-58 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x70>
 8001200:	ldrd	r9, r6, [sp, #4]
 8001204:	cmp.w	r12, #0
 8001208:	beq	#46 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 800120a:	ldrb	r0, [r3]
 800120c:	and	r0, r0, #192
 8001210:	cmp	r0, #128
 8001212:	it	eq
 8001214:	addeq	r1, #1
 8001216:	cmp.w	r12, #1
 800121a:	beq	#28 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 800121c:	ldrb	r0, [r3, #1]
 800121e:	and	r0, r0, #192
 8001222:	cmp	r0, #128
 8001224:	it	eq
 8001226:	addeq	r1, #1
 8001228:	cmp.w	r12, #2
 800122c:	beq	#10 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0xe2>
 800122e:	ldrb	r0, [r3, #2]
 8001230:	and	r0, r0, #192
 8001234:	cmp	r0, #128
 8001236:	it	eq
 8001238:	addeq	r1, #1
 800123a:	add.w	r0, r11, r7
 800123e:	sub.w	r11, r0, r1
 8001242:	ldr	r0, [r4, #8]
 8001244:	cmp	r0, #1
 8001246:	bne	#42 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x11c>
 8001248:	ldr	r5, [r4, #12]
 800124a:	cmp	r5, r11
 800124c:	bls	#36 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x11c>
 800124e:	lsls.w	r0, lr, #28
 8001252:	str	r6, [sp, #8]
 8001254:	bmi	#70 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x146>
 8001256:	ldrb.w	r1, [r4, #48]
 800125a:	sub.w	r0, r5, r11
 800125e:	cmp	r1, #3
 8001260:	it	eq
 8001262:	moveq	r1, #1
 8001264:	lsls	r2, r1, #30
 8001266:	beq	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x17e>
 8001268:	cmp	r1, #2
 800126a:	beq	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x182>
 800126c:	movs	r1, #0
 800126e:	mov	r5, r0
 8001270:	str	r1, [sp, #4]
 8001272:	b	#108 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x18a>
 8001274:	mov	r0, r4
 8001276:	mov	r1, r8
 8001278:	mov	r2, r10
 800127a:	mov	r3, r7
 800127c:	bl	#288
 8001280:	cbz	r0, #8
 8001282:	movs	r6, #1
 8001284:	mov	r0, r6
 8001286:	add	sp, #12
 8001288:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
 800128c:	ldr	r1, [r4, #28]
 800128e:	mov	r2, r9
 8001290:	ldr	r0, [r4, #24]
 8001292:	ldr	r3, [r1, #12]
 8001294:	mov	r1, r6
 8001296:	add	sp, #12
 8001298:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 800129c:	bx	r3
 800129e:	movs	r6, #1
 80012a0:	movs	r0, #48
 80012a2:	strb.w	r6, [r4, #48]
 80012a6:	mov	r1, r8
 80012a8:	str	r0, [r4, #4]
 80012aa:	mov	r0, r4
 80012ac:	mov	r2, r10
 80012ae:	mov	r3, r7
 80012b0:	bl	#236
 80012b4:	cmp	r0, #0
 80012b6:	bne	#-54 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>
 80012b8:	ldrb.w	r1, [r4, #48]
 80012bc:	sub.w	r0, r5, r11
 80012c0:	cmp	r1, #3
 80012c2:	it	eq
 80012c4:	moveq	r1, #1
 80012c6:	lsls	r2, r1, #30
 80012c8:	beq	#116 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1e8>
 80012ca:	cmp	r1, #2
 80012cc:	beq	#118 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1ee>
 80012ce:	mov.w	r8, #0
 80012d2:	mov	r5, r0
 80012d4:	b	#118 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1f6>
 80012d6:	movs	r5, #0
 80012d8:	b	#4 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x188>
 80012da:	lsrs	r5, r0, #1
 80012dc:	adds	r0, #1
 80012de:	lsrs	r0, r0, #1
 80012e0:	str	r0, [sp, #4]
 80012e2:	mov.w	r6, #4294967295
 80012e6:	adds	r6, #1
 80012e8:	cmp	r6, r5
 80012ea:	bhs	#14 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1a4>
 80012ec:	ldr	r1, [r4, #4]
 80012ee:	ldrd	r0, r2, [r4, #24]
 80012f2:	ldr	r2, [r2, #16]
 80012f4:	blx	r2
 80012f6:	cmp	r0, #0
 80012f8:	beq	#-22 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x18e>
 80012fa:	b	#-124 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 80012fc:	mov	r0, r4
 80012fe:	mov	r1, r8
 8001300:	mov	r2, r10
 8001302:	mov	r3, r7
 8001304:	ldr.w	r11, [r4, #4]
 8001308:	bl	#148
 800130c:	cmp	r0, #0
 800130e:	bne	#-144 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 8001310:	ldrd	r0, r1, [r4, #24]
 8001314:	mov	r2, r9
 8001316:	ldr	r3, [r1, #12]
 8001318:	ldr	r1, [sp, #8]
 800131a:	blx	r3
 800131c:	cmp	r0, #0
 800131e:	bne	#-160 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 8001320:	ldrd	r8, r4, [r4, #24]
 8001324:	mov.w	r7, #4294967295
 8001328:	ldr	r5, [sp, #4]
 800132a:	movs	r6, #1
 800132c:	adds	r7, #1
 800132e:	cmp	r7, r5
 8001330:	bhs	#104 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x244>
 8001332:	ldr	r2, [r4, #16]
 8001334:	mov	r0, r8
 8001336:	mov	r1, r11
 8001338:	blx	r2
 800133a:	cmp	r0, #0
 800133c:	beq	#-20 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1d4>
 800133e:	b	#-190 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>
 8001340:	movs	r5, #0
 8001342:	mov	r8, r0
 8001344:	b	#6 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1f6>
 8001346:	lsrs	r5, r0, #1
 8001348:	adds	r0, #1
 800134a:	lsr.w	r8, r0, #1
 800134e:	mov.w	r6, #4294967295
 8001352:	adds	r6, #1
 8001354:	cmp	r6, r5
 8001356:	bhs	#14 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x210>
 8001358:	ldr	r1, [r4, #4]
 800135a:	ldrd	r0, r2, [r4, #24]
 800135e:	ldr	r2, [r2, #16]
 8001360:	blx	r2
 8001362:	cmp	r0, #0
 8001364:	beq	#-22 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x1fa>
 8001366:	b	#-232 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 8001368:	ldr.w	r10, [r4, #4]
 800136c:	mov	r2, r9
 800136e:	ldrd	r0, r1, [r4, #24]
 8001372:	ldr	r3, [r1, #12]
 8001374:	ldr	r1, [sp, #8]
 8001376:	blx	r3
 8001378:	cmp	r0, #0
 800137a:	bne.w	#-252 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12a>
 800137e:	ldrd	r7, r4, [r4, #24]
 8001382:	mov.w	r5, #4294967295
 8001386:	movs	r6, #1
 8001388:	adds	r5, #1
 800138a:	cmp	r5, r8
 800138c:	bhs	#12 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x244>
 800138e:	ldr	r2, [r4, #16]
 8001390:	mov	r0, r7
 8001392:	mov	r1, r10
 8001394:	blx	r2
 8001396:	cmp	r0, #0
 8001398:	beq	#-20 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x230>
 800139a:	b	#-282 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>
 800139c:	movs	r6, #0
 800139e:	b	#-286 <core::fmt::Formatter::pad_integral::hfca3854939f4e6bc+0x12c>

00000000080013a0 core::fmt::Formatter::pad_integral::write_prefix::h4fed2352a68de687:
 80013a0:	push	{r4, r5, r6, lr}
 80013a2:	mov	r4, r3
 80013a4:	mov	r5, r2
 80013a6:	mov	r6, r0
 80013a8:	cmp.w	r1, #1114112
 80013ac:	beq	#12 <core::fmt::Formatter::pad_integral::write_prefix::h4fed2352a68de687+0x1c>
 80013ae:	ldrd	r0, r2, [r6, #24]
 80013b2:	ldr	r2, [r2, #16]
 80013b4:	blx	r2
 80013b6:	cbz	r0, #2
 80013b8:	movs	r0, #1
 80013ba:	pop	{r4, r5, r6, pc}
 80013bc:	cbz	r5, #14
 80013be:	ldrd	r0, r1, [r6, #24]
 80013c2:	mov	r2, r4
 80013c4:	ldr	r3, [r1, #12]
 80013c6:	mov	r1, r5
 80013c8:	pop.w	{r4, r5, r6, lr}
 80013cc:	bx	r3
 80013ce:	movs	r0, #0
 80013d0:	pop	{r4, r5, r6, pc}

00000000080013d2 core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5:
 80013d2:	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
 80013d6:	sub	sp, #60
 80013d8:	mov	r6, r1
 80013da:	movw	r1, #10000
 80013de:	mov	r7, r2
 80013e0:	cmp	r0, r1
 80013e2:	blo	#138 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x9e>
 80013e4:	movw	r8, #5977
 80013e8:	movw	r9, #34079
 80013ec:	movw	lr, #57599
 80013f0:	strd	r6, r7, [sp, #12]
 80013f4:	movw	r6, #6548
 80013f8:	add.w	r11, sp, #21
 80013fc:	movs	r3, #0
 80013fe:	movt	r8, #53687
 8001402:	movt	r9, #20971
 8001406:	mov.w	r10, #100
 800140a:	movt	r6, #2048
 800140e:	movt	lr, #1525
 8001412:	umull	r4, r5, r0, r8
 8001416:	add.w	r2, r11, r3
 800141a:	subs	r3, #4
 800141c:	cmp	r0, lr
 800141e:	lsr.w	r4, r5, #13
 8001422:	mls	r5, r4, r1, r0
 8001426:	mov	r0, r4
 8001428:	umull	r7, r12, r5, r9
 800142c:	lsr.w	r7, r12, #5
 8001430:	mls	r5, r7, r10, r5
 8001434:	ldrh.w	r7, [r6, r7, lsl #1]
 8001438:	strh.w	r7, [r2, #35]
 800143c:	ldrh.w	r5, [r6, r5, lsl #1]
 8001440:	strh.w	r5, [r2, #37]
 8001444:	bhi	#-54 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x40>
 8001446:	ldrd	r6, r7, [sp, #12]
 800144a:	add.w	r2, r3, #39
 800144e:	mov	r0, r4
 8001450:	cmp	r0, #99
 8001452:	bgt	#32 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0xa4>
 8001454:	mov	r3, r0
 8001456:	cmp	r3, #9
 8001458:	ble	#74 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0xd4>
 800145a:	movw	r1, #6548
 800145e:	subs	r0, r2, #2
 8001460:	movt	r1, #2048
 8001464:	add.w	r2, sp, #21
 8001468:	ldrh.w	r1, [r1, r3, lsl #1]
 800146c:	strh	r1, [r2, r0]
 800146e:	b	#64 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0xe0>
 8001470:	movs	r2, #39
 8001472:	cmp	r0, #99
 8001474:	ble	#-36 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x82>
 8001476:	movw	r3, #34079
 800147a:	uxth	r1, r0
 800147c:	movt	r3, #20971
 8001480:	subs	r2, #2
 8001482:	umull	r1, r3, r1, r3
 8001486:	movs	r1, #100
 8001488:	lsrs	r3, r3, #5
 800148a:	mls	r0, r3, r1, r0
 800148e:	movw	r1, #6548
 8001492:	movt	r1, #2048
 8001496:	uxth	r0, r0
 8001498:	ldrh.w	r0, [r1, r0, lsl #1]
 800149c:	add.w	r1, sp, #21
 80014a0:	strh	r0, [r1, r2]
 80014a2:	cmp	r3, #9
 80014a4:	bgt	#-78 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5+0x88>
 80014a6:	subs	r0, r2, #1
 80014a8:	add.w	r2, sp, #21
 80014ac:	add.w	r1, r3, #48
 80014b0:	strb	r1, [r2, r0]
 80014b2:	rsb.w	r1, r0, #39
 80014b6:	add.w	r2, sp, #21
 80014ba:	add	r0, r2
 80014bc:	movw	r2, #6452
 80014c0:	strd	r0, r1, [sp]
 80014c4:	movt	r2, #2048
 80014c8:	mov	r0, r7
 80014ca:	mov	r1, r6
 80014cc:	movs	r3, #0
 80014ce:	bl	#-890
 80014d2:	add	sp, #60
 80014d4:	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

00000000080014d8 core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h00bdabc63447a895:
 80014d8:	ldr	r0, [r0]
 80014da:	mov	r2, r1
 80014dc:	movs	r1, #1
 80014de:	b.w	#-272 <core::fmt::num::imp::fmt_u32::h7d2133624ffdb6b5>

00000000080014e2 Reset:
 80014e2:	sub	sp, #16
 80014e4:	movw	r0, #0
 80014e8:	movt	r0, #8192
 80014ec:	movw	r1, #0
 80014f0:	movt	r1, #8192
 80014f4:	subs	r2, r1, r0
 80014f6:	cmp	r1, r0
 80014f8:	str	r2, [sp, #4]
 80014fa:	blo	#82 <Reset+0x6e>
 80014fc:	b	#-2 <Reset+0x1c>
 80014fe:	ldr	r0, [sp, #4]
 8001500:	str	r0, [sp, #8]
 8001502:	ldr	r2, [sp, #8]
 8001504:	movw	r0, #0
 8001508:	movt	r0, #8192
 800150c:	movs	r1, #0
 800150e:	bl	#278
 8001512:	b	#-2 <Reset+0x32>
 8001514:	movw	r0, #0
 8001518:	movt	r0, #8192
 800151c:	movw	r1, #0
 8001520:	movt	r1, #8192
 8001524:	subs	r2, r1, r0
 8001526:	cmp	r1, r0
 8001528:	str	r2, [sp]
 800152a:	blo	#48 <Reset+0x7c>
 800152c:	b	#-2 <Reset+0x4c>
 800152e:	ldr	r0, [sp]
 8001530:	str	r0, [sp, #12]
 8001532:	ldr	r2, [sp, #12]
 8001534:	movw	r0, #6900
 8001538:	movt	r0, #2048
 800153c:	movw	r1, #0
 8001540:	movt	r1, #8192
 8001544:	bl	#-1290
 8001548:	b	#-2 <Reset+0x68>
 800154a:	bl	#-3784
 800154e:	trap
 8001550:	movw	r0, #6852
 8001554:	movt	r0, #2048
 8001558:	bl	#-1198
 800155c:	trap
 800155e:	movw	r0, #6876
 8001562:	movt	r0, #2048
 8001566:	bl	#-1212
 800156a:	trap

000000000800156c rust_begin_unwind:
 800156c:	sub	sp, #8
 800156e:	mov	r1, r0
 8001570:	str	r0, [sp, #4]
 8001572:	str	r1, [sp]
 8001574:	b	#-2 <rust_begin_unwind+0xa>
 8001576:	b	#-4 <rust_begin_unwind+0xa>

0000000008001578 DefaultExceptionHandler:
 8001578:	push	{r7, lr}

0000000008001579 UsageFault:
 8001579:	lsls	r5, r6, #2
 800157b:	movs	r0, r4
 800157d:	adds	r0, r6, r3
 800157f: <unknown>
 8001580:	b	#-2 <UsageFault+0x9>
 8001582:	b	#-4 <UsageFault+0x9>

0000000008001584 SVCall:
 8001584:	cmn.w	lr, #7
 8001588:	bne	#16 <to_kernel>
 800158a:	mov.w	r0, #1
 800158e:	msr	control, r0
 8001592:	movw	lr, #65533
 8001596:	movt	lr, #65535
 800159a:	bx	lr

000000000800159c to_kernel:
 800159c:	mov.w	r0, #0
 80015a0:	msr	control, r0
 80015a4:	movw	lr, #65529
 80015a8:	movt	lr, #65535
 80015ac:	bx	lr
 80015ae:	bx	lr

00000000080015b0 cortex_m_semihosting::debug::exit::ha23e0343b8040f7a:
 80015b0:	push	{r7, lr}
 80015b2:	sub	sp, #24
 80015b4:	mov	r1, r0
 80015b6:	strb.w	r0, [sp, #11]
 80015ba:	ldrb.w	r0, [sp, #11]
 80015be:	lsls	r2, r0, #31
 80015c0:	cmp	r2, #0
 80015c2:	str	r1, [sp, #4]
 80015c4:	str	r0, [sp]
 80015c6:	beq	#10 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x24>
 80015c8:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x1a>
 80015ca:	ldr	r0, [sp]
 80015cc:	cmp	r0, #1
 80015ce:	beq	#20 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x36>
 80015d0:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x22>
 80015d2:	trap
 80015d4:	movs	r0, #38
 80015d6:	movt	r0, #2
 80015da:	str	r0, [sp, #16]
 80015dc:	ldr	r0, [sp, #16]
 80015de:	bl	#26
 80015e2:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x34>
 80015e4:	b	#16 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x48>
 80015e6:	movs	r0, #35
 80015e8:	movt	r0, #2
 80015ec:	str	r0, [sp, #20]
 80015ee:	ldr	r0, [sp, #20]
 80015f0:	bl	#8
 80015f4:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x46>
 80015f6:	b	#-2 <cortex_m_semihosting::debug::exit::ha23e0343b8040f7a+0x48>
 80015f8:	add	sp, #24
 80015fa:	pop	{r7, pc}

00000000080015fc cortex_m_semihosting::debug::report_exception::h1a4497b193f7e60c:
 80015fc:	push	{r7, lr}
 80015fe:	sub	sp, #24
 8001600:	mov	r1, r0
 8001602:	str	r0, [sp, #8]
 8001604:	ldr	r0, [sp, #8]
 8001606:	str	r0, [sp, #12]
 8001608:	ldr	r0, [sp, #12]
 800160a:	movs	r2, #24
 800160c:	str	r2, [sp, #16]
 800160e:	str	r0, [sp, #20]
 8001610:	ldr	r0, [sp, #16]
 8001612:	ldr	r2, [sp, #20]
 8001614:	str	r1, [sp, #4]
 8001616:	mov	r1, r2
 8001618:	bl	#8
 800161c:	str	r0, [sp]
 800161e:	b	#-2 <cortex_m_semihosting::debug::report_exception::h1a4497b193f7e60c+0x24>
 8001620:	add	sp, #24
 8001622:	pop	{r7, pc}

0000000008001624 __syscall:
 8001624:	bkpt	#171
 8001626:	bx	lr

0000000008001628 core::intrinsics::write_bytes::hc6c8ee6f767e88d2:
 8001628:	push	{r7, lr}
 800162a:	sub	sp, #24
 800162c:	mov	r3, r2
 800162e:	mov	r12, r1
 8001630:	mov	lr, r0
 8001632:	str	r0, [sp, #12]
 8001634:	strb.w	r1, [sp, #19]
 8001638:	str	r2, [sp, #20]
 800163a:	ldr	r0, [sp, #12]
 800163c:	ldrb.w	r2, [sp, #19]
 8001640:	ldr	r1, [sp, #20]
 8001642:	str	r3, [sp, #8]
 8001644:	str.w	r12, [sp, #4]
 8001648:	str.w	lr, [sp]
 800164c:	bl	#100
 8001650:	b	#-2 <core::intrinsics::write_bytes::hc6c8ee6f767e88d2+0x2a>
 8001652:	add	sp, #24
 8001654:	pop	{r7, pc}

0000000008001656 __aeabi_memcpy:
 8001656:	push	{r4, r5, r7, lr}
 8001658:	cbz	r2, #86
 800165a:	subs	r3, r2, #1
 800165c:	and	r12, r2, #3
 8001660:	cmp	r3, #3
 8001662:	bhs	#8 <__aeabi_memcpy+0x18>
 8001664:	movs	r2, #0
 8001666:	cmp.w	r12, #0
 800166a:	bne	#38 <__aeabi_memcpy+0x3e>
 800166c:	b	#66 <__aeabi_memcpy+0x5c>
 800166e:	sub.w	lr, r2, r12
 8001672:	movs	r2, #0
 8001674:	ldrb	r3, [r1, r2]
 8001676:	adds	r5, r0, r2
 8001678:	strb	r3, [r0, r2]
 800167a:	adds	r3, r1, r2
 800167c:	adds	r2, #4
 800167e:	ldrb	r4, [r3, #1]
 8001680:	cmp	lr, r2
 8001682:	strb	r4, [r5, #1]
 8001684:	ldrb	r4, [r3, #2]
 8001686:	strb	r4, [r5, #2]
 8001688:	ldrb	r3, [r3, #3]
 800168a:	strb	r3, [r5, #3]
 800168c:	bne	#-28 <__aeabi_memcpy+0x1e>
 800168e:	cmp.w	r12, #0
 8001692:	beq	#28 <__aeabi_memcpy+0x5c>
 8001694:	ldrb	r3, [r1, r2]
 8001696:	cmp.w	r12, #1
 800169a:	strb	r3, [r0, r2]
 800169c:	beq	#18 <__aeabi_memcpy+0x5c>
 800169e:	adds	r3, r2, #1
 80016a0:	cmp.w	r12, #2
 80016a4:	ldrb	r5, [r1, r3]
 80016a6:	strb	r5, [r0, r3]
 80016a8:	it	eq
 80016aa:	popeq	{r4, r5, r7, pc}
 80016ac:	adds	r2, #2
 80016ae:	ldrb	r1, [r1, r2]
 80016b0:	strb	r1, [r0, r2]
 80016b2:	pop	{r4, r5, r7, pc}

00000000080016b4 __aeabi_memset:
 80016b4:	cmp	r1, #0
 80016b6:	it	eq
 80016b8:	bxeq	lr
 80016ba:	push	{r7, lr}
 80016bc:	subs	r3, r1, #1
 80016be:	and	r12, r1, #3
 80016c2:	cmp	r3, #3
 80016c4:	bhs	#2 <__aeabi_memset+0x16>
 80016c6:	movs	r1, #0
 80016c8:	b	#20 <__aeabi_memset+0x2c>
 80016ca:	sub.w	lr, r1, r12
 80016ce:	movs	r1, #0
 80016d0:	strb	r2, [r0, r1]
 80016d2:	adds	r3, r0, r1
 80016d4:	adds	r1, #4
 80016d6:	cmp	lr, r1
 80016d8:	strb	r2, [r3, #3]
 80016da:	strb	r2, [r3, #2]
 80016dc:	strb	r2, [r3, #1]
 80016de:	bne	#-18 <__aeabi_memset+0x1c>
 80016e0:	cmp.w	r12, #0
 80016e4:	pop.w	{r7, lr}
 80016e8:	itt	ne
 80016ea:	strbne	r2, [r0, r1]
 80016ec:	cmpne.w	r12, #1
 80016f0:	bne	#0 <__aeabi_memset+0x40>
 80016f2:	bx	lr
 80016f4:	add	r0, r1
 80016f6:	cmp.w	r12, #2
 80016fa:	strb	r2, [r0, #1]
 80016fc:	it	ne
 80016fe:	strbne	r2, [r0, #2]
 8001700:	bx	lr
