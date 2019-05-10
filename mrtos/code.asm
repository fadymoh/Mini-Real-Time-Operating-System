
final.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	01400137          	lui	sp,0x1400
       4:	ffc10113          	addi	sp,sp,-4 # 13ffffc <_fstack>
       8:	240000ef          	jal	ra,248 <main>

0000000c <loop>:
       c:	00a00893          	li	a7,10
      10:	00000073          	ecall
      14:	ff9ff06f          	j	c <loop>

00000018 <_Z11printStringPKc>:
      18:	fe010113          	addi	sp,sp,-32
      1c:	00812e23          	sw	s0,28(sp)
      20:	02010413          	addi	s0,sp,32
      24:	fea42623          	sw	a0,-20(s0)
      28:	00400893          	li	a7,4
      2c:	fec42783          	lw	a5,-20(s0)
      30:	00078513          	mv	a0,a5
      34:	00000073          	ecall
      38:	00000013          	nop
      3c:	01c12403          	lw	s0,28(sp)
      40:	02010113          	addi	sp,sp,32
      44:	00008067          	ret

00000048 <_Z12printIntegeri>:
      48:	fe010113          	addi	sp,sp,-32
      4c:	00812e23          	sw	s0,28(sp)
      50:	02010413          	addi	s0,sp,32
      54:	fea42623          	sw	a0,-20(s0)
      58:	00100893          	li	a7,1
      5c:	fec42503          	lw	a0,-20(s0)
      60:	00000073          	ecall
      64:	00000013          	nop
      68:	01c12403          	lw	s0,28(sp)
      6c:	02010113          	addi	sp,sp,32
      70:	00008067          	ret

00000074 <_Z11myTaskOtherPv>:
      74:	fd010113          	addi	sp,sp,-48
      78:	02112623          	sw	ra,44(sp)
      7c:	02812423          	sw	s0,40(sp)
      80:	03010413          	addi	s0,sp,48
      84:	fca42e23          	sw	a0,-36(s0)
      88:	000027b7          	lui	a5,0x2
      8c:	3187a783          	lw	a5,792(a5) # 2318 <s1>
      90:	00078513          	mv	a0,a5
      94:	00000097          	auipc	ra,0x0
      98:	f84080e7          	jalr	-124(ra) # 18 <_Z11printStringPKc>
      9c:	fe042623          	sw	zero,-20(s0)
      a0:	fe042423          	sw	zero,-24(s0)
      a4:	fe842703          	lw	a4,-24(s0)
      a8:	01300793          	li	a5,19
      ac:	02e7c863          	blt	a5,a4,dc <_Z11myTaskOtherPv+0x68>
      b0:	fe842503          	lw	a0,-24(s0)
      b4:	00000097          	auipc	ra,0x0
      b8:	f94080e7          	jalr	-108(ra) # 48 <_Z12printIntegeri>
      bc:	fec42703          	lw	a4,-20(s0)
      c0:	fe842783          	lw	a5,-24(s0)
      c4:	00f707b3          	add	a5,a4,a5
      c8:	fef42623          	sw	a5,-20(s0)
      cc:	fe842783          	lw	a5,-24(s0)
      d0:	00178793          	addi	a5,a5,1
      d4:	fef42423          	sw	a5,-24(s0)
      d8:	fcdff06f          	j	a4 <_Z11myTaskOtherPv+0x30>
      dc:	000027b7          	lui	a5,0x2
      e0:	8e878513          	addi	a0,a5,-1816 # 18e8 <_ZL10OSUnMapTbl+0x170>
      e4:	00000097          	auipc	ra,0x0
      e8:	f34080e7          	jalr	-204(ra) # 18 <_Z11printStringPKc>
      ec:	fec42503          	lw	a0,-20(s0)
      f0:	00000097          	auipc	ra,0x0
      f4:	f58080e7          	jalr	-168(ra) # 48 <_Z12printIntegeri>
      f8:	000027b7          	lui	a5,0x2
      fc:	8f878513          	addi	a0,a5,-1800 # 18f8 <_ZL10OSUnMapTbl+0x180>
     100:	00000097          	auipc	ra,0x0
     104:	f18080e7          	jalr	-232(ra) # 18 <_Z11printStringPKc>
     108:	000027b7          	lui	a5,0x2
     10c:	31c7a783          	lw	a5,796(a5) # 231c <s2>
     110:	00078513          	mv	a0,a5
     114:	00000097          	auipc	ra,0x0
     118:	f04080e7          	jalr	-252(ra) # 18 <_Z11printStringPKc>
     11c:	000027b7          	lui	a5,0x2
     120:	3707a783          	lw	a5,880(a5) # 2370 <_ZL11mySemaphore>
     124:	00078513          	mv	a0,a5
     128:	00001097          	auipc	ra,0x1
     12c:	864080e7          	jalr	-1948(ra) # 98c <_Z9OSSemPostP17EventControlBlock>
     130:	00000013          	nop
     134:	02c12083          	lw	ra,44(sp)
     138:	02812403          	lw	s0,40(sp)
     13c:	03010113          	addi	sp,sp,48
     140:	00008067          	ret

00000144 <_Z6myTaskPv>:
     144:	fd010113          	addi	sp,sp,-48
     148:	02112623          	sw	ra,44(sp)
     14c:	02812423          	sw	s0,40(sp)
     150:	03010413          	addi	s0,sp,48
     154:	fca42e23          	sw	a0,-36(s0)
     158:	000027b7          	lui	a5,0x2
     15c:	3207a783          	lw	a5,800(a5) # 2320 <s3>
     160:	00078513          	mv	a0,a5
     164:	00000097          	auipc	ra,0x0
     168:	eb4080e7          	jalr	-332(ra) # 18 <_Z11printStringPKc>
     16c:	fe042623          	sw	zero,-20(s0)
     170:	fec42703          	lw	a4,-20(s0)
     174:	01300793          	li	a5,19
     178:	0ae7c063          	blt	a5,a4,218 <_Z6myTaskPv+0xd4>
     17c:	fec42703          	lw	a4,-20(s0)
     180:	00a00793          	li	a5,10
     184:	06f71c63          	bne	a4,a5,1fc <_Z6myTaskPv+0xb8>
     188:	000027b7          	lui	a5,0x2
     18c:	3247a783          	lw	a5,804(a5) # 2324 <s4>
     190:	00078513          	mv	a0,a5
     194:	00000097          	auipc	ra,0x0
     198:	e84080e7          	jalr	-380(ra) # 18 <_Z11printStringPKc>
     19c:	000027b7          	lui	a5,0x2
     1a0:	3707a703          	lw	a4,880(a5) # 2370 <_ZL11mySemaphore>
     1a4:	000027b7          	lui	a5,0x2
     1a8:	3387a783          	lw	a5,824(a5) # 2338 <err>
     1ac:	00078593          	mv	a1,a5
     1b0:	00070513          	mv	a0,a4
     1b4:	00001097          	auipc	ra,0x1
     1b8:	86c080e7          	jalr	-1940(ra) # a20 <_Z9OSSemPendP17EventControlBlockPh>
     1bc:	000027b7          	lui	a5,0x2
     1c0:	3287a783          	lw	a5,808(a5) # 2328 <s5>
     1c4:	00078513          	mv	a0,a5
     1c8:	00000097          	auipc	ra,0x0
     1cc:	e50080e7          	jalr	-432(ra) # 18 <_Z11printStringPKc>
     1d0:	000027b7          	lui	a5,0x2
     1d4:	8fc78513          	addi	a0,a5,-1796 # 18fc <_ZL10OSUnMapTbl+0x184>
     1d8:	00000097          	auipc	ra,0x0
     1dc:	e40080e7          	jalr	-448(ra) # 18 <_Z11printStringPKc>
     1e0:	fec42503          	lw	a0,-20(s0)
     1e4:	00000097          	auipc	ra,0x0
     1e8:	e64080e7          	jalr	-412(ra) # 48 <_Z12printIntegeri>
     1ec:	000027b7          	lui	a5,0x2
     1f0:	8f878513          	addi	a0,a5,-1800 # 18f8 <_ZL10OSUnMapTbl+0x180>
     1f4:	00000097          	auipc	ra,0x0
     1f8:	e24080e7          	jalr	-476(ra) # 18 <_Z11printStringPKc>
     1fc:	fec42503          	lw	a0,-20(s0)
     200:	00000097          	auipc	ra,0x0
     204:	e48080e7          	jalr	-440(ra) # 48 <_Z12printIntegeri>
     208:	fec42783          	lw	a5,-20(s0)
     20c:	00178793          	addi	a5,a5,1
     210:	fef42623          	sw	a5,-20(s0)
     214:	f5dff06f          	j	170 <_Z6myTaskPv+0x2c>
     218:	000027b7          	lui	a5,0x2
     21c:	32c7a783          	lw	a5,812(a5) # 232c <s6>
     220:	00078513          	mv	a0,a5
     224:	00000097          	auipc	ra,0x0
     228:	df4080e7          	jalr	-524(ra) # 18 <_Z11printStringPKc>
     22c:	00a00893          	li	a7,10
     230:	00000073          	ecall
     234:	00000013          	nop
     238:	02c12083          	lw	ra,44(sp)
     23c:	02812403          	lw	s0,40(sp)
     240:	03010113          	addi	sp,sp,48
     244:	00008067          	ret

00000248 <main>:
     248:	81010113          	addi	sp,sp,-2032
     24c:	7e112623          	sw	ra,2028(sp)
     250:	7e812423          	sw	s0,2024(sp)
     254:	7f010413          	addi	s0,sp,2032
     258:	fe010113          	addi	sp,sp,-32
     25c:	00000097          	auipc	ra,0x0
     260:	3dc080e7          	jalr	988(ra) # 638 <_Z7OS_Initv>
     264:	000027b7          	lui	a5,0x2
     268:	91878513          	addi	a0,a5,-1768 # 1918 <_ZL10OSUnMapTbl+0x1a0>
     26c:	00000097          	auipc	ra,0x0
     270:	dac080e7          	jalr	-596(ra) # 18 <_Z11printStringPKc>
     274:	bf040793          	addi	a5,s0,-1040
     278:	3fc78793          	addi	a5,a5,1020
     27c:	00a00693          	li	a3,10
     280:	00078613          	mv	a2,a5
     284:	00000593          	li	a1,0
     288:	000007b7          	lui	a5,0x0
     28c:	14478513          	addi	a0,a5,324 # 144 <_Z6myTaskPv>
     290:	00001097          	auipc	ra,0x1
     294:	228080e7          	jalr	552(ra) # 14b8 <_Z12OSTaskCreatePFvPvES_Pmh>
     298:	fffff7b7          	lui	a5,0xfffff
     29c:	7f078793          	addi	a5,a5,2032 # fffff7f0 <_fstack+0xfebff7f4>
     2a0:	00f407b3          	add	a5,s0,a5
     2a4:	3fc78793          	addi	a5,a5,1020
     2a8:	01400693          	li	a3,20
     2ac:	00078613          	mv	a2,a5
     2b0:	00000593          	li	a1,0
     2b4:	000007b7          	lui	a5,0x0
     2b8:	07478513          	addi	a0,a5,116 # 74 <_Z11myTaskOtherPv>
     2bc:	00001097          	auipc	ra,0x1
     2c0:	1fc080e7          	jalr	508(ra) # 14b8 <_Z12OSTaskCreatePFvPvES_Pmh>
     2c4:	00000097          	auipc	ra,0x0
     2c8:	4dc080e7          	jalr	1244(ra) # 7a0 <_Z17OSCreateSemaphorev>
     2cc:	00050713          	mv	a4,a0
     2d0:	000027b7          	lui	a5,0x2
     2d4:	36e7a823          	sw	a4,880(a5) # 2370 <_ZL11mySemaphore>
     2d8:	000027b7          	lui	a5,0x2
     2dc:	3307a783          	lw	a5,816(a5) # 2330 <s7>
     2e0:	00078513          	mv	a0,a5
     2e4:	00000097          	auipc	ra,0x0
     2e8:	d34080e7          	jalr	-716(ra) # 18 <_Z11printStringPKc>
     2ec:	00001097          	auipc	ra,0x1
     2f0:	868080e7          	jalr	-1944(ra) # b54 <_Z8OS_Startv>
     2f4:	00000793          	li	a5,0
     2f8:	00078513          	mv	a0,a5
     2fc:	02010113          	addi	sp,sp,32
     300:	7ec12083          	lw	ra,2028(sp)
     304:	7e812403          	lw	s0,2024(sp)
     308:	7f010113          	addi	sp,sp,2032
     30c:	00008067          	ret

00000310 <_Z17OS_ENTER_CRITICALv>:
     310:	ff010113          	addi	sp,sp,-16
     314:	00812623          	sw	s0,12(sp)
     318:	01010413          	addi	s0,sp,16
     31c:	00000013          	nop
     320:	00c12403          	lw	s0,12(sp)
     324:	01010113          	addi	sp,sp,16
     328:	00008067          	ret

0000032c <_Z16OS_EXIT_CRITICALv>:
     32c:	ff010113          	addi	sp,sp,-16
     330:	00812623          	sw	s0,12(sp)
     334:	01010413          	addi	s0,sp,16
     338:	00000013          	nop
     33c:	00c12403          	lw	s0,12(sp)
     340:	01010113          	addi	sp,sp,16
     344:	00008067          	ret

00000348 <_Z13OSTaskStkInitPFvPvES_Pmt>:
     348:	fd010113          	addi	sp,sp,-48
     34c:	02812623          	sw	s0,44(sp)
     350:	03010413          	addi	s0,sp,48
     354:	fca42e23          	sw	a0,-36(s0)
     358:	fcb42c23          	sw	a1,-40(s0)
     35c:	fcc42a23          	sw	a2,-44(s0)
     360:	00068793          	mv	a5,a3
     364:	fcf41923          	sh	a5,-46(s0)
     368:	fd442783          	lw	a5,-44(s0)
     36c:	fef42623          	sw	a5,-20(s0)
     370:	fec42783          	lw	a5,-20(s0)
     374:	ffc78713          	addi	a4,a5,-4
     378:	fee42623          	sw	a4,-20(s0)
     37c:	fdc42703          	lw	a4,-36(s0)
     380:	00e7a023          	sw	a4,0(a5)
     384:	fec42783          	lw	a5,-20(s0)
     388:	ffc78713          	addi	a4,a5,-4
     38c:	fee42623          	sw	a4,-20(s0)
     390:	0007a023          	sw	zero,0(a5)
     394:	fec42783          	lw	a5,-20(s0)
     398:	ffc78713          	addi	a4,a5,-4
     39c:	fee42623          	sw	a4,-20(s0)
     3a0:	0007a023          	sw	zero,0(a5)
     3a4:	fec42783          	lw	a5,-20(s0)
     3a8:	ffc78713          	addi	a4,a5,-4
     3ac:	fee42623          	sw	a4,-20(s0)
     3b0:	0007a023          	sw	zero,0(a5)
     3b4:	fec42783          	lw	a5,-20(s0)
     3b8:	ffc78713          	addi	a4,a5,-4
     3bc:	fee42623          	sw	a4,-20(s0)
     3c0:	0007a023          	sw	zero,0(a5)
     3c4:	fec42783          	lw	a5,-20(s0)
     3c8:	ffc78713          	addi	a4,a5,-4
     3cc:	fee42623          	sw	a4,-20(s0)
     3d0:	0007a023          	sw	zero,0(a5)
     3d4:	fec42783          	lw	a5,-20(s0)
     3d8:	ffc78713          	addi	a4,a5,-4
     3dc:	fee42623          	sw	a4,-20(s0)
     3e0:	0007a023          	sw	zero,0(a5)
     3e4:	fec42783          	lw	a5,-20(s0)
     3e8:	ffc78713          	addi	a4,a5,-4
     3ec:	fee42623          	sw	a4,-20(s0)
     3f0:	0007a023          	sw	zero,0(a5)
     3f4:	fec42783          	lw	a5,-20(s0)
     3f8:	ffc78713          	addi	a4,a5,-4
     3fc:	fee42623          	sw	a4,-20(s0)
     400:	0007a023          	sw	zero,0(a5)
     404:	fec42783          	lw	a5,-20(s0)
     408:	ffc78713          	addi	a4,a5,-4
     40c:	fee42623          	sw	a4,-20(s0)
     410:	0007a023          	sw	zero,0(a5)
     414:	fec42783          	lw	a5,-20(s0)
     418:	ffc78713          	addi	a4,a5,-4
     41c:	fee42623          	sw	a4,-20(s0)
     420:	0007a023          	sw	zero,0(a5)
     424:	fec42783          	lw	a5,-20(s0)
     428:	ffc78713          	addi	a4,a5,-4
     42c:	fee42623          	sw	a4,-20(s0)
     430:	0007a023          	sw	zero,0(a5)
     434:	fec42783          	lw	a5,-20(s0)
     438:	0007a023          	sw	zero,0(a5)
     43c:	fec42783          	lw	a5,-20(s0)
     440:	00078513          	mv	a0,a5
     444:	02c12403          	lw	s0,44(sp)
     448:	03010113          	addi	sp,sp,48
     44c:	00008067          	ret

00000450 <_Z16OSTaskCreateHookv>:
     450:	ff010113          	addi	sp,sp,-16
     454:	00812623          	sw	s0,12(sp)
     458:	01010413          	addi	s0,sp,16
     45c:	00000013          	nop
     460:	00c12403          	lw	s0,12(sp)
     464:	01010113          	addi	sp,sp,16
     468:	00008067          	ret

0000046c <_Z10OS_TASK_SWv>:
     46c:	ff010113          	addi	sp,sp,-16
     470:	00812623          	sw	s0,12(sp)
     474:	01010413          	addi	s0,sp,16
     478:	00000013          	nop
     47c:	00c12403          	lw	s0,12(sp)
     480:	01010113          	addi	sp,sp,16
     484:	00008067          	ret

00000488 <_Z8OS_Schedv>:
     488:	fe010113          	addi	sp,sp,-32
     48c:	00112e23          	sw	ra,28(sp)
     490:	00812c23          	sw	s0,24(sp)
     494:	02010413          	addi	s0,sp,32
     498:	00000097          	auipc	ra,0x0
     49c:	e78080e7          	jalr	-392(ra) # 310 <_Z17OS_ENTER_CRITICALv>
     4a0:	000027b7          	lui	a5,0x2
     4a4:	3517c783          	lbu	a5,849(a5) # 2351 <OSRdyGrp>
     4a8:	00078713          	mv	a4,a5
     4ac:	000027b7          	lui	a5,0x2
     4b0:	a3078793          	addi	a5,a5,-1488 # 1a30 <_ZL10OSUnMapTbl>
     4b4:	00f707b3          	add	a5,a4,a5
     4b8:	0007c783          	lbu	a5,0(a5)
     4bc:	fef407a3          	sb	a5,-17(s0)
     4c0:	fef44783          	lbu	a5,-17(s0)
     4c4:	00379793          	slli	a5,a5,0x3
     4c8:	0ff7f713          	andi	a4,a5,255
     4cc:	fef44683          	lbu	a3,-17(s0)
     4d0:	000027b7          	lui	a5,0x2
     4d4:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
     4d8:	00f687b3          	add	a5,a3,a5
     4dc:	0007c783          	lbu	a5,0(a5)
     4e0:	00078693          	mv	a3,a5
     4e4:	000027b7          	lui	a5,0x2
     4e8:	a3078793          	addi	a5,a5,-1488 # 1a30 <_ZL10OSUnMapTbl>
     4ec:	00f687b3          	add	a5,a3,a5
     4f0:	0007c783          	lbu	a5,0(a5)
     4f4:	00f707b3          	add	a5,a4,a5
     4f8:	0ff7f713          	andi	a4,a5,255
     4fc:	000027b7          	lui	a5,0x2
     500:	32e78aa3          	sb	a4,821(a5) # 2335 <OSPrioHighRdy>
     504:	000027b7          	lui	a5,0x2
     508:	3357c703          	lbu	a4,821(a5) # 2335 <OSPrioHighRdy>
     50c:	000027b7          	lui	a5,0x2
     510:	3347c783          	lbu	a5,820(a5) # 2334 <OSPrioCur>
     514:	10f70463          	beq	a4,a5,61c <_Z8OS_Schedv+0x194>
     518:	00010793          	mv	a5,sp
     51c:	fef42423          	sw	a5,-24(s0)
     520:	fe842783          	lw	a5,-24(s0)
     524:	ffc78793          	addi	a5,a5,-4
     528:	fef42423          	sw	a5,-24(s0)
     52c:	000027b7          	lui	a5,0x2
     530:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     534:	0207a783          	lw	a5,32(a5)
     538:	00078713          	mv	a4,a5
     53c:	fe842783          	lw	a5,-24(s0)
     540:	00e7a023          	sw	a4,0(a5)
     544:	fcc10113          	addi	sp,sp,-52
     548:	02812623          	sw	s0,44(sp)
     54c:	02912423          	sw	s1,40(sp)
     550:	03212223          	sw	s2,36(sp)
     554:	03312023          	sw	s3,32(sp)
     558:	01412e23          	sw	s4,28(sp)
     55c:	01512c23          	sw	s5,24(sp)
     560:	01612a23          	sw	s6,20(sp)
     564:	01712823          	sw	s7,16(sp)
     568:	01812623          	sw	s8,12(sp)
     56c:	01912423          	sw	s9,8(sp)
     570:	01a12223          	sw	s10,4(sp)
     574:	01b12023          	sw	s11,0(sp)
     578:	00010713          	mv	a4,sp
     57c:	000027b7          	lui	a5,0x2
     580:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     584:	00e7a023          	sw	a4,0(a5)
     588:	000027b7          	lui	a5,0x2
     58c:	3357c703          	lbu	a4,821(a5) # 2335 <OSPrioHighRdy>
     590:	000027b7          	lui	a5,0x2
     594:	32e78a23          	sb	a4,820(a5) # 2334 <OSPrioCur>
     598:	000027b7          	lui	a5,0x2
     59c:	3357c783          	lbu	a5,821(a5) # 2335 <OSPrioHighRdy>
     5a0:	00078713          	mv	a4,a5
     5a4:	000037b7          	lui	a5,0x3
     5a8:	00271713          	slli	a4,a4,0x2
     5ac:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
     5b0:	00f707b3          	add	a5,a4,a5
     5b4:	0007a703          	lw	a4,0(a5)
     5b8:	000027b7          	lui	a5,0x2
     5bc:	34e7a623          	sw	a4,844(a5) # 234c <OSTCBHighRdy>
     5c0:	000027b7          	lui	a5,0x2
     5c4:	34c7a703          	lw	a4,844(a5) # 234c <OSTCBHighRdy>
     5c8:	000027b7          	lui	a5,0x2
     5cc:	34e7a423          	sw	a4,840(a5) # 2348 <OSTCBCur>
     5d0:	000027b7          	lui	a5,0x2
     5d4:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     5d8:	0007a783          	lw	a5,0(a5)
     5dc:	00078113          	mv	sp,a5
     5e0:	03012e03          	lw	t3,48(sp)
     5e4:	02c12403          	lw	s0,44(sp)
     5e8:	02812483          	lw	s1,40(sp)
     5ec:	02412903          	lw	s2,36(sp)
     5f0:	02012983          	lw	s3,32(sp)
     5f4:	01c12a03          	lw	s4,28(sp)
     5f8:	01812a83          	lw	s5,24(sp)
     5fc:	01412b03          	lw	s6,20(sp)
     600:	01012b83          	lw	s7,16(sp)
     604:	00c12c03          	lw	s8,12(sp)
     608:	00812c83          	lw	s9,8(sp)
     60c:	00412d03          	lw	s10,4(sp)
     610:	00012d83          	lw	s11,0(sp)
     614:	03410113          	addi	sp,sp,52
     618:	000e0067          	jr	t3
     61c:	00000097          	auipc	ra,0x0
     620:	d10080e7          	jalr	-752(ra) # 32c <_Z16OS_EXIT_CRITICALv>
     624:	00000013          	nop
     628:	01c12083          	lw	ra,28(sp)
     62c:	01812403          	lw	s0,24(sp)
     630:	02010113          	addi	sp,sp,32
     634:	00008067          	ret

00000638 <_Z7OS_Initv>:
     638:	ff010113          	addi	sp,sp,-16
     63c:	00112623          	sw	ra,12(sp)
     640:	00812423          	sw	s0,8(sp)
     644:	01010413          	addi	s0,sp,16
     648:	00000097          	auipc	ra,0x0
     64c:	0bc080e7          	jalr	188(ra) # 704 <_Z20OS_EventWaitListInitv>
     650:	00000097          	auipc	ra,0x0
     654:	01c080e7          	jalr	28(ra) # 66c <_Z15OS_TaskFreePoolv>
     658:	00000013          	nop
     65c:	00c12083          	lw	ra,12(sp)
     660:	00812403          	lw	s0,8(sp)
     664:	01010113          	addi	sp,sp,16
     668:	00008067          	ret

0000066c <_Z15OS_TaskFreePoolv>:
     66c:	fe010113          	addi	sp,sp,-32
     670:	00812e23          	sw	s0,28(sp)
     674:	02010413          	addi	s0,sp,32
     678:	000027b7          	lui	a5,0x2
     67c:	00002737          	lui	a4,0x2
     680:	69470713          	addi	a4,a4,1684 # 2694 <freeTCBs>
     684:	34e7a023          	sw	a4,832(a5) # 2340 <OSTCBFreeList>
     688:	000027b7          	lui	a5,0x2
     68c:	3407a783          	lw	a5,832(a5) # 2340 <OSTCBFreeList>
     690:	fef42623          	sw	a5,-20(s0)
     694:	00100793          	li	a5,1
     698:	fef42423          	sw	a5,-24(s0)
     69c:	fe842703          	lw	a4,-24(s0)
     6a0:	03f00793          	li	a5,63
     6a4:	04e7c463          	blt	a5,a4,6ec <_Z15OS_TaskFreePoolv+0x80>
     6a8:	fe842703          	lw	a4,-24(s0)
     6ac:	00070793          	mv	a5,a4
     6b0:	00379793          	slli	a5,a5,0x3
     6b4:	00e787b3          	add	a5,a5,a4
     6b8:	00279793          	slli	a5,a5,0x2
     6bc:	00002737          	lui	a4,0x2
     6c0:	69470713          	addi	a4,a4,1684 # 2694 <freeTCBs>
     6c4:	00e78733          	add	a4,a5,a4
     6c8:	fec42783          	lw	a5,-20(s0)
     6cc:	00e7a223          	sw	a4,4(a5)
     6d0:	fec42783          	lw	a5,-20(s0)
     6d4:	0047a783          	lw	a5,4(a5)
     6d8:	fef42623          	sw	a5,-20(s0)
     6dc:	fe842783          	lw	a5,-24(s0)
     6e0:	00178793          	addi	a5,a5,1
     6e4:	fef42423          	sw	a5,-24(s0)
     6e8:	fb5ff06f          	j	69c <_Z15OS_TaskFreePoolv+0x30>
     6ec:	fec42783          	lw	a5,-20(s0)
     6f0:	0007a223          	sw	zero,4(a5)
     6f4:	00000013          	nop
     6f8:	01c12403          	lw	s0,28(sp)
     6fc:	02010113          	addi	sp,sp,32
     700:	00008067          	ret

00000704 <_Z20OS_EventWaitListInitv>:
     704:	fe010113          	addi	sp,sp,-32
     708:	00812e23          	sw	s0,28(sp)
     70c:	02010413          	addi	s0,sp,32
     710:	000027b7          	lui	a5,0x2
     714:	00002737          	lui	a4,0x2
     718:	37470713          	addi	a4,a4,884 # 2374 <freeEvents>
     71c:	32e7ae23          	sw	a4,828(a5) # 233c <OSEventFreeList>
     720:	000027b7          	lui	a5,0x2
     724:	33c7a783          	lw	a5,828(a5) # 233c <OSEventFreeList>
     728:	fef42623          	sw	a5,-20(s0)
     72c:	00100793          	li	a5,1
     730:	fef405a3          	sb	a5,-21(s0)
     734:	feb40703          	lb	a4,-21(s0)
     738:	01300793          	li	a5,19
     73c:	04e7c663          	blt	a5,a4,788 <_Z20OS_EventWaitListInitv+0x84>
     740:	feb40703          	lb	a4,-21(s0)
     744:	00070793          	mv	a5,a4
     748:	00279793          	slli	a5,a5,0x2
     74c:	00e787b3          	add	a5,a5,a4
     750:	00379793          	slli	a5,a5,0x3
     754:	00002737          	lui	a4,0x2
     758:	37470713          	addi	a4,a4,884 # 2374 <freeEvents>
     75c:	00e78733          	add	a4,a5,a4
     760:	fec42783          	lw	a5,-20(s0)
     764:	00e7a023          	sw	a4,0(a5)
     768:	fec42783          	lw	a5,-20(s0)
     76c:	0007a783          	lw	a5,0(a5)
     770:	fef42623          	sw	a5,-20(s0)
     774:	feb44783          	lbu	a5,-21(s0)
     778:	00178793          	addi	a5,a5,1
     77c:	0ff7f793          	andi	a5,a5,255
     780:	fef405a3          	sb	a5,-21(s0)
     784:	fb1ff06f          	j	734 <_Z20OS_EventWaitListInitv+0x30>
     788:	fec42783          	lw	a5,-20(s0)
     78c:	0007a023          	sw	zero,0(a5)
     790:	00000013          	nop
     794:	01c12403          	lw	s0,28(sp)
     798:	02010113          	addi	sp,sp,32
     79c:	00008067          	ret

000007a0 <_Z17OSCreateSemaphorev>:
     7a0:	fe010113          	addi	sp,sp,-32
     7a4:	00812e23          	sw	s0,28(sp)
     7a8:	02010413          	addi	s0,sp,32
     7ac:	000027b7          	lui	a5,0x2
     7b0:	33c7a783          	lw	a5,828(a5) # 233c <OSEventFreeList>
     7b4:	fef42623          	sw	a5,-20(s0)
     7b8:	000027b7          	lui	a5,0x2
     7bc:	33c7a783          	lw	a5,828(a5) # 233c <OSEventFreeList>
     7c0:	00078c63          	beqz	a5,7d8 <_Z17OSCreateSemaphorev+0x38>
     7c4:	000027b7          	lui	a5,0x2
     7c8:	33c7a783          	lw	a5,828(a5) # 233c <OSEventFreeList>
     7cc:	0007a703          	lw	a4,0(a5)
     7d0:	000027b7          	lui	a5,0x2
     7d4:	32e7ae23          	sw	a4,828(a5) # 233c <OSEventFreeList>
     7d8:	fec42783          	lw	a5,-20(s0)
     7dc:	02078463          	beqz	a5,804 <_Z17OSCreateSemaphorev+0x64>
     7e0:	fec42783          	lw	a5,-20(s0)
     7e4:	00800713          	li	a4,8
     7e8:	00e78223          	sb	a4,4(a5)
     7ec:	fec42783          	lw	a5,-20(s0)
     7f0:	00079323          	sh	zero,6(a5)
     7f4:	fec42783          	lw	a5,-20(s0)
     7f8:	0007a023          	sw	zero,0(a5)
     7fc:	fec42783          	lw	a5,-20(s0)
     800:	000782a3          	sb	zero,5(a5)
     804:	fec42783          	lw	a5,-20(s0)
     808:	00078513          	mv	a0,a5
     80c:	01c12403          	lw	s0,28(sp)
     810:	02010113          	addi	sp,sp,32
     814:	00008067          	ret

00000818 <_Z16OS_EventTaskWaitP17EventControlBlock>:
     818:	fe010113          	addi	sp,sp,-32
     81c:	00812e23          	sw	s0,28(sp)
     820:	02010413          	addi	s0,sp,32
     824:	fea42623          	sw	a0,-20(s0)
     828:	000027b7          	lui	a5,0x2
     82c:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     830:	fec42703          	lw	a4,-20(s0)
     834:	00e7a623          	sw	a4,12(a5)
     838:	000027b7          	lui	a5,0x2
     83c:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     840:	0197c783          	lbu	a5,25(a5)
     844:	00078713          	mv	a4,a5
     848:	000027b7          	lui	a5,0x2
     84c:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
     850:	00f707b3          	add	a5,a4,a5
     854:	0007c783          	lbu	a5,0(a5)
     858:	01879713          	slli	a4,a5,0x18
     85c:	41875713          	srai	a4,a4,0x18
     860:	000027b7          	lui	a5,0x2
     864:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     868:	01a7c783          	lbu	a5,26(a5)
     86c:	01879793          	slli	a5,a5,0x18
     870:	4187d793          	srai	a5,a5,0x18
     874:	fff7c793          	not	a5,a5
     878:	01879793          	slli	a5,a5,0x18
     87c:	4187d793          	srai	a5,a5,0x18
     880:	00f777b3          	and	a5,a4,a5
     884:	01879713          	slli	a4,a5,0x18
     888:	41875713          	srai	a4,a4,0x18
     88c:	000027b7          	lui	a5,0x2
     890:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     894:	0197c783          	lbu	a5,25(a5)
     898:	0ff77693          	andi	a3,a4,255
     89c:	00002737          	lui	a4,0x2
     8a0:	35470713          	addi	a4,a4,852 # 2354 <OSRdyTbl>
     8a4:	00e78733          	add	a4,a5,a4
     8a8:	00d70023          	sb	a3,0(a4)
     8ac:	00002737          	lui	a4,0x2
     8b0:	35470713          	addi	a4,a4,852 # 2354 <OSRdyTbl>
     8b4:	00e787b3          	add	a5,a5,a4
     8b8:	0007c783          	lbu	a5,0(a5)
     8bc:	0017b793          	seqz	a5,a5
     8c0:	0ff7f793          	andi	a5,a5,255
     8c4:	04078663          	beqz	a5,910 <_Z16OS_EventTaskWaitP17EventControlBlock+0xf8>
     8c8:	000027b7          	lui	a5,0x2
     8cc:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     8d0:	01b7c783          	lbu	a5,27(a5)
     8d4:	01879793          	slli	a5,a5,0x18
     8d8:	4187d793          	srai	a5,a5,0x18
     8dc:	fff7c793          	not	a5,a5
     8e0:	01879713          	slli	a4,a5,0x18
     8e4:	41875713          	srai	a4,a4,0x18
     8e8:	000027b7          	lui	a5,0x2
     8ec:	3517c783          	lbu	a5,849(a5) # 2351 <OSRdyGrp>
     8f0:	01879793          	slli	a5,a5,0x18
     8f4:	4187d793          	srai	a5,a5,0x18
     8f8:	00f777b3          	and	a5,a4,a5
     8fc:	01879793          	slli	a5,a5,0x18
     900:	4187d793          	srai	a5,a5,0x18
     904:	0ff7f713          	andi	a4,a5,255
     908:	000027b7          	lui	a5,0x2
     90c:	34e788a3          	sb	a4,849(a5) # 2351 <OSRdyGrp>
     910:	000027b7          	lui	a5,0x2
     914:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     918:	0197c783          	lbu	a5,25(a5)
     91c:	00078713          	mv	a4,a5
     920:	fec42783          	lw	a5,-20(s0)
     924:	00e787b3          	add	a5,a5,a4
     928:	0087c703          	lbu	a4,8(a5)
     92c:	000027b7          	lui	a5,0x2
     930:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     934:	01a7c783          	lbu	a5,26(a5)
     938:	000026b7          	lui	a3,0x2
     93c:	3486a683          	lw	a3,840(a3) # 2348 <OSTCBCur>
     940:	0196c683          	lbu	a3,25(a3)
     944:	00f767b3          	or	a5,a4,a5
     948:	0ff7f713          	andi	a4,a5,255
     94c:	fec42783          	lw	a5,-20(s0)
     950:	00d787b3          	add	a5,a5,a3
     954:	00e78423          	sb	a4,8(a5)
     958:	fec42783          	lw	a5,-20(s0)
     95c:	0057c703          	lbu	a4,5(a5)
     960:	000027b7          	lui	a5,0x2
     964:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     968:	01b7c783          	lbu	a5,27(a5)
     96c:	00f767b3          	or	a5,a4,a5
     970:	0ff7f713          	andi	a4,a5,255
     974:	fec42783          	lw	a5,-20(s0)
     978:	00e782a3          	sb	a4,5(a5)
     97c:	00000013          	nop
     980:	01c12403          	lw	s0,28(sp)
     984:	02010113          	addi	sp,sp,32
     988:	00008067          	ret

0000098c <_Z9OSSemPostP17EventControlBlock>:
     98c:	fe010113          	addi	sp,sp,-32
     990:	00112e23          	sw	ra,28(sp)
     994:	00812c23          	sw	s0,24(sp)
     998:	02010413          	addi	s0,sp,32
     99c:	fea42623          	sw	a0,-20(s0)
     9a0:	fec42783          	lw	a5,-20(s0)
     9a4:	0057c783          	lbu	a5,5(a5)
     9a8:	02078463          	beqz	a5,9d0 <_Z9OSSemPostP17EventControlBlock+0x44>
     9ac:	00a00613          	li	a2,10
     9b0:	00000593          	li	a1,0
     9b4:	fec42503          	lw	a0,-20(s0)
     9b8:	00000097          	auipc	ra,0x0
     9bc:	668080e7          	jalr	1640(ra) # 1020 <_Z12EventTaskRdyP17EventControlBlockPvh>
     9c0:	00000097          	auipc	ra,0x0
     9c4:	ac8080e7          	jalr	-1336(ra) # 488 <_Z8OS_Schedv>
     9c8:	00000793          	li	a5,0
     9cc:	0400006f          	j	a0c <_Z9OSSemPostP17EventControlBlock+0x80>
     9d0:	fec42783          	lw	a5,-20(s0)
     9d4:	0067d703          	lhu	a4,6(a5)
     9d8:	000107b7          	lui	a5,0x10
     9dc:	fff78793          	addi	a5,a5,-1 # ffff <__BSS_END__+0xcf6b>
     9e0:	02f70463          	beq	a4,a5,a08 <_Z9OSSemPostP17EventControlBlock+0x7c>
     9e4:	fec42783          	lw	a5,-20(s0)
     9e8:	0067d783          	lhu	a5,6(a5)
     9ec:	00178793          	addi	a5,a5,1
     9f0:	01079713          	slli	a4,a5,0x10
     9f4:	01075713          	srli	a4,a4,0x10
     9f8:	fec42783          	lw	a5,-20(s0)
     9fc:	00e79323          	sh	a4,6(a5)
     a00:	00000793          	li	a5,0
     a04:	0080006f          	j	a0c <_Z9OSSemPostP17EventControlBlock+0x80>
     a08:	00500793          	li	a5,5
     a0c:	00078513          	mv	a0,a5
     a10:	01c12083          	lw	ra,28(sp)
     a14:	01812403          	lw	s0,24(sp)
     a18:	02010113          	addi	sp,sp,32
     a1c:	00008067          	ret

00000a20 <_Z9OSSemPendP17EventControlBlockPh>:
     a20:	fe010113          	addi	sp,sp,-32
     a24:	00112e23          	sw	ra,28(sp)
     a28:	00812c23          	sw	s0,24(sp)
     a2c:	02010413          	addi	s0,sp,32
     a30:	fea42623          	sw	a0,-20(s0)
     a34:	feb42423          	sw	a1,-24(s0)
     a38:	00008713          	mv	a4,ra
     a3c:	000027b7          	lui	a5,0x2
     a40:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     a44:	02e7a023          	sw	a4,32(a5)
     a48:	fec42783          	lw	a5,-20(s0)
     a4c:	00079a63          	bnez	a5,a60 <_Z9OSSemPendP17EventControlBlockPh+0x40>
     a50:	fe842783          	lw	a5,-24(s0)
     a54:	00300713          	li	a4,3
     a58:	00e78023          	sb	a4,0(a5)
     a5c:	0a00006f          	j	afc <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     a60:	fec42783          	lw	a5,-20(s0)
     a64:	0047c703          	lbu	a4,4(a5)
     a68:	00800793          	li	a5,8
     a6c:	00f70a63          	beq	a4,a5,a80 <_Z9OSSemPendP17EventControlBlockPh+0x60>
     a70:	fe842783          	lw	a5,-24(s0)
     a74:	00400713          	li	a4,4
     a78:	00e78023          	sb	a4,0(a5)
     a7c:	0800006f          	j	afc <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     a80:	fec42783          	lw	a5,-20(s0)
     a84:	0067d783          	lhu	a5,6(a5)
     a88:	02078663          	beqz	a5,ab4 <_Z9OSSemPendP17EventControlBlockPh+0x94>
     a8c:	fec42783          	lw	a5,-20(s0)
     a90:	0067d783          	lhu	a5,6(a5)
     a94:	fff78793          	addi	a5,a5,-1
     a98:	01079713          	slli	a4,a5,0x10
     a9c:	01075713          	srli	a4,a4,0x10
     aa0:	fec42783          	lw	a5,-20(s0)
     aa4:	00e79323          	sh	a4,6(a5)
     aa8:	fe842783          	lw	a5,-24(s0)
     aac:	00078023          	sb	zero,0(a5)
     ab0:	04c0006f          	j	afc <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     ab4:	000027b7          	lui	a5,0x2
     ab8:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     abc:	0167c703          	lbu	a4,22(a5)
     ac0:	000027b7          	lui	a5,0x2
     ac4:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     ac8:	00a76713          	ori	a4,a4,10
     acc:	0ff77713          	andi	a4,a4,255
     ad0:	00e78b23          	sb	a4,22(a5)
     ad4:	fec42503          	lw	a0,-20(s0)
     ad8:	00000097          	auipc	ra,0x0
     adc:	d40080e7          	jalr	-704(ra) # 818 <_Z16OS_EventTaskWaitP17EventControlBlock>
     ae0:	00000097          	auipc	ra,0x0
     ae4:	9a8080e7          	jalr	-1624(ra) # 488 <_Z8OS_Schedv>
     ae8:	000027b7          	lui	a5,0x2
     aec:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     af0:	0007a623          	sw	zero,12(a5)
     af4:	fe842783          	lw	a5,-24(s0)
     af8:	00078023          	sb	zero,0(a5)
     afc:	01c12083          	lw	ra,28(sp)
     b00:	01812403          	lw	s0,24(sp)
     b04:	02010113          	addi	sp,sp,32
     b08:	00008067          	ret

00000b0c <_Z14OSStartHighRdyv>:
     b0c:	ff010113          	addi	sp,sp,-16
     b10:	00812623          	sw	s0,12(sp)
     b14:	01010413          	addi	s0,sp,16
     b18:	000027b7          	lui	a5,0x2
     b1c:	00100713          	li	a4,1
     b20:	34e78823          	sb	a4,848(a5) # 2350 <OSRunning>
     b24:	000027b7          	lui	a5,0x2
     b28:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     b2c:	0007a783          	lw	a5,0(a5)
     b30:	00078113          	mv	sp,a5
     b34:	03010113          	addi	sp,sp,48
     b38:	00012e03          	lw	t3,0(sp)
     b3c:	00410113          	addi	sp,sp,4
     b40:	000e0067          	jr	t3
     b44:	00000013          	nop
     b48:	00c12403          	lw	s0,12(sp)
     b4c:	01010113          	addi	sp,sp,16
     b50:	00008067          	ret

00000b54 <_Z8OS_Startv>:
     b54:	fe010113          	addi	sp,sp,-32
     b58:	00112e23          	sw	ra,28(sp)
     b5c:	00812c23          	sw	s0,24(sp)
     b60:	02010413          	addi	s0,sp,32
     b64:	000027b7          	lui	a5,0x2
     b68:	3507c783          	lbu	a5,848(a5) # 2350 <OSRunning>
     b6c:	0c079063          	bnez	a5,c2c <_Z8OS_Startv+0xd8>
     b70:	000027b7          	lui	a5,0x2
     b74:	3517c783          	lbu	a5,849(a5) # 2351 <OSRdyGrp>
     b78:	00078713          	mv	a4,a5
     b7c:	000027b7          	lui	a5,0x2
     b80:	a3078793          	addi	a5,a5,-1488 # 1a30 <_ZL10OSUnMapTbl>
     b84:	00f707b3          	add	a5,a4,a5
     b88:	0007c783          	lbu	a5,0(a5)
     b8c:	fef407a3          	sb	a5,-17(s0)
     b90:	fef44703          	lbu	a4,-17(s0)
     b94:	000027b7          	lui	a5,0x2
     b98:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
     b9c:	00f707b3          	add	a5,a4,a5
     ba0:	0007c783          	lbu	a5,0(a5)
     ba4:	00078713          	mv	a4,a5
     ba8:	000027b7          	lui	a5,0x2
     bac:	a3078793          	addi	a5,a5,-1488 # 1a30 <_ZL10OSUnMapTbl>
     bb0:	00f707b3          	add	a5,a4,a5
     bb4:	0007c783          	lbu	a5,0(a5)
     bb8:	fef40723          	sb	a5,-18(s0)
     bbc:	fef44783          	lbu	a5,-17(s0)
     bc0:	00379793          	slli	a5,a5,0x3
     bc4:	0ff7f713          	andi	a4,a5,255
     bc8:	fee44783          	lbu	a5,-18(s0)
     bcc:	00f707b3          	add	a5,a4,a5
     bd0:	0ff7f713          	andi	a4,a5,255
     bd4:	000027b7          	lui	a5,0x2
     bd8:	32e78aa3          	sb	a4,821(a5) # 2335 <OSPrioHighRdy>
     bdc:	000027b7          	lui	a5,0x2
     be0:	3357c703          	lbu	a4,821(a5) # 2335 <OSPrioHighRdy>
     be4:	000027b7          	lui	a5,0x2
     be8:	32e78a23          	sb	a4,820(a5) # 2334 <OSPrioCur>
     bec:	000027b7          	lui	a5,0x2
     bf0:	3357c783          	lbu	a5,821(a5) # 2335 <OSPrioHighRdy>
     bf4:	00078713          	mv	a4,a5
     bf8:	000037b7          	lui	a5,0x3
     bfc:	00271713          	slli	a4,a4,0x2
     c00:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
     c04:	00f707b3          	add	a5,a4,a5
     c08:	0007a703          	lw	a4,0(a5)
     c0c:	000027b7          	lui	a5,0x2
     c10:	34e7a623          	sw	a4,844(a5) # 234c <OSTCBHighRdy>
     c14:	000027b7          	lui	a5,0x2
     c18:	34c7a703          	lw	a4,844(a5) # 234c <OSTCBHighRdy>
     c1c:	000027b7          	lui	a5,0x2
     c20:	34e7a423          	sw	a4,840(a5) # 2348 <OSTCBCur>
     c24:	00000097          	auipc	ra,0x0
     c28:	ee8080e7          	jalr	-280(ra) # b0c <_Z14OSStartHighRdyv>
     c2c:	00000013          	nop
     c30:	01c12083          	lw	ra,28(sp)
     c34:	01812403          	lw	s0,24(sp)
     c38:	02010113          	addi	sp,sp,32
     c3c:	00008067          	ret

00000c40 <_Z13OSTaskSuspendh>:
     c40:	fd010113          	addi	sp,sp,-48
     c44:	02112623          	sw	ra,44(sp)
     c48:	02812423          	sw	s0,40(sp)
     c4c:	03010413          	addi	s0,sp,48
     c50:	00050793          	mv	a5,a0
     c54:	fcf40fa3          	sb	a5,-33(s0)
     c58:	fdf44703          	lbu	a4,-33(s0)
     c5c:	03e00793          	li	a5,62
     c60:	00e7fa63          	bgeu	a5,a4,c74 <_Z13OSTaskSuspendh+0x34>
     c64:	fdf44783          	lbu	a5,-33(s0)
     c68:	00078663          	beqz	a5,c74 <_Z13OSTaskSuspendh+0x34>
     c6c:	00200793          	li	a5,2
     c70:	1740006f          	j	de4 <_Z13OSTaskSuspendh+0x1a4>
     c74:	fffff097          	auipc	ra,0xfffff
     c78:	69c080e7          	jalr	1692(ra) # 310 <_Z17OS_ENTER_CRITICALv>
     c7c:	fdf44783          	lbu	a5,-33(s0)
     c80:	02079063          	bnez	a5,ca0 <_Z13OSTaskSuspendh+0x60>
     c84:	000027b7          	lui	a5,0x2
     c88:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     c8c:	0177c783          	lbu	a5,23(a5)
     c90:	fcf40fa3          	sb	a5,-33(s0)
     c94:	00100793          	li	a5,1
     c98:	fef407a3          	sb	a5,-17(s0)
     c9c:	0280006f          	j	cc4 <_Z13OSTaskSuspendh+0x84>
     ca0:	000027b7          	lui	a5,0x2
     ca4:	3487a783          	lw	a5,840(a5) # 2348 <OSTCBCur>
     ca8:	0177c783          	lbu	a5,23(a5)
     cac:	fdf44703          	lbu	a4,-33(s0)
     cb0:	00f71863          	bne	a4,a5,cc0 <_Z13OSTaskSuspendh+0x80>
     cb4:	00100793          	li	a5,1
     cb8:	fef407a3          	sb	a5,-17(s0)
     cbc:	0080006f          	j	cc4 <_Z13OSTaskSuspendh+0x84>
     cc0:	fe0407a3          	sb	zero,-17(s0)
     cc4:	fdf44703          	lbu	a4,-33(s0)
     cc8:	000037b7          	lui	a5,0x3
     ccc:	00271713          	slli	a4,a4,0x2
     cd0:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
     cd4:	00f707b3          	add	a5,a4,a5
     cd8:	0007a783          	lw	a5,0(a5)
     cdc:	fef42423          	sw	a5,-24(s0)
     ce0:	fe842783          	lw	a5,-24(s0)
     ce4:	00079a63          	bnez	a5,cf8 <_Z13OSTaskSuspendh+0xb8>
     ce8:	fffff097          	auipc	ra,0xfffff
     cec:	644080e7          	jalr	1604(ra) # 32c <_Z16OS_EXIT_CRITICALv>
     cf0:	00400793          	li	a5,4
     cf4:	0f00006f          	j	de4 <_Z13OSTaskSuspendh+0x1a4>
     cf8:	fe842783          	lw	a5,-24(s0)
     cfc:	0197c783          	lbu	a5,25(a5)
     d00:	00078713          	mv	a4,a5
     d04:	000027b7          	lui	a5,0x2
     d08:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
     d0c:	00f707b3          	add	a5,a4,a5
     d10:	0007c783          	lbu	a5,0(a5)
     d14:	01879713          	slli	a4,a5,0x18
     d18:	41875713          	srai	a4,a4,0x18
     d1c:	fe842783          	lw	a5,-24(s0)
     d20:	01a7c783          	lbu	a5,26(a5)
     d24:	01879793          	slli	a5,a5,0x18
     d28:	4187d793          	srai	a5,a5,0x18
     d2c:	fff7c793          	not	a5,a5
     d30:	01879793          	slli	a5,a5,0x18
     d34:	4187d793          	srai	a5,a5,0x18
     d38:	00f777b3          	and	a5,a4,a5
     d3c:	01879713          	slli	a4,a5,0x18
     d40:	41875713          	srai	a4,a4,0x18
     d44:	fe842783          	lw	a5,-24(s0)
     d48:	0197c783          	lbu	a5,25(a5)
     d4c:	0ff77693          	andi	a3,a4,255
     d50:	00002737          	lui	a4,0x2
     d54:	35470713          	addi	a4,a4,852 # 2354 <OSRdyTbl>
     d58:	00e78733          	add	a4,a5,a4
     d5c:	00d70023          	sb	a3,0(a4)
     d60:	00002737          	lui	a4,0x2
     d64:	35470713          	addi	a4,a4,852 # 2354 <OSRdyTbl>
     d68:	00e787b3          	add	a5,a5,a4
     d6c:	0007c783          	lbu	a5,0(a5)
     d70:	0017b793          	seqz	a5,a5
     d74:	0ff7f793          	andi	a5,a5,255
     d78:	04078463          	beqz	a5,dc0 <_Z13OSTaskSuspendh+0x180>
     d7c:	fe842783          	lw	a5,-24(s0)
     d80:	01b7c783          	lbu	a5,27(a5)
     d84:	01879793          	slli	a5,a5,0x18
     d88:	4187d793          	srai	a5,a5,0x18
     d8c:	fff7c793          	not	a5,a5
     d90:	01879713          	slli	a4,a5,0x18
     d94:	41875713          	srai	a4,a4,0x18
     d98:	000027b7          	lui	a5,0x2
     d9c:	3517c783          	lbu	a5,849(a5) # 2351 <OSRdyGrp>
     da0:	01879793          	slli	a5,a5,0x18
     da4:	4187d793          	srai	a5,a5,0x18
     da8:	00f777b3          	and	a5,a4,a5
     dac:	01879793          	slli	a5,a5,0x18
     db0:	4187d793          	srai	a5,a5,0x18
     db4:	0ff7f713          	andi	a4,a5,255
     db8:	000027b7          	lui	a5,0x2
     dbc:	34e788a3          	sb	a4,849(a5) # 2351 <OSRdyGrp>
     dc0:	fe842783          	lw	a5,-24(s0)
     dc4:	0167c783          	lbu	a5,22(a5)
     dc8:	0037e793          	ori	a5,a5,3
     dcc:	0ff7f713          	andi	a4,a5,255
     dd0:	fe842783          	lw	a5,-24(s0)
     dd4:	00e78b23          	sb	a4,22(a5)
     dd8:	fffff097          	auipc	ra,0xfffff
     ddc:	554080e7          	jalr	1364(ra) # 32c <_Z16OS_EXIT_CRITICALv>
     de0:	00000793          	li	a5,0
     de4:	00078513          	mv	a0,a5
     de8:	02c12083          	lw	ra,44(sp)
     dec:	02812403          	lw	s0,40(sp)
     df0:	03010113          	addi	sp,sp,48
     df4:	00008067          	ret

00000df8 <_Z11OSEventInitP17EventControlBlockh>:
     df8:	fd010113          	addi	sp,sp,-48
     dfc:	02812623          	sw	s0,44(sp)
     e00:	03010413          	addi	s0,sp,48
     e04:	fca42e23          	sw	a0,-36(s0)
     e08:	00058793          	mv	a5,a1
     e0c:	fcf40da3          	sb	a5,-37(s0)
     e10:	fdc42783          	lw	a5,-36(s0)
     e14:	fdb44703          	lbu	a4,-37(s0)
     e18:	00e78223          	sb	a4,4(a5)
     e1c:	fdc42783          	lw	a5,-36(s0)
     e20:	000782a3          	sb	zero,5(a5)
     e24:	fdc42783          	lw	a5,-36(s0)
     e28:	0007a023          	sw	zero,0(a5)
     e2c:	fe0407a3          	sb	zero,-17(s0)
     e30:	fef44703          	lbu	a4,-17(s0)
     e34:	01d00793          	li	a5,29
     e38:	02e7e263          	bltu	a5,a4,e5c <_Z11OSEventInitP17EventControlBlockh+0x64>
     e3c:	fef44783          	lbu	a5,-17(s0)
     e40:	fdc42703          	lw	a4,-36(s0)
     e44:	00f707b3          	add	a5,a4,a5
     e48:	00078423          	sb	zero,8(a5)
     e4c:	fef44783          	lbu	a5,-17(s0)
     e50:	00178793          	addi	a5,a5,1
     e54:	fef407a3          	sb	a5,-17(s0)
     e58:	fd9ff06f          	j	e30 <_Z11OSEventInitP17EventControlBlockh+0x38>
     e5c:	00000013          	nop
     e60:	02c12403          	lw	s0,44(sp)
     e64:	03010113          	addi	sp,sp,48
     e68:	00008067          	ret

00000e6c <_Z19appendToWaitingListP17EventControlBlockh>:
     e6c:	fe010113          	addi	sp,sp,-32
     e70:	00812e23          	sw	s0,28(sp)
     e74:	02010413          	addi	s0,sp,32
     e78:	fea42623          	sw	a0,-20(s0)
     e7c:	00058793          	mv	a5,a1
     e80:	fef405a3          	sb	a5,-21(s0)
     e84:	fec42783          	lw	a5,-20(s0)
     e88:	0057c703          	lbu	a4,5(a5)
     e8c:	feb44783          	lbu	a5,-21(s0)
     e90:	4037d693          	srai	a3,a5,0x3
     e94:	000027b7          	lui	a5,0x2
     e98:	2d878793          	addi	a5,a5,728 # 22d8 <_ZL8OSMapTbl>
     e9c:	00f687b3          	add	a5,a3,a5
     ea0:	0007c783          	lbu	a5,0(a5)
     ea4:	00f767b3          	or	a5,a4,a5
     ea8:	0ff7f713          	andi	a4,a5,255
     eac:	fec42783          	lw	a5,-20(s0)
     eb0:	00e782a3          	sb	a4,5(a5)
     eb4:	feb44783          	lbu	a5,-21(s0)
     eb8:	4037d793          	srai	a5,a5,0x3
     ebc:	fec42703          	lw	a4,-20(s0)
     ec0:	00f707b3          	add	a5,a4,a5
     ec4:	0087c683          	lbu	a3,8(a5)
     ec8:	feb44783          	lbu	a5,-21(s0)
     ecc:	0077f713          	andi	a4,a5,7
     ed0:	000027b7          	lui	a5,0x2
     ed4:	2d878793          	addi	a5,a5,728 # 22d8 <_ZL8OSMapTbl>
     ed8:	00f707b3          	add	a5,a4,a5
     edc:	0007c703          	lbu	a4,0(a5)
     ee0:	feb44783          	lbu	a5,-21(s0)
     ee4:	4037d793          	srai	a5,a5,0x3
     ee8:	00e6e733          	or	a4,a3,a4
     eec:	0ff77713          	andi	a4,a4,255
     ef0:	fec42683          	lw	a3,-20(s0)
     ef4:	00f687b3          	add	a5,a3,a5
     ef8:	00e78423          	sb	a4,8(a5)
     efc:	00000013          	nop
     f00:	01c12403          	lw	s0,28(sp)
     f04:	02010113          	addi	sp,sp,32
     f08:	00008067          	ret

00000f0c <_Z20eraseFromWaitingListP17EventControlBlock>:
     f0c:	fd010113          	addi	sp,sp,-48
     f10:	02112623          	sw	ra,44(sp)
     f14:	02812423          	sw	s0,40(sp)
     f18:	03010413          	addi	s0,sp,48
     f1c:	fca42e23          	sw	a0,-36(s0)
     f20:	fdc42503          	lw	a0,-36(s0)
     f24:	00000097          	auipc	ra,0x0
     f28:	320080e7          	jalr	800(ra) # 1244 <_Z18getHighestPriorityP17EventControlBlock>
     f2c:	00050793          	mv	a5,a0
     f30:	fef407a3          	sb	a5,-17(s0)
     f34:	fef44783          	lbu	a5,-17(s0)
     f38:	4037d793          	srai	a5,a5,0x3
     f3c:	fdc42703          	lw	a4,-36(s0)
     f40:	00f707b3          	add	a5,a4,a5
     f44:	0087c783          	lbu	a5,8(a5)
     f48:	01879713          	slli	a4,a5,0x18
     f4c:	41875713          	srai	a4,a4,0x18
     f50:	fef44783          	lbu	a5,-17(s0)
     f54:	0077f693          	andi	a3,a5,7
     f58:	000027b7          	lui	a5,0x2
     f5c:	2d878793          	addi	a5,a5,728 # 22d8 <_ZL8OSMapTbl>
     f60:	00f687b3          	add	a5,a3,a5
     f64:	0007c783          	lbu	a5,0(a5)
     f68:	01879793          	slli	a5,a5,0x18
     f6c:	4187d793          	srai	a5,a5,0x18
     f70:	fff7c793          	not	a5,a5
     f74:	01879793          	slli	a5,a5,0x18
     f78:	4187d793          	srai	a5,a5,0x18
     f7c:	00f777b3          	and	a5,a4,a5
     f80:	01879713          	slli	a4,a5,0x18
     f84:	41875713          	srai	a4,a4,0x18
     f88:	fef44783          	lbu	a5,-17(s0)
     f8c:	4037d793          	srai	a5,a5,0x3
     f90:	0ff77693          	andi	a3,a4,255
     f94:	fdc42703          	lw	a4,-36(s0)
     f98:	00f70733          	add	a4,a4,a5
     f9c:	00d70423          	sb	a3,8(a4)
     fa0:	fdc42703          	lw	a4,-36(s0)
     fa4:	00f707b3          	add	a5,a4,a5
     fa8:	0087c783          	lbu	a5,8(a5)
     fac:	0017b793          	seqz	a5,a5
     fb0:	0ff7f793          	andi	a5,a5,255
     fb4:	04078c63          	beqz	a5,100c <_Z20eraseFromWaitingListP17EventControlBlock+0x100>
     fb8:	fdc42783          	lw	a5,-36(s0)
     fbc:	0057c783          	lbu	a5,5(a5)
     fc0:	01879713          	slli	a4,a5,0x18
     fc4:	41875713          	srai	a4,a4,0x18
     fc8:	fef44783          	lbu	a5,-17(s0)
     fcc:	4037d693          	srai	a3,a5,0x3
     fd0:	000027b7          	lui	a5,0x2
     fd4:	2d878793          	addi	a5,a5,728 # 22d8 <_ZL8OSMapTbl>
     fd8:	00f687b3          	add	a5,a3,a5
     fdc:	0007c783          	lbu	a5,0(a5)
     fe0:	01879793          	slli	a5,a5,0x18
     fe4:	4187d793          	srai	a5,a5,0x18
     fe8:	fff7c793          	not	a5,a5
     fec:	01879793          	slli	a5,a5,0x18
     ff0:	4187d793          	srai	a5,a5,0x18
     ff4:	00f777b3          	and	a5,a4,a5
     ff8:	01879793          	slli	a5,a5,0x18
     ffc:	4187d793          	srai	a5,a5,0x18
    1000:	0ff7f713          	andi	a4,a5,255
    1004:	fdc42783          	lw	a5,-36(s0)
    1008:	00e782a3          	sb	a4,5(a5)
    100c:	00000013          	nop
    1010:	02c12083          	lw	ra,44(sp)
    1014:	02812403          	lw	s0,40(sp)
    1018:	03010113          	addi	sp,sp,48
    101c:	00008067          	ret

00001020 <_Z12EventTaskRdyP17EventControlBlockPvh>:
    1020:	fd010113          	addi	sp,sp,-48
    1024:	02812623          	sw	s0,44(sp)
    1028:	03010413          	addi	s0,sp,48
    102c:	fca42e23          	sw	a0,-36(s0)
    1030:	fcb42c23          	sw	a1,-40(s0)
    1034:	00060793          	mv	a5,a2
    1038:	fcf40ba3          	sb	a5,-41(s0)
    103c:	fdc42783          	lw	a5,-36(s0)
    1040:	0057c783          	lbu	a5,5(a5)
    1044:	00078713          	mv	a4,a5
    1048:	000027b7          	lui	a5,0x2
    104c:	b3078793          	addi	a5,a5,-1232 # 1b30 <_ZL10OSUnMapTbl>
    1050:	00f707b3          	add	a5,a4,a5
    1054:	0007c783          	lbu	a5,0(a5)
    1058:	fef407a3          	sb	a5,-17(s0)
    105c:	fef44703          	lbu	a4,-17(s0)
    1060:	000027b7          	lui	a5,0x2
    1064:	2d878793          	addi	a5,a5,728 # 22d8 <_ZL8OSMapTbl>
    1068:	00f707b3          	add	a5,a4,a5
    106c:	0007c783          	lbu	a5,0(a5)
    1070:	fef40723          	sb	a5,-18(s0)
    1074:	fef44783          	lbu	a5,-17(s0)
    1078:	fdc42703          	lw	a4,-36(s0)
    107c:	00f707b3          	add	a5,a4,a5
    1080:	0087c783          	lbu	a5,8(a5)
    1084:	00078713          	mv	a4,a5
    1088:	000027b7          	lui	a5,0x2
    108c:	b3078793          	addi	a5,a5,-1232 # 1b30 <_ZL10OSUnMapTbl>
    1090:	00f707b3          	add	a5,a4,a5
    1094:	0007c783          	lbu	a5,0(a5)
    1098:	fef406a3          	sb	a5,-19(s0)
    109c:	fed44703          	lbu	a4,-19(s0)
    10a0:	000027b7          	lui	a5,0x2
    10a4:	2d878793          	addi	a5,a5,728 # 22d8 <_ZL8OSMapTbl>
    10a8:	00f707b3          	add	a5,a4,a5
    10ac:	0007c783          	lbu	a5,0(a5)
    10b0:	fef40623          	sb	a5,-20(s0)
    10b4:	fef44783          	lbu	a5,-17(s0)
    10b8:	00379793          	slli	a5,a5,0x3
    10bc:	0ff7f713          	andi	a4,a5,255
    10c0:	fed44783          	lbu	a5,-19(s0)
    10c4:	00f707b3          	add	a5,a4,a5
    10c8:	0ff7f793          	andi	a5,a5,255
    10cc:	fef403a3          	sb	a5,-25(s0)
    10d0:	fef44783          	lbu	a5,-17(s0)
    10d4:	fdc42703          	lw	a4,-36(s0)
    10d8:	00f707b3          	add	a5,a4,a5
    10dc:	0087c783          	lbu	a5,8(a5)
    10e0:	01879713          	slli	a4,a5,0x18
    10e4:	41875713          	srai	a4,a4,0x18
    10e8:	fec40783          	lb	a5,-20(s0)
    10ec:	fff7c793          	not	a5,a5
    10f0:	01879793          	slli	a5,a5,0x18
    10f4:	4187d793          	srai	a5,a5,0x18
    10f8:	00f777b3          	and	a5,a4,a5
    10fc:	01879713          	slli	a4,a5,0x18
    1100:	41875713          	srai	a4,a4,0x18
    1104:	fef44783          	lbu	a5,-17(s0)
    1108:	0ff77693          	andi	a3,a4,255
    110c:	fdc42703          	lw	a4,-36(s0)
    1110:	00f70733          	add	a4,a4,a5
    1114:	00d70423          	sb	a3,8(a4)
    1118:	fdc42703          	lw	a4,-36(s0)
    111c:	00f707b3          	add	a5,a4,a5
    1120:	0087c783          	lbu	a5,8(a5)
    1124:	0017b793          	seqz	a5,a5
    1128:	0ff7f793          	andi	a5,a5,255
    112c:	02078e63          	beqz	a5,1168 <_Z12EventTaskRdyP17EventControlBlockPvh+0x148>
    1130:	fdc42783          	lw	a5,-36(s0)
    1134:	0057c783          	lbu	a5,5(a5)
    1138:	01879713          	slli	a4,a5,0x18
    113c:	41875713          	srai	a4,a4,0x18
    1140:	fee40783          	lb	a5,-18(s0)
    1144:	fff7c793          	not	a5,a5
    1148:	01879793          	slli	a5,a5,0x18
    114c:	4187d793          	srai	a5,a5,0x18
    1150:	00f777b3          	and	a5,a4,a5
    1154:	01879793          	slli	a5,a5,0x18
    1158:	4187d793          	srai	a5,a5,0x18
    115c:	0ff7f713          	andi	a4,a5,255
    1160:	fdc42783          	lw	a5,-36(s0)
    1164:	00e782a3          	sb	a4,5(a5)
    1168:	fe744783          	lbu	a5,-25(s0)
    116c:	00078713          	mv	a4,a5
    1170:	000037b7          	lui	a5,0x3
    1174:	00271713          	slli	a4,a4,0x2
    1178:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    117c:	00f707b3          	add	a5,a4,a5
    1180:	0007a783          	lw	a5,0(a5)
    1184:	fef42423          	sw	a5,-24(s0)
    1188:	fe842783          	lw	a5,-24(s0)
    118c:	0007a623          	sw	zero,12(a5)
    1190:	fe842783          	lw	a5,-24(s0)
    1194:	fd842703          	lw	a4,-40(s0)
    1198:	00e7a823          	sw	a4,16(a5)
    119c:	fe842783          	lw	a5,-24(s0)
    11a0:	0167c783          	lbu	a5,22(a5)
    11a4:	01879713          	slli	a4,a5,0x18
    11a8:	41875713          	srai	a4,a4,0x18
    11ac:	fd740783          	lb	a5,-41(s0)
    11b0:	fff7c793          	not	a5,a5
    11b4:	01879793          	slli	a5,a5,0x18
    11b8:	4187d793          	srai	a5,a5,0x18
    11bc:	00f777b3          	and	a5,a4,a5
    11c0:	01879793          	slli	a5,a5,0x18
    11c4:	4187d793          	srai	a5,a5,0x18
    11c8:	0ff7f713          	andi	a4,a5,255
    11cc:	fe842783          	lw	a5,-24(s0)
    11d0:	00e78b23          	sb	a4,22(a5)
    11d4:	fe842783          	lw	a5,-24(s0)
    11d8:	0167c783          	lbu	a5,22(a5)
    11dc:	04079a63          	bnez	a5,1230 <_Z12EventTaskRdyP17EventControlBlockPvh+0x210>
    11e0:	000027b7          	lui	a5,0x2
    11e4:	3517c703          	lbu	a4,849(a5) # 2351 <OSRdyGrp>
    11e8:	fee44783          	lbu	a5,-18(s0)
    11ec:	00f767b3          	or	a5,a4,a5
    11f0:	0ff7f713          	andi	a4,a5,255
    11f4:	000027b7          	lui	a5,0x2
    11f8:	34e788a3          	sb	a4,849(a5) # 2351 <OSRdyGrp>
    11fc:	fef44703          	lbu	a4,-17(s0)
    1200:	000027b7          	lui	a5,0x2
    1204:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
    1208:	00f707b3          	add	a5,a4,a5
    120c:	0007c703          	lbu	a4,0(a5)
    1210:	fef44683          	lbu	a3,-17(s0)
    1214:	fec44783          	lbu	a5,-20(s0)
    1218:	00f767b3          	or	a5,a4,a5
    121c:	0ff7f713          	andi	a4,a5,255
    1220:	000027b7          	lui	a5,0x2
    1224:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
    1228:	00f687b3          	add	a5,a3,a5
    122c:	00e78023          	sb	a4,0(a5)
    1230:	fe744783          	lbu	a5,-25(s0)
    1234:	00078513          	mv	a0,a5
    1238:	02c12403          	lw	s0,44(sp)
    123c:	03010113          	addi	sp,sp,48
    1240:	00008067          	ret

00001244 <_Z18getHighestPriorityP17EventControlBlock>:
    1244:	fd010113          	addi	sp,sp,-48
    1248:	02812623          	sw	s0,44(sp)
    124c:	03010413          	addi	s0,sp,48
    1250:	fca42e23          	sw	a0,-36(s0)
    1254:	fdc42783          	lw	a5,-36(s0)
    1258:	0057c783          	lbu	a5,5(a5)
    125c:	00078713          	mv	a4,a5
    1260:	000027b7          	lui	a5,0x2
    1264:	b3078793          	addi	a5,a5,-1232 # 1b30 <_ZL10OSUnMapTbl>
    1268:	00f707b3          	add	a5,a4,a5
    126c:	0007c783          	lbu	a5,0(a5)
    1270:	fef407a3          	sb	a5,-17(s0)
    1274:	fef44783          	lbu	a5,-17(s0)
    1278:	fdc42703          	lw	a4,-36(s0)
    127c:	00f707b3          	add	a5,a4,a5
    1280:	0087c783          	lbu	a5,8(a5)
    1284:	00078713          	mv	a4,a5
    1288:	000027b7          	lui	a5,0x2
    128c:	b3078793          	addi	a5,a5,-1232 # 1b30 <_ZL10OSUnMapTbl>
    1290:	00f707b3          	add	a5,a4,a5
    1294:	0007c783          	lbu	a5,0(a5)
    1298:	fef40723          	sb	a5,-18(s0)
    129c:	fef44783          	lbu	a5,-17(s0)
    12a0:	00379793          	slli	a5,a5,0x3
    12a4:	0ff7f713          	andi	a4,a5,255
    12a8:	fee44783          	lbu	a5,-18(s0)
    12ac:	00f707b3          	add	a5,a4,a5
    12b0:	fef406a3          	sb	a5,-19(s0)
    12b4:	fed44783          	lbu	a5,-19(s0)
    12b8:	00078513          	mv	a0,a5
    12bc:	02c12403          	lw	s0,44(sp)
    12c0:	03010113          	addi	sp,sp,48
    12c4:	00008067          	ret

000012c8 <_Z10OS_TCBInithPm>:
    12c8:	fd010113          	addi	sp,sp,-48
    12cc:	02112623          	sw	ra,44(sp)
    12d0:	02812423          	sw	s0,40(sp)
    12d4:	03010413          	addi	s0,sp,48
    12d8:	00050793          	mv	a5,a0
    12dc:	fcb42c23          	sw	a1,-40(s0)
    12e0:	fcf40fa3          	sb	a5,-33(s0)
    12e4:	fffff097          	auipc	ra,0xfffff
    12e8:	02c080e7          	jalr	44(ra) # 310 <_Z17OS_ENTER_CRITICALv>
    12ec:	000027b7          	lui	a5,0x2
    12f0:	3407a783          	lw	a5,832(a5) # 2340 <OSTCBFreeList>
    12f4:	fef42623          	sw	a5,-20(s0)
    12f8:	fec42783          	lw	a5,-20(s0)
    12fc:	18078e63          	beqz	a5,1498 <_Z10OS_TCBInithPm+0x1d0>
    1300:	fec42783          	lw	a5,-20(s0)
    1304:	0047a703          	lw	a4,4(a5)
    1308:	000027b7          	lui	a5,0x2
    130c:	34e7a023          	sw	a4,832(a5) # 2340 <OSTCBFreeList>
    1310:	fffff097          	auipc	ra,0xfffff
    1314:	01c080e7          	jalr	28(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1318:	fec42783          	lw	a5,-20(s0)
    131c:	fd842703          	lw	a4,-40(s0)
    1320:	00e7a023          	sw	a4,0(a5)
    1324:	fec42783          	lw	a5,-20(s0)
    1328:	fdf44703          	lbu	a4,-33(s0)
    132c:	00e78ba3          	sb	a4,23(a5)
    1330:	fec42783          	lw	a5,-20(s0)
    1334:	00078b23          	sb	zero,22(a5)
    1338:	fec42783          	lw	a5,-20(s0)
    133c:	00079a23          	sh	zero,20(a5)
    1340:	fdf44783          	lbu	a5,-33(s0)
    1344:	4037d793          	srai	a5,a5,0x3
    1348:	0ff7f713          	andi	a4,a5,255
    134c:	fec42783          	lw	a5,-20(s0)
    1350:	00e78ca3          	sb	a4,25(a5)
    1354:	fec42783          	lw	a5,-20(s0)
    1358:	0197c783          	lbu	a5,25(a5)
    135c:	00078713          	mv	a4,a5
    1360:	000027b7          	lui	a5,0x2
    1364:	2fc78793          	addi	a5,a5,764 # 22fc <_ZL8OSMapTbl>
    1368:	00f707b3          	add	a5,a4,a5
    136c:	0007c703          	lbu	a4,0(a5)
    1370:	fec42783          	lw	a5,-20(s0)
    1374:	00e78da3          	sb	a4,27(a5)
    1378:	fdf44783          	lbu	a5,-33(s0)
    137c:	0077f793          	andi	a5,a5,7
    1380:	0ff7f713          	andi	a4,a5,255
    1384:	fec42783          	lw	a5,-20(s0)
    1388:	00e78c23          	sb	a4,24(a5)
    138c:	fec42783          	lw	a5,-20(s0)
    1390:	0187c783          	lbu	a5,24(a5)
    1394:	00078713          	mv	a4,a5
    1398:	000027b7          	lui	a5,0x2
    139c:	2fc78793          	addi	a5,a5,764 # 22fc <_ZL8OSMapTbl>
    13a0:	00f707b3          	add	a5,a4,a5
    13a4:	0007c703          	lbu	a4,0(a5)
    13a8:	fec42783          	lw	a5,-20(s0)
    13ac:	00e78d23          	sb	a4,26(a5)
    13b0:	fec42783          	lw	a5,-20(s0)
    13b4:	0007a623          	sw	zero,12(a5)
    13b8:	fec42783          	lw	a5,-20(s0)
    13bc:	0007a823          	sw	zero,16(a5)
    13c0:	fffff097          	auipc	ra,0xfffff
    13c4:	f50080e7          	jalr	-176(ra) # 310 <_Z17OS_ENTER_CRITICALv>
    13c8:	fdf44703          	lbu	a4,-33(s0)
    13cc:	000037b7          	lui	a5,0x3
    13d0:	00271713          	slli	a4,a4,0x2
    13d4:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    13d8:	00f707b3          	add	a5,a4,a5
    13dc:	fec42703          	lw	a4,-20(s0)
    13e0:	00e7a023          	sw	a4,0(a5)
    13e4:	000027b7          	lui	a5,0x2
    13e8:	3447a703          	lw	a4,836(a5) # 2344 <OSTCBList>
    13ec:	fec42783          	lw	a5,-20(s0)
    13f0:	00e7a223          	sw	a4,4(a5)
    13f4:	fec42783          	lw	a5,-20(s0)
    13f8:	0007a423          	sw	zero,8(a5)
    13fc:	000027b7          	lui	a5,0x2
    1400:	3447a783          	lw	a5,836(a5) # 2344 <OSTCBList>
    1404:	00078a63          	beqz	a5,1418 <_Z10OS_TCBInithPm+0x150>
    1408:	000027b7          	lui	a5,0x2
    140c:	3447a783          	lw	a5,836(a5) # 2344 <OSTCBList>
    1410:	fec42703          	lw	a4,-20(s0)
    1414:	00e7a423          	sw	a4,8(a5)
    1418:	000027b7          	lui	a5,0x2
    141c:	fec42703          	lw	a4,-20(s0)
    1420:	34e7a223          	sw	a4,836(a5) # 2344 <OSTCBList>
    1424:	fec42783          	lw	a5,-20(s0)
    1428:	01b7c703          	lbu	a4,27(a5)
    142c:	000027b7          	lui	a5,0x2
    1430:	3517c783          	lbu	a5,849(a5) # 2351 <OSRdyGrp>
    1434:	00f767b3          	or	a5,a4,a5
    1438:	0ff7f713          	andi	a4,a5,255
    143c:	000027b7          	lui	a5,0x2
    1440:	34e788a3          	sb	a4,849(a5) # 2351 <OSRdyGrp>
    1444:	fec42783          	lw	a5,-20(s0)
    1448:	0197c783          	lbu	a5,25(a5)
    144c:	00078713          	mv	a4,a5
    1450:	000027b7          	lui	a5,0x2
    1454:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
    1458:	00f707b3          	add	a5,a4,a5
    145c:	0007c703          	lbu	a4,0(a5)
    1460:	fec42783          	lw	a5,-20(s0)
    1464:	01a7c783          	lbu	a5,26(a5)
    1468:	fec42683          	lw	a3,-20(s0)
    146c:	0196c683          	lbu	a3,25(a3)
    1470:	00f767b3          	or	a5,a4,a5
    1474:	0ff7f713          	andi	a4,a5,255
    1478:	000027b7          	lui	a5,0x2
    147c:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
    1480:	00f687b3          	add	a5,a3,a5
    1484:	00e78023          	sb	a4,0(a5)
    1488:	fffff097          	auipc	ra,0xfffff
    148c:	ea4080e7          	jalr	-348(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1490:	00000793          	li	a5,0
    1494:	0100006f          	j	14a4 <_Z10OS_TCBInithPm+0x1dc>
    1498:	fffff097          	auipc	ra,0xfffff
    149c:	e94080e7          	jalr	-364(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    14a0:	00100793          	li	a5,1
    14a4:	00078513          	mv	a0,a5
    14a8:	02c12083          	lw	ra,44(sp)
    14ac:	02812403          	lw	s0,40(sp)
    14b0:	03010113          	addi	sp,sp,48
    14b4:	00008067          	ret

000014b8 <_Z12OSTaskCreatePFvPvES_Pmh>:
    14b8:	fd010113          	addi	sp,sp,-48
    14bc:	02112623          	sw	ra,44(sp)
    14c0:	02812423          	sw	s0,40(sp)
    14c4:	03010413          	addi	s0,sp,48
    14c8:	fca42e23          	sw	a0,-36(s0)
    14cc:	fcb42c23          	sw	a1,-40(s0)
    14d0:	fcc42a23          	sw	a2,-44(s0)
    14d4:	00068793          	mv	a5,a3
    14d8:	fcf409a3          	sb	a5,-45(s0)
    14dc:	fd344703          	lbu	a4,-45(s0)
    14e0:	03f00793          	li	a5,63
    14e4:	00e7f663          	bgeu	a5,a4,14f0 <_Z12OSTaskCreatePFvPvES_Pmh+0x38>
    14e8:	00200793          	li	a5,2
    14ec:	1200006f          	j	160c <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    14f0:	fffff097          	auipc	ra,0xfffff
    14f4:	e20080e7          	jalr	-480(ra) # 310 <_Z17OS_ENTER_CRITICALv>
    14f8:	fd344703          	lbu	a4,-45(s0)
    14fc:	000037b7          	lui	a5,0x3
    1500:	00271713          	slli	a4,a4,0x2
    1504:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    1508:	00f707b3          	add	a5,a4,a5
    150c:	0007a783          	lw	a5,0(a5)
    1510:	0e079863          	bnez	a5,1600 <_Z12OSTaskCreatePFvPvES_Pmh+0x148>
    1514:	fd344703          	lbu	a4,-45(s0)
    1518:	000037b7          	lui	a5,0x3
    151c:	00271713          	slli	a4,a4,0x2
    1520:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    1524:	00f707b3          	add	a5,a4,a5
    1528:	00100713          	li	a4,1
    152c:	00e7a023          	sw	a4,0(a5)
    1530:	fffff097          	auipc	ra,0xfffff
    1534:	dfc080e7          	jalr	-516(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1538:	00000693          	li	a3,0
    153c:	fd442603          	lw	a2,-44(s0)
    1540:	fd842583          	lw	a1,-40(s0)
    1544:	fdc42503          	lw	a0,-36(s0)
    1548:	fffff097          	auipc	ra,0xfffff
    154c:	e00080e7          	jalr	-512(ra) # 348 <_Z13OSTaskStkInitPFvPvES_Pmt>
    1550:	00050793          	mv	a5,a0
    1554:	fef42623          	sw	a5,-20(s0)
    1558:	fd344783          	lbu	a5,-45(s0)
    155c:	fec42583          	lw	a1,-20(s0)
    1560:	00078513          	mv	a0,a5
    1564:	00000097          	auipc	ra,0x0
    1568:	d64080e7          	jalr	-668(ra) # 12c8 <_Z10OS_TCBInithPm>
    156c:	00050793          	mv	a5,a0
    1570:	fef403a3          	sb	a5,-25(s0)
    1574:	fe744783          	lbu	a5,-25(s0)
    1578:	04079c63          	bnez	a5,15d0 <_Z12OSTaskCreatePFvPvES_Pmh+0x118>
    157c:	fffff097          	auipc	ra,0xfffff
    1580:	d94080e7          	jalr	-620(ra) # 310 <_Z17OS_ENTER_CRITICALv>
    1584:	000027b7          	lui	a5,0x2
    1588:	35c7c783          	lbu	a5,860(a5) # 235c <OSTaskCtr>
    158c:	00178793          	addi	a5,a5,1
    1590:	0ff7f713          	andi	a4,a5,255
    1594:	000027b7          	lui	a5,0x2
    1598:	34e78e23          	sb	a4,860(a5) # 235c <OSTaskCtr>
    159c:	fffff097          	auipc	ra,0xfffff
    15a0:	d90080e7          	jalr	-624(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    15a4:	fdc42783          	lw	a5,-36(s0)
    15a8:	fef42423          	sw	a5,-24(s0)
    15ac:	fd344703          	lbu	a4,-45(s0)
    15b0:	000037b7          	lui	a5,0x3
    15b4:	00271713          	slli	a4,a4,0x2
    15b8:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    15bc:	00f707b3          	add	a5,a4,a5
    15c0:	0007a783          	lw	a5,0(a5)
    15c4:	fe842703          	lw	a4,-24(s0)
    15c8:	02e7a023          	sw	a4,32(a5)
    15cc:	02c0006f          	j	15f8 <_Z12OSTaskCreatePFvPvES_Pmh+0x140>
    15d0:	fffff097          	auipc	ra,0xfffff
    15d4:	d40080e7          	jalr	-704(ra) # 310 <_Z17OS_ENTER_CRITICALv>
    15d8:	fd344703          	lbu	a4,-45(s0)
    15dc:	000037b7          	lui	a5,0x3
    15e0:	00271713          	slli	a4,a4,0x2
    15e4:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    15e8:	00f707b3          	add	a5,a4,a5
    15ec:	0007a023          	sw	zero,0(a5)
    15f0:	fffff097          	auipc	ra,0xfffff
    15f4:	d3c080e7          	jalr	-708(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    15f8:	fe744783          	lbu	a5,-25(s0)
    15fc:	0100006f          	j	160c <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    1600:	fffff097          	auipc	ra,0xfffff
    1604:	d2c080e7          	jalr	-724(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1608:	00500793          	li	a5,5
    160c:	00078513          	mv	a0,a5
    1610:	02c12083          	lw	ra,44(sp)
    1614:	02812403          	lw	s0,40(sp)
    1618:	03010113          	addi	sp,sp,48
    161c:	00008067          	ret

00001620 <_Z12OSTaskResumeh>:
    1620:	fd010113          	addi	sp,sp,-48
    1624:	02112623          	sw	ra,44(sp)
    1628:	02812423          	sw	s0,40(sp)
    162c:	03010413          	addi	s0,sp,48
    1630:	00050793          	mv	a5,a0
    1634:	fcf40fa3          	sb	a5,-33(s0)
    1638:	fdf44703          	lbu	a4,-33(s0)
    163c:	03e00793          	li	a5,62
    1640:	00e7f663          	bgeu	a5,a4,164c <_Z12OSTaskResumeh+0x2c>
    1644:	00200793          	li	a5,2
    1648:	11c0006f          	j	1764 <_Z12OSTaskResumeh+0x144>
    164c:	fffff097          	auipc	ra,0xfffff
    1650:	cc4080e7          	jalr	-828(ra) # 310 <_Z17OS_ENTER_CRITICALv>
    1654:	fdf44703          	lbu	a4,-33(s0)
    1658:	000037b7          	lui	a5,0x3
    165c:	00271713          	slli	a4,a4,0x2
    1660:	f9478793          	addi	a5,a5,-108 # 2f94 <OSTCBPrioTbl>
    1664:	00f707b3          	add	a5,a4,a5
    1668:	0007a783          	lw	a5,0(a5)
    166c:	fef42623          	sw	a5,-20(s0)
    1670:	fec42783          	lw	a5,-20(s0)
    1674:	00079a63          	bnez	a5,1688 <_Z12OSTaskResumeh+0x68>
    1678:	fffff097          	auipc	ra,0xfffff
    167c:	cb4080e7          	jalr	-844(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1680:	00600793          	li	a5,6
    1684:	0e00006f          	j	1764 <_Z12OSTaskResumeh+0x144>
    1688:	fec42783          	lw	a5,-20(s0)
    168c:	0167c783          	lbu	a5,22(a5)
    1690:	0037f793          	andi	a5,a5,3
    1694:	0c078263          	beqz	a5,1758 <_Z12OSTaskResumeh+0x138>
    1698:	fec42783          	lw	a5,-20(s0)
    169c:	0167c783          	lbu	a5,22(a5)
    16a0:	ffc7f793          	andi	a5,a5,-4
    16a4:	0ff7f713          	andi	a4,a5,255
    16a8:	fec42783          	lw	a5,-20(s0)
    16ac:	00e78b23          	sb	a4,22(a5)
    16b0:	fec42783          	lw	a5,-20(s0)
    16b4:	0167c783          	lbu	a5,22(a5)
    16b8:	00079c63          	bnez	a5,16d0 <_Z12OSTaskResumeh+0xb0>
    16bc:	fec42783          	lw	a5,-20(s0)
    16c0:	0147d783          	lhu	a5,20(a5)
    16c4:	00079663          	bnez	a5,16d0 <_Z12OSTaskResumeh+0xb0>
    16c8:	00100793          	li	a5,1
    16cc:	0080006f          	j	16d4 <_Z12OSTaskResumeh+0xb4>
    16d0:	00000793          	li	a5,0
    16d4:	06078a63          	beqz	a5,1748 <_Z12OSTaskResumeh+0x128>
    16d8:	fec42783          	lw	a5,-20(s0)
    16dc:	01b7c703          	lbu	a4,27(a5)
    16e0:	000027b7          	lui	a5,0x2
    16e4:	3517c783          	lbu	a5,849(a5) # 2351 <OSRdyGrp>
    16e8:	00f767b3          	or	a5,a4,a5
    16ec:	0ff7f713          	andi	a4,a5,255
    16f0:	000027b7          	lui	a5,0x2
    16f4:	34e788a3          	sb	a4,849(a5) # 2351 <OSRdyGrp>
    16f8:	fec42783          	lw	a5,-20(s0)
    16fc:	0197c783          	lbu	a5,25(a5)
    1700:	00078713          	mv	a4,a5
    1704:	000027b7          	lui	a5,0x2
    1708:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
    170c:	00f707b3          	add	a5,a4,a5
    1710:	0007c703          	lbu	a4,0(a5)
    1714:	fec42783          	lw	a5,-20(s0)
    1718:	01a7c783          	lbu	a5,26(a5)
    171c:	fec42683          	lw	a3,-20(s0)
    1720:	0196c683          	lbu	a3,25(a3)
    1724:	00f767b3          	or	a5,a4,a5
    1728:	0ff7f713          	andi	a4,a5,255
    172c:	000027b7          	lui	a5,0x2
    1730:	35478793          	addi	a5,a5,852 # 2354 <OSRdyTbl>
    1734:	00f687b3          	add	a5,a3,a5
    1738:	00e78023          	sb	a4,0(a5)
    173c:	fffff097          	auipc	ra,0xfffff
    1740:	bf0080e7          	jalr	-1040(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1744:	00c0006f          	j	1750 <_Z12OSTaskResumeh+0x130>
    1748:	fffff097          	auipc	ra,0xfffff
    174c:	be4080e7          	jalr	-1052(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1750:	00000793          	li	a5,0
    1754:	0100006f          	j	1764 <_Z12OSTaskResumeh+0x144>
    1758:	fffff097          	auipc	ra,0xfffff
    175c:	bd4080e7          	jalr	-1068(ra) # 32c <_Z16OS_EXIT_CRITICALv>
    1760:	00700793          	li	a5,7
    1764:	00078513          	mv	a0,a5
    1768:	02c12083          	lw	ra,44(sp)
    176c:	02812403          	lw	s0,40(sp)
    1770:	03010113          	addi	sp,sp,48
    1774:	00008067          	ret
