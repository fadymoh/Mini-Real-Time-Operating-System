
final.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	01400137          	lui	sp,0x1400
       4:	ffc10113          	addi	sp,sp,-4 # 13ffffc <_fstack>
       8:	2e4000ef          	jal	ra,2ec <main>

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
      8c:	5b07a783          	lw	a5,1456(a5) # 25b0 <s1>
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
      dc:	00700893          	li	a7,7
      e0:	000027b7          	lui	a5,0x2
      e4:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
      e8:	00078513          	mv	a0,a5
      ec:	00000073          	ecall
      f0:	000027b7          	lui	a5,0x2
      f4:	60c7a703          	lw	a4,1548(a5) # 260c <_ZL9myMailBox>
      f8:	000027b7          	lui	a5,0x2
      fc:	bc878593          	addi	a1,a5,-1080 # 1bc8 <_ZL10OSUnMapTbl+0x170>
     100:	00070513          	mv	a0,a4
     104:	00001097          	auipc	ra,0x1
     108:	bec080e7          	jalr	-1044(ra) # cf0 <_Z10OSMboxPostP17EventControlBlockPv>
     10c:	00050793          	mv	a5,a0
     110:	fef403a3          	sb	a5,-25(s0)
     114:	fe744783          	lbu	a5,-25(s0)
     118:	00078513          	mv	a0,a5
     11c:	00000097          	auipc	ra,0x0
     120:	f2c080e7          	jalr	-212(ra) # 48 <_Z12printIntegeri>
     124:	000027b7          	lui	a5,0x2
     128:	bcc78513          	addi	a0,a5,-1076 # 1bcc <_ZL10OSUnMapTbl+0x174>
     12c:	00000097          	auipc	ra,0x0
     130:	eec080e7          	jalr	-276(ra) # 18 <_Z11printStringPKc>
     134:	fec42503          	lw	a0,-20(s0)
     138:	00000097          	auipc	ra,0x0
     13c:	f10080e7          	jalr	-240(ra) # 48 <_Z12printIntegeri>
     140:	000027b7          	lui	a5,0x2
     144:	bdc78513          	addi	a0,a5,-1060 # 1bdc <_ZL10OSUnMapTbl+0x184>
     148:	00000097          	auipc	ra,0x0
     14c:	ed0080e7          	jalr	-304(ra) # 18 <_Z11printStringPKc>
     150:	000027b7          	lui	a5,0x2
     154:	5b47a783          	lw	a5,1460(a5) # 25b4 <s2>
     158:	00078513          	mv	a0,a5
     15c:	00000097          	auipc	ra,0x0
     160:	ebc080e7          	jalr	-324(ra) # 18 <_Z11printStringPKc>
     164:	00a00893          	li	a7,10
     168:	00000073          	ecall
     16c:	00000013          	nop
     170:	02c12083          	lw	ra,44(sp)
     174:	02812403          	lw	s0,40(sp)
     178:	03010113          	addi	sp,sp,48
     17c:	00008067          	ret

00000180 <_Z6myTaskPv>:
     180:	fd010113          	addi	sp,sp,-48
     184:	02112623          	sw	ra,44(sp)
     188:	02812423          	sw	s0,40(sp)
     18c:	03010413          	addi	s0,sp,48
     190:	fca42e23          	sw	a0,-36(s0)
     194:	000027b7          	lui	a5,0x2
     198:	5b87a783          	lw	a5,1464(a5) # 25b8 <s3>
     19c:	00078513          	mv	a0,a5
     1a0:	00000097          	auipc	ra,0x0
     1a4:	e78080e7          	jalr	-392(ra) # 18 <_Z11printStringPKc>
     1a8:	fe042623          	sw	zero,-20(s0)
     1ac:	fec42703          	lw	a4,-20(s0)
     1b0:	01300793          	li	a5,19
     1b4:	0ee7c863          	blt	a5,a4,2a4 <_Z6myTaskPv+0x124>
     1b8:	fec42703          	lw	a4,-20(s0)
     1bc:	00a00793          	li	a5,10
     1c0:	0cf71463          	bne	a4,a5,288 <_Z6myTaskPv+0x108>
     1c4:	000027b7          	lui	a5,0x2
     1c8:	5bc7a783          	lw	a5,1468(a5) # 25bc <s4>
     1cc:	00078513          	mv	a0,a5
     1d0:	00000097          	auipc	ra,0x0
     1d4:	e48080e7          	jalr	-440(ra) # 18 <_Z11printStringPKc>
     1d8:	00700893          	li	a7,7
     1dc:	000027b7          	lui	a5,0x2
     1e0:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     1e4:	00078513          	mv	a0,a5
     1e8:	00000073          	ecall
     1ec:	000027b7          	lui	a5,0x2
     1f0:	60c7a703          	lw	a4,1548(a5) # 260c <_ZL9myMailBox>
     1f4:	000027b7          	lui	a5,0x2
     1f8:	5d07a783          	lw	a5,1488(a5) # 25d0 <err>
     1fc:	00078593          	mv	a1,a5
     200:	00070513          	mv	a0,a4
     204:	00001097          	auipc	ra,0x1
     208:	9d0080e7          	jalr	-1584(ra) # bd4 <_Z10OSMboxPendP17EventControlBlockPh>
     20c:	000027b7          	lui	a5,0x2
     210:	60c7a783          	lw	a5,1548(a5) # 260c <_ZL9myMailBox>
     214:	00078513          	mv	a0,a5
     218:	00001097          	auipc	ra,0x1
     21c:	ba0080e7          	jalr	-1120(ra) # db8 <_Z10getMessageP17EventControlBlock>
     220:	00050793          	mv	a5,a0
     224:	fef42423          	sw	a5,-24(s0)
     228:	000027b7          	lui	a5,0x2
     22c:	5d07a783          	lw	a5,1488(a5) # 25d0 <err>
     230:	00078513          	mv	a0,a5
     234:	00000097          	auipc	ra,0x0
     238:	e14080e7          	jalr	-492(ra) # 48 <_Z12printIntegeri>
     23c:	fe842503          	lw	a0,-24(s0)
     240:	00000097          	auipc	ra,0x0
     244:	dd8080e7          	jalr	-552(ra) # 18 <_Z11printStringPKc>
     248:	000027b7          	lui	a5,0x2
     24c:	5c07a783          	lw	a5,1472(a5) # 25c0 <s5>
     250:	00078513          	mv	a0,a5
     254:	00000097          	auipc	ra,0x0
     258:	dc4080e7          	jalr	-572(ra) # 18 <_Z11printStringPKc>
     25c:	000027b7          	lui	a5,0x2
     260:	be078513          	addi	a0,a5,-1056 # 1be0 <_ZL10OSUnMapTbl+0x188>
     264:	00000097          	auipc	ra,0x0
     268:	db4080e7          	jalr	-588(ra) # 18 <_Z11printStringPKc>
     26c:	fec42503          	lw	a0,-20(s0)
     270:	00000097          	auipc	ra,0x0
     274:	dd8080e7          	jalr	-552(ra) # 48 <_Z12printIntegeri>
     278:	000027b7          	lui	a5,0x2
     27c:	bdc78513          	addi	a0,a5,-1060 # 1bdc <_ZL10OSUnMapTbl+0x184>
     280:	00000097          	auipc	ra,0x0
     284:	d98080e7          	jalr	-616(ra) # 18 <_Z11printStringPKc>
     288:	fec42503          	lw	a0,-20(s0)
     28c:	00000097          	auipc	ra,0x0
     290:	dbc080e7          	jalr	-580(ra) # 48 <_Z12printIntegeri>
     294:	fec42783          	lw	a5,-20(s0)
     298:	00178793          	addi	a5,a5,1
     29c:	fef42623          	sw	a5,-20(s0)
     2a0:	f0dff06f          	j	1ac <_Z6myTaskPv+0x2c>
     2a4:	000027b7          	lui	a5,0x2
     2a8:	5c47a783          	lw	a5,1476(a5) # 25c4 <s6>
     2ac:	00078513          	mv	a0,a5
     2b0:	00000097          	auipc	ra,0x0
     2b4:	d68080e7          	jalr	-664(ra) # 18 <_Z11printStringPKc>
     2b8:	00700893          	li	a7,7
     2bc:	000027b7          	lui	a5,0x2
     2c0:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     2c4:	00078513          	mv	a0,a5
     2c8:	00000073          	ecall
     2cc:	00a00513          	li	a0,10
     2d0:	00001097          	auipc	ra,0x1
     2d4:	c48080e7          	jalr	-952(ra) # f18 <_Z13OSTaskSuspendh>
     2d8:	00000013          	nop
     2dc:	02c12083          	lw	ra,44(sp)
     2e0:	02812403          	lw	s0,40(sp)
     2e4:	03010113          	addi	sp,sp,48
     2e8:	00008067          	ret

000002ec <main>:
     2ec:	81010113          	addi	sp,sp,-2032
     2f0:	7e112623          	sw	ra,2028(sp)
     2f4:	7e812423          	sw	s0,2024(sp)
     2f8:	7f010413          	addi	s0,sp,2032
     2fc:	fe010113          	addi	sp,sp,-32
     300:	00000097          	auipc	ra,0x0
     304:	380080e7          	jalr	896(ra) # 680 <_Z7OS_Initv>
     308:	000027b7          	lui	a5,0x2
     30c:	bfc78513          	addi	a0,a5,-1028 # 1bfc <_ZL10OSUnMapTbl+0x1a4>
     310:	00000097          	auipc	ra,0x0
     314:	d08080e7          	jalr	-760(ra) # 18 <_Z11printStringPKc>
     318:	bf040793          	addi	a5,s0,-1040
     31c:	3fc78793          	addi	a5,a5,1020
     320:	00a00693          	li	a3,10
     324:	00078613          	mv	a2,a5
     328:	00000593          	li	a1,0
     32c:	000007b7          	lui	a5,0x0
     330:	18078513          	addi	a0,a5,384 # 180 <_Z6myTaskPv>
     334:	00001097          	auipc	ra,0x1
     338:	464080e7          	jalr	1124(ra) # 1798 <_Z12OSTaskCreatePFvPvES_Pmh>
     33c:	fffff7b7          	lui	a5,0xfffff
     340:	7f078793          	addi	a5,a5,2032 # fffff7f0 <_fstack+0xfebff7f4>
     344:	00f407b3          	add	a5,s0,a5
     348:	3fc78793          	addi	a5,a5,1020
     34c:	01400693          	li	a3,20
     350:	00078613          	mv	a2,a5
     354:	00000593          	li	a1,0
     358:	000007b7          	lui	a5,0x0
     35c:	07478513          	addi	a0,a5,116 # 74 <_Z11myTaskOtherPv>
     360:	00001097          	auipc	ra,0x1
     364:	438080e7          	jalr	1080(ra) # 1798 <_Z12OSTaskCreatePFvPvES_Pmh>
     368:	00000097          	auipc	ra,0x0
     36c:	480080e7          	jalr	1152(ra) # 7e8 <_Z17OSCreateSemaphorev>
     370:	00050713          	mv	a4,a0
     374:	000027b7          	lui	a5,0x2
     378:	60e7a423          	sw	a4,1544(a5) # 2608 <_ZL11mySemaphore>
     37c:	00000513          	li	a0,0
     380:	00000097          	auipc	ra,0x0
     384:	7d4080e7          	jalr	2004(ra) # b54 <_Z12OSMboxCreatePv>
     388:	00050713          	mv	a4,a0
     38c:	000027b7          	lui	a5,0x2
     390:	60e7a623          	sw	a4,1548(a5) # 260c <_ZL9myMailBox>
     394:	000027b7          	lui	a5,0x2
     398:	5c87a783          	lw	a5,1480(a5) # 25c8 <s7>
     39c:	00078513          	mv	a0,a5
     3a0:	00000097          	auipc	ra,0x0
     3a4:	c78080e7          	jalr	-904(ra) # 18 <_Z11printStringPKc>
     3a8:	00001097          	auipc	ra,0x1
     3ac:	a84080e7          	jalr	-1404(ra) # e2c <_Z8OS_Startv>
     3b0:	00000793          	li	a5,0
     3b4:	00078513          	mv	a0,a5
     3b8:	02010113          	addi	sp,sp,32
     3bc:	7ec12083          	lw	ra,2028(sp)
     3c0:	7e812403          	lw	s0,2024(sp)
     3c4:	7f010113          	addi	sp,sp,2032
     3c8:	00008067          	ret

000003cc <_Z17OS_ENTER_CRITICALv>:
     3cc:	ff010113          	addi	sp,sp,-16
     3d0:	00812623          	sw	s0,12(sp)
     3d4:	01010413          	addi	s0,sp,16
     3d8:	00000013          	nop
     3dc:	00c12403          	lw	s0,12(sp)
     3e0:	01010113          	addi	sp,sp,16
     3e4:	00008067          	ret

000003e8 <_Z16OS_EXIT_CRITICALv>:
     3e8:	ff010113          	addi	sp,sp,-16
     3ec:	00812623          	sw	s0,12(sp)
     3f0:	01010413          	addi	s0,sp,16
     3f4:	00000013          	nop
     3f8:	00c12403          	lw	s0,12(sp)
     3fc:	01010113          	addi	sp,sp,16
     400:	00008067          	ret

00000404 <_Z13OSTaskStkInitPFvPvES_Pmt>:
     404:	fd010113          	addi	sp,sp,-48
     408:	02812623          	sw	s0,44(sp)
     40c:	03010413          	addi	s0,sp,48
     410:	fca42e23          	sw	a0,-36(s0)
     414:	fcb42c23          	sw	a1,-40(s0)
     418:	fcc42a23          	sw	a2,-44(s0)
     41c:	00068793          	mv	a5,a3
     420:	fcf41923          	sh	a5,-46(s0)
     424:	fd442783          	lw	a5,-44(s0)
     428:	fef42623          	sw	a5,-20(s0)
     42c:	fec42783          	lw	a5,-20(s0)
     430:	ffc78713          	addi	a4,a5,-4
     434:	fee42623          	sw	a4,-20(s0)
     438:	fdc42703          	lw	a4,-36(s0)
     43c:	00e7a023          	sw	a4,0(a5)
     440:	fec42783          	lw	a5,-20(s0)
     444:	ffc78713          	addi	a4,a5,-4
     448:	fee42623          	sw	a4,-20(s0)
     44c:	0007a023          	sw	zero,0(a5)
     450:	fec42783          	lw	a5,-20(s0)
     454:	ffc78713          	addi	a4,a5,-4
     458:	fee42623          	sw	a4,-20(s0)
     45c:	0007a023          	sw	zero,0(a5)
     460:	fec42783          	lw	a5,-20(s0)
     464:	ffc78713          	addi	a4,a5,-4
     468:	fee42623          	sw	a4,-20(s0)
     46c:	0007a023          	sw	zero,0(a5)
     470:	fec42783          	lw	a5,-20(s0)
     474:	ffc78713          	addi	a4,a5,-4
     478:	fee42623          	sw	a4,-20(s0)
     47c:	0007a023          	sw	zero,0(a5)
     480:	fec42783          	lw	a5,-20(s0)
     484:	ffc78713          	addi	a4,a5,-4
     488:	fee42623          	sw	a4,-20(s0)
     48c:	0007a023          	sw	zero,0(a5)
     490:	fec42783          	lw	a5,-20(s0)
     494:	ffc78713          	addi	a4,a5,-4
     498:	fee42623          	sw	a4,-20(s0)
     49c:	0007a023          	sw	zero,0(a5)
     4a0:	fec42783          	lw	a5,-20(s0)
     4a4:	ffc78713          	addi	a4,a5,-4
     4a8:	fee42623          	sw	a4,-20(s0)
     4ac:	0007a023          	sw	zero,0(a5)
     4b0:	fec42783          	lw	a5,-20(s0)
     4b4:	ffc78713          	addi	a4,a5,-4
     4b8:	fee42623          	sw	a4,-20(s0)
     4bc:	0007a023          	sw	zero,0(a5)
     4c0:	fec42783          	lw	a5,-20(s0)
     4c4:	ffc78713          	addi	a4,a5,-4
     4c8:	fee42623          	sw	a4,-20(s0)
     4cc:	0007a023          	sw	zero,0(a5)
     4d0:	fec42783          	lw	a5,-20(s0)
     4d4:	ffc78713          	addi	a4,a5,-4
     4d8:	fee42623          	sw	a4,-20(s0)
     4dc:	0007a023          	sw	zero,0(a5)
     4e0:	fec42783          	lw	a5,-20(s0)
     4e4:	ffc78713          	addi	a4,a5,-4
     4e8:	fee42623          	sw	a4,-20(s0)
     4ec:	0007a023          	sw	zero,0(a5)
     4f0:	fec42783          	lw	a5,-20(s0)
     4f4:	0007a023          	sw	zero,0(a5)
     4f8:	fec42783          	lw	a5,-20(s0)
     4fc:	00078513          	mv	a0,a5
     500:	02c12403          	lw	s0,44(sp)
     504:	03010113          	addi	sp,sp,48
     508:	00008067          	ret

0000050c <_Z16OSTaskCreateHookv>:
     50c:	ff010113          	addi	sp,sp,-16
     510:	00812623          	sw	s0,12(sp)
     514:	01010413          	addi	s0,sp,16
     518:	00000013          	nop
     51c:	00c12403          	lw	s0,12(sp)
     520:	01010113          	addi	sp,sp,16
     524:	00008067          	ret

00000528 <_Z10OS_TASK_SWv>:
     528:	ff010113          	addi	sp,sp,-16
     52c:	00812623          	sw	s0,12(sp)
     530:	01010413          	addi	s0,sp,16
     534:	00000013          	nop
     538:	00c12403          	lw	s0,12(sp)
     53c:	01010113          	addi	sp,sp,16
     540:	00008067          	ret

00000544 <_Z8OS_Schedv>:
     544:	fe010113          	addi	sp,sp,-32
     548:	00112e23          	sw	ra,28(sp)
     54c:	00812c23          	sw	s0,24(sp)
     550:	02010413          	addi	s0,sp,32
     554:	00000097          	auipc	ra,0x0
     558:	e78080e7          	jalr	-392(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
     55c:	000027b7          	lui	a5,0x2
     560:	5e97c783          	lbu	a5,1513(a5) # 25e9 <OSRdyGrp>
     564:	00078713          	mv	a4,a5
     568:	000027b7          	lui	a5,0x2
     56c:	d1478793          	addi	a5,a5,-748 # 1d14 <_ZL10OSUnMapTbl>
     570:	00f707b3          	add	a5,a4,a5
     574:	0007c783          	lbu	a5,0(a5)
     578:	fef407a3          	sb	a5,-17(s0)
     57c:	fef44783          	lbu	a5,-17(s0)
     580:	00379793          	slli	a5,a5,0x3
     584:	0ff7f713          	andi	a4,a5,255
     588:	fef44683          	lbu	a3,-17(s0)
     58c:	000027b7          	lui	a5,0x2
     590:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
     594:	00f687b3          	add	a5,a3,a5
     598:	0007c783          	lbu	a5,0(a5)
     59c:	00078693          	mv	a3,a5
     5a0:	000027b7          	lui	a5,0x2
     5a4:	d1478793          	addi	a5,a5,-748 # 1d14 <_ZL10OSUnMapTbl>
     5a8:	00f687b3          	add	a5,a3,a5
     5ac:	0007c783          	lbu	a5,0(a5)
     5b0:	00f707b3          	add	a5,a4,a5
     5b4:	0ff7f713          	andi	a4,a5,255
     5b8:	000027b7          	lui	a5,0x2
     5bc:	5ce786a3          	sb	a4,1485(a5) # 25cd <OSPrioHighRdy>
     5c0:	000027b7          	lui	a5,0x2
     5c4:	5cd7c703          	lbu	a4,1485(a5) # 25cd <OSPrioHighRdy>
     5c8:	000027b7          	lui	a5,0x2
     5cc:	5ce78623          	sb	a4,1484(a5) # 25cc <OSPrioCur>
     5d0:	000027b7          	lui	a5,0x2
     5d4:	5cd7c783          	lbu	a5,1485(a5) # 25cd <OSPrioHighRdy>
     5d8:	00078713          	mv	a4,a5
     5dc:	000037b7          	lui	a5,0x3
     5e0:	00271713          	slli	a4,a4,0x2
     5e4:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
     5e8:	00f707b3          	add	a5,a4,a5
     5ec:	0007a703          	lw	a4,0(a5)
     5f0:	000027b7          	lui	a5,0x2
     5f4:	5ee7a223          	sw	a4,1508(a5) # 25e4 <OSTCBHighRdy>
     5f8:	000027b7          	lui	a5,0x2
     5fc:	5e47a703          	lw	a4,1508(a5) # 25e4 <OSTCBHighRdy>
     600:	000027b7          	lui	a5,0x2
     604:	5ee7a023          	sw	a4,1504(a5) # 25e0 <OSTCBCur>
     608:	000027b7          	lui	a5,0x2
     60c:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     610:	0007a783          	lw	a5,0(a5)
     614:	00078113          	mv	sp,a5
     618:	03012e03          	lw	t3,48(sp)
     61c:	02c12403          	lw	s0,44(sp)
     620:	02812483          	lw	s1,40(sp)
     624:	02412903          	lw	s2,36(sp)
     628:	02012983          	lw	s3,32(sp)
     62c:	01c12a03          	lw	s4,28(sp)
     630:	01812a83          	lw	s5,24(sp)
     634:	01412b03          	lw	s6,20(sp)
     638:	01012b83          	lw	s7,16(sp)
     63c:	00c12c03          	lw	s8,12(sp)
     640:	00812c83          	lw	s9,8(sp)
     644:	00412d03          	lw	s10,4(sp)
     648:	00012d83          	lw	s11,0(sp)
     64c:	03410113          	addi	sp,sp,52
     650:	000027b7          	lui	a5,0x2
     654:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     658:	0207a783          	lw	a5,32(a5)
     65c:	00078e13          	mv	t3,a5
     660:	000e0067          	jr	t3
     664:	00000097          	auipc	ra,0x0
     668:	d84080e7          	jalr	-636(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
     66c:	00000013          	nop
     670:	01c12083          	lw	ra,28(sp)
     674:	01812403          	lw	s0,24(sp)
     678:	02010113          	addi	sp,sp,32
     67c:	00008067          	ret

00000680 <_Z7OS_Initv>:
     680:	ff010113          	addi	sp,sp,-16
     684:	00112623          	sw	ra,12(sp)
     688:	00812423          	sw	s0,8(sp)
     68c:	01010413          	addi	s0,sp,16
     690:	00000097          	auipc	ra,0x0
     694:	0bc080e7          	jalr	188(ra) # 74c <_Z20OS_EventWaitListInitv>
     698:	00000097          	auipc	ra,0x0
     69c:	01c080e7          	jalr	28(ra) # 6b4 <_Z15OS_TaskFreePoolv>
     6a0:	00000013          	nop
     6a4:	00c12083          	lw	ra,12(sp)
     6a8:	00812403          	lw	s0,8(sp)
     6ac:	01010113          	addi	sp,sp,16
     6b0:	00008067          	ret

000006b4 <_Z15OS_TaskFreePoolv>:
     6b4:	fe010113          	addi	sp,sp,-32
     6b8:	00812e23          	sw	s0,28(sp)
     6bc:	02010413          	addi	s0,sp,32
     6c0:	000027b7          	lui	a5,0x2
     6c4:	00003737          	lui	a4,0x3
     6c8:	93070713          	addi	a4,a4,-1744 # 2930 <freeTCBs>
     6cc:	5ce7ac23          	sw	a4,1496(a5) # 25d8 <OSTCBFreeList>
     6d0:	000027b7          	lui	a5,0x2
     6d4:	5d87a783          	lw	a5,1496(a5) # 25d8 <OSTCBFreeList>
     6d8:	fef42623          	sw	a5,-20(s0)
     6dc:	00100793          	li	a5,1
     6e0:	fef42423          	sw	a5,-24(s0)
     6e4:	fe842703          	lw	a4,-24(s0)
     6e8:	03f00793          	li	a5,63
     6ec:	04e7c463          	blt	a5,a4,734 <_Z15OS_TaskFreePoolv+0x80>
     6f0:	fe842703          	lw	a4,-24(s0)
     6f4:	00070793          	mv	a5,a4
     6f8:	00379793          	slli	a5,a5,0x3
     6fc:	00e787b3          	add	a5,a5,a4
     700:	00279793          	slli	a5,a5,0x2
     704:	00003737          	lui	a4,0x3
     708:	93070713          	addi	a4,a4,-1744 # 2930 <freeTCBs>
     70c:	00e78733          	add	a4,a5,a4
     710:	fec42783          	lw	a5,-20(s0)
     714:	00e7a223          	sw	a4,4(a5)
     718:	fec42783          	lw	a5,-20(s0)
     71c:	0047a783          	lw	a5,4(a5)
     720:	fef42623          	sw	a5,-20(s0)
     724:	fe842783          	lw	a5,-24(s0)
     728:	00178793          	addi	a5,a5,1
     72c:	fef42423          	sw	a5,-24(s0)
     730:	fb5ff06f          	j	6e4 <_Z15OS_TaskFreePoolv+0x30>
     734:	fec42783          	lw	a5,-20(s0)
     738:	0007a223          	sw	zero,4(a5)
     73c:	00000013          	nop
     740:	01c12403          	lw	s0,28(sp)
     744:	02010113          	addi	sp,sp,32
     748:	00008067          	ret

0000074c <_Z20OS_EventWaitListInitv>:
     74c:	fe010113          	addi	sp,sp,-32
     750:	00812e23          	sw	s0,28(sp)
     754:	02010413          	addi	s0,sp,32
     758:	000027b7          	lui	a5,0x2
     75c:	00002737          	lui	a4,0x2
     760:	61070713          	addi	a4,a4,1552 # 2610 <freeEvents>
     764:	5ce7aa23          	sw	a4,1492(a5) # 25d4 <OSEventFreeList>
     768:	000027b7          	lui	a5,0x2
     76c:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     770:	fef42623          	sw	a5,-20(s0)
     774:	00100793          	li	a5,1
     778:	fef405a3          	sb	a5,-21(s0)
     77c:	feb40703          	lb	a4,-21(s0)
     780:	01300793          	li	a5,19
     784:	04e7c663          	blt	a5,a4,7d0 <_Z20OS_EventWaitListInitv+0x84>
     788:	feb40703          	lb	a4,-21(s0)
     78c:	00070793          	mv	a5,a4
     790:	00279793          	slli	a5,a5,0x2
     794:	00e787b3          	add	a5,a5,a4
     798:	00379793          	slli	a5,a5,0x3
     79c:	00002737          	lui	a4,0x2
     7a0:	61070713          	addi	a4,a4,1552 # 2610 <freeEvents>
     7a4:	00e78733          	add	a4,a5,a4
     7a8:	fec42783          	lw	a5,-20(s0)
     7ac:	00e7a023          	sw	a4,0(a5)
     7b0:	fec42783          	lw	a5,-20(s0)
     7b4:	0007a783          	lw	a5,0(a5)
     7b8:	fef42623          	sw	a5,-20(s0)
     7bc:	feb44783          	lbu	a5,-21(s0)
     7c0:	00178793          	addi	a5,a5,1
     7c4:	0ff7f793          	andi	a5,a5,255
     7c8:	fef405a3          	sb	a5,-21(s0)
     7cc:	fb1ff06f          	j	77c <_Z20OS_EventWaitListInitv+0x30>
     7d0:	fec42783          	lw	a5,-20(s0)
     7d4:	0007a023          	sw	zero,0(a5)
     7d8:	00000013          	nop
     7dc:	01c12403          	lw	s0,28(sp)
     7e0:	02010113          	addi	sp,sp,32
     7e4:	00008067          	ret

000007e8 <_Z17OSCreateSemaphorev>:
     7e8:	fe010113          	addi	sp,sp,-32
     7ec:	00812e23          	sw	s0,28(sp)
     7f0:	02010413          	addi	s0,sp,32
     7f4:	000027b7          	lui	a5,0x2
     7f8:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     7fc:	fef42623          	sw	a5,-20(s0)
     800:	000027b7          	lui	a5,0x2
     804:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     808:	00078c63          	beqz	a5,820 <_Z17OSCreateSemaphorev+0x38>
     80c:	000027b7          	lui	a5,0x2
     810:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     814:	0007a703          	lw	a4,0(a5)
     818:	000027b7          	lui	a5,0x2
     81c:	5ce7aa23          	sw	a4,1492(a5) # 25d4 <OSEventFreeList>
     820:	fec42783          	lw	a5,-20(s0)
     824:	02078463          	beqz	a5,84c <_Z17OSCreateSemaphorev+0x64>
     828:	fec42783          	lw	a5,-20(s0)
     82c:	00800713          	li	a4,8
     830:	00e78223          	sb	a4,4(a5)
     834:	fec42783          	lw	a5,-20(s0)
     838:	00079323          	sh	zero,6(a5)
     83c:	fec42783          	lw	a5,-20(s0)
     840:	0007a023          	sw	zero,0(a5)
     844:	fec42783          	lw	a5,-20(s0)
     848:	000782a3          	sb	zero,5(a5)
     84c:	fec42783          	lw	a5,-20(s0)
     850:	00078513          	mv	a0,a5
     854:	01c12403          	lw	s0,28(sp)
     858:	02010113          	addi	sp,sp,32
     85c:	00008067          	ret

00000860 <_Z16OS_EventTaskWaitP17EventControlBlock>:
     860:	fe010113          	addi	sp,sp,-32
     864:	00812e23          	sw	s0,28(sp)
     868:	02010413          	addi	s0,sp,32
     86c:	fea42623          	sw	a0,-20(s0)
     870:	000027b7          	lui	a5,0x2
     874:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     878:	fec42703          	lw	a4,-20(s0)
     87c:	00e7a623          	sw	a4,12(a5)
     880:	000027b7          	lui	a5,0x2
     884:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     888:	0197c783          	lbu	a5,25(a5)
     88c:	00078713          	mv	a4,a5
     890:	000027b7          	lui	a5,0x2
     894:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
     898:	00f707b3          	add	a5,a4,a5
     89c:	0007c783          	lbu	a5,0(a5)
     8a0:	01879713          	slli	a4,a5,0x18
     8a4:	41875713          	srai	a4,a4,0x18
     8a8:	000027b7          	lui	a5,0x2
     8ac:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     8b0:	01a7c783          	lbu	a5,26(a5)
     8b4:	01879793          	slli	a5,a5,0x18
     8b8:	4187d793          	srai	a5,a5,0x18
     8bc:	fff7c793          	not	a5,a5
     8c0:	01879793          	slli	a5,a5,0x18
     8c4:	4187d793          	srai	a5,a5,0x18
     8c8:	00f777b3          	and	a5,a4,a5
     8cc:	01879713          	slli	a4,a5,0x18
     8d0:	41875713          	srai	a4,a4,0x18
     8d4:	000027b7          	lui	a5,0x2
     8d8:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     8dc:	0197c783          	lbu	a5,25(a5)
     8e0:	0ff77693          	andi	a3,a4,255
     8e4:	00002737          	lui	a4,0x2
     8e8:	5ec70713          	addi	a4,a4,1516 # 25ec <OSRdyTbl>
     8ec:	00e78733          	add	a4,a5,a4
     8f0:	00d70023          	sb	a3,0(a4)
     8f4:	00002737          	lui	a4,0x2
     8f8:	5ec70713          	addi	a4,a4,1516 # 25ec <OSRdyTbl>
     8fc:	00e787b3          	add	a5,a5,a4
     900:	0007c783          	lbu	a5,0(a5)
     904:	0017b793          	seqz	a5,a5
     908:	0ff7f793          	andi	a5,a5,255
     90c:	04078663          	beqz	a5,958 <_Z16OS_EventTaskWaitP17EventControlBlock+0xf8>
     910:	000027b7          	lui	a5,0x2
     914:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     918:	01b7c783          	lbu	a5,27(a5)
     91c:	01879793          	slli	a5,a5,0x18
     920:	4187d793          	srai	a5,a5,0x18
     924:	fff7c793          	not	a5,a5
     928:	01879713          	slli	a4,a5,0x18
     92c:	41875713          	srai	a4,a4,0x18
     930:	000027b7          	lui	a5,0x2
     934:	5e97c783          	lbu	a5,1513(a5) # 25e9 <OSRdyGrp>
     938:	01879793          	slli	a5,a5,0x18
     93c:	4187d793          	srai	a5,a5,0x18
     940:	00f777b3          	and	a5,a4,a5
     944:	01879793          	slli	a5,a5,0x18
     948:	4187d793          	srai	a5,a5,0x18
     94c:	0ff7f713          	andi	a4,a5,255
     950:	000027b7          	lui	a5,0x2
     954:	5ee784a3          	sb	a4,1513(a5) # 25e9 <OSRdyGrp>
     958:	000027b7          	lui	a5,0x2
     95c:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     960:	0197c783          	lbu	a5,25(a5)
     964:	00078713          	mv	a4,a5
     968:	fec42783          	lw	a5,-20(s0)
     96c:	00e787b3          	add	a5,a5,a4
     970:	0087c703          	lbu	a4,8(a5)
     974:	000027b7          	lui	a5,0x2
     978:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     97c:	01a7c783          	lbu	a5,26(a5)
     980:	000026b7          	lui	a3,0x2
     984:	5e06a683          	lw	a3,1504(a3) # 25e0 <OSTCBCur>
     988:	0196c683          	lbu	a3,25(a3)
     98c:	00f767b3          	or	a5,a4,a5
     990:	0ff7f713          	andi	a4,a5,255
     994:	fec42783          	lw	a5,-20(s0)
     998:	00d787b3          	add	a5,a5,a3
     99c:	00e78423          	sb	a4,8(a5)
     9a0:	fec42783          	lw	a5,-20(s0)
     9a4:	0057c703          	lbu	a4,5(a5)
     9a8:	000027b7          	lui	a5,0x2
     9ac:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     9b0:	01b7c783          	lbu	a5,27(a5)
     9b4:	00f767b3          	or	a5,a4,a5
     9b8:	0ff7f713          	andi	a4,a5,255
     9bc:	fec42783          	lw	a5,-20(s0)
     9c0:	00e782a3          	sb	a4,5(a5)
     9c4:	00000013          	nop
     9c8:	01c12403          	lw	s0,28(sp)
     9cc:	02010113          	addi	sp,sp,32
     9d0:	00008067          	ret

000009d4 <_Z9OSSemPostP17EventControlBlock>:
     9d4:	fe010113          	addi	sp,sp,-32
     9d8:	00112e23          	sw	ra,28(sp)
     9dc:	00812c23          	sw	s0,24(sp)
     9e0:	02010413          	addi	s0,sp,32
     9e4:	fea42623          	sw	a0,-20(s0)
     9e8:	fec42783          	lw	a5,-20(s0)
     9ec:	0057c783          	lbu	a5,5(a5)
     9f0:	02078463          	beqz	a5,a18 <_Z9OSSemPostP17EventControlBlock+0x44>
     9f4:	00a00613          	li	a2,10
     9f8:	00000593          	li	a1,0
     9fc:	fec42503          	lw	a0,-20(s0)
     a00:	00001097          	auipc	ra,0x1
     a04:	900080e7          	jalr	-1792(ra) # 1300 <_Z12EventTaskRdyP17EventControlBlockPvh>
     a08:	00000097          	auipc	ra,0x0
     a0c:	b3c080e7          	jalr	-1220(ra) # 544 <_Z8OS_Schedv>
     a10:	00000793          	li	a5,0
     a14:	0400006f          	j	a54 <_Z9OSSemPostP17EventControlBlock+0x80>
     a18:	fec42783          	lw	a5,-20(s0)
     a1c:	0067d703          	lhu	a4,6(a5)
     a20:	000107b7          	lui	a5,0x10
     a24:	fff78793          	addi	a5,a5,-1 # ffff <__BSS_END__+0xcccf>
     a28:	02f70463          	beq	a4,a5,a50 <_Z9OSSemPostP17EventControlBlock+0x7c>
     a2c:	fec42783          	lw	a5,-20(s0)
     a30:	0067d783          	lhu	a5,6(a5)
     a34:	00178793          	addi	a5,a5,1
     a38:	01079713          	slli	a4,a5,0x10
     a3c:	01075713          	srli	a4,a4,0x10
     a40:	fec42783          	lw	a5,-20(s0)
     a44:	00e79323          	sh	a4,6(a5)
     a48:	00000793          	li	a5,0
     a4c:	0080006f          	j	a54 <_Z9OSSemPostP17EventControlBlock+0x80>
     a50:	00500793          	li	a5,5
     a54:	00078513          	mv	a0,a5
     a58:	01c12083          	lw	ra,28(sp)
     a5c:	01812403          	lw	s0,24(sp)
     a60:	02010113          	addi	sp,sp,32
     a64:	00008067          	ret

00000a68 <_Z9OSSemPendP17EventControlBlockPh>:
     a68:	fe010113          	addi	sp,sp,-32
     a6c:	00112e23          	sw	ra,28(sp)
     a70:	00812c23          	sw	s0,24(sp)
     a74:	02010413          	addi	s0,sp,32
     a78:	fea42623          	sw	a0,-20(s0)
     a7c:	feb42423          	sw	a1,-24(s0)
     a80:	00008713          	mv	a4,ra
     a84:	000027b7          	lui	a5,0x2
     a88:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     a8c:	02e7a023          	sw	a4,32(a5)
     a90:	fec42783          	lw	a5,-20(s0)
     a94:	00079a63          	bnez	a5,aa8 <_Z9OSSemPendP17EventControlBlockPh+0x40>
     a98:	fe842783          	lw	a5,-24(s0)
     a9c:	00300713          	li	a4,3
     aa0:	00e78023          	sb	a4,0(a5)
     aa4:	0a00006f          	j	b44 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     aa8:	fec42783          	lw	a5,-20(s0)
     aac:	0047c703          	lbu	a4,4(a5)
     ab0:	00800793          	li	a5,8
     ab4:	00f70a63          	beq	a4,a5,ac8 <_Z9OSSemPendP17EventControlBlockPh+0x60>
     ab8:	fe842783          	lw	a5,-24(s0)
     abc:	00400713          	li	a4,4
     ac0:	00e78023          	sb	a4,0(a5)
     ac4:	0800006f          	j	b44 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     ac8:	fec42783          	lw	a5,-20(s0)
     acc:	0067d783          	lhu	a5,6(a5)
     ad0:	02078663          	beqz	a5,afc <_Z9OSSemPendP17EventControlBlockPh+0x94>
     ad4:	fec42783          	lw	a5,-20(s0)
     ad8:	0067d783          	lhu	a5,6(a5)
     adc:	fff78793          	addi	a5,a5,-1
     ae0:	01079713          	slli	a4,a5,0x10
     ae4:	01075713          	srli	a4,a4,0x10
     ae8:	fec42783          	lw	a5,-20(s0)
     aec:	00e79323          	sh	a4,6(a5)
     af0:	fe842783          	lw	a5,-24(s0)
     af4:	00078023          	sb	zero,0(a5)
     af8:	04c0006f          	j	b44 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     afc:	000027b7          	lui	a5,0x2
     b00:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     b04:	0167c703          	lbu	a4,22(a5)
     b08:	000027b7          	lui	a5,0x2
     b0c:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     b10:	00a76713          	ori	a4,a4,10
     b14:	0ff77713          	andi	a4,a4,255
     b18:	00e78b23          	sb	a4,22(a5)
     b1c:	fec42503          	lw	a0,-20(s0)
     b20:	00000097          	auipc	ra,0x0
     b24:	d40080e7          	jalr	-704(ra) # 860 <_Z16OS_EventTaskWaitP17EventControlBlock>
     b28:	00000097          	auipc	ra,0x0
     b2c:	a1c080e7          	jalr	-1508(ra) # 544 <_Z8OS_Schedv>
     b30:	000027b7          	lui	a5,0x2
     b34:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     b38:	0007a623          	sw	zero,12(a5)
     b3c:	fe842783          	lw	a5,-24(s0)
     b40:	00078023          	sb	zero,0(a5)
     b44:	01c12083          	lw	ra,28(sp)
     b48:	01812403          	lw	s0,24(sp)
     b4c:	02010113          	addi	sp,sp,32
     b50:	00008067          	ret

00000b54 <_Z12OSMboxCreatePv>:
     b54:	fd010113          	addi	sp,sp,-48
     b58:	02812623          	sw	s0,44(sp)
     b5c:	03010413          	addi	s0,sp,48
     b60:	fca42e23          	sw	a0,-36(s0)
     b64:	000027b7          	lui	a5,0x2
     b68:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     b6c:	fef42623          	sw	a5,-20(s0)
     b70:	000027b7          	lui	a5,0x2
     b74:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     b78:	00078c63          	beqz	a5,b90 <_Z12OSMboxCreatePv+0x3c>
     b7c:	000027b7          	lui	a5,0x2
     b80:	5d47a783          	lw	a5,1492(a5) # 25d4 <OSEventFreeList>
     b84:	0007a703          	lw	a4,0(a5)
     b88:	000027b7          	lui	a5,0x2
     b8c:	5ce7aa23          	sw	a4,1492(a5) # 25d4 <OSEventFreeList>
     b90:	fec42783          	lw	a5,-20(s0)
     b94:	02078663          	beqz	a5,bc0 <_Z12OSMboxCreatePv+0x6c>
     b98:	fec42783          	lw	a5,-20(s0)
     b9c:	00900713          	li	a4,9
     ba0:	00e78223          	sb	a4,4(a5)
     ba4:	fec42783          	lw	a5,-20(s0)
     ba8:	00079323          	sh	zero,6(a5)
     bac:	fec42783          	lw	a5,-20(s0)
     bb0:	fdc42703          	lw	a4,-36(s0)
     bb4:	00e7a023          	sw	a4,0(a5)
     bb8:	fec42783          	lw	a5,-20(s0)
     bbc:	000782a3          	sb	zero,5(a5)
     bc0:	fec42783          	lw	a5,-20(s0)
     bc4:	00078513          	mv	a0,a5
     bc8:	02c12403          	lw	s0,44(sp)
     bcc:	03010113          	addi	sp,sp,48
     bd0:	00008067          	ret

00000bd4 <_Z10OSMboxPendP17EventControlBlockPh>:
     bd4:	fd010113          	addi	sp,sp,-48
     bd8:	02112623          	sw	ra,44(sp)
     bdc:	02812423          	sw	s0,40(sp)
     be0:	03010413          	addi	s0,sp,48
     be4:	fca42e23          	sw	a0,-36(s0)
     be8:	fcb42c23          	sw	a1,-40(s0)
     bec:	00008713          	mv	a4,ra
     bf0:	000027b7          	lui	a5,0x2
     bf4:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     bf8:	02e7a023          	sw	a4,32(a5)
     bfc:	fdc42783          	lw	a5,-36(s0)
     c00:	00079c63          	bnez	a5,c18 <_Z10OSMboxPendP17EventControlBlockPh+0x44>
     c04:	fd842783          	lw	a5,-40(s0)
     c08:	00300713          	li	a4,3
     c0c:	00e78023          	sb	a4,0(a5)
     c10:	00000793          	li	a5,0
     c14:	0c80006f          	j	cdc <_Z10OSMboxPendP17EventControlBlockPh+0x108>
     c18:	fdc42783          	lw	a5,-36(s0)
     c1c:	0047c703          	lbu	a4,4(a5)
     c20:	00900793          	li	a5,9
     c24:	00f70c63          	beq	a4,a5,c3c <_Z10OSMboxPendP17EventControlBlockPh+0x68>
     c28:	fd842783          	lw	a5,-40(s0)
     c2c:	00400713          	li	a4,4
     c30:	00e78023          	sb	a4,0(a5)
     c34:	00000793          	li	a5,0
     c38:	0a40006f          	j	cdc <_Z10OSMboxPendP17EventControlBlockPh+0x108>
     c3c:	fdc42783          	lw	a5,-36(s0)
     c40:	0007a783          	lw	a5,0(a5)
     c44:	fef42623          	sw	a5,-20(s0)
     c48:	fec42783          	lw	a5,-20(s0)
     c4c:	00078e63          	beqz	a5,c68 <_Z10OSMboxPendP17EventControlBlockPh+0x94>
     c50:	fdc42783          	lw	a5,-36(s0)
     c54:	0007a023          	sw	zero,0(a5)
     c58:	fd842783          	lw	a5,-40(s0)
     c5c:	00078023          	sb	zero,0(a5)
     c60:	fec42783          	lw	a5,-20(s0)
     c64:	0780006f          	j	cdc <_Z10OSMboxPendP17EventControlBlockPh+0x108>
     c68:	000027b7          	lui	a5,0x2
     c6c:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     c70:	0167c703          	lbu	a4,22(a5)
     c74:	000027b7          	lui	a5,0x2
     c78:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     c7c:	01476713          	ori	a4,a4,20
     c80:	0ff77713          	andi	a4,a4,255
     c84:	00e78b23          	sb	a4,22(a5)
     c88:	fdc42503          	lw	a0,-36(s0)
     c8c:	00000097          	auipc	ra,0x0
     c90:	bd4080e7          	jalr	-1068(ra) # 860 <_Z16OS_EventTaskWaitP17EventControlBlock>
     c94:	00000097          	auipc	ra,0x0
     c98:	8b0080e7          	jalr	-1872(ra) # 544 <_Z8OS_Schedv>
     c9c:	000027b7          	lui	a5,0x2
     ca0:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     ca4:	0107a783          	lw	a5,16(a5)
     ca8:	fef42623          	sw	a5,-20(s0)
     cac:	000027b7          	lui	a5,0x2
     cb0:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     cb4:	0007a823          	sw	zero,16(a5)
     cb8:	000027b7          	lui	a5,0x2
     cbc:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     cc0:	00078b23          	sb	zero,22(a5)
     cc4:	000027b7          	lui	a5,0x2
     cc8:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     ccc:	0007a623          	sw	zero,12(a5)
     cd0:	fd842783          	lw	a5,-40(s0)
     cd4:	00078023          	sb	zero,0(a5)
     cd8:	fec42783          	lw	a5,-20(s0)
     cdc:	00078513          	mv	a0,a5
     ce0:	02c12083          	lw	ra,44(sp)
     ce4:	02812403          	lw	s0,40(sp)
     ce8:	03010113          	addi	sp,sp,48
     cec:	00008067          	ret

00000cf0 <_Z10OSMboxPostP17EventControlBlockPv>:
     cf0:	fe010113          	addi	sp,sp,-32
     cf4:	00112e23          	sw	ra,28(sp)
     cf8:	00812c23          	sw	s0,24(sp)
     cfc:	02010413          	addi	s0,sp,32
     d00:	fea42623          	sw	a0,-20(s0)
     d04:	feb42423          	sw	a1,-24(s0)
     d08:	00008713          	mv	a4,ra
     d0c:	000027b7          	lui	a5,0x2
     d10:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     d14:	02e7a023          	sw	a4,32(a5)
     d18:	fec42783          	lw	a5,-20(s0)
     d1c:	00079663          	bnez	a5,d28 <_Z10OSMboxPostP17EventControlBlockPv+0x38>
     d20:	00300793          	li	a5,3
     d24:	0800006f          	j	da4 <_Z10OSMboxPostP17EventControlBlockPv+0xb4>
     d28:	fe842783          	lw	a5,-24(s0)
     d2c:	00079663          	bnez	a5,d38 <_Z10OSMboxPostP17EventControlBlockPv+0x48>
     d30:	00600793          	li	a5,6
     d34:	0700006f          	j	da4 <_Z10OSMboxPostP17EventControlBlockPv+0xb4>
     d38:	fec42783          	lw	a5,-20(s0)
     d3c:	0047c703          	lbu	a4,4(a5)
     d40:	00900793          	li	a5,9
     d44:	00f70663          	beq	a4,a5,d50 <_Z10OSMboxPostP17EventControlBlockPv+0x60>
     d48:	00400793          	li	a5,4
     d4c:	0580006f          	j	da4 <_Z10OSMboxPostP17EventControlBlockPv+0xb4>
     d50:	fec42783          	lw	a5,-20(s0)
     d54:	0057c783          	lbu	a5,5(a5)
     d58:	02078463          	beqz	a5,d80 <_Z10OSMboxPostP17EventControlBlockPv+0x90>
     d5c:	01400613          	li	a2,20
     d60:	fe842583          	lw	a1,-24(s0)
     d64:	fec42503          	lw	a0,-20(s0)
     d68:	00000097          	auipc	ra,0x0
     d6c:	598080e7          	jalr	1432(ra) # 1300 <_Z12EventTaskRdyP17EventControlBlockPvh>
     d70:	fffff097          	auipc	ra,0xfffff
     d74:	7d4080e7          	jalr	2004(ra) # 544 <_Z8OS_Schedv>
     d78:	00000793          	li	a5,0
     d7c:	0280006f          	j	da4 <_Z10OSMboxPostP17EventControlBlockPv+0xb4>
     d80:	fec42783          	lw	a5,-20(s0)
     d84:	0007a783          	lw	a5,0(a5)
     d88:	00078663          	beqz	a5,d94 <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     d8c:	00700793          	li	a5,7
     d90:	0140006f          	j	da4 <_Z10OSMboxPostP17EventControlBlockPv+0xb4>
     d94:	fec42783          	lw	a5,-20(s0)
     d98:	fe842703          	lw	a4,-24(s0)
     d9c:	00e7a023          	sw	a4,0(a5)
     da0:	00000793          	li	a5,0
     da4:	00078513          	mv	a0,a5
     da8:	01c12083          	lw	ra,28(sp)
     dac:	01812403          	lw	s0,24(sp)
     db0:	02010113          	addi	sp,sp,32
     db4:	00008067          	ret

00000db8 <_Z10getMessageP17EventControlBlock>:
     db8:	fe010113          	addi	sp,sp,-32
     dbc:	00812e23          	sw	s0,28(sp)
     dc0:	02010413          	addi	s0,sp,32
     dc4:	fea42623          	sw	a0,-20(s0)
     dc8:	000027b7          	lui	a5,0x2
     dcc:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     dd0:	0107a783          	lw	a5,16(a5)
     dd4:	00078513          	mv	a0,a5
     dd8:	01c12403          	lw	s0,28(sp)
     ddc:	02010113          	addi	sp,sp,32
     de0:	00008067          	ret

00000de4 <_Z14OSStartHighRdyv>:
     de4:	ff010113          	addi	sp,sp,-16
     de8:	00812623          	sw	s0,12(sp)
     dec:	01010413          	addi	s0,sp,16
     df0:	000027b7          	lui	a5,0x2
     df4:	00100713          	li	a4,1
     df8:	5ee78423          	sb	a4,1512(a5) # 25e8 <OSRunning>
     dfc:	000027b7          	lui	a5,0x2
     e00:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     e04:	0007a783          	lw	a5,0(a5)
     e08:	00078113          	mv	sp,a5
     e0c:	03010113          	addi	sp,sp,48
     e10:	00012e03          	lw	t3,0(sp)
     e14:	00410113          	addi	sp,sp,4
     e18:	000e0067          	jr	t3
     e1c:	00000013          	nop
     e20:	00c12403          	lw	s0,12(sp)
     e24:	01010113          	addi	sp,sp,16
     e28:	00008067          	ret

00000e2c <_Z8OS_Startv>:
     e2c:	fe010113          	addi	sp,sp,-32
     e30:	00112e23          	sw	ra,28(sp)
     e34:	00812c23          	sw	s0,24(sp)
     e38:	02010413          	addi	s0,sp,32
     e3c:	000027b7          	lui	a5,0x2
     e40:	5e87c783          	lbu	a5,1512(a5) # 25e8 <OSRunning>
     e44:	0c079063          	bnez	a5,f04 <_Z8OS_Startv+0xd8>
     e48:	000027b7          	lui	a5,0x2
     e4c:	5e97c783          	lbu	a5,1513(a5) # 25e9 <OSRdyGrp>
     e50:	00078713          	mv	a4,a5
     e54:	000027b7          	lui	a5,0x2
     e58:	d1478793          	addi	a5,a5,-748 # 1d14 <_ZL10OSUnMapTbl>
     e5c:	00f707b3          	add	a5,a4,a5
     e60:	0007c783          	lbu	a5,0(a5)
     e64:	fef407a3          	sb	a5,-17(s0)
     e68:	fef44703          	lbu	a4,-17(s0)
     e6c:	000027b7          	lui	a5,0x2
     e70:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
     e74:	00f707b3          	add	a5,a4,a5
     e78:	0007c783          	lbu	a5,0(a5)
     e7c:	00078713          	mv	a4,a5
     e80:	000027b7          	lui	a5,0x2
     e84:	d1478793          	addi	a5,a5,-748 # 1d14 <_ZL10OSUnMapTbl>
     e88:	00f707b3          	add	a5,a4,a5
     e8c:	0007c783          	lbu	a5,0(a5)
     e90:	fef40723          	sb	a5,-18(s0)
     e94:	fef44783          	lbu	a5,-17(s0)
     e98:	00379793          	slli	a5,a5,0x3
     e9c:	0ff7f713          	andi	a4,a5,255
     ea0:	fee44783          	lbu	a5,-18(s0)
     ea4:	00f707b3          	add	a5,a4,a5
     ea8:	0ff7f713          	andi	a4,a5,255
     eac:	000027b7          	lui	a5,0x2
     eb0:	5ce786a3          	sb	a4,1485(a5) # 25cd <OSPrioHighRdy>
     eb4:	000027b7          	lui	a5,0x2
     eb8:	5cd7c703          	lbu	a4,1485(a5) # 25cd <OSPrioHighRdy>
     ebc:	000027b7          	lui	a5,0x2
     ec0:	5ce78623          	sb	a4,1484(a5) # 25cc <OSPrioCur>
     ec4:	000027b7          	lui	a5,0x2
     ec8:	5cd7c783          	lbu	a5,1485(a5) # 25cd <OSPrioHighRdy>
     ecc:	00078713          	mv	a4,a5
     ed0:	000037b7          	lui	a5,0x3
     ed4:	00271713          	slli	a4,a4,0x2
     ed8:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
     edc:	00f707b3          	add	a5,a4,a5
     ee0:	0007a703          	lw	a4,0(a5)
     ee4:	000027b7          	lui	a5,0x2
     ee8:	5ee7a223          	sw	a4,1508(a5) # 25e4 <OSTCBHighRdy>
     eec:	000027b7          	lui	a5,0x2
     ef0:	5e47a703          	lw	a4,1508(a5) # 25e4 <OSTCBHighRdy>
     ef4:	000027b7          	lui	a5,0x2
     ef8:	5ee7a023          	sw	a4,1504(a5) # 25e0 <OSTCBCur>
     efc:	00000097          	auipc	ra,0x0
     f00:	ee8080e7          	jalr	-280(ra) # de4 <_Z14OSStartHighRdyv>
     f04:	00000013          	nop
     f08:	01c12083          	lw	ra,28(sp)
     f0c:	01812403          	lw	s0,24(sp)
     f10:	02010113          	addi	sp,sp,32
     f14:	00008067          	ret

00000f18 <_Z13OSTaskSuspendh>:
     f18:	fd010113          	addi	sp,sp,-48
     f1c:	02112623          	sw	ra,44(sp)
     f20:	02812423          	sw	s0,40(sp)
     f24:	03010413          	addi	s0,sp,48
     f28:	00050793          	mv	a5,a0
     f2c:	fcf40fa3          	sb	a5,-33(s0)
     f30:	fdf44703          	lbu	a4,-33(s0)
     f34:	03e00793          	li	a5,62
     f38:	00e7fa63          	bgeu	a5,a4,f4c <_Z13OSTaskSuspendh+0x34>
     f3c:	fdf44783          	lbu	a5,-33(s0)
     f40:	00078663          	beqz	a5,f4c <_Z13OSTaskSuspendh+0x34>
     f44:	00200793          	li	a5,2
     f48:	17c0006f          	j	10c4 <_Z13OSTaskSuspendh+0x1ac>
     f4c:	fffff097          	auipc	ra,0xfffff
     f50:	480080e7          	jalr	1152(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
     f54:	fdf44783          	lbu	a5,-33(s0)
     f58:	02079063          	bnez	a5,f78 <_Z13OSTaskSuspendh+0x60>
     f5c:	000027b7          	lui	a5,0x2
     f60:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     f64:	0177c783          	lbu	a5,23(a5)
     f68:	fcf40fa3          	sb	a5,-33(s0)
     f6c:	00100793          	li	a5,1
     f70:	fef407a3          	sb	a5,-17(s0)
     f74:	0280006f          	j	f9c <_Z13OSTaskSuspendh+0x84>
     f78:	000027b7          	lui	a5,0x2
     f7c:	5e07a783          	lw	a5,1504(a5) # 25e0 <OSTCBCur>
     f80:	0177c783          	lbu	a5,23(a5)
     f84:	fdf44703          	lbu	a4,-33(s0)
     f88:	00f71863          	bne	a4,a5,f98 <_Z13OSTaskSuspendh+0x80>
     f8c:	00100793          	li	a5,1
     f90:	fef407a3          	sb	a5,-17(s0)
     f94:	0080006f          	j	f9c <_Z13OSTaskSuspendh+0x84>
     f98:	fe0407a3          	sb	zero,-17(s0)
     f9c:	fdf44703          	lbu	a4,-33(s0)
     fa0:	000037b7          	lui	a5,0x3
     fa4:	00271713          	slli	a4,a4,0x2
     fa8:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
     fac:	00f707b3          	add	a5,a4,a5
     fb0:	0007a783          	lw	a5,0(a5)
     fb4:	fef42423          	sw	a5,-24(s0)
     fb8:	fe842783          	lw	a5,-24(s0)
     fbc:	00079a63          	bnez	a5,fd0 <_Z13OSTaskSuspendh+0xb8>
     fc0:	fffff097          	auipc	ra,0xfffff
     fc4:	428080e7          	jalr	1064(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
     fc8:	00400793          	li	a5,4
     fcc:	0f80006f          	j	10c4 <_Z13OSTaskSuspendh+0x1ac>
     fd0:	fe842783          	lw	a5,-24(s0)
     fd4:	0197c783          	lbu	a5,25(a5)
     fd8:	00078713          	mv	a4,a5
     fdc:	000027b7          	lui	a5,0x2
     fe0:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
     fe4:	00f707b3          	add	a5,a4,a5
     fe8:	0007c783          	lbu	a5,0(a5)
     fec:	01879713          	slli	a4,a5,0x18
     ff0:	41875713          	srai	a4,a4,0x18
     ff4:	fe842783          	lw	a5,-24(s0)
     ff8:	01a7c783          	lbu	a5,26(a5)
     ffc:	01879793          	slli	a5,a5,0x18
    1000:	4187d793          	srai	a5,a5,0x18
    1004:	fff7c793          	not	a5,a5
    1008:	01879793          	slli	a5,a5,0x18
    100c:	4187d793          	srai	a5,a5,0x18
    1010:	00f777b3          	and	a5,a4,a5
    1014:	01879713          	slli	a4,a5,0x18
    1018:	41875713          	srai	a4,a4,0x18
    101c:	fe842783          	lw	a5,-24(s0)
    1020:	0197c783          	lbu	a5,25(a5)
    1024:	0ff77693          	andi	a3,a4,255
    1028:	00002737          	lui	a4,0x2
    102c:	5ec70713          	addi	a4,a4,1516 # 25ec <OSRdyTbl>
    1030:	00e78733          	add	a4,a5,a4
    1034:	00d70023          	sb	a3,0(a4)
    1038:	00002737          	lui	a4,0x2
    103c:	5ec70713          	addi	a4,a4,1516 # 25ec <OSRdyTbl>
    1040:	00e787b3          	add	a5,a5,a4
    1044:	0007c783          	lbu	a5,0(a5)
    1048:	0017b793          	seqz	a5,a5
    104c:	0ff7f793          	andi	a5,a5,255
    1050:	04078463          	beqz	a5,1098 <_Z13OSTaskSuspendh+0x180>
    1054:	fe842783          	lw	a5,-24(s0)
    1058:	01b7c783          	lbu	a5,27(a5)
    105c:	01879793          	slli	a5,a5,0x18
    1060:	4187d793          	srai	a5,a5,0x18
    1064:	fff7c793          	not	a5,a5
    1068:	01879713          	slli	a4,a5,0x18
    106c:	41875713          	srai	a4,a4,0x18
    1070:	000027b7          	lui	a5,0x2
    1074:	5e97c783          	lbu	a5,1513(a5) # 25e9 <OSRdyGrp>
    1078:	01879793          	slli	a5,a5,0x18
    107c:	4187d793          	srai	a5,a5,0x18
    1080:	00f777b3          	and	a5,a4,a5
    1084:	01879793          	slli	a5,a5,0x18
    1088:	4187d793          	srai	a5,a5,0x18
    108c:	0ff7f713          	andi	a4,a5,255
    1090:	000027b7          	lui	a5,0x2
    1094:	5ee784a3          	sb	a4,1513(a5) # 25e9 <OSRdyGrp>
    1098:	fe842783          	lw	a5,-24(s0)
    109c:	0167c783          	lbu	a5,22(a5)
    10a0:	0037e793          	ori	a5,a5,3
    10a4:	0ff7f713          	andi	a4,a5,255
    10a8:	fe842783          	lw	a5,-24(s0)
    10ac:	00e78b23          	sb	a4,22(a5)
    10b0:	fffff097          	auipc	ra,0xfffff
    10b4:	338080e7          	jalr	824(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    10b8:	fffff097          	auipc	ra,0xfffff
    10bc:	48c080e7          	jalr	1164(ra) # 544 <_Z8OS_Schedv>
    10c0:	00000793          	li	a5,0
    10c4:	00078513          	mv	a0,a5
    10c8:	02c12083          	lw	ra,44(sp)
    10cc:	02812403          	lw	s0,40(sp)
    10d0:	03010113          	addi	sp,sp,48
    10d4:	00008067          	ret

000010d8 <_Z11OSEventInitP17EventControlBlockh>:
    10d8:	fd010113          	addi	sp,sp,-48
    10dc:	02812623          	sw	s0,44(sp)
    10e0:	03010413          	addi	s0,sp,48
    10e4:	fca42e23          	sw	a0,-36(s0)
    10e8:	00058793          	mv	a5,a1
    10ec:	fcf40da3          	sb	a5,-37(s0)
    10f0:	fdc42783          	lw	a5,-36(s0)
    10f4:	fdb44703          	lbu	a4,-37(s0)
    10f8:	00e78223          	sb	a4,4(a5)
    10fc:	fdc42783          	lw	a5,-36(s0)
    1100:	000782a3          	sb	zero,5(a5)
    1104:	fdc42783          	lw	a5,-36(s0)
    1108:	0007a023          	sw	zero,0(a5)
    110c:	fe0407a3          	sb	zero,-17(s0)
    1110:	fef44703          	lbu	a4,-17(s0)
    1114:	01d00793          	li	a5,29
    1118:	02e7e263          	bltu	a5,a4,113c <_Z11OSEventInitP17EventControlBlockh+0x64>
    111c:	fef44783          	lbu	a5,-17(s0)
    1120:	fdc42703          	lw	a4,-36(s0)
    1124:	00f707b3          	add	a5,a4,a5
    1128:	00078423          	sb	zero,8(a5)
    112c:	fef44783          	lbu	a5,-17(s0)
    1130:	00178793          	addi	a5,a5,1
    1134:	fef407a3          	sb	a5,-17(s0)
    1138:	fd9ff06f          	j	1110 <_Z11OSEventInitP17EventControlBlockh+0x38>
    113c:	00000013          	nop
    1140:	02c12403          	lw	s0,44(sp)
    1144:	03010113          	addi	sp,sp,48
    1148:	00008067          	ret

0000114c <_Z19appendToWaitingListP17EventControlBlockh>:
    114c:	fe010113          	addi	sp,sp,-32
    1150:	00812e23          	sw	s0,28(sp)
    1154:	02010413          	addi	s0,sp,32
    1158:	fea42623          	sw	a0,-20(s0)
    115c:	00058793          	mv	a5,a1
    1160:	fef405a3          	sb	a5,-21(s0)
    1164:	fec42783          	lw	a5,-20(s0)
    1168:	0057c703          	lbu	a4,5(a5)
    116c:	feb44783          	lbu	a5,-21(s0)
    1170:	4037d693          	srai	a3,a5,0x3
    1174:	000027b7          	lui	a5,0x2
    1178:	56878793          	addi	a5,a5,1384 # 2568 <_ZL8OSMapTbl>
    117c:	00f687b3          	add	a5,a3,a5
    1180:	0007c783          	lbu	a5,0(a5)
    1184:	00f767b3          	or	a5,a4,a5
    1188:	0ff7f713          	andi	a4,a5,255
    118c:	fec42783          	lw	a5,-20(s0)
    1190:	00e782a3          	sb	a4,5(a5)
    1194:	feb44783          	lbu	a5,-21(s0)
    1198:	4037d793          	srai	a5,a5,0x3
    119c:	fec42703          	lw	a4,-20(s0)
    11a0:	00f707b3          	add	a5,a4,a5
    11a4:	0087c683          	lbu	a3,8(a5)
    11a8:	feb44783          	lbu	a5,-21(s0)
    11ac:	0077f713          	andi	a4,a5,7
    11b0:	000027b7          	lui	a5,0x2
    11b4:	56878793          	addi	a5,a5,1384 # 2568 <_ZL8OSMapTbl>
    11b8:	00f707b3          	add	a5,a4,a5
    11bc:	0007c703          	lbu	a4,0(a5)
    11c0:	feb44783          	lbu	a5,-21(s0)
    11c4:	4037d793          	srai	a5,a5,0x3
    11c8:	00e6e733          	or	a4,a3,a4
    11cc:	0ff77713          	andi	a4,a4,255
    11d0:	fec42683          	lw	a3,-20(s0)
    11d4:	00f687b3          	add	a5,a3,a5
    11d8:	00e78423          	sb	a4,8(a5)
    11dc:	00000013          	nop
    11e0:	01c12403          	lw	s0,28(sp)
    11e4:	02010113          	addi	sp,sp,32
    11e8:	00008067          	ret

000011ec <_Z20eraseFromWaitingListP17EventControlBlock>:
    11ec:	fd010113          	addi	sp,sp,-48
    11f0:	02112623          	sw	ra,44(sp)
    11f4:	02812423          	sw	s0,40(sp)
    11f8:	03010413          	addi	s0,sp,48
    11fc:	fca42e23          	sw	a0,-36(s0)
    1200:	fdc42503          	lw	a0,-36(s0)
    1204:	00000097          	auipc	ra,0x0
    1208:	320080e7          	jalr	800(ra) # 1524 <_Z18getHighestPriorityP17EventControlBlock>
    120c:	00050793          	mv	a5,a0
    1210:	fef407a3          	sb	a5,-17(s0)
    1214:	fef44783          	lbu	a5,-17(s0)
    1218:	4037d793          	srai	a5,a5,0x3
    121c:	fdc42703          	lw	a4,-36(s0)
    1220:	00f707b3          	add	a5,a4,a5
    1224:	0087c783          	lbu	a5,8(a5)
    1228:	01879713          	slli	a4,a5,0x18
    122c:	41875713          	srai	a4,a4,0x18
    1230:	fef44783          	lbu	a5,-17(s0)
    1234:	0077f693          	andi	a3,a5,7
    1238:	000027b7          	lui	a5,0x2
    123c:	56878793          	addi	a5,a5,1384 # 2568 <_ZL8OSMapTbl>
    1240:	00f687b3          	add	a5,a3,a5
    1244:	0007c783          	lbu	a5,0(a5)
    1248:	01879793          	slli	a5,a5,0x18
    124c:	4187d793          	srai	a5,a5,0x18
    1250:	fff7c793          	not	a5,a5
    1254:	01879793          	slli	a5,a5,0x18
    1258:	4187d793          	srai	a5,a5,0x18
    125c:	00f777b3          	and	a5,a4,a5
    1260:	01879713          	slli	a4,a5,0x18
    1264:	41875713          	srai	a4,a4,0x18
    1268:	fef44783          	lbu	a5,-17(s0)
    126c:	4037d793          	srai	a5,a5,0x3
    1270:	0ff77693          	andi	a3,a4,255
    1274:	fdc42703          	lw	a4,-36(s0)
    1278:	00f70733          	add	a4,a4,a5
    127c:	00d70423          	sb	a3,8(a4)
    1280:	fdc42703          	lw	a4,-36(s0)
    1284:	00f707b3          	add	a5,a4,a5
    1288:	0087c783          	lbu	a5,8(a5)
    128c:	0017b793          	seqz	a5,a5
    1290:	0ff7f793          	andi	a5,a5,255
    1294:	04078c63          	beqz	a5,12ec <_Z20eraseFromWaitingListP17EventControlBlock+0x100>
    1298:	fdc42783          	lw	a5,-36(s0)
    129c:	0057c783          	lbu	a5,5(a5)
    12a0:	01879713          	slli	a4,a5,0x18
    12a4:	41875713          	srai	a4,a4,0x18
    12a8:	fef44783          	lbu	a5,-17(s0)
    12ac:	4037d693          	srai	a3,a5,0x3
    12b0:	000027b7          	lui	a5,0x2
    12b4:	56878793          	addi	a5,a5,1384 # 2568 <_ZL8OSMapTbl>
    12b8:	00f687b3          	add	a5,a3,a5
    12bc:	0007c783          	lbu	a5,0(a5)
    12c0:	01879793          	slli	a5,a5,0x18
    12c4:	4187d793          	srai	a5,a5,0x18
    12c8:	fff7c793          	not	a5,a5
    12cc:	01879793          	slli	a5,a5,0x18
    12d0:	4187d793          	srai	a5,a5,0x18
    12d4:	00f777b3          	and	a5,a4,a5
    12d8:	01879793          	slli	a5,a5,0x18
    12dc:	4187d793          	srai	a5,a5,0x18
    12e0:	0ff7f713          	andi	a4,a5,255
    12e4:	fdc42783          	lw	a5,-36(s0)
    12e8:	00e782a3          	sb	a4,5(a5)
    12ec:	00000013          	nop
    12f0:	02c12083          	lw	ra,44(sp)
    12f4:	02812403          	lw	s0,40(sp)
    12f8:	03010113          	addi	sp,sp,48
    12fc:	00008067          	ret

00001300 <_Z12EventTaskRdyP17EventControlBlockPvh>:
    1300:	fd010113          	addi	sp,sp,-48
    1304:	02812623          	sw	s0,44(sp)
    1308:	03010413          	addi	s0,sp,48
    130c:	fca42e23          	sw	a0,-36(s0)
    1310:	fcb42c23          	sw	a1,-40(s0)
    1314:	00060793          	mv	a5,a2
    1318:	fcf40ba3          	sb	a5,-41(s0)
    131c:	fdc42783          	lw	a5,-36(s0)
    1320:	0057c783          	lbu	a5,5(a5)
    1324:	00078713          	mv	a4,a5
    1328:	000027b7          	lui	a5,0x2
    132c:	e1478793          	addi	a5,a5,-492 # 1e14 <_ZL10OSUnMapTbl>
    1330:	00f707b3          	add	a5,a4,a5
    1334:	0007c783          	lbu	a5,0(a5)
    1338:	fef407a3          	sb	a5,-17(s0)
    133c:	fef44703          	lbu	a4,-17(s0)
    1340:	000027b7          	lui	a5,0x2
    1344:	56878793          	addi	a5,a5,1384 # 2568 <_ZL8OSMapTbl>
    1348:	00f707b3          	add	a5,a4,a5
    134c:	0007c783          	lbu	a5,0(a5)
    1350:	fef40723          	sb	a5,-18(s0)
    1354:	fef44783          	lbu	a5,-17(s0)
    1358:	fdc42703          	lw	a4,-36(s0)
    135c:	00f707b3          	add	a5,a4,a5
    1360:	0087c783          	lbu	a5,8(a5)
    1364:	00078713          	mv	a4,a5
    1368:	000027b7          	lui	a5,0x2
    136c:	e1478793          	addi	a5,a5,-492 # 1e14 <_ZL10OSUnMapTbl>
    1370:	00f707b3          	add	a5,a4,a5
    1374:	0007c783          	lbu	a5,0(a5)
    1378:	fef406a3          	sb	a5,-19(s0)
    137c:	fed44703          	lbu	a4,-19(s0)
    1380:	000027b7          	lui	a5,0x2
    1384:	56878793          	addi	a5,a5,1384 # 2568 <_ZL8OSMapTbl>
    1388:	00f707b3          	add	a5,a4,a5
    138c:	0007c783          	lbu	a5,0(a5)
    1390:	fef40623          	sb	a5,-20(s0)
    1394:	fef44783          	lbu	a5,-17(s0)
    1398:	00379793          	slli	a5,a5,0x3
    139c:	0ff7f713          	andi	a4,a5,255
    13a0:	fed44783          	lbu	a5,-19(s0)
    13a4:	00f707b3          	add	a5,a4,a5
    13a8:	0ff7f793          	andi	a5,a5,255
    13ac:	fef403a3          	sb	a5,-25(s0)
    13b0:	fef44783          	lbu	a5,-17(s0)
    13b4:	fdc42703          	lw	a4,-36(s0)
    13b8:	00f707b3          	add	a5,a4,a5
    13bc:	0087c783          	lbu	a5,8(a5)
    13c0:	01879713          	slli	a4,a5,0x18
    13c4:	41875713          	srai	a4,a4,0x18
    13c8:	fec40783          	lb	a5,-20(s0)
    13cc:	fff7c793          	not	a5,a5
    13d0:	01879793          	slli	a5,a5,0x18
    13d4:	4187d793          	srai	a5,a5,0x18
    13d8:	00f777b3          	and	a5,a4,a5
    13dc:	01879713          	slli	a4,a5,0x18
    13e0:	41875713          	srai	a4,a4,0x18
    13e4:	fef44783          	lbu	a5,-17(s0)
    13e8:	0ff77693          	andi	a3,a4,255
    13ec:	fdc42703          	lw	a4,-36(s0)
    13f0:	00f70733          	add	a4,a4,a5
    13f4:	00d70423          	sb	a3,8(a4)
    13f8:	fdc42703          	lw	a4,-36(s0)
    13fc:	00f707b3          	add	a5,a4,a5
    1400:	0087c783          	lbu	a5,8(a5)
    1404:	0017b793          	seqz	a5,a5
    1408:	0ff7f793          	andi	a5,a5,255
    140c:	02078e63          	beqz	a5,1448 <_Z12EventTaskRdyP17EventControlBlockPvh+0x148>
    1410:	fdc42783          	lw	a5,-36(s0)
    1414:	0057c783          	lbu	a5,5(a5)
    1418:	01879713          	slli	a4,a5,0x18
    141c:	41875713          	srai	a4,a4,0x18
    1420:	fee40783          	lb	a5,-18(s0)
    1424:	fff7c793          	not	a5,a5
    1428:	01879793          	slli	a5,a5,0x18
    142c:	4187d793          	srai	a5,a5,0x18
    1430:	00f777b3          	and	a5,a4,a5
    1434:	01879793          	slli	a5,a5,0x18
    1438:	4187d793          	srai	a5,a5,0x18
    143c:	0ff7f713          	andi	a4,a5,255
    1440:	fdc42783          	lw	a5,-36(s0)
    1444:	00e782a3          	sb	a4,5(a5)
    1448:	fe744783          	lbu	a5,-25(s0)
    144c:	00078713          	mv	a4,a5
    1450:	000037b7          	lui	a5,0x3
    1454:	00271713          	slli	a4,a4,0x2
    1458:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    145c:	00f707b3          	add	a5,a4,a5
    1460:	0007a783          	lw	a5,0(a5)
    1464:	fef42423          	sw	a5,-24(s0)
    1468:	fe842783          	lw	a5,-24(s0)
    146c:	0007a623          	sw	zero,12(a5)
    1470:	fe842783          	lw	a5,-24(s0)
    1474:	fd842703          	lw	a4,-40(s0)
    1478:	00e7a823          	sw	a4,16(a5)
    147c:	fe842783          	lw	a5,-24(s0)
    1480:	0167c783          	lbu	a5,22(a5)
    1484:	01879713          	slli	a4,a5,0x18
    1488:	41875713          	srai	a4,a4,0x18
    148c:	fd740783          	lb	a5,-41(s0)
    1490:	fff7c793          	not	a5,a5
    1494:	01879793          	slli	a5,a5,0x18
    1498:	4187d793          	srai	a5,a5,0x18
    149c:	00f777b3          	and	a5,a4,a5
    14a0:	01879793          	slli	a5,a5,0x18
    14a4:	4187d793          	srai	a5,a5,0x18
    14a8:	0ff7f713          	andi	a4,a5,255
    14ac:	fe842783          	lw	a5,-24(s0)
    14b0:	00e78b23          	sb	a4,22(a5)
    14b4:	fe842783          	lw	a5,-24(s0)
    14b8:	0167c783          	lbu	a5,22(a5)
    14bc:	04079a63          	bnez	a5,1510 <_Z12EventTaskRdyP17EventControlBlockPvh+0x210>
    14c0:	000027b7          	lui	a5,0x2
    14c4:	5e97c703          	lbu	a4,1513(a5) # 25e9 <OSRdyGrp>
    14c8:	fee44783          	lbu	a5,-18(s0)
    14cc:	00f767b3          	or	a5,a4,a5
    14d0:	0ff7f713          	andi	a4,a5,255
    14d4:	000027b7          	lui	a5,0x2
    14d8:	5ee784a3          	sb	a4,1513(a5) # 25e9 <OSRdyGrp>
    14dc:	fef44703          	lbu	a4,-17(s0)
    14e0:	000027b7          	lui	a5,0x2
    14e4:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
    14e8:	00f707b3          	add	a5,a4,a5
    14ec:	0007c703          	lbu	a4,0(a5)
    14f0:	fef44683          	lbu	a3,-17(s0)
    14f4:	fec44783          	lbu	a5,-20(s0)
    14f8:	00f767b3          	or	a5,a4,a5
    14fc:	0ff7f713          	andi	a4,a5,255
    1500:	000027b7          	lui	a5,0x2
    1504:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
    1508:	00f687b3          	add	a5,a3,a5
    150c:	00e78023          	sb	a4,0(a5)
    1510:	fe744783          	lbu	a5,-25(s0)
    1514:	00078513          	mv	a0,a5
    1518:	02c12403          	lw	s0,44(sp)
    151c:	03010113          	addi	sp,sp,48
    1520:	00008067          	ret

00001524 <_Z18getHighestPriorityP17EventControlBlock>:
    1524:	fd010113          	addi	sp,sp,-48
    1528:	02812623          	sw	s0,44(sp)
    152c:	03010413          	addi	s0,sp,48
    1530:	fca42e23          	sw	a0,-36(s0)
    1534:	fdc42783          	lw	a5,-36(s0)
    1538:	0057c783          	lbu	a5,5(a5)
    153c:	00078713          	mv	a4,a5
    1540:	000027b7          	lui	a5,0x2
    1544:	e1478793          	addi	a5,a5,-492 # 1e14 <_ZL10OSUnMapTbl>
    1548:	00f707b3          	add	a5,a4,a5
    154c:	0007c783          	lbu	a5,0(a5)
    1550:	fef407a3          	sb	a5,-17(s0)
    1554:	fef44783          	lbu	a5,-17(s0)
    1558:	fdc42703          	lw	a4,-36(s0)
    155c:	00f707b3          	add	a5,a4,a5
    1560:	0087c783          	lbu	a5,8(a5)
    1564:	00078713          	mv	a4,a5
    1568:	000027b7          	lui	a5,0x2
    156c:	e1478793          	addi	a5,a5,-492 # 1e14 <_ZL10OSUnMapTbl>
    1570:	00f707b3          	add	a5,a4,a5
    1574:	0007c783          	lbu	a5,0(a5)
    1578:	fef40723          	sb	a5,-18(s0)
    157c:	fef44783          	lbu	a5,-17(s0)
    1580:	00379793          	slli	a5,a5,0x3
    1584:	0ff7f713          	andi	a4,a5,255
    1588:	fee44783          	lbu	a5,-18(s0)
    158c:	00f707b3          	add	a5,a4,a5
    1590:	fef406a3          	sb	a5,-19(s0)
    1594:	fed44783          	lbu	a5,-19(s0)
    1598:	00078513          	mv	a0,a5
    159c:	02c12403          	lw	s0,44(sp)
    15a0:	03010113          	addi	sp,sp,48
    15a4:	00008067          	ret

000015a8 <_Z10OS_TCBInithPm>:
    15a8:	fd010113          	addi	sp,sp,-48
    15ac:	02112623          	sw	ra,44(sp)
    15b0:	02812423          	sw	s0,40(sp)
    15b4:	03010413          	addi	s0,sp,48
    15b8:	00050793          	mv	a5,a0
    15bc:	fcb42c23          	sw	a1,-40(s0)
    15c0:	fcf40fa3          	sb	a5,-33(s0)
    15c4:	fffff097          	auipc	ra,0xfffff
    15c8:	e08080e7          	jalr	-504(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
    15cc:	000027b7          	lui	a5,0x2
    15d0:	5d87a783          	lw	a5,1496(a5) # 25d8 <OSTCBFreeList>
    15d4:	fef42623          	sw	a5,-20(s0)
    15d8:	fec42783          	lw	a5,-20(s0)
    15dc:	18078e63          	beqz	a5,1778 <_Z10OS_TCBInithPm+0x1d0>
    15e0:	fec42783          	lw	a5,-20(s0)
    15e4:	0047a703          	lw	a4,4(a5)
    15e8:	000027b7          	lui	a5,0x2
    15ec:	5ce7ac23          	sw	a4,1496(a5) # 25d8 <OSTCBFreeList>
    15f0:	fffff097          	auipc	ra,0xfffff
    15f4:	df8080e7          	jalr	-520(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    15f8:	fec42783          	lw	a5,-20(s0)
    15fc:	fd842703          	lw	a4,-40(s0)
    1600:	00e7a023          	sw	a4,0(a5)
    1604:	fec42783          	lw	a5,-20(s0)
    1608:	fdf44703          	lbu	a4,-33(s0)
    160c:	00e78ba3          	sb	a4,23(a5)
    1610:	fec42783          	lw	a5,-20(s0)
    1614:	00078b23          	sb	zero,22(a5)
    1618:	fec42783          	lw	a5,-20(s0)
    161c:	00079a23          	sh	zero,20(a5)
    1620:	fdf44783          	lbu	a5,-33(s0)
    1624:	4037d793          	srai	a5,a5,0x3
    1628:	0ff7f713          	andi	a4,a5,255
    162c:	fec42783          	lw	a5,-20(s0)
    1630:	00e78ca3          	sb	a4,25(a5)
    1634:	fec42783          	lw	a5,-20(s0)
    1638:	0197c783          	lbu	a5,25(a5)
    163c:	00078713          	mv	a4,a5
    1640:	000027b7          	lui	a5,0x2
    1644:	59078793          	addi	a5,a5,1424 # 2590 <_ZL8OSMapTbl>
    1648:	00f707b3          	add	a5,a4,a5
    164c:	0007c703          	lbu	a4,0(a5)
    1650:	fec42783          	lw	a5,-20(s0)
    1654:	00e78da3          	sb	a4,27(a5)
    1658:	fdf44783          	lbu	a5,-33(s0)
    165c:	0077f793          	andi	a5,a5,7
    1660:	0ff7f713          	andi	a4,a5,255
    1664:	fec42783          	lw	a5,-20(s0)
    1668:	00e78c23          	sb	a4,24(a5)
    166c:	fec42783          	lw	a5,-20(s0)
    1670:	0187c783          	lbu	a5,24(a5)
    1674:	00078713          	mv	a4,a5
    1678:	000027b7          	lui	a5,0x2
    167c:	59078793          	addi	a5,a5,1424 # 2590 <_ZL8OSMapTbl>
    1680:	00f707b3          	add	a5,a4,a5
    1684:	0007c703          	lbu	a4,0(a5)
    1688:	fec42783          	lw	a5,-20(s0)
    168c:	00e78d23          	sb	a4,26(a5)
    1690:	fec42783          	lw	a5,-20(s0)
    1694:	0007a623          	sw	zero,12(a5)
    1698:	fec42783          	lw	a5,-20(s0)
    169c:	0007a823          	sw	zero,16(a5)
    16a0:	fffff097          	auipc	ra,0xfffff
    16a4:	d2c080e7          	jalr	-724(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
    16a8:	fdf44703          	lbu	a4,-33(s0)
    16ac:	000037b7          	lui	a5,0x3
    16b0:	00271713          	slli	a4,a4,0x2
    16b4:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    16b8:	00f707b3          	add	a5,a4,a5
    16bc:	fec42703          	lw	a4,-20(s0)
    16c0:	00e7a023          	sw	a4,0(a5)
    16c4:	000027b7          	lui	a5,0x2
    16c8:	5dc7a703          	lw	a4,1500(a5) # 25dc <OSTCBList>
    16cc:	fec42783          	lw	a5,-20(s0)
    16d0:	00e7a223          	sw	a4,4(a5)
    16d4:	fec42783          	lw	a5,-20(s0)
    16d8:	0007a423          	sw	zero,8(a5)
    16dc:	000027b7          	lui	a5,0x2
    16e0:	5dc7a783          	lw	a5,1500(a5) # 25dc <OSTCBList>
    16e4:	00078a63          	beqz	a5,16f8 <_Z10OS_TCBInithPm+0x150>
    16e8:	000027b7          	lui	a5,0x2
    16ec:	5dc7a783          	lw	a5,1500(a5) # 25dc <OSTCBList>
    16f0:	fec42703          	lw	a4,-20(s0)
    16f4:	00e7a423          	sw	a4,8(a5)
    16f8:	000027b7          	lui	a5,0x2
    16fc:	fec42703          	lw	a4,-20(s0)
    1700:	5ce7ae23          	sw	a4,1500(a5) # 25dc <OSTCBList>
    1704:	fec42783          	lw	a5,-20(s0)
    1708:	01b7c703          	lbu	a4,27(a5)
    170c:	000027b7          	lui	a5,0x2
    1710:	5e97c783          	lbu	a5,1513(a5) # 25e9 <OSRdyGrp>
    1714:	00f767b3          	or	a5,a4,a5
    1718:	0ff7f713          	andi	a4,a5,255
    171c:	000027b7          	lui	a5,0x2
    1720:	5ee784a3          	sb	a4,1513(a5) # 25e9 <OSRdyGrp>
    1724:	fec42783          	lw	a5,-20(s0)
    1728:	0197c783          	lbu	a5,25(a5)
    172c:	00078713          	mv	a4,a5
    1730:	000027b7          	lui	a5,0x2
    1734:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
    1738:	00f707b3          	add	a5,a4,a5
    173c:	0007c703          	lbu	a4,0(a5)
    1740:	fec42783          	lw	a5,-20(s0)
    1744:	01a7c783          	lbu	a5,26(a5)
    1748:	fec42683          	lw	a3,-20(s0)
    174c:	0196c683          	lbu	a3,25(a3)
    1750:	00f767b3          	or	a5,a4,a5
    1754:	0ff7f713          	andi	a4,a5,255
    1758:	000027b7          	lui	a5,0x2
    175c:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
    1760:	00f687b3          	add	a5,a3,a5
    1764:	00e78023          	sb	a4,0(a5)
    1768:	fffff097          	auipc	ra,0xfffff
    176c:	c80080e7          	jalr	-896(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1770:	00000793          	li	a5,0
    1774:	0100006f          	j	1784 <_Z10OS_TCBInithPm+0x1dc>
    1778:	fffff097          	auipc	ra,0xfffff
    177c:	c70080e7          	jalr	-912(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1780:	00100793          	li	a5,1
    1784:	00078513          	mv	a0,a5
    1788:	02c12083          	lw	ra,44(sp)
    178c:	02812403          	lw	s0,40(sp)
    1790:	03010113          	addi	sp,sp,48
    1794:	00008067          	ret

00001798 <_Z12OSTaskCreatePFvPvES_Pmh>:
    1798:	fd010113          	addi	sp,sp,-48
    179c:	02112623          	sw	ra,44(sp)
    17a0:	02812423          	sw	s0,40(sp)
    17a4:	03010413          	addi	s0,sp,48
    17a8:	fca42e23          	sw	a0,-36(s0)
    17ac:	fcb42c23          	sw	a1,-40(s0)
    17b0:	fcc42a23          	sw	a2,-44(s0)
    17b4:	00068793          	mv	a5,a3
    17b8:	fcf409a3          	sb	a5,-45(s0)
    17bc:	fd344703          	lbu	a4,-45(s0)
    17c0:	03f00793          	li	a5,63
    17c4:	00e7f663          	bgeu	a5,a4,17d0 <_Z12OSTaskCreatePFvPvES_Pmh+0x38>
    17c8:	00200793          	li	a5,2
    17cc:	1200006f          	j	18ec <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    17d0:	fffff097          	auipc	ra,0xfffff
    17d4:	bfc080e7          	jalr	-1028(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
    17d8:	fd344703          	lbu	a4,-45(s0)
    17dc:	000037b7          	lui	a5,0x3
    17e0:	00271713          	slli	a4,a4,0x2
    17e4:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    17e8:	00f707b3          	add	a5,a4,a5
    17ec:	0007a783          	lw	a5,0(a5)
    17f0:	0e079863          	bnez	a5,18e0 <_Z12OSTaskCreatePFvPvES_Pmh+0x148>
    17f4:	fd344703          	lbu	a4,-45(s0)
    17f8:	000037b7          	lui	a5,0x3
    17fc:	00271713          	slli	a4,a4,0x2
    1800:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    1804:	00f707b3          	add	a5,a4,a5
    1808:	00100713          	li	a4,1
    180c:	00e7a023          	sw	a4,0(a5)
    1810:	fffff097          	auipc	ra,0xfffff
    1814:	bd8080e7          	jalr	-1064(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1818:	00000693          	li	a3,0
    181c:	fd442603          	lw	a2,-44(s0)
    1820:	fd842583          	lw	a1,-40(s0)
    1824:	fdc42503          	lw	a0,-36(s0)
    1828:	fffff097          	auipc	ra,0xfffff
    182c:	bdc080e7          	jalr	-1060(ra) # 404 <_Z13OSTaskStkInitPFvPvES_Pmt>
    1830:	00050793          	mv	a5,a0
    1834:	fef42623          	sw	a5,-20(s0)
    1838:	fd344783          	lbu	a5,-45(s0)
    183c:	fec42583          	lw	a1,-20(s0)
    1840:	00078513          	mv	a0,a5
    1844:	00000097          	auipc	ra,0x0
    1848:	d64080e7          	jalr	-668(ra) # 15a8 <_Z10OS_TCBInithPm>
    184c:	00050793          	mv	a5,a0
    1850:	fef403a3          	sb	a5,-25(s0)
    1854:	fe744783          	lbu	a5,-25(s0)
    1858:	04079c63          	bnez	a5,18b0 <_Z12OSTaskCreatePFvPvES_Pmh+0x118>
    185c:	fffff097          	auipc	ra,0xfffff
    1860:	b70080e7          	jalr	-1168(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
    1864:	000027b7          	lui	a5,0x2
    1868:	5f47c783          	lbu	a5,1524(a5) # 25f4 <OSTaskCtr>
    186c:	00178793          	addi	a5,a5,1
    1870:	0ff7f713          	andi	a4,a5,255
    1874:	000027b7          	lui	a5,0x2
    1878:	5ee78a23          	sb	a4,1524(a5) # 25f4 <OSTaskCtr>
    187c:	fffff097          	auipc	ra,0xfffff
    1880:	b6c080e7          	jalr	-1172(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1884:	fdc42783          	lw	a5,-36(s0)
    1888:	fef42423          	sw	a5,-24(s0)
    188c:	fd344703          	lbu	a4,-45(s0)
    1890:	000037b7          	lui	a5,0x3
    1894:	00271713          	slli	a4,a4,0x2
    1898:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    189c:	00f707b3          	add	a5,a4,a5
    18a0:	0007a783          	lw	a5,0(a5)
    18a4:	fe842703          	lw	a4,-24(s0)
    18a8:	02e7a023          	sw	a4,32(a5)
    18ac:	02c0006f          	j	18d8 <_Z12OSTaskCreatePFvPvES_Pmh+0x140>
    18b0:	fffff097          	auipc	ra,0xfffff
    18b4:	b1c080e7          	jalr	-1252(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
    18b8:	fd344703          	lbu	a4,-45(s0)
    18bc:	000037b7          	lui	a5,0x3
    18c0:	00271713          	slli	a4,a4,0x2
    18c4:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    18c8:	00f707b3          	add	a5,a4,a5
    18cc:	0007a023          	sw	zero,0(a5)
    18d0:	fffff097          	auipc	ra,0xfffff
    18d4:	b18080e7          	jalr	-1256(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    18d8:	fe744783          	lbu	a5,-25(s0)
    18dc:	0100006f          	j	18ec <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    18e0:	fffff097          	auipc	ra,0xfffff
    18e4:	b08080e7          	jalr	-1272(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    18e8:	00500793          	li	a5,5
    18ec:	00078513          	mv	a0,a5
    18f0:	02c12083          	lw	ra,44(sp)
    18f4:	02812403          	lw	s0,40(sp)
    18f8:	03010113          	addi	sp,sp,48
    18fc:	00008067          	ret

00001900 <_Z12OSTaskResumeh>:
    1900:	fd010113          	addi	sp,sp,-48
    1904:	02112623          	sw	ra,44(sp)
    1908:	02812423          	sw	s0,40(sp)
    190c:	03010413          	addi	s0,sp,48
    1910:	00050793          	mv	a5,a0
    1914:	fcf40fa3          	sb	a5,-33(s0)
    1918:	fdf44703          	lbu	a4,-33(s0)
    191c:	03e00793          	li	a5,62
    1920:	00e7f663          	bgeu	a5,a4,192c <_Z12OSTaskResumeh+0x2c>
    1924:	00200793          	li	a5,2
    1928:	11c0006f          	j	1a44 <_Z12OSTaskResumeh+0x144>
    192c:	fffff097          	auipc	ra,0xfffff
    1930:	aa0080e7          	jalr	-1376(ra) # 3cc <_Z17OS_ENTER_CRITICALv>
    1934:	fdf44703          	lbu	a4,-33(s0)
    1938:	000037b7          	lui	a5,0x3
    193c:	00271713          	slli	a4,a4,0x2
    1940:	23078793          	addi	a5,a5,560 # 3230 <OSTCBPrioTbl>
    1944:	00f707b3          	add	a5,a4,a5
    1948:	0007a783          	lw	a5,0(a5)
    194c:	fef42623          	sw	a5,-20(s0)
    1950:	fec42783          	lw	a5,-20(s0)
    1954:	00079a63          	bnez	a5,1968 <_Z12OSTaskResumeh+0x68>
    1958:	fffff097          	auipc	ra,0xfffff
    195c:	a90080e7          	jalr	-1392(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1960:	00600793          	li	a5,6
    1964:	0e00006f          	j	1a44 <_Z12OSTaskResumeh+0x144>
    1968:	fec42783          	lw	a5,-20(s0)
    196c:	0167c783          	lbu	a5,22(a5)
    1970:	0037f793          	andi	a5,a5,3
    1974:	0c078263          	beqz	a5,1a38 <_Z12OSTaskResumeh+0x138>
    1978:	fec42783          	lw	a5,-20(s0)
    197c:	0167c783          	lbu	a5,22(a5)
    1980:	ffc7f793          	andi	a5,a5,-4
    1984:	0ff7f713          	andi	a4,a5,255
    1988:	fec42783          	lw	a5,-20(s0)
    198c:	00e78b23          	sb	a4,22(a5)
    1990:	fec42783          	lw	a5,-20(s0)
    1994:	0167c783          	lbu	a5,22(a5)
    1998:	00079c63          	bnez	a5,19b0 <_Z12OSTaskResumeh+0xb0>
    199c:	fec42783          	lw	a5,-20(s0)
    19a0:	0147d783          	lhu	a5,20(a5)
    19a4:	00079663          	bnez	a5,19b0 <_Z12OSTaskResumeh+0xb0>
    19a8:	00100793          	li	a5,1
    19ac:	0080006f          	j	19b4 <_Z12OSTaskResumeh+0xb4>
    19b0:	00000793          	li	a5,0
    19b4:	06078a63          	beqz	a5,1a28 <_Z12OSTaskResumeh+0x128>
    19b8:	fec42783          	lw	a5,-20(s0)
    19bc:	01b7c703          	lbu	a4,27(a5)
    19c0:	000027b7          	lui	a5,0x2
    19c4:	5e97c783          	lbu	a5,1513(a5) # 25e9 <OSRdyGrp>
    19c8:	00f767b3          	or	a5,a4,a5
    19cc:	0ff7f713          	andi	a4,a5,255
    19d0:	000027b7          	lui	a5,0x2
    19d4:	5ee784a3          	sb	a4,1513(a5) # 25e9 <OSRdyGrp>
    19d8:	fec42783          	lw	a5,-20(s0)
    19dc:	0197c783          	lbu	a5,25(a5)
    19e0:	00078713          	mv	a4,a5
    19e4:	000027b7          	lui	a5,0x2
    19e8:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
    19ec:	00f707b3          	add	a5,a4,a5
    19f0:	0007c703          	lbu	a4,0(a5)
    19f4:	fec42783          	lw	a5,-20(s0)
    19f8:	01a7c783          	lbu	a5,26(a5)
    19fc:	fec42683          	lw	a3,-20(s0)
    1a00:	0196c683          	lbu	a3,25(a3)
    1a04:	00f767b3          	or	a5,a4,a5
    1a08:	0ff7f713          	andi	a4,a5,255
    1a0c:	000027b7          	lui	a5,0x2
    1a10:	5ec78793          	addi	a5,a5,1516 # 25ec <OSRdyTbl>
    1a14:	00f687b3          	add	a5,a3,a5
    1a18:	00e78023          	sb	a4,0(a5)
    1a1c:	fffff097          	auipc	ra,0xfffff
    1a20:	9cc080e7          	jalr	-1588(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1a24:	00c0006f          	j	1a30 <_Z12OSTaskResumeh+0x130>
    1a28:	fffff097          	auipc	ra,0xfffff
    1a2c:	9c0080e7          	jalr	-1600(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1a30:	00000793          	li	a5,0
    1a34:	0100006f          	j	1a44 <_Z12OSTaskResumeh+0x144>
    1a38:	fffff097          	auipc	ra,0xfffff
    1a3c:	9b0080e7          	jalr	-1616(ra) # 3e8 <_Z16OS_EXIT_CRITICALv>
    1a40:	00700793          	li	a5,7
    1a44:	00078513          	mv	a0,a5
    1a48:	02c12083          	lw	ra,44(sp)
    1a4c:	02812403          	lw	s0,40(sp)
    1a50:	03010113          	addi	sp,sp,48
    1a54:	00008067          	ret
