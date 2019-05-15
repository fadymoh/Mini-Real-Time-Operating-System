
final.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	01400137          	lui	sp,0x1400
       4:	ffc10113          	addi	sp,sp,-4 # 13ffffc <_fstack>
       8:	26c000ef          	jal	ra,274 <main>

0000000c <loop>:
       c:	00a00893          	li	a7,10
      10:	00000073          	ecall
      14:	ff9ff06f          	j	c <loop>

00000018 <_OS_CTX_SW>:
      18:	fd010113          	addi	sp,sp,-48
      1c:	02812623          	sw	s0,44(sp)
      20:	02912423          	sw	s1,40(sp)
      24:	03212223          	sw	s2,36(sp)
      28:	03312023          	sw	s3,32(sp)
      2c:	01412e23          	sw	s4,28(sp)
      30:	01512c23          	sw	s5,24(sp)
      34:	01612a23          	sw	s6,20(sp)
      38:	01712823          	sw	s7,16(sp)
      3c:	01812623          	sw	s8,12(sp)
      40:	01912423          	sw	s9,8(sp)
      44:	01a12223          	sw	s10,4(sp)
      48:	01b12023          	sw	s11,0(sp)
      4c:	000037b7          	lui	a5,0x3
      50:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
      54:	0027a023          	sw	sp,0(a5)
      58:	000037b7          	lui	a5,0x3
      5c:	5fc7a703          	lw	a4,1532(a5) # 35fc <OSTCBHighRdy>
      60:	000037b7          	lui	a5,0x3
      64:	5ee7ac23          	sw	a4,1528(a5) # 35f8 <OSTCBCur>
      68:	000037b7          	lui	a5,0x3
      6c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
      70:	0007a103          	lw	sp,0(a5)
      74:	02c12403          	lw	s0,44(sp)
      78:	02812483          	lw	s1,40(sp)
      7c:	02412903          	lw	s2,36(sp)
      80:	02012983          	lw	s3,32(sp)
      84:	01c12a03          	lw	s4,28(sp)
      88:	01812a83          	lw	s5,24(sp)
      8c:	01412b03          	lw	s6,20(sp)
      90:	01012b83          	lw	s7,16(sp)
      94:	00c12c03          	lw	s8,12(sp)
      98:	00812c83          	lw	s9,8(sp)
      9c:	00412d03          	lw	s10,4(sp)
      a0:	00012d83          	lw	s11,0(sp)
      a4:	03010113          	addi	sp,sp,48
      a8:	00d00893          	li	a7,13
      ac:	00000073          	ecall

000000b0 <_Z11printStringPKc>:
      b0:	fe010113          	addi	sp,sp,-32
      b4:	00812e23          	sw	s0,28(sp)
      b8:	02010413          	addi	s0,sp,32
      bc:	fea42623          	sw	a0,-20(s0)
      c0:	00400893          	li	a7,4
      c4:	fec42783          	lw	a5,-20(s0)
      c8:	00078513          	mv	a0,a5
      cc:	00000073          	ecall
      d0:	00000013          	nop
      d4:	01c12403          	lw	s0,28(sp)
      d8:	02010113          	addi	sp,sp,32
      dc:	00008067          	ret

000000e0 <_Z12printIntegeri>:
      e0:	fe010113          	addi	sp,sp,-32
      e4:	00812e23          	sw	s0,28(sp)
      e8:	02010413          	addi	s0,sp,32
      ec:	fea42623          	sw	a0,-20(s0)
      f0:	00100893          	li	a7,1
      f4:	fec42503          	lw	a0,-20(s0)
      f8:	00000073          	ecall
      fc:	00000013          	nop
     100:	01c12403          	lw	s0,28(sp)
     104:	02010113          	addi	sp,sp,32
     108:	00008067          	ret

0000010c <_Z10TaskPrio10Pv>:
     10c:	fd010113          	addi	sp,sp,-48
     110:	02112623          	sw	ra,44(sp)
     114:	02812423          	sw	s0,40(sp)
     118:	03010413          	addi	s0,sp,48
     11c:	fca42e23          	sw	a0,-36(s0)
     120:	000037b7          	lui	a5,0x3
     124:	8ac78513          	addi	a0,a5,-1876 # 28ac <_ZL10OSUnMapTbl+0x170>
     128:	00000097          	auipc	ra,0x0
     12c:	f88080e7          	jalr	-120(ra) # b0 <_Z11printStringPKc>
     130:	000037b7          	lui	a5,0x3
     134:	6587a783          	lw	a5,1624(a5) # 3658 <_ZL7myMutex>
     138:	fef40713          	addi	a4,s0,-17
     13c:	00070593          	mv	a1,a4
     140:	00078513          	mv	a0,a5
     144:	00001097          	auipc	ra,0x1
     148:	55c080e7          	jalr	1372(ra) # 16a0 <_Z11OSMutexPendP17EventControlBlockPh>
     14c:	000037b7          	lui	a5,0x3
     150:	8c078513          	addi	a0,a5,-1856 # 28c0 <_ZL10OSUnMapTbl+0x184>
     154:	00000097          	auipc	ra,0x0
     158:	f5c080e7          	jalr	-164(ra) # b0 <_Z11printStringPKc>
     15c:	000037b7          	lui	a5,0x3
     160:	6587a783          	lw	a5,1624(a5) # 3658 <_ZL7myMutex>
     164:	00078513          	mv	a0,a5
     168:	00002097          	auipc	ra,0x2
     16c:	8c0080e7          	jalr	-1856(ra) # 1a28 <_Z11OSMutexPostP17EventControlBlock>
     170:	000037b7          	lui	a5,0x3
     174:	8d478513          	addi	a0,a5,-1836 # 28d4 <_ZL10OSUnMapTbl+0x198>
     178:	00000097          	auipc	ra,0x0
     17c:	f38080e7          	jalr	-200(ra) # b0 <_Z11printStringPKc>
     180:	fa1ff06f          	j	120 <_Z10TaskPrio10Pv+0x14>

00000184 <_Z10TaskPrio15Pv>:
     184:	fd010113          	addi	sp,sp,-48
     188:	02112623          	sw	ra,44(sp)
     18c:	02812423          	sw	s0,40(sp)
     190:	03010413          	addi	s0,sp,48
     194:	fca42e23          	sw	a0,-36(s0)
     198:	000037b7          	lui	a5,0x3
     19c:	8e878513          	addi	a0,a5,-1816 # 28e8 <_ZL10OSUnMapTbl+0x1ac>
     1a0:	00000097          	auipc	ra,0x0
     1a4:	f10080e7          	jalr	-240(ra) # b0 <_Z11printStringPKc>
     1a8:	000037b7          	lui	a5,0x3
     1ac:	6587a783          	lw	a5,1624(a5) # 3658 <_ZL7myMutex>
     1b0:	fef40713          	addi	a4,s0,-17
     1b4:	00070593          	mv	a1,a4
     1b8:	00078513          	mv	a0,a5
     1bc:	00001097          	auipc	ra,0x1
     1c0:	4e4080e7          	jalr	1252(ra) # 16a0 <_Z11OSMutexPendP17EventControlBlockPh>
     1c4:	000037b7          	lui	a5,0x3
     1c8:	8fc78513          	addi	a0,a5,-1796 # 28fc <_ZL10OSUnMapTbl+0x1c0>
     1cc:	00000097          	auipc	ra,0x0
     1d0:	ee4080e7          	jalr	-284(ra) # b0 <_Z11printStringPKc>
     1d4:	000037b7          	lui	a5,0x3
     1d8:	6587a783          	lw	a5,1624(a5) # 3658 <_ZL7myMutex>
     1dc:	00078513          	mv	a0,a5
     1e0:	00002097          	auipc	ra,0x2
     1e4:	848080e7          	jalr	-1976(ra) # 1a28 <_Z11OSMutexPostP17EventControlBlock>
     1e8:	000037b7          	lui	a5,0x3
     1ec:	91078513          	addi	a0,a5,-1776 # 2910 <_ZL10OSUnMapTbl+0x1d4>
     1f0:	00000097          	auipc	ra,0x0
     1f4:	ec0080e7          	jalr	-320(ra) # b0 <_Z11printStringPKc>
     1f8:	fa1ff06f          	j	198 <_Z10TaskPrio15Pv+0x14>

000001fc <_Z10TaskPrio20Pv>:
     1fc:	fd010113          	addi	sp,sp,-48
     200:	02112623          	sw	ra,44(sp)
     204:	02812423          	sw	s0,40(sp)
     208:	03010413          	addi	s0,sp,48
     20c:	fca42e23          	sw	a0,-36(s0)
     210:	000037b7          	lui	a5,0x3
     214:	92478513          	addi	a0,a5,-1756 # 2924 <_ZL10OSUnMapTbl+0x1e8>
     218:	00000097          	auipc	ra,0x0
     21c:	e98080e7          	jalr	-360(ra) # b0 <_Z11printStringPKc>
     220:	000037b7          	lui	a5,0x3
     224:	6587a783          	lw	a5,1624(a5) # 3658 <_ZL7myMutex>
     228:	fef40713          	addi	a4,s0,-17
     22c:	00070593          	mv	a1,a4
     230:	00078513          	mv	a0,a5
     234:	00001097          	auipc	ra,0x1
     238:	46c080e7          	jalr	1132(ra) # 16a0 <_Z11OSMutexPendP17EventControlBlockPh>
     23c:	000037b7          	lui	a5,0x3
     240:	93878513          	addi	a0,a5,-1736 # 2938 <_ZL10OSUnMapTbl+0x1fc>
     244:	00000097          	auipc	ra,0x0
     248:	e6c080e7          	jalr	-404(ra) # b0 <_Z11printStringPKc>
     24c:	000037b7          	lui	a5,0x3
     250:	6587a783          	lw	a5,1624(a5) # 3658 <_ZL7myMutex>
     254:	00078513          	mv	a0,a5
     258:	00001097          	auipc	ra,0x1
     25c:	7d0080e7          	jalr	2000(ra) # 1a28 <_Z11OSMutexPostP17EventControlBlock>
     260:	000037b7          	lui	a5,0x3
     264:	94c78513          	addi	a0,a5,-1716 # 294c <_ZL10OSUnMapTbl+0x210>
     268:	00000097          	auipc	ra,0x0
     26c:	e48080e7          	jalr	-440(ra) # b0 <_Z11printStringPKc>
     270:	fa1ff06f          	j	210 <_Z10TaskPrio20Pv+0x14>

00000274 <main>:
     274:	be010113          	addi	sp,sp,-1056
     278:	40112e23          	sw	ra,1052(sp)
     27c:	40812c23          	sw	s0,1048(sp)
     280:	42010413          	addi	s0,sp,1056
     284:	fffff337          	lui	t1,0xfffff
     288:	00610133          	add	sp,sp,t1
     28c:	00000097          	auipc	ra,0x0
     290:	3d8080e7          	jalr	984(ra) # 664 <_Z7OS_Initv>
     294:	000037b7          	lui	a5,0x3
     298:	96078513          	addi	a0,a5,-1696 # 2960 <_ZL10OSUnMapTbl+0x224>
     29c:	00000097          	auipc	ra,0x0
     2a0:	e14080e7          	jalr	-492(ra) # b0 <_Z11printStringPKc>
     2a4:	fffff7b7          	lui	a5,0xfffff
     2a8:	40078793          	addi	a5,a5,1024 # fffff400 <_fstack+0xfebff404>
     2ac:	ff040713          	addi	a4,s0,-16
     2b0:	00f707b3          	add	a5,a4,a5
     2b4:	3fc78793          	addi	a5,a5,1020
     2b8:	00a00693          	li	a3,10
     2bc:	00078613          	mv	a2,a5
     2c0:	00000593          	li	a1,0
     2c4:	000007b7          	lui	a5,0x0
     2c8:	10c78513          	addi	a0,a5,268 # 10c <_Z10TaskPrio10Pv>
     2cc:	00002097          	auipc	ra,0x2
     2d0:	1b0080e7          	jalr	432(ra) # 247c <_Z12OSTaskCreatePFvPvES_Pmh>
     2d4:	fffff7b7          	lui	a5,0xfffff
     2d8:	ff040713          	addi	a4,s0,-16
     2dc:	00f707b3          	add	a5,a4,a5
     2e0:	3fc78793          	addi	a5,a5,1020 # fffff3fc <_fstack+0xfebff400>
     2e4:	00f00693          	li	a3,15
     2e8:	00078613          	mv	a2,a5
     2ec:	00000593          	li	a1,0
     2f0:	000007b7          	lui	a5,0x0
     2f4:	18478513          	addi	a0,a5,388 # 184 <_Z10TaskPrio15Pv>
     2f8:	00002097          	auipc	ra,0x2
     2fc:	184080e7          	jalr	388(ra) # 247c <_Z12OSTaskCreatePFvPvES_Pmh>
     300:	fffff7b7          	lui	a5,0xfffff
     304:	c0078793          	addi	a5,a5,-1024 # ffffec00 <_fstack+0xfebfec04>
     308:	ff040713          	addi	a4,s0,-16
     30c:	00f707b3          	add	a5,a4,a5
     310:	3fc78793          	addi	a5,a5,1020
     314:	01400693          	li	a3,20
     318:	00078613          	mv	a2,a5
     31c:	00000593          	li	a1,0
     320:	000007b7          	lui	a5,0x0
     324:	1fc78513          	addi	a0,a5,508 # 1fc <_Z10TaskPrio20Pv>
     328:	00002097          	auipc	ra,0x2
     32c:	154080e7          	jalr	340(ra) # 247c <_Z12OSTaskCreatePFvPvES_Pmh>
     330:	00000097          	auipc	ra,0x0
     334:	534080e7          	jalr	1332(ra) # 864 <_Z17OSCreateSemaphorev>
     338:	00050713          	mv	a4,a0
     33c:	000037b7          	lui	a5,0x3
     340:	64e7a623          	sw	a4,1612(a5) # 364c <_ZL11mySemaphore>
     344:	00000513          	li	a0,0
     348:	00001097          	auipc	ra,0x1
     34c:	8f4080e7          	jalr	-1804(ra) # c3c <_Z12OSMboxCreatePv>
     350:	00050713          	mv	a4,a0
     354:	000037b7          	lui	a5,0x3
     358:	64e7a823          	sw	a4,1616(a5) # 3650 <_ZL9myMailBox>
     35c:	00a00593          	li	a1,10
     360:	000037b7          	lui	a5,0x3
     364:	61078513          	addi	a0,a5,1552 # 3610 <CommMsg>
     368:	00001097          	auipc	ra,0x1
     36c:	e48080e7          	jalr	-440(ra) # 11b0 <_Z9OSQCreatePPvt>
     370:	00050713          	mv	a4,a0
     374:	000037b7          	lui	a5,0x3
     378:	64e7aa23          	sw	a4,1620(a5) # 3654 <_ZL7myQueue>
     37c:	fffff7b7          	lui	a5,0xfffff
     380:	bff78793          	addi	a5,a5,-1025 # ffffebff <_fstack+0xfebfec03>
     384:	ff040713          	addi	a4,s0,-16
     388:	00f707b3          	add	a5,a4,a5
     38c:	00078593          	mv	a1,a5
     390:	00900513          	li	a0,9
     394:	00001097          	auipc	ra,0x1
     398:	1d0080e7          	jalr	464(ra) # 1564 <_Z13OSMutexCreatehPh>
     39c:	00050713          	mv	a4,a0
     3a0:	000037b7          	lui	a5,0x3
     3a4:	64e7ac23          	sw	a4,1624(a5) # 3658 <_ZL7myMutex>
     3a8:	000037b7          	lui	a5,0x3
     3ac:	5e47a783          	lw	a5,1508(a5) # 35e4 <s7>
     3b0:	00078513          	mv	a0,a5
     3b4:	00000097          	auipc	ra,0x0
     3b8:	cfc080e7          	jalr	-772(ra) # b0 <_Z11printStringPKc>
     3bc:	00001097          	auipc	ra,0x1
     3c0:	b48080e7          	jalr	-1208(ra) # f04 <_Z8OS_Startv>
     3c4:	00a00893          	li	a7,10
     3c8:	00000073          	ecall
     3cc:	00000793          	li	a5,0
     3d0:	00078513          	mv	a0,a5
     3d4:	00001337          	lui	t1,0x1
     3d8:	00610133          	add	sp,sp,t1
     3dc:	41c12083          	lw	ra,1052(sp)
     3e0:	41812403          	lw	s0,1048(sp)
     3e4:	42010113          	addi	sp,sp,1056
     3e8:	00008067          	ret

000003ec <_Z17OS_ENTER_CRITICALv>:
     3ec:	ff010113          	addi	sp,sp,-16
     3f0:	00812623          	sw	s0,12(sp)
     3f4:	01010413          	addi	s0,sp,16
     3f8:	00000013          	nop
     3fc:	00c12403          	lw	s0,12(sp)
     400:	01010113          	addi	sp,sp,16
     404:	00008067          	ret

00000408 <_Z16OS_EXIT_CRITICALv>:
     408:	ff010113          	addi	sp,sp,-16
     40c:	00812623          	sw	s0,12(sp)
     410:	01010413          	addi	s0,sp,16
     414:	00000013          	nop
     418:	00c12403          	lw	s0,12(sp)
     41c:	01010113          	addi	sp,sp,16
     420:	00008067          	ret

00000424 <_Z13OSTaskStkInitPFvPvES_Pmt>:
     424:	fd010113          	addi	sp,sp,-48
     428:	02812623          	sw	s0,44(sp)
     42c:	03010413          	addi	s0,sp,48
     430:	fca42e23          	sw	a0,-36(s0)
     434:	fcb42c23          	sw	a1,-40(s0)
     438:	fcc42a23          	sw	a2,-44(s0)
     43c:	00068793          	mv	a5,a3
     440:	fcf41923          	sh	a5,-46(s0)
     444:	fd442783          	lw	a5,-44(s0)
     448:	fef42623          	sw	a5,-20(s0)
     44c:	fec42783          	lw	a5,-20(s0)
     450:	ffc78713          	addi	a4,a5,-4
     454:	fee42623          	sw	a4,-20(s0)
     458:	fdc42703          	lw	a4,-36(s0)
     45c:	00e7a023          	sw	a4,0(a5)
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
     4f4:	ffc78713          	addi	a4,a5,-4
     4f8:	fee42623          	sw	a4,-20(s0)
     4fc:	0007a023          	sw	zero,0(a5)
     500:	fec42783          	lw	a5,-20(s0)
     504:	ffc78713          	addi	a4,a5,-4
     508:	fee42623          	sw	a4,-20(s0)
     50c:	0007a023          	sw	zero,0(a5)
     510:	fec42783          	lw	a5,-20(s0)
     514:	0007a023          	sw	zero,0(a5)
     518:	fec42783          	lw	a5,-20(s0)
     51c:	00078513          	mv	a0,a5
     520:	02c12403          	lw	s0,44(sp)
     524:	03010113          	addi	sp,sp,48
     528:	00008067          	ret

0000052c <_Z16OSTaskCreateHookv>:
     52c:	ff010113          	addi	sp,sp,-16
     530:	00812623          	sw	s0,12(sp)
     534:	01010413          	addi	s0,sp,16
     538:	00000013          	nop
     53c:	00c12403          	lw	s0,12(sp)
     540:	01010113          	addi	sp,sp,16
     544:	00008067          	ret

00000548 <_Z10OS_TASK_SWv>:
     548:	ff010113          	addi	sp,sp,-16
     54c:	00812623          	sw	s0,12(sp)
     550:	01010413          	addi	s0,sp,16
     554:	00000013          	nop
     558:	00c12403          	lw	s0,12(sp)
     55c:	01010113          	addi	sp,sp,16
     560:	00008067          	ret

00000564 <_Z8OS_Schedv>:
     564:	fe010113          	addi	sp,sp,-32
     568:	00112e23          	sw	ra,28(sp)
     56c:	00812c23          	sw	s0,24(sp)
     570:	02010413          	addi	s0,sp,32
     574:	00000097          	auipc	ra,0x0
     578:	e78080e7          	jalr	-392(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
     57c:	000037b7          	lui	a5,0x3
     580:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
     584:	00078713          	mv	a4,a5
     588:	000037b7          	lui	a5,0x3
     58c:	a7878793          	addi	a5,a5,-1416 # 2a78 <_ZL10OSUnMapTbl>
     590:	00f707b3          	add	a5,a4,a5
     594:	0007c783          	lbu	a5,0(a5)
     598:	fef407a3          	sb	a5,-17(s0)
     59c:	fef44783          	lbu	a5,-17(s0)
     5a0:	00379793          	slli	a5,a5,0x3
     5a4:	0ff7f713          	andi	a4,a5,255
     5a8:	fef44683          	lbu	a3,-17(s0)
     5ac:	000037b7          	lui	a5,0x3
     5b0:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
     5b4:	00f687b3          	add	a5,a3,a5
     5b8:	0007c783          	lbu	a5,0(a5)
     5bc:	00078693          	mv	a3,a5
     5c0:	000037b7          	lui	a5,0x3
     5c4:	a7878793          	addi	a5,a5,-1416 # 2a78 <_ZL10OSUnMapTbl>
     5c8:	00f687b3          	add	a5,a3,a5
     5cc:	0007c783          	lbu	a5,0(a5)
     5d0:	00f707b3          	add	a5,a4,a5
     5d4:	0ff7f713          	andi	a4,a5,255
     5d8:	000037b7          	lui	a5,0x3
     5dc:	5ee784a3          	sb	a4,1513(a5) # 35e9 <OSPrioHighRdy>
     5e0:	000037b7          	lui	a5,0x3
     5e4:	5e97c703          	lbu	a4,1513(a5) # 35e9 <OSPrioHighRdy>
     5e8:	000037b7          	lui	a5,0x3
     5ec:	5e87c783          	lbu	a5,1512(a5) # 35e8 <OSPrioCur>
     5f0:	04f70c63          	beq	a4,a5,648 <_Z8OS_Schedv+0xe4>
     5f4:	000037b7          	lui	a5,0x3
     5f8:	5e97c783          	lbu	a5,1513(a5) # 35e9 <OSPrioHighRdy>
     5fc:	00078713          	mv	a4,a5
     600:	000047b7          	lui	a5,0x4
     604:	00271713          	slli	a4,a4,0x2
     608:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
     60c:	00f707b3          	add	a5,a4,a5
     610:	0007a703          	lw	a4,0(a5)
     614:	000037b7          	lui	a5,0x3
     618:	5ee7ae23          	sw	a4,1532(a5) # 35fc <OSTCBHighRdy>
     61c:	000037b7          	lui	a5,0x3
     620:	5e97c703          	lbu	a4,1513(a5) # 35e9 <OSPrioHighRdy>
     624:	000037b7          	lui	a5,0x3
     628:	5ee78423          	sb	a4,1512(a5) # 35e8 <OSPrioCur>
     62c:	000037b7          	lui	a5,0x3
     630:	5e87c783          	lbu	a5,1512(a5) # 35e8 <OSPrioCur>
     634:	00078513          	mv	a0,a5
     638:	00e00893          	li	a7,14
     63c:	00000073          	ecall
     640:	00c00893          	li	a7,12
     644:	00000073          	ecall
     648:	00000097          	auipc	ra,0x0
     64c:	dc0080e7          	jalr	-576(ra) # 408 <_Z16OS_EXIT_CRITICALv>
     650:	00000013          	nop
     654:	01c12083          	lw	ra,28(sp)
     658:	01812403          	lw	s0,24(sp)
     65c:	02010113          	addi	sp,sp,32
     660:	00008067          	ret

00000664 <_Z7OS_Initv>:
     664:	ff010113          	addi	sp,sp,-16
     668:	00112623          	sw	ra,12(sp)
     66c:	00812423          	sw	s0,8(sp)
     670:	01010413          	addi	s0,sp,16
     674:	00000097          	auipc	ra,0x0
     678:	154080e7          	jalr	340(ra) # 7c8 <_Z20OS_EventWaitListInitv>
     67c:	00000097          	auipc	ra,0x0
     680:	024080e7          	jalr	36(ra) # 6a0 <_Z15OS_TaskFreePoolv>
     684:	00000097          	auipc	ra,0x0
     688:	0b4080e7          	jalr	180(ra) # 738 <_Z12OS_QFreePoolv>
     68c:	00000013          	nop
     690:	00c12083          	lw	ra,12(sp)
     694:	00812403          	lw	s0,8(sp)
     698:	01010113          	addi	sp,sp,16
     69c:	00008067          	ret

000006a0 <_Z15OS_TaskFreePoolv>:
     6a0:	fe010113          	addi	sp,sp,-32
     6a4:	00812e23          	sw	s0,28(sp)
     6a8:	02010413          	addi	s0,sp,32
     6ac:	000037b7          	lui	a5,0x3
     6b0:	00004737          	lui	a4,0x4
     6b4:	98070713          	addi	a4,a4,-1664 # 3980 <freeTCBs>
     6b8:	5ee7a823          	sw	a4,1520(a5) # 35f0 <OSTCBFreeList>
     6bc:	000037b7          	lui	a5,0x3
     6c0:	5f07a783          	lw	a5,1520(a5) # 35f0 <OSTCBFreeList>
     6c4:	fef42623          	sw	a5,-20(s0)
     6c8:	00100793          	li	a5,1
     6cc:	fef42423          	sw	a5,-24(s0)
     6d0:	fe842703          	lw	a4,-24(s0)
     6d4:	03f00793          	li	a5,63
     6d8:	04e7c463          	blt	a5,a4,720 <_Z15OS_TaskFreePoolv+0x80>
     6dc:	fe842703          	lw	a4,-24(s0)
     6e0:	00070793          	mv	a5,a4
     6e4:	00379793          	slli	a5,a5,0x3
     6e8:	00e787b3          	add	a5,a5,a4
     6ec:	00279793          	slli	a5,a5,0x2
     6f0:	00004737          	lui	a4,0x4
     6f4:	98070713          	addi	a4,a4,-1664 # 3980 <freeTCBs>
     6f8:	00e78733          	add	a4,a5,a4
     6fc:	fec42783          	lw	a5,-20(s0)
     700:	00e7a223          	sw	a4,4(a5)
     704:	fec42783          	lw	a5,-20(s0)
     708:	0047a783          	lw	a5,4(a5)
     70c:	fef42623          	sw	a5,-20(s0)
     710:	fe842783          	lw	a5,-24(s0)
     714:	00178793          	addi	a5,a5,1
     718:	fef42423          	sw	a5,-24(s0)
     71c:	fb5ff06f          	j	6d0 <_Z15OS_TaskFreePoolv+0x30>
     720:	fec42783          	lw	a5,-20(s0)
     724:	0007a223          	sw	zero,4(a5)
     728:	00000013          	nop
     72c:	01c12403          	lw	s0,28(sp)
     730:	02010113          	addi	sp,sp,32
     734:	00008067          	ret

00000738 <_Z12OS_QFreePoolv>:
     738:	fe010113          	addi	sp,sp,-32
     73c:	00812e23          	sw	s0,28(sp)
     740:	02010413          	addi	s0,sp,32
     744:	000047b7          	lui	a5,0x4
     748:	00004737          	lui	a4,0x4
     74c:	28070713          	addi	a4,a4,640 # 4280 <FreeOSQ>
     750:	46e7a023          	sw	a4,1120(a5) # 4460 <_ZL11OSQFreeList>
     754:	000047b7          	lui	a5,0x4
     758:	4607a783          	lw	a5,1120(a5) # 4460 <_ZL11OSQFreeList>
     75c:	fef42623          	sw	a5,-20(s0)
     760:	00100793          	li	a5,1
     764:	fef405a3          	sb	a5,-21(s0)
     768:	feb44703          	lbu	a4,-21(s0)
     76c:	01300793          	li	a5,19
     770:	04e7e463          	bltu	a5,a4,7b8 <_Z12OS_QFreePoolv+0x80>
     774:	feb44703          	lbu	a4,-21(s0)
     778:	00070793          	mv	a5,a4
     77c:	00179793          	slli	a5,a5,0x1
     780:	00e787b3          	add	a5,a5,a4
     784:	00379793          	slli	a5,a5,0x3
     788:	00004737          	lui	a4,0x4
     78c:	28070713          	addi	a4,a4,640 # 4280 <FreeOSQ>
     790:	00e78733          	add	a4,a5,a4
     794:	fec42783          	lw	a5,-20(s0)
     798:	00e7a023          	sw	a4,0(a5)
     79c:	fec42783          	lw	a5,-20(s0)
     7a0:	0007a783          	lw	a5,0(a5)
     7a4:	fef42623          	sw	a5,-20(s0)
     7a8:	feb44783          	lbu	a5,-21(s0)
     7ac:	00178793          	addi	a5,a5,1
     7b0:	fef405a3          	sb	a5,-21(s0)
     7b4:	fb5ff06f          	j	768 <_Z12OS_QFreePoolv+0x30>
     7b8:	00000013          	nop
     7bc:	01c12403          	lw	s0,28(sp)
     7c0:	02010113          	addi	sp,sp,32
     7c4:	00008067          	ret

000007c8 <_Z20OS_EventWaitListInitv>:
     7c8:	fe010113          	addi	sp,sp,-32
     7cc:	00812e23          	sw	s0,28(sp)
     7d0:	02010413          	addi	s0,sp,32
     7d4:	000037b7          	lui	a5,0x3
     7d8:	00003737          	lui	a4,0x3
     7dc:	66070713          	addi	a4,a4,1632 # 3660 <freeEvents>
     7e0:	5ee7a623          	sw	a4,1516(a5) # 35ec <OSEventFreeList>
     7e4:	000037b7          	lui	a5,0x3
     7e8:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     7ec:	fef42623          	sw	a5,-20(s0)
     7f0:	00100793          	li	a5,1
     7f4:	fef405a3          	sb	a5,-21(s0)
     7f8:	feb40703          	lb	a4,-21(s0)
     7fc:	01300793          	li	a5,19
     800:	04e7c663          	blt	a5,a4,84c <_Z20OS_EventWaitListInitv+0x84>
     804:	feb40703          	lb	a4,-21(s0)
     808:	00070793          	mv	a5,a4
     80c:	00279793          	slli	a5,a5,0x2
     810:	00e787b3          	add	a5,a5,a4
     814:	00379793          	slli	a5,a5,0x3
     818:	00003737          	lui	a4,0x3
     81c:	66070713          	addi	a4,a4,1632 # 3660 <freeEvents>
     820:	00e78733          	add	a4,a5,a4
     824:	fec42783          	lw	a5,-20(s0)
     828:	00e7a023          	sw	a4,0(a5)
     82c:	fec42783          	lw	a5,-20(s0)
     830:	0007a783          	lw	a5,0(a5)
     834:	fef42623          	sw	a5,-20(s0)
     838:	feb44783          	lbu	a5,-21(s0)
     83c:	00178793          	addi	a5,a5,1
     840:	0ff7f793          	andi	a5,a5,255
     844:	fef405a3          	sb	a5,-21(s0)
     848:	fb1ff06f          	j	7f8 <_Z20OS_EventWaitListInitv+0x30>
     84c:	fec42783          	lw	a5,-20(s0)
     850:	0007a023          	sw	zero,0(a5)
     854:	00000013          	nop
     858:	01c12403          	lw	s0,28(sp)
     85c:	02010113          	addi	sp,sp,32
     860:	00008067          	ret

00000864 <_Z17OSCreateSemaphorev>:
     864:	fe010113          	addi	sp,sp,-32
     868:	00812e23          	sw	s0,28(sp)
     86c:	02010413          	addi	s0,sp,32
     870:	000037b7          	lui	a5,0x3
     874:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     878:	fef42623          	sw	a5,-20(s0)
     87c:	000037b7          	lui	a5,0x3
     880:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     884:	00078c63          	beqz	a5,89c <_Z17OSCreateSemaphorev+0x38>
     888:	000037b7          	lui	a5,0x3
     88c:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     890:	0007a703          	lw	a4,0(a5)
     894:	000037b7          	lui	a5,0x3
     898:	5ee7a623          	sw	a4,1516(a5) # 35ec <OSEventFreeList>
     89c:	fec42783          	lw	a5,-20(s0)
     8a0:	02078463          	beqz	a5,8c8 <_Z17OSCreateSemaphorev+0x64>
     8a4:	fec42783          	lw	a5,-20(s0)
     8a8:	00800713          	li	a4,8
     8ac:	00e78223          	sb	a4,4(a5)
     8b0:	fec42783          	lw	a5,-20(s0)
     8b4:	00079323          	sh	zero,6(a5)
     8b8:	fec42783          	lw	a5,-20(s0)
     8bc:	0007a023          	sw	zero,0(a5)
     8c0:	fec42783          	lw	a5,-20(s0)
     8c4:	000782a3          	sb	zero,5(a5)
     8c8:	fec42783          	lw	a5,-20(s0)
     8cc:	00078513          	mv	a0,a5
     8d0:	01c12403          	lw	s0,28(sp)
     8d4:	02010113          	addi	sp,sp,32
     8d8:	00008067          	ret

000008dc <_Z16OS_EventTaskWaitP17EventControlBlock>:
     8dc:	fe010113          	addi	sp,sp,-32
     8e0:	00812e23          	sw	s0,28(sp)
     8e4:	02010413          	addi	s0,sp,32
     8e8:	fea42623          	sw	a0,-20(s0)
     8ec:	000037b7          	lui	a5,0x3
     8f0:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     8f4:	fec42703          	lw	a4,-20(s0)
     8f8:	00e7a623          	sw	a4,12(a5)
     8fc:	000037b7          	lui	a5,0x3
     900:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     904:	0197c783          	lbu	a5,25(a5)
     908:	00078713          	mv	a4,a5
     90c:	000037b7          	lui	a5,0x3
     910:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
     914:	00f707b3          	add	a5,a4,a5
     918:	0007c783          	lbu	a5,0(a5)
     91c:	01879713          	slli	a4,a5,0x18
     920:	41875713          	srai	a4,a4,0x18
     924:	000037b7          	lui	a5,0x3
     928:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     92c:	01a7c783          	lbu	a5,26(a5)
     930:	01879793          	slli	a5,a5,0x18
     934:	4187d793          	srai	a5,a5,0x18
     938:	fff7c793          	not	a5,a5
     93c:	01879793          	slli	a5,a5,0x18
     940:	4187d793          	srai	a5,a5,0x18
     944:	00f777b3          	and	a5,a4,a5
     948:	01879713          	slli	a4,a5,0x18
     94c:	41875713          	srai	a4,a4,0x18
     950:	000037b7          	lui	a5,0x3
     954:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     958:	0197c783          	lbu	a5,25(a5)
     95c:	0ff77693          	andi	a3,a4,255
     960:	00003737          	lui	a4,0x3
     964:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
     968:	00e78733          	add	a4,a5,a4
     96c:	00d70023          	sb	a3,0(a4)
     970:	00003737          	lui	a4,0x3
     974:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
     978:	00e787b3          	add	a5,a5,a4
     97c:	0007c783          	lbu	a5,0(a5)
     980:	0017b793          	seqz	a5,a5
     984:	0ff7f793          	andi	a5,a5,255
     988:	04078663          	beqz	a5,9d4 <_Z16OS_EventTaskWaitP17EventControlBlock+0xf8>
     98c:	000037b7          	lui	a5,0x3
     990:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     994:	01b7c783          	lbu	a5,27(a5)
     998:	01879793          	slli	a5,a5,0x18
     99c:	4187d793          	srai	a5,a5,0x18
     9a0:	fff7c793          	not	a5,a5
     9a4:	01879713          	slli	a4,a5,0x18
     9a8:	41875713          	srai	a4,a4,0x18
     9ac:	000037b7          	lui	a5,0x3
     9b0:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
     9b4:	01879793          	slli	a5,a5,0x18
     9b8:	4187d793          	srai	a5,a5,0x18
     9bc:	00f777b3          	and	a5,a4,a5
     9c0:	01879793          	slli	a5,a5,0x18
     9c4:	4187d793          	srai	a5,a5,0x18
     9c8:	0ff7f713          	andi	a4,a5,255
     9cc:	000037b7          	lui	a5,0x3
     9d0:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
     9d4:	000037b7          	lui	a5,0x3
     9d8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     9dc:	0197c783          	lbu	a5,25(a5)
     9e0:	00078713          	mv	a4,a5
     9e4:	fec42783          	lw	a5,-20(s0)
     9e8:	00e787b3          	add	a5,a5,a4
     9ec:	0087c703          	lbu	a4,8(a5)
     9f0:	000037b7          	lui	a5,0x3
     9f4:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     9f8:	01a7c783          	lbu	a5,26(a5)
     9fc:	000036b7          	lui	a3,0x3
     a00:	5f86a683          	lw	a3,1528(a3) # 35f8 <OSTCBCur>
     a04:	0196c683          	lbu	a3,25(a3)
     a08:	00f767b3          	or	a5,a4,a5
     a0c:	0ff7f713          	andi	a4,a5,255
     a10:	fec42783          	lw	a5,-20(s0)
     a14:	00d787b3          	add	a5,a5,a3
     a18:	00e78423          	sb	a4,8(a5)
     a1c:	fec42783          	lw	a5,-20(s0)
     a20:	0057c703          	lbu	a4,5(a5)
     a24:	000037b7          	lui	a5,0x3
     a28:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     a2c:	01b7c783          	lbu	a5,27(a5)
     a30:	00f767b3          	or	a5,a4,a5
     a34:	0ff7f713          	andi	a4,a5,255
     a38:	fec42783          	lw	a5,-20(s0)
     a3c:	00e782a3          	sb	a4,5(a5)
     a40:	00000013          	nop
     a44:	01c12403          	lw	s0,28(sp)
     a48:	02010113          	addi	sp,sp,32
     a4c:	00008067          	ret

00000a50 <_Z9OSSemPostP17EventControlBlock>:
     a50:	fe010113          	addi	sp,sp,-32
     a54:	00112e23          	sw	ra,28(sp)
     a58:	00812c23          	sw	s0,24(sp)
     a5c:	02010413          	addi	s0,sp,32
     a60:	fea42623          	sw	a0,-20(s0)
     a64:	fec42783          	lw	a5,-20(s0)
     a68:	0057c783          	lbu	a5,5(a5)
     a6c:	02078463          	beqz	a5,a94 <_Z9OSSemPostP17EventControlBlock+0x44>
     a70:	00a00613          	li	a2,10
     a74:	00000593          	li	a1,0
     a78:	fec42503          	lw	a0,-20(s0)
     a7c:	00001097          	auipc	ra,0x1
     a80:	568080e7          	jalr	1384(ra) # 1fe4 <_Z12EventTaskRdyP17EventControlBlockPvh>
     a84:	00000097          	auipc	ra,0x0
     a88:	ae0080e7          	jalr	-1312(ra) # 564 <_Z8OS_Schedv>
     a8c:	00000793          	li	a5,0
     a90:	0400006f          	j	ad0 <_Z9OSSemPostP17EventControlBlock+0x80>
     a94:	fec42783          	lw	a5,-20(s0)
     a98:	0067d703          	lhu	a4,6(a5)
     a9c:	000107b7          	lui	a5,0x10
     aa0:	fff78793          	addi	a5,a5,-1 # ffff <__BSS_END__+0xba93>
     aa4:	02f70463          	beq	a4,a5,acc <_Z9OSSemPostP17EventControlBlock+0x7c>
     aa8:	fec42783          	lw	a5,-20(s0)
     aac:	0067d783          	lhu	a5,6(a5)
     ab0:	00178793          	addi	a5,a5,1
     ab4:	01079713          	slli	a4,a5,0x10
     ab8:	01075713          	srli	a4,a4,0x10
     abc:	fec42783          	lw	a5,-20(s0)
     ac0:	00e79323          	sh	a4,6(a5)
     ac4:	00000793          	li	a5,0
     ac8:	0080006f          	j	ad0 <_Z9OSSemPostP17EventControlBlock+0x80>
     acc:	00500793          	li	a5,5
     ad0:	00078513          	mv	a0,a5
     ad4:	01c12083          	lw	ra,28(sp)
     ad8:	01812403          	lw	s0,24(sp)
     adc:	02010113          	addi	sp,sp,32
     ae0:	00008067          	ret

00000ae4 <_Z11OSSemAcceptP17EventControlBlock>:
     ae4:	fd010113          	addi	sp,sp,-48
     ae8:	02112623          	sw	ra,44(sp)
     aec:	02812423          	sw	s0,40(sp)
     af0:	03010413          	addi	s0,sp,48
     af4:	fca42e23          	sw	a0,-36(s0)
     af8:	fdc42783          	lw	a5,-36(s0)
     afc:	0067d783          	lhu	a5,6(a5)
     b00:	fef41723          	sh	a5,-18(s0)
     b04:	fee45783          	lhu	a5,-18(s0)
     b08:	02078263          	beqz	a5,b2c <_Z11OSSemAcceptP17EventControlBlock+0x48>
     b0c:	fdc42783          	lw	a5,-36(s0)
     b10:	0067d783          	lhu	a5,6(a5)
     b14:	fff78793          	addi	a5,a5,-1
     b18:	01079713          	slli	a4,a5,0x10
     b1c:	01075713          	srli	a4,a4,0x10
     b20:	fdc42783          	lw	a5,-36(s0)
     b24:	00e79323          	sh	a4,6(a5)
     b28:	0100006f          	j	b38 <_Z11OSSemAcceptP17EventControlBlock+0x54>
     b2c:	fdc42503          	lw	a0,-36(s0)
     b30:	00000097          	auipc	ra,0x0
     b34:	dac080e7          	jalr	-596(ra) # 8dc <_Z16OS_EventTaskWaitP17EventControlBlock>
     b38:	fee45783          	lhu	a5,-18(s0)
     b3c:	00078513          	mv	a0,a5
     b40:	02c12083          	lw	ra,44(sp)
     b44:	02812403          	lw	s0,40(sp)
     b48:	03010113          	addi	sp,sp,48
     b4c:	00008067          	ret

00000b50 <_Z9OSSemPendP17EventControlBlockPh>:
     b50:	fe010113          	addi	sp,sp,-32
     b54:	00112e23          	sw	ra,28(sp)
     b58:	00812c23          	sw	s0,24(sp)
     b5c:	02010413          	addi	s0,sp,32
     b60:	fea42623          	sw	a0,-20(s0)
     b64:	feb42423          	sw	a1,-24(s0)
     b68:	00008713          	mv	a4,ra
     b6c:	000037b7          	lui	a5,0x3
     b70:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     b74:	02e7a023          	sw	a4,32(a5)
     b78:	fec42783          	lw	a5,-20(s0)
     b7c:	00079a63          	bnez	a5,b90 <_Z9OSSemPendP17EventControlBlockPh+0x40>
     b80:	fe842783          	lw	a5,-24(s0)
     b84:	00300713          	li	a4,3
     b88:	00e78023          	sb	a4,0(a5)
     b8c:	0a00006f          	j	c2c <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     b90:	fec42783          	lw	a5,-20(s0)
     b94:	0047c703          	lbu	a4,4(a5)
     b98:	00800793          	li	a5,8
     b9c:	00f70a63          	beq	a4,a5,bb0 <_Z9OSSemPendP17EventControlBlockPh+0x60>
     ba0:	fe842783          	lw	a5,-24(s0)
     ba4:	00400713          	li	a4,4
     ba8:	00e78023          	sb	a4,0(a5)
     bac:	0800006f          	j	c2c <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     bb0:	fec42783          	lw	a5,-20(s0)
     bb4:	0067d783          	lhu	a5,6(a5)
     bb8:	02078663          	beqz	a5,be4 <_Z9OSSemPendP17EventControlBlockPh+0x94>
     bbc:	fec42783          	lw	a5,-20(s0)
     bc0:	0067d783          	lhu	a5,6(a5)
     bc4:	fff78793          	addi	a5,a5,-1
     bc8:	01079713          	slli	a4,a5,0x10
     bcc:	01075713          	srli	a4,a4,0x10
     bd0:	fec42783          	lw	a5,-20(s0)
     bd4:	00e79323          	sh	a4,6(a5)
     bd8:	fe842783          	lw	a5,-24(s0)
     bdc:	00078023          	sb	zero,0(a5)
     be0:	04c0006f          	j	c2c <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     be4:	000037b7          	lui	a5,0x3
     be8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     bec:	0167c703          	lbu	a4,22(a5)
     bf0:	000037b7          	lui	a5,0x3
     bf4:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     bf8:	00a76713          	ori	a4,a4,10
     bfc:	0ff77713          	andi	a4,a4,255
     c00:	00e78b23          	sb	a4,22(a5)
     c04:	fec42503          	lw	a0,-20(s0)
     c08:	00000097          	auipc	ra,0x0
     c0c:	cd4080e7          	jalr	-812(ra) # 8dc <_Z16OS_EventTaskWaitP17EventControlBlock>
     c10:	00000097          	auipc	ra,0x0
     c14:	954080e7          	jalr	-1708(ra) # 564 <_Z8OS_Schedv>
     c18:	000037b7          	lui	a5,0x3
     c1c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     c20:	0007a623          	sw	zero,12(a5)
     c24:	fe842783          	lw	a5,-24(s0)
     c28:	00078023          	sb	zero,0(a5)
     c2c:	01c12083          	lw	ra,28(sp)
     c30:	01812403          	lw	s0,24(sp)
     c34:	02010113          	addi	sp,sp,32
     c38:	00008067          	ret

00000c3c <_Z12OSMboxCreatePv>:
     c3c:	fd010113          	addi	sp,sp,-48
     c40:	02812623          	sw	s0,44(sp)
     c44:	03010413          	addi	s0,sp,48
     c48:	fca42e23          	sw	a0,-36(s0)
     c4c:	000037b7          	lui	a5,0x3
     c50:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     c54:	fef42623          	sw	a5,-20(s0)
     c58:	000037b7          	lui	a5,0x3
     c5c:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     c60:	00078c63          	beqz	a5,c78 <_Z12OSMboxCreatePv+0x3c>
     c64:	000037b7          	lui	a5,0x3
     c68:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
     c6c:	0007a703          	lw	a4,0(a5)
     c70:	000037b7          	lui	a5,0x3
     c74:	5ee7a623          	sw	a4,1516(a5) # 35ec <OSEventFreeList>
     c78:	fec42783          	lw	a5,-20(s0)
     c7c:	02078663          	beqz	a5,ca8 <_Z12OSMboxCreatePv+0x6c>
     c80:	fec42783          	lw	a5,-20(s0)
     c84:	00900713          	li	a4,9
     c88:	00e78223          	sb	a4,4(a5)
     c8c:	fec42783          	lw	a5,-20(s0)
     c90:	00079323          	sh	zero,6(a5)
     c94:	fec42783          	lw	a5,-20(s0)
     c98:	fdc42703          	lw	a4,-36(s0)
     c9c:	00e7a023          	sw	a4,0(a5)
     ca0:	fec42783          	lw	a5,-20(s0)
     ca4:	000782a3          	sb	zero,5(a5)
     ca8:	fec42783          	lw	a5,-20(s0)
     cac:	00078513          	mv	a0,a5
     cb0:	02c12403          	lw	s0,44(sp)
     cb4:	03010113          	addi	sp,sp,48
     cb8:	00008067          	ret

00000cbc <_Z10OSMboxPendP17EventControlBlockPh>:
     cbc:	fd010113          	addi	sp,sp,-48
     cc0:	02112623          	sw	ra,44(sp)
     cc4:	02812423          	sw	s0,40(sp)
     cc8:	03010413          	addi	s0,sp,48
     ccc:	fca42e23          	sw	a0,-36(s0)
     cd0:	fcb42c23          	sw	a1,-40(s0)
     cd4:	fdc42783          	lw	a5,-36(s0)
     cd8:	00079c63          	bnez	a5,cf0 <_Z10OSMboxPendP17EventControlBlockPh+0x34>
     cdc:	fd842783          	lw	a5,-40(s0)
     ce0:	00300713          	li	a4,3
     ce4:	00e78023          	sb	a4,0(a5)
     ce8:	00000793          	li	a5,0
     cec:	0c80006f          	j	db4 <_Z10OSMboxPendP17EventControlBlockPh+0xf8>
     cf0:	fdc42783          	lw	a5,-36(s0)
     cf4:	0047c703          	lbu	a4,4(a5)
     cf8:	00900793          	li	a5,9
     cfc:	00f70c63          	beq	a4,a5,d14 <_Z10OSMboxPendP17EventControlBlockPh+0x58>
     d00:	fd842783          	lw	a5,-40(s0)
     d04:	00400713          	li	a4,4
     d08:	00e78023          	sb	a4,0(a5)
     d0c:	00000793          	li	a5,0
     d10:	0a40006f          	j	db4 <_Z10OSMboxPendP17EventControlBlockPh+0xf8>
     d14:	fdc42783          	lw	a5,-36(s0)
     d18:	0007a783          	lw	a5,0(a5)
     d1c:	fef42623          	sw	a5,-20(s0)
     d20:	fec42783          	lw	a5,-20(s0)
     d24:	00078e63          	beqz	a5,d40 <_Z10OSMboxPendP17EventControlBlockPh+0x84>
     d28:	fdc42783          	lw	a5,-36(s0)
     d2c:	0007a023          	sw	zero,0(a5)
     d30:	fd842783          	lw	a5,-40(s0)
     d34:	00078023          	sb	zero,0(a5)
     d38:	fec42783          	lw	a5,-20(s0)
     d3c:	0780006f          	j	db4 <_Z10OSMboxPendP17EventControlBlockPh+0xf8>
     d40:	000037b7          	lui	a5,0x3
     d44:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     d48:	0167c703          	lbu	a4,22(a5)
     d4c:	000037b7          	lui	a5,0x3
     d50:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     d54:	01476713          	ori	a4,a4,20
     d58:	0ff77713          	andi	a4,a4,255
     d5c:	00e78b23          	sb	a4,22(a5)
     d60:	fdc42503          	lw	a0,-36(s0)
     d64:	00000097          	auipc	ra,0x0
     d68:	b78080e7          	jalr	-1160(ra) # 8dc <_Z16OS_EventTaskWaitP17EventControlBlock>
     d6c:	fffff097          	auipc	ra,0xfffff
     d70:	7f8080e7          	jalr	2040(ra) # 564 <_Z8OS_Schedv>
     d74:	000037b7          	lui	a5,0x3
     d78:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     d7c:	0107a783          	lw	a5,16(a5)
     d80:	fef42623          	sw	a5,-20(s0)
     d84:	000037b7          	lui	a5,0x3
     d88:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     d8c:	0007a823          	sw	zero,16(a5)
     d90:	000037b7          	lui	a5,0x3
     d94:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     d98:	00078b23          	sb	zero,22(a5)
     d9c:	000037b7          	lui	a5,0x3
     da0:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     da4:	0007a623          	sw	zero,12(a5)
     da8:	fd842783          	lw	a5,-40(s0)
     dac:	00078023          	sb	zero,0(a5)
     db0:	fec42783          	lw	a5,-20(s0)
     db4:	00078513          	mv	a0,a5
     db8:	02c12083          	lw	ra,44(sp)
     dbc:	02812403          	lw	s0,40(sp)
     dc0:	03010113          	addi	sp,sp,48
     dc4:	00008067          	ret

00000dc8 <_Z10OSMboxPostP17EventControlBlockPv>:
     dc8:	fe010113          	addi	sp,sp,-32
     dcc:	00112e23          	sw	ra,28(sp)
     dd0:	00812c23          	sw	s0,24(sp)
     dd4:	02010413          	addi	s0,sp,32
     dd8:	fea42623          	sw	a0,-20(s0)
     ddc:	feb42423          	sw	a1,-24(s0)
     de0:	fec42783          	lw	a5,-20(s0)
     de4:	00079663          	bnez	a5,df0 <_Z10OSMboxPostP17EventControlBlockPv+0x28>
     de8:	00300793          	li	a5,3
     dec:	0800006f          	j	e6c <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     df0:	fe842783          	lw	a5,-24(s0)
     df4:	00079663          	bnez	a5,e00 <_Z10OSMboxPostP17EventControlBlockPv+0x38>
     df8:	00600793          	li	a5,6
     dfc:	0700006f          	j	e6c <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     e00:	fec42783          	lw	a5,-20(s0)
     e04:	0047c703          	lbu	a4,4(a5)
     e08:	00900793          	li	a5,9
     e0c:	00f70663          	beq	a4,a5,e18 <_Z10OSMboxPostP17EventControlBlockPv+0x50>
     e10:	00400793          	li	a5,4
     e14:	0580006f          	j	e6c <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     e18:	fec42783          	lw	a5,-20(s0)
     e1c:	0057c783          	lbu	a5,5(a5)
     e20:	02078463          	beqz	a5,e48 <_Z10OSMboxPostP17EventControlBlockPv+0x80>
     e24:	01400613          	li	a2,20
     e28:	fe842583          	lw	a1,-24(s0)
     e2c:	fec42503          	lw	a0,-20(s0)
     e30:	00001097          	auipc	ra,0x1
     e34:	1b4080e7          	jalr	436(ra) # 1fe4 <_Z12EventTaskRdyP17EventControlBlockPvh>
     e38:	fffff097          	auipc	ra,0xfffff
     e3c:	72c080e7          	jalr	1836(ra) # 564 <_Z8OS_Schedv>
     e40:	00000793          	li	a5,0
     e44:	0280006f          	j	e6c <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     e48:	fec42783          	lw	a5,-20(s0)
     e4c:	0007a783          	lw	a5,0(a5)
     e50:	00078663          	beqz	a5,e5c <_Z10OSMboxPostP17EventControlBlockPv+0x94>
     e54:	00700793          	li	a5,7
     e58:	0140006f          	j	e6c <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     e5c:	fec42783          	lw	a5,-20(s0)
     e60:	fe842703          	lw	a4,-24(s0)
     e64:	00e7a023          	sw	a4,0(a5)
     e68:	00000793          	li	a5,0
     e6c:	00078513          	mv	a0,a5
     e70:	01c12083          	lw	ra,28(sp)
     e74:	01812403          	lw	s0,24(sp)
     e78:	02010113          	addi	sp,sp,32
     e7c:	00008067          	ret

00000e80 <_Z10getMessageP17EventControlBlock>:
     e80:	fe010113          	addi	sp,sp,-32
     e84:	00812e23          	sw	s0,28(sp)
     e88:	02010413          	addi	s0,sp,32
     e8c:	fea42623          	sw	a0,-20(s0)
     e90:	000037b7          	lui	a5,0x3
     e94:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     e98:	0107a783          	lw	a5,16(a5)
     e9c:	00078513          	mv	a0,a5
     ea0:	01c12403          	lw	s0,28(sp)
     ea4:	02010113          	addi	sp,sp,32
     ea8:	00008067          	ret

00000eac <_Z14OSStartHighRdyv>:
     eac:	ff010113          	addi	sp,sp,-16
     eb0:	00812623          	sw	s0,12(sp)
     eb4:	01010413          	addi	s0,sp,16
     eb8:	000037b7          	lui	a5,0x3
     ebc:	00100713          	li	a4,1
     ec0:	60e78023          	sb	a4,1536(a5) # 3600 <OSRunning>
     ec4:	000037b7          	lui	a5,0x3
     ec8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
     ecc:	0007a783          	lw	a5,0(a5)
     ed0:	00078113          	mv	sp,a5
     ed4:	000037b7          	lui	a5,0x3
     ed8:	5e87c783          	lbu	a5,1512(a5) # 35e8 <OSPrioCur>
     edc:	00078513          	mv	a0,a5
     ee0:	00e00893          	li	a7,14
     ee4:	00000073          	ecall
     ee8:	03010113          	addi	sp,sp,48
     eec:	00d00893          	li	a7,13
     ef0:	00000073          	ecall
     ef4:	00000013          	nop
     ef8:	00c12403          	lw	s0,12(sp)
     efc:	01010113          	addi	sp,sp,16
     f00:	00008067          	ret

00000f04 <_Z8OS_Startv>:
     f04:	fe010113          	addi	sp,sp,-32
     f08:	00112e23          	sw	ra,28(sp)
     f0c:	00812c23          	sw	s0,24(sp)
     f10:	02010413          	addi	s0,sp,32
     f14:	000037b7          	lui	a5,0x3
     f18:	6007c783          	lbu	a5,1536(a5) # 3600 <OSRunning>
     f1c:	0c079063          	bnez	a5,fdc <_Z8OS_Startv+0xd8>
     f20:	000037b7          	lui	a5,0x3
     f24:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
     f28:	00078713          	mv	a4,a5
     f2c:	000037b7          	lui	a5,0x3
     f30:	a7878793          	addi	a5,a5,-1416 # 2a78 <_ZL10OSUnMapTbl>
     f34:	00f707b3          	add	a5,a4,a5
     f38:	0007c783          	lbu	a5,0(a5)
     f3c:	fef407a3          	sb	a5,-17(s0)
     f40:	fef44703          	lbu	a4,-17(s0)
     f44:	000037b7          	lui	a5,0x3
     f48:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
     f4c:	00f707b3          	add	a5,a4,a5
     f50:	0007c783          	lbu	a5,0(a5)
     f54:	00078713          	mv	a4,a5
     f58:	000037b7          	lui	a5,0x3
     f5c:	a7878793          	addi	a5,a5,-1416 # 2a78 <_ZL10OSUnMapTbl>
     f60:	00f707b3          	add	a5,a4,a5
     f64:	0007c783          	lbu	a5,0(a5)
     f68:	fef40723          	sb	a5,-18(s0)
     f6c:	fef44783          	lbu	a5,-17(s0)
     f70:	00379793          	slli	a5,a5,0x3
     f74:	0ff7f713          	andi	a4,a5,255
     f78:	fee44783          	lbu	a5,-18(s0)
     f7c:	00f707b3          	add	a5,a4,a5
     f80:	0ff7f713          	andi	a4,a5,255
     f84:	000037b7          	lui	a5,0x3
     f88:	5ee784a3          	sb	a4,1513(a5) # 35e9 <OSPrioHighRdy>
     f8c:	000037b7          	lui	a5,0x3
     f90:	5e97c703          	lbu	a4,1513(a5) # 35e9 <OSPrioHighRdy>
     f94:	000037b7          	lui	a5,0x3
     f98:	5ee78423          	sb	a4,1512(a5) # 35e8 <OSPrioCur>
     f9c:	000037b7          	lui	a5,0x3
     fa0:	5e97c783          	lbu	a5,1513(a5) # 35e9 <OSPrioHighRdy>
     fa4:	00078713          	mv	a4,a5
     fa8:	000047b7          	lui	a5,0x4
     fac:	00271713          	slli	a4,a4,0x2
     fb0:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
     fb4:	00f707b3          	add	a5,a4,a5
     fb8:	0007a703          	lw	a4,0(a5)
     fbc:	000037b7          	lui	a5,0x3
     fc0:	5ee7ae23          	sw	a4,1532(a5) # 35fc <OSTCBHighRdy>
     fc4:	000037b7          	lui	a5,0x3
     fc8:	5fc7a703          	lw	a4,1532(a5) # 35fc <OSTCBHighRdy>
     fcc:	000037b7          	lui	a5,0x3
     fd0:	5ee7ac23          	sw	a4,1528(a5) # 35f8 <OSTCBCur>
     fd4:	00000097          	auipc	ra,0x0
     fd8:	ed8080e7          	jalr	-296(ra) # eac <_Z14OSStartHighRdyv>
     fdc:	00000013          	nop
     fe0:	01c12083          	lw	ra,28(sp)
     fe4:	01812403          	lw	s0,24(sp)
     fe8:	02010113          	addi	sp,sp,32
     fec:	00008067          	ret

00000ff0 <_Z13OSTaskSuspendh>:
     ff0:	fd010113          	addi	sp,sp,-48
     ff4:	02112623          	sw	ra,44(sp)
     ff8:	02812423          	sw	s0,40(sp)
     ffc:	03010413          	addi	s0,sp,48
    1000:	00050793          	mv	a5,a0
    1004:	fcf40fa3          	sb	a5,-33(s0)
    1008:	fdf44703          	lbu	a4,-33(s0)
    100c:	03e00793          	li	a5,62
    1010:	00e7fa63          	bgeu	a5,a4,1024 <_Z13OSTaskSuspendh+0x34>
    1014:	fdf44783          	lbu	a5,-33(s0)
    1018:	00078663          	beqz	a5,1024 <_Z13OSTaskSuspendh+0x34>
    101c:	00200793          	li	a5,2
    1020:	17c0006f          	j	119c <_Z13OSTaskSuspendh+0x1ac>
    1024:	fffff097          	auipc	ra,0xfffff
    1028:	3c8080e7          	jalr	968(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    102c:	fdf44783          	lbu	a5,-33(s0)
    1030:	02079063          	bnez	a5,1050 <_Z13OSTaskSuspendh+0x60>
    1034:	000037b7          	lui	a5,0x3
    1038:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    103c:	0177c783          	lbu	a5,23(a5)
    1040:	fcf40fa3          	sb	a5,-33(s0)
    1044:	00100793          	li	a5,1
    1048:	fef407a3          	sb	a5,-17(s0)
    104c:	0280006f          	j	1074 <_Z13OSTaskSuspendh+0x84>
    1050:	000037b7          	lui	a5,0x3
    1054:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1058:	0177c783          	lbu	a5,23(a5)
    105c:	fdf44703          	lbu	a4,-33(s0)
    1060:	00f71863          	bne	a4,a5,1070 <_Z13OSTaskSuspendh+0x80>
    1064:	00100793          	li	a5,1
    1068:	fef407a3          	sb	a5,-17(s0)
    106c:	0080006f          	j	1074 <_Z13OSTaskSuspendh+0x84>
    1070:	fe0407a3          	sb	zero,-17(s0)
    1074:	fdf44703          	lbu	a4,-33(s0)
    1078:	000047b7          	lui	a5,0x4
    107c:	00271713          	slli	a4,a4,0x2
    1080:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    1084:	00f707b3          	add	a5,a4,a5
    1088:	0007a783          	lw	a5,0(a5)
    108c:	fef42423          	sw	a5,-24(s0)
    1090:	fe842783          	lw	a5,-24(s0)
    1094:	00079a63          	bnez	a5,10a8 <_Z13OSTaskSuspendh+0xb8>
    1098:	fffff097          	auipc	ra,0xfffff
    109c:	370080e7          	jalr	880(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    10a0:	00400793          	li	a5,4
    10a4:	0f80006f          	j	119c <_Z13OSTaskSuspendh+0x1ac>
    10a8:	fe842783          	lw	a5,-24(s0)
    10ac:	0197c783          	lbu	a5,25(a5)
    10b0:	00078713          	mv	a4,a5
    10b4:	000037b7          	lui	a5,0x3
    10b8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    10bc:	00f707b3          	add	a5,a4,a5
    10c0:	0007c783          	lbu	a5,0(a5)
    10c4:	01879713          	slli	a4,a5,0x18
    10c8:	41875713          	srai	a4,a4,0x18
    10cc:	fe842783          	lw	a5,-24(s0)
    10d0:	01a7c783          	lbu	a5,26(a5)
    10d4:	01879793          	slli	a5,a5,0x18
    10d8:	4187d793          	srai	a5,a5,0x18
    10dc:	fff7c793          	not	a5,a5
    10e0:	01879793          	slli	a5,a5,0x18
    10e4:	4187d793          	srai	a5,a5,0x18
    10e8:	00f777b3          	and	a5,a4,a5
    10ec:	01879713          	slli	a4,a5,0x18
    10f0:	41875713          	srai	a4,a4,0x18
    10f4:	fe842783          	lw	a5,-24(s0)
    10f8:	0197c783          	lbu	a5,25(a5)
    10fc:	0ff77693          	andi	a3,a4,255
    1100:	00003737          	lui	a4,0x3
    1104:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
    1108:	00e78733          	add	a4,a5,a4
    110c:	00d70023          	sb	a3,0(a4)
    1110:	00003737          	lui	a4,0x3
    1114:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
    1118:	00e787b3          	add	a5,a5,a4
    111c:	0007c783          	lbu	a5,0(a5)
    1120:	0017b793          	seqz	a5,a5
    1124:	0ff7f793          	andi	a5,a5,255
    1128:	04078463          	beqz	a5,1170 <_Z13OSTaskSuspendh+0x180>
    112c:	fe842783          	lw	a5,-24(s0)
    1130:	01b7c783          	lbu	a5,27(a5)
    1134:	01879793          	slli	a5,a5,0x18
    1138:	4187d793          	srai	a5,a5,0x18
    113c:	fff7c793          	not	a5,a5
    1140:	01879713          	slli	a4,a5,0x18
    1144:	41875713          	srai	a4,a4,0x18
    1148:	000037b7          	lui	a5,0x3
    114c:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    1150:	01879793          	slli	a5,a5,0x18
    1154:	4187d793          	srai	a5,a5,0x18
    1158:	00f777b3          	and	a5,a4,a5
    115c:	01879793          	slli	a5,a5,0x18
    1160:	4187d793          	srai	a5,a5,0x18
    1164:	0ff7f713          	andi	a4,a5,255
    1168:	000037b7          	lui	a5,0x3
    116c:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    1170:	fe842783          	lw	a5,-24(s0)
    1174:	0167c783          	lbu	a5,22(a5)
    1178:	0037e793          	ori	a5,a5,3
    117c:	0ff7f713          	andi	a4,a5,255
    1180:	fe842783          	lw	a5,-24(s0)
    1184:	00e78b23          	sb	a4,22(a5)
    1188:	fffff097          	auipc	ra,0xfffff
    118c:	280080e7          	jalr	640(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    1190:	fffff097          	auipc	ra,0xfffff
    1194:	3d4080e7          	jalr	980(ra) # 564 <_Z8OS_Schedv>
    1198:	00000793          	li	a5,0
    119c:	00078513          	mv	a0,a5
    11a0:	02c12083          	lw	ra,44(sp)
    11a4:	02812403          	lw	s0,40(sp)
    11a8:	03010113          	addi	sp,sp,48
    11ac:	00008067          	ret

000011b0 <_Z9OSQCreatePPvt>:
    11b0:	fd010113          	addi	sp,sp,-48
    11b4:	02812623          	sw	s0,44(sp)
    11b8:	03010413          	addi	s0,sp,48
    11bc:	fca42e23          	sw	a0,-36(s0)
    11c0:	00058793          	mv	a5,a1
    11c4:	fcf41d23          	sh	a5,-38(s0)
    11c8:	000037b7          	lui	a5,0x3
    11cc:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
    11d0:	fef42423          	sw	a5,-24(s0)
    11d4:	000037b7          	lui	a5,0x3
    11d8:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
    11dc:	00078c63          	beqz	a5,11f4 <_Z9OSQCreatePPvt+0x44>
    11e0:	000037b7          	lui	a5,0x3
    11e4:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
    11e8:	0007a703          	lw	a4,0(a5)
    11ec:	000037b7          	lui	a5,0x3
    11f0:	5ee7a623          	sw	a4,1516(a5) # 35ec <OSEventFreeList>
    11f4:	fe842783          	lw	a5,-24(s0)
    11f8:	0c078463          	beqz	a5,12c0 <_Z9OSQCreatePPvt+0x110>
    11fc:	000047b7          	lui	a5,0x4
    1200:	4607a783          	lw	a5,1120(a5) # 4460 <_ZL11OSQFreeList>
    1204:	fef42623          	sw	a5,-20(s0)
    1208:	fec42783          	lw	a5,-20(s0)
    120c:	08078a63          	beqz	a5,12a0 <_Z9OSQCreatePPvt+0xf0>
    1210:	000047b7          	lui	a5,0x4
    1214:	4607a783          	lw	a5,1120(a5) # 4460 <_ZL11OSQFreeList>
    1218:	0007a703          	lw	a4,0(a5)
    121c:	000047b7          	lui	a5,0x4
    1220:	46e7a023          	sw	a4,1120(a5) # 4460 <_ZL11OSQFreeList>
    1224:	fec42783          	lw	a5,-20(s0)
    1228:	fdc42703          	lw	a4,-36(s0)
    122c:	00e7a223          	sw	a4,4(a5)
    1230:	fda45783          	lhu	a5,-38(s0)
    1234:	00279793          	slli	a5,a5,0x2
    1238:	fdc42703          	lw	a4,-36(s0)
    123c:	00f70733          	add	a4,a4,a5
    1240:	fec42783          	lw	a5,-20(s0)
    1244:	00e7a423          	sw	a4,8(a5)
    1248:	fec42783          	lw	a5,-20(s0)
    124c:	fdc42703          	lw	a4,-36(s0)
    1250:	00e7a623          	sw	a4,12(a5)
    1254:	fec42783          	lw	a5,-20(s0)
    1258:	fdc42703          	lw	a4,-36(s0)
    125c:	00e7a823          	sw	a4,16(a5)
    1260:	fec42783          	lw	a5,-20(s0)
    1264:	fda45703          	lhu	a4,-38(s0)
    1268:	00e79a23          	sh	a4,20(a5)
    126c:	fec42783          	lw	a5,-20(s0)
    1270:	00079b23          	sh	zero,22(a5)
    1274:	fe842783          	lw	a5,-24(s0)
    1278:	00a00713          	li	a4,10
    127c:	00e78223          	sb	a4,4(a5)
    1280:	fe842783          	lw	a5,-24(s0)
    1284:	00079323          	sh	zero,6(a5)
    1288:	fe842783          	lw	a5,-24(s0)
    128c:	fec42703          	lw	a4,-20(s0)
    1290:	00e7a023          	sw	a4,0(a5)
    1294:	fe842783          	lw	a5,-24(s0)
    1298:	000782a3          	sb	zero,5(a5)
    129c:	0240006f          	j	12c0 <_Z9OSQCreatePPvt+0x110>
    12a0:	fe842783          	lw	a5,-24(s0)
    12a4:	00003737          	lui	a4,0x3
    12a8:	5ec72703          	lw	a4,1516(a4) # 35ec <OSEventFreeList>
    12ac:	00e7a023          	sw	a4,0(a5)
    12b0:	fe842703          	lw	a4,-24(s0)
    12b4:	000037b7          	lui	a5,0x3
    12b8:	5ee7a623          	sw	a4,1516(a5) # 35ec <OSEventFreeList>
    12bc:	fe042423          	sw	zero,-24(s0)
    12c0:	fe842783          	lw	a5,-24(s0)
    12c4:	00078513          	mv	a0,a5
    12c8:	02c12403          	lw	s0,44(sp)
    12cc:	03010113          	addi	sp,sp,48
    12d0:	00008067          	ret

000012d4 <_Z7OSQPendP17EventControlBlockPh>:
    12d4:	fd010113          	addi	sp,sp,-48
    12d8:	02112623          	sw	ra,44(sp)
    12dc:	02812423          	sw	s0,40(sp)
    12e0:	03010413          	addi	s0,sp,48
    12e4:	fca42e23          	sw	a0,-36(s0)
    12e8:	fcb42c23          	sw	a1,-40(s0)
    12ec:	fdc42783          	lw	a5,-36(s0)
    12f0:	00079c63          	bnez	a5,1308 <_Z7OSQPendP17EventControlBlockPh+0x34>
    12f4:	fd842783          	lw	a5,-40(s0)
    12f8:	00300713          	li	a4,3
    12fc:	00e78023          	sb	a4,0(a5)
    1300:	00000793          	li	a5,0
    1304:	1300006f          	j	1434 <_Z7OSQPendP17EventControlBlockPh+0x160>
    1308:	fdc42783          	lw	a5,-36(s0)
    130c:	0047c703          	lbu	a4,4(a5)
    1310:	00a00793          	li	a5,10
    1314:	00f70c63          	beq	a4,a5,132c <_Z7OSQPendP17EventControlBlockPh+0x58>
    1318:	fd842783          	lw	a5,-40(s0)
    131c:	00400713          	li	a4,4
    1320:	00e78023          	sb	a4,0(a5)
    1324:	00000793          	li	a5,0
    1328:	10c0006f          	j	1434 <_Z7OSQPendP17EventControlBlockPh+0x160>
    132c:	fdc42783          	lw	a5,-36(s0)
    1330:	0007a783          	lw	a5,0(a5)
    1334:	fef42623          	sw	a5,-20(s0)
    1338:	fec42783          	lw	a5,-20(s0)
    133c:	0167d783          	lhu	a5,22(a5)
    1340:	06078863          	beqz	a5,13b0 <_Z7OSQPendP17EventControlBlockPh+0xdc>
    1344:	fec42783          	lw	a5,-20(s0)
    1348:	0107a783          	lw	a5,16(a5)
    134c:	00478693          	addi	a3,a5,4
    1350:	fec42703          	lw	a4,-20(s0)
    1354:	00d72823          	sw	a3,16(a4)
    1358:	0007a783          	lw	a5,0(a5)
    135c:	fef42423          	sw	a5,-24(s0)
    1360:	fec42783          	lw	a5,-20(s0)
    1364:	0167d783          	lhu	a5,22(a5)
    1368:	fff78793          	addi	a5,a5,-1
    136c:	01079713          	slli	a4,a5,0x10
    1370:	01075713          	srli	a4,a4,0x10
    1374:	fec42783          	lw	a5,-20(s0)
    1378:	00e79b23          	sh	a4,22(a5)
    137c:	fec42783          	lw	a5,-20(s0)
    1380:	0107a703          	lw	a4,16(a5)
    1384:	fec42783          	lw	a5,-20(s0)
    1388:	0087a783          	lw	a5,8(a5)
    138c:	00f71a63          	bne	a4,a5,13a0 <_Z7OSQPendP17EventControlBlockPh+0xcc>
    1390:	fec42783          	lw	a5,-20(s0)
    1394:	0047a703          	lw	a4,4(a5)
    1398:	fec42783          	lw	a5,-20(s0)
    139c:	00e7a823          	sw	a4,16(a5)
    13a0:	fd842783          	lw	a5,-40(s0)
    13a4:	00078023          	sb	zero,0(a5)
    13a8:	fe842783          	lw	a5,-24(s0)
    13ac:	0880006f          	j	1434 <_Z7OSQPendP17EventControlBlockPh+0x160>
    13b0:	000037b7          	lui	a5,0x3
    13b4:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    13b8:	0167c703          	lbu	a4,22(a5)
    13bc:	000037b7          	lui	a5,0x3
    13c0:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    13c4:	01e76713          	ori	a4,a4,30
    13c8:	0ff77713          	andi	a4,a4,255
    13cc:	00e78b23          	sb	a4,22(a5)
    13d0:	fdc42503          	lw	a0,-36(s0)
    13d4:	fffff097          	auipc	ra,0xfffff
    13d8:	508080e7          	jalr	1288(ra) # 8dc <_Z16OS_EventTaskWaitP17EventControlBlock>
    13dc:	fffff097          	auipc	ra,0xfffff
    13e0:	188080e7          	jalr	392(ra) # 564 <_Z8OS_Schedv>
    13e4:	000037b7          	lui	a5,0x3
    13e8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    13ec:	0107a783          	lw	a5,16(a5)
    13f0:	fef42423          	sw	a5,-24(s0)
    13f4:	fe842783          	lw	a5,-24(s0)
    13f8:	02078c63          	beqz	a5,1430 <_Z7OSQPendP17EventControlBlockPh+0x15c>
    13fc:	000037b7          	lui	a5,0x3
    1400:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1404:	0007a823          	sw	zero,16(a5)
    1408:	000037b7          	lui	a5,0x3
    140c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1410:	00078b23          	sb	zero,22(a5)
    1414:	000037b7          	lui	a5,0x3
    1418:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    141c:	0007a623          	sw	zero,12(a5)
    1420:	fd842783          	lw	a5,-40(s0)
    1424:	00078023          	sb	zero,0(a5)
    1428:	fe842783          	lw	a5,-24(s0)
    142c:	0080006f          	j	1434 <_Z7OSQPendP17EventControlBlockPh+0x160>
    1430:	00000793          	li	a5,0
    1434:	00078513          	mv	a0,a5
    1438:	02c12083          	lw	ra,44(sp)
    143c:	02812403          	lw	s0,40(sp)
    1440:	03010113          	addi	sp,sp,48
    1444:	00008067          	ret

00001448 <_Z7OSQPostP17EventControlBlockPv>:
    1448:	fd010113          	addi	sp,sp,-48
    144c:	02112623          	sw	ra,44(sp)
    1450:	02812423          	sw	s0,40(sp)
    1454:	03010413          	addi	s0,sp,48
    1458:	fca42e23          	sw	a0,-36(s0)
    145c:	fcb42c23          	sw	a1,-40(s0)
    1460:	fdc42783          	lw	a5,-36(s0)
    1464:	00079663          	bnez	a5,1470 <_Z7OSQPostP17EventControlBlockPv+0x28>
    1468:	00300793          	li	a5,3
    146c:	0e40006f          	j	1550 <_Z7OSQPostP17EventControlBlockPv+0x108>
    1470:	fd842783          	lw	a5,-40(s0)
    1474:	00079663          	bnez	a5,1480 <_Z7OSQPostP17EventControlBlockPv+0x38>
    1478:	00600793          	li	a5,6
    147c:	0d40006f          	j	1550 <_Z7OSQPostP17EventControlBlockPv+0x108>
    1480:	fdc42783          	lw	a5,-36(s0)
    1484:	0047c703          	lbu	a4,4(a5)
    1488:	00a00793          	li	a5,10
    148c:	00f70663          	beq	a4,a5,1498 <_Z7OSQPostP17EventControlBlockPv+0x50>
    1490:	00400793          	li	a5,4
    1494:	0bc0006f          	j	1550 <_Z7OSQPostP17EventControlBlockPv+0x108>
    1498:	fdc42783          	lw	a5,-36(s0)
    149c:	0057c783          	lbu	a5,5(a5)
    14a0:	02078463          	beqz	a5,14c8 <_Z7OSQPostP17EventControlBlockPv+0x80>
    14a4:	01e00613          	li	a2,30
    14a8:	fd842583          	lw	a1,-40(s0)
    14ac:	fdc42503          	lw	a0,-36(s0)
    14b0:	00001097          	auipc	ra,0x1
    14b4:	b34080e7          	jalr	-1228(ra) # 1fe4 <_Z12EventTaskRdyP17EventControlBlockPvh>
    14b8:	fffff097          	auipc	ra,0xfffff
    14bc:	0ac080e7          	jalr	172(ra) # 564 <_Z8OS_Schedv>
    14c0:	00000793          	li	a5,0
    14c4:	08c0006f          	j	1550 <_Z7OSQPostP17EventControlBlockPv+0x108>
    14c8:	fdc42783          	lw	a5,-36(s0)
    14cc:	0007a783          	lw	a5,0(a5)
    14d0:	fef42623          	sw	a5,-20(s0)
    14d4:	fec42783          	lw	a5,-20(s0)
    14d8:	0167d703          	lhu	a4,22(a5)
    14dc:	fec42783          	lw	a5,-20(s0)
    14e0:	0147d783          	lhu	a5,20(a5)
    14e4:	00f76663          	bltu	a4,a5,14f0 <_Z7OSQPostP17EventControlBlockPv+0xa8>
    14e8:	00800793          	li	a5,8
    14ec:	0640006f          	j	1550 <_Z7OSQPostP17EventControlBlockPv+0x108>
    14f0:	fec42783          	lw	a5,-20(s0)
    14f4:	00c7a783          	lw	a5,12(a5)
    14f8:	00478693          	addi	a3,a5,4
    14fc:	fec42703          	lw	a4,-20(s0)
    1500:	00d72623          	sw	a3,12(a4)
    1504:	fd842703          	lw	a4,-40(s0)
    1508:	00e7a023          	sw	a4,0(a5)
    150c:	fec42783          	lw	a5,-20(s0)
    1510:	0167d783          	lhu	a5,22(a5)
    1514:	00178793          	addi	a5,a5,1
    1518:	01079713          	slli	a4,a5,0x10
    151c:	01075713          	srli	a4,a4,0x10
    1520:	fec42783          	lw	a5,-20(s0)
    1524:	00e79b23          	sh	a4,22(a5)
    1528:	fec42783          	lw	a5,-20(s0)
    152c:	00c7a703          	lw	a4,12(a5)
    1530:	fec42783          	lw	a5,-20(s0)
    1534:	0087a783          	lw	a5,8(a5)
    1538:	00f71a63          	bne	a4,a5,154c <_Z7OSQPostP17EventControlBlockPv+0x104>
    153c:	fec42783          	lw	a5,-20(s0)
    1540:	0047a703          	lw	a4,4(a5)
    1544:	fec42783          	lw	a5,-20(s0)
    1548:	00e7a623          	sw	a4,12(a5)
    154c:	00000793          	li	a5,0
    1550:	00078513          	mv	a0,a5
    1554:	02c12083          	lw	ra,44(sp)
    1558:	02812403          	lw	s0,40(sp)
    155c:	03010113          	addi	sp,sp,48
    1560:	00008067          	ret

00001564 <_Z13OSMutexCreatehPh>:
    1564:	fd010113          	addi	sp,sp,-48
    1568:	02812623          	sw	s0,44(sp)
    156c:	03010413          	addi	s0,sp,48
    1570:	00050793          	mv	a5,a0
    1574:	fcb42c23          	sw	a1,-40(s0)
    1578:	fcf40fa3          	sb	a5,-33(s0)
    157c:	fdf44703          	lbu	a4,-33(s0)
    1580:	03e00793          	li	a5,62
    1584:	00e7fc63          	bgeu	a5,a4,159c <_Z13OSMutexCreatehPh+0x38>
    1588:	fd842783          	lw	a5,-40(s0)
    158c:	00200713          	li	a4,2
    1590:	00e78023          	sb	a4,0(a5)
    1594:	00000793          	li	a5,0
    1598:	0f80006f          	j	1690 <_Z13OSMutexCreatehPh+0x12c>
    159c:	fdf44703          	lbu	a4,-33(s0)
    15a0:	000047b7          	lui	a5,0x4
    15a4:	00271713          	slli	a4,a4,0x2
    15a8:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    15ac:	00f707b3          	add	a5,a4,a5
    15b0:	0007a783          	lw	a5,0(a5)
    15b4:	00078c63          	beqz	a5,15cc <_Z13OSMutexCreatehPh+0x68>
    15b8:	fd842783          	lw	a5,-40(s0)
    15bc:	00500713          	li	a4,5
    15c0:	00e78023          	sb	a4,0(a5)
    15c4:	00000793          	li	a5,0
    15c8:	0c80006f          	j	1690 <_Z13OSMutexCreatehPh+0x12c>
    15cc:	fdf44703          	lbu	a4,-33(s0)
    15d0:	000047b7          	lui	a5,0x4
    15d4:	00271713          	slli	a4,a4,0x2
    15d8:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    15dc:	00f707b3          	add	a5,a4,a5
    15e0:	00100713          	li	a4,1
    15e4:	00e7a023          	sw	a4,0(a5)
    15e8:	000037b7          	lui	a5,0x3
    15ec:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
    15f0:	fef42623          	sw	a5,-20(s0)
    15f4:	fec42783          	lw	a5,-20(s0)
    15f8:	02079863          	bnez	a5,1628 <_Z13OSMutexCreatehPh+0xc4>
    15fc:	fdf44703          	lbu	a4,-33(s0)
    1600:	000047b7          	lui	a5,0x4
    1604:	00271713          	slli	a4,a4,0x2
    1608:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    160c:	00f707b3          	add	a5,a4,a5
    1610:	0007a023          	sw	zero,0(a5)
    1614:	fd842783          	lw	a5,-40(s0)
    1618:	00300713          	li	a4,3
    161c:	00e78023          	sb	a4,0(a5)
    1620:	fec42783          	lw	a5,-20(s0)
    1624:	06c0006f          	j	1690 <_Z13OSMutexCreatehPh+0x12c>
    1628:	000037b7          	lui	a5,0x3
    162c:	5ec7a783          	lw	a5,1516(a5) # 35ec <OSEventFreeList>
    1630:	0007a703          	lw	a4,0(a5)
    1634:	000037b7          	lui	a5,0x3
    1638:	5ee7a623          	sw	a4,1516(a5) # 35ec <OSEventFreeList>
    163c:	fec42783          	lw	a5,-20(s0)
    1640:	00b00713          	li	a4,11
    1644:	00e78223          	sb	a4,4(a5)
    1648:	fdf44783          	lbu	a5,-33(s0)
    164c:	00879793          	slli	a5,a5,0x8
    1650:	01079793          	slli	a5,a5,0x10
    1654:	4107d793          	srai	a5,a5,0x10
    1658:	0ff7e793          	ori	a5,a5,255
    165c:	01079713          	slli	a4,a5,0x10
    1660:	41075713          	srai	a4,a4,0x10
    1664:	fec42783          	lw	a5,-20(s0)
    1668:	01071713          	slli	a4,a4,0x10
    166c:	01075713          	srli	a4,a4,0x10
    1670:	00e79323          	sh	a4,6(a5)
    1674:	fec42783          	lw	a5,-20(s0)
    1678:	0007a023          	sw	zero,0(a5)
    167c:	fec42783          	lw	a5,-20(s0)
    1680:	000782a3          	sb	zero,5(a5)
    1684:	fd842783          	lw	a5,-40(s0)
    1688:	00078023          	sb	zero,0(a5)
    168c:	fec42783          	lw	a5,-20(s0)
    1690:	00078513          	mv	a0,a5
    1694:	02c12403          	lw	s0,44(sp)
    1698:	03010113          	addi	sp,sp,48
    169c:	00008067          	ret

000016a0 <_Z11OSMutexPendP17EventControlBlockPh>:
    16a0:	fd010113          	addi	sp,sp,-48
    16a4:	02112623          	sw	ra,44(sp)
    16a8:	02812423          	sw	s0,40(sp)
    16ac:	03010413          	addi	s0,sp,48
    16b0:	fca42e23          	sw	a0,-36(s0)
    16b4:	fcb42c23          	sw	a1,-40(s0)
    16b8:	fdc42783          	lw	a5,-36(s0)
    16bc:	00079a63          	bnez	a5,16d0 <_Z11OSMutexPendP17EventControlBlockPh+0x30>
    16c0:	fd842783          	lw	a5,-40(s0)
    16c4:	00300713          	li	a4,3
    16c8:	00e78023          	sb	a4,0(a5)
    16cc:	34c0006f          	j	1a18 <_Z11OSMutexPendP17EventControlBlockPh+0x378>
    16d0:	fdc42783          	lw	a5,-36(s0)
    16d4:	0047c703          	lbu	a4,4(a5)
    16d8:	00b00793          	li	a5,11
    16dc:	00f70a63          	beq	a4,a5,16f0 <_Z11OSMutexPendP17EventControlBlockPh+0x50>
    16e0:	fd842783          	lw	a5,-40(s0)
    16e4:	00400713          	li	a4,4
    16e8:	00e78023          	sb	a4,0(a5)
    16ec:	32c0006f          	j	1a18 <_Z11OSMutexPendP17EventControlBlockPh+0x378>
    16f0:	fdc42783          	lw	a5,-36(s0)
    16f4:	0067d783          	lhu	a5,6(a5)
    16f8:	0ff7f713          	andi	a4,a5,255
    16fc:	0ff00793          	li	a5,255
    1700:	06f71663          	bne	a4,a5,176c <_Z11OSMutexPendP17EventControlBlockPh+0xcc>
    1704:	fdc42783          	lw	a5,-36(s0)
    1708:	0067d783          	lhu	a5,6(a5)
    170c:	f007f793          	andi	a5,a5,-256
    1710:	01079713          	slli	a4,a5,0x10
    1714:	01075713          	srli	a4,a4,0x10
    1718:	fdc42783          	lw	a5,-36(s0)
    171c:	00e79323          	sh	a4,6(a5)
    1720:	fdc42783          	lw	a5,-36(s0)
    1724:	0067d703          	lhu	a4,6(a5)
    1728:	000037b7          	lui	a5,0x3
    172c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1730:	0177c783          	lbu	a5,23(a5)
    1734:	01079793          	slli	a5,a5,0x10
    1738:	0107d793          	srli	a5,a5,0x10
    173c:	00f767b3          	or	a5,a4,a5
    1740:	01079713          	slli	a4,a5,0x10
    1744:	01075713          	srli	a4,a4,0x10
    1748:	fdc42783          	lw	a5,-36(s0)
    174c:	00e79323          	sh	a4,6(a5)
    1750:	000037b7          	lui	a5,0x3
    1754:	5f87a703          	lw	a4,1528(a5) # 35f8 <OSTCBCur>
    1758:	fdc42783          	lw	a5,-36(s0)
    175c:	00e7a023          	sw	a4,0(a5)
    1760:	fd842783          	lw	a5,-40(s0)
    1764:	00078023          	sb	zero,0(a5)
    1768:	2b00006f          	j	1a18 <_Z11OSMutexPendP17EventControlBlockPh+0x378>
    176c:	fdc42783          	lw	a5,-36(s0)
    1770:	0067d783          	lhu	a5,6(a5)
    1774:	4087d793          	srai	a5,a5,0x8
    1778:	fef40723          	sb	a5,-18(s0)
    177c:	fdc42783          	lw	a5,-36(s0)
    1780:	0067d783          	lhu	a5,6(a5)
    1784:	fef406a3          	sb	a5,-19(s0)
    1788:	fdc42783          	lw	a5,-36(s0)
    178c:	0007a783          	lw	a5,0(a5)
    1790:	fef42423          	sw	a5,-24(s0)
    1794:	fe842783          	lw	a5,-24(s0)
    1798:	0177c783          	lbu	a5,23(a5)
    179c:	fee44703          	lbu	a4,-18(s0)
    17a0:	22f70863          	beq	a4,a5,19d0 <_Z11OSMutexPendP17EventControlBlockPh+0x330>
    17a4:	000037b7          	lui	a5,0x3
    17a8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    17ac:	0177c783          	lbu	a5,23(a5)
    17b0:	fed44703          	lbu	a4,-19(s0)
    17b4:	20e7fe63          	bgeu	a5,a4,19d0 <_Z11OSMutexPendP17EventControlBlockPh+0x330>
    17b8:	fe842783          	lw	a5,-24(s0)
    17bc:	0197c783          	lbu	a5,25(a5)
    17c0:	00078713          	mv	a4,a5
    17c4:	000037b7          	lui	a5,0x3
    17c8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    17cc:	00f707b3          	add	a5,a4,a5
    17d0:	0007c703          	lbu	a4,0(a5)
    17d4:	fe842783          	lw	a5,-24(s0)
    17d8:	01a7c783          	lbu	a5,26(a5)
    17dc:	00f777b3          	and	a5,a4,a5
    17e0:	0ff7f793          	andi	a5,a5,255
    17e4:	0c078c63          	beqz	a5,18bc <_Z11OSMutexPendP17EventControlBlockPh+0x21c>
    17e8:	fe842783          	lw	a5,-24(s0)
    17ec:	01b7c783          	lbu	a5,27(a5)
    17f0:	00078713          	mv	a4,a5
    17f4:	000037b7          	lui	a5,0x3
    17f8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    17fc:	00f707b3          	add	a5,a4,a5
    1800:	0007c783          	lbu	a5,0(a5)
    1804:	01879713          	slli	a4,a5,0x18
    1808:	41875713          	srai	a4,a4,0x18
    180c:	fe842783          	lw	a5,-24(s0)
    1810:	01a7c783          	lbu	a5,26(a5)
    1814:	01879793          	slli	a5,a5,0x18
    1818:	4187d793          	srai	a5,a5,0x18
    181c:	fff7c793          	not	a5,a5
    1820:	01879793          	slli	a5,a5,0x18
    1824:	4187d793          	srai	a5,a5,0x18
    1828:	00f777b3          	and	a5,a4,a5
    182c:	01879713          	slli	a4,a5,0x18
    1830:	41875713          	srai	a4,a4,0x18
    1834:	fe842783          	lw	a5,-24(s0)
    1838:	01b7c783          	lbu	a5,27(a5)
    183c:	0ff77693          	andi	a3,a4,255
    1840:	00003737          	lui	a4,0x3
    1844:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
    1848:	00e78733          	add	a4,a5,a4
    184c:	00d70023          	sb	a3,0(a4)
    1850:	00003737          	lui	a4,0x3
    1854:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
    1858:	00e787b3          	add	a5,a5,a4
    185c:	0007c783          	lbu	a5,0(a5)
    1860:	0017b793          	seqz	a5,a5
    1864:	0ff7f793          	andi	a5,a5,255
    1868:	04078463          	beqz	a5,18b0 <_Z11OSMutexPendP17EventControlBlockPh+0x210>
    186c:	fe842783          	lw	a5,-24(s0)
    1870:	01b7c783          	lbu	a5,27(a5)
    1874:	01879793          	slli	a5,a5,0x18
    1878:	4187d793          	srai	a5,a5,0x18
    187c:	fff7c793          	not	a5,a5
    1880:	01879713          	slli	a4,a5,0x18
    1884:	41875713          	srai	a4,a4,0x18
    1888:	000037b7          	lui	a5,0x3
    188c:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    1890:	01879793          	slli	a5,a5,0x18
    1894:	4187d793          	srai	a5,a5,0x18
    1898:	00f777b3          	and	a5,a4,a5
    189c:	01879793          	slli	a5,a5,0x18
    18a0:	4187d793          	srai	a5,a5,0x18
    18a4:	0ff7f713          	andi	a4,a5,255
    18a8:	000037b7          	lui	a5,0x3
    18ac:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    18b0:	00100793          	li	a5,1
    18b4:	fef407a3          	sb	a5,-17(s0)
    18b8:	0080006f          	j	18c0 <_Z11OSMutexPendP17EventControlBlockPh+0x220>
    18bc:	fe0407a3          	sb	zero,-17(s0)
    18c0:	fe842783          	lw	a5,-24(s0)
    18c4:	fee44703          	lbu	a4,-18(s0)
    18c8:	00e78ba3          	sb	a4,23(a5)
    18cc:	fe842783          	lw	a5,-24(s0)
    18d0:	0177c783          	lbu	a5,23(a5)
    18d4:	4037d793          	srai	a5,a5,0x3
    18d8:	0ff7f713          	andi	a4,a5,255
    18dc:	fe842783          	lw	a5,-24(s0)
    18e0:	00e78ca3          	sb	a4,25(a5)
    18e4:	fe842783          	lw	a5,-24(s0)
    18e8:	0197c783          	lbu	a5,25(a5)
    18ec:	00078713          	mv	a4,a5
    18f0:	000037b7          	lui	a5,0x3
    18f4:	55078793          	addi	a5,a5,1360 # 3550 <_ZL8OSMapTbl>
    18f8:	00f707b3          	add	a5,a4,a5
    18fc:	0007c703          	lbu	a4,0(a5)
    1900:	fe842783          	lw	a5,-24(s0)
    1904:	00e78da3          	sb	a4,27(a5)
    1908:	fe842783          	lw	a5,-24(s0)
    190c:	0177c783          	lbu	a5,23(a5)
    1910:	0077f793          	andi	a5,a5,7
    1914:	0ff7f713          	andi	a4,a5,255
    1918:	fe842783          	lw	a5,-24(s0)
    191c:	00e78c23          	sb	a4,24(a5)
    1920:	fe842783          	lw	a5,-24(s0)
    1924:	0187c783          	lbu	a5,24(a5)
    1928:	00078713          	mv	a4,a5
    192c:	000037b7          	lui	a5,0x3
    1930:	55078793          	addi	a5,a5,1360 # 3550 <_ZL8OSMapTbl>
    1934:	00f707b3          	add	a5,a4,a5
    1938:	0007c703          	lbu	a4,0(a5)
    193c:	fe842783          	lw	a5,-24(s0)
    1940:	00e78d23          	sb	a4,26(a5)
    1944:	fef44703          	lbu	a4,-17(s0)
    1948:	00100793          	li	a5,1
    194c:	06f71463          	bne	a4,a5,19b4 <_Z11OSMutexPendP17EventControlBlockPh+0x314>
    1950:	fe842783          	lw	a5,-24(s0)
    1954:	01b7c703          	lbu	a4,27(a5)
    1958:	000037b7          	lui	a5,0x3
    195c:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    1960:	00f767b3          	or	a5,a4,a5
    1964:	0ff7f713          	andi	a4,a5,255
    1968:	000037b7          	lui	a5,0x3
    196c:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    1970:	fe842783          	lw	a5,-24(s0)
    1974:	0197c783          	lbu	a5,25(a5)
    1978:	00078713          	mv	a4,a5
    197c:	000037b7          	lui	a5,0x3
    1980:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    1984:	00f707b3          	add	a5,a4,a5
    1988:	0007c703          	lbu	a4,0(a5)
    198c:	fe842783          	lw	a5,-24(s0)
    1990:	01a7c783          	lbu	a5,26(a5)
    1994:	fe842683          	lw	a3,-24(s0)
    1998:	0196c683          	lbu	a3,25(a3)
    199c:	00f767b3          	or	a5,a4,a5
    19a0:	0ff7f713          	andi	a4,a5,255
    19a4:	000037b7          	lui	a5,0x3
    19a8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    19ac:	00f687b3          	add	a5,a3,a5
    19b0:	00e78023          	sb	a4,0(a5)
    19b4:	fee44703          	lbu	a4,-18(s0)
    19b8:	000047b7          	lui	a5,0x4
    19bc:	00271713          	slli	a4,a4,0x2
    19c0:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    19c4:	00f707b3          	add	a5,a4,a5
    19c8:	fe842703          	lw	a4,-24(s0)
    19cc:	00e7a023          	sw	a4,0(a5)
    19d0:	000037b7          	lui	a5,0x3
    19d4:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    19d8:	0167c703          	lbu	a4,22(a5)
    19dc:	000037b7          	lui	a5,0x3
    19e0:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    19e4:	02876713          	ori	a4,a4,40
    19e8:	0ff77713          	andi	a4,a4,255
    19ec:	00e78b23          	sb	a4,22(a5)
    19f0:	fdc42503          	lw	a0,-36(s0)
    19f4:	fffff097          	auipc	ra,0xfffff
    19f8:	ee8080e7          	jalr	-280(ra) # 8dc <_Z16OS_EventTaskWaitP17EventControlBlock>
    19fc:	fffff097          	auipc	ra,0xfffff
    1a00:	b68080e7          	jalr	-1176(ra) # 564 <_Z8OS_Schedv>
    1a04:	000037b7          	lui	a5,0x3
    1a08:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1a0c:	0007a623          	sw	zero,12(a5)
    1a10:	fd842783          	lw	a5,-40(s0)
    1a14:	00078023          	sb	zero,0(a5)
    1a18:	02c12083          	lw	ra,44(sp)
    1a1c:	02812403          	lw	s0,40(sp)
    1a20:	03010113          	addi	sp,sp,48
    1a24:	00008067          	ret

00001a28 <_Z11OSMutexPostP17EventControlBlock>:
    1a28:	fd010113          	addi	sp,sp,-48
    1a2c:	02112623          	sw	ra,44(sp)
    1a30:	02812423          	sw	s0,40(sp)
    1a34:	03010413          	addi	s0,sp,48
    1a38:	fca42e23          	sw	a0,-36(s0)
    1a3c:	fdc42783          	lw	a5,-36(s0)
    1a40:	00079663          	bnez	a5,1a4c <_Z11OSMutexPostP17EventControlBlock+0x24>
    1a44:	00300793          	li	a5,3
    1a48:	3600006f          	j	1da8 <_Z11OSMutexPostP17EventControlBlock+0x380>
    1a4c:	fdc42783          	lw	a5,-36(s0)
    1a50:	0067d783          	lhu	a5,6(a5)
    1a54:	4087d793          	srai	a5,a5,0x8
    1a58:	fef407a3          	sb	a5,-17(s0)
    1a5c:	fdc42783          	lw	a5,-36(s0)
    1a60:	0067d783          	lhu	a5,6(a5)
    1a64:	fef40723          	sb	a5,-18(s0)
    1a68:	fdc42783          	lw	a5,-36(s0)
    1a6c:	0047c703          	lbu	a4,4(a5)
    1a70:	00b00793          	li	a5,11
    1a74:	00f70663          	beq	a4,a5,1a80 <_Z11OSMutexPostP17EventControlBlock+0x58>
    1a78:	00400793          	li	a5,4
    1a7c:	32c0006f          	j	1da8 <_Z11OSMutexPostP17EventControlBlock+0x380>
    1a80:	000037b7          	lui	a5,0x3
    1a84:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1a88:	0177c783          	lbu	a5,23(a5)
    1a8c:	fef44703          	lbu	a4,-17(s0)
    1a90:	00f71c63          	bne	a4,a5,1aa8 <_Z11OSMutexPostP17EventControlBlock+0x80>
    1a94:	000037b7          	lui	a5,0x3
    1a98:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1a9c:	0177c783          	lbu	a5,23(a5)
    1aa0:	fee44703          	lbu	a4,-18(s0)
    1aa4:	00f70663          	beq	a4,a5,1ab0 <_Z11OSMutexPostP17EventControlBlock+0x88>
    1aa8:	00900793          	li	a5,9
    1aac:	2fc0006f          	j	1da8 <_Z11OSMutexPostP17EventControlBlock+0x380>
    1ab0:	000037b7          	lui	a5,0x3
    1ab4:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1ab8:	0177c783          	lbu	a5,23(a5)
    1abc:	fef44703          	lbu	a4,-17(s0)
    1ac0:	20f71463          	bne	a4,a5,1cc8 <_Z11OSMutexPostP17EventControlBlock+0x2a0>
    1ac4:	000037b7          	lui	a5,0x3
    1ac8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1acc:	0197c783          	lbu	a5,25(a5)
    1ad0:	00078713          	mv	a4,a5
    1ad4:	000037b7          	lui	a5,0x3
    1ad8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    1adc:	00f707b3          	add	a5,a4,a5
    1ae0:	0007c783          	lbu	a5,0(a5)
    1ae4:	01879713          	slli	a4,a5,0x18
    1ae8:	41875713          	srai	a4,a4,0x18
    1aec:	000037b7          	lui	a5,0x3
    1af0:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1af4:	01a7c783          	lbu	a5,26(a5)
    1af8:	01879793          	slli	a5,a5,0x18
    1afc:	4187d793          	srai	a5,a5,0x18
    1b00:	fff7c793          	not	a5,a5
    1b04:	01879793          	slli	a5,a5,0x18
    1b08:	4187d793          	srai	a5,a5,0x18
    1b0c:	00f777b3          	and	a5,a4,a5
    1b10:	01879713          	slli	a4,a5,0x18
    1b14:	41875713          	srai	a4,a4,0x18
    1b18:	000037b7          	lui	a5,0x3
    1b1c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1b20:	0197c783          	lbu	a5,25(a5)
    1b24:	0ff77693          	andi	a3,a4,255
    1b28:	00003737          	lui	a4,0x3
    1b2c:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
    1b30:	00e78733          	add	a4,a5,a4
    1b34:	00d70023          	sb	a3,0(a4)
    1b38:	00003737          	lui	a4,0x3
    1b3c:	60470713          	addi	a4,a4,1540 # 3604 <OSRdyTbl>
    1b40:	00e787b3          	add	a5,a5,a4
    1b44:	0007c783          	lbu	a5,0(a5)
    1b48:	0017b793          	seqz	a5,a5
    1b4c:	0ff7f793          	andi	a5,a5,255
    1b50:	04078663          	beqz	a5,1b9c <_Z11OSMutexPostP17EventControlBlock+0x174>
    1b54:	000037b7          	lui	a5,0x3
    1b58:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1b5c:	01b7c783          	lbu	a5,27(a5)
    1b60:	01879793          	slli	a5,a5,0x18
    1b64:	4187d793          	srai	a5,a5,0x18
    1b68:	fff7c793          	not	a5,a5
    1b6c:	01879713          	slli	a4,a5,0x18
    1b70:	41875713          	srai	a4,a4,0x18
    1b74:	000037b7          	lui	a5,0x3
    1b78:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    1b7c:	01879793          	slli	a5,a5,0x18
    1b80:	4187d793          	srai	a5,a5,0x18
    1b84:	00f777b3          	and	a5,a4,a5
    1b88:	01879793          	slli	a5,a5,0x18
    1b8c:	4187d793          	srai	a5,a5,0x18
    1b90:	0ff7f713          	andi	a4,a5,255
    1b94:	000037b7          	lui	a5,0x3
    1b98:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    1b9c:	000037b7          	lui	a5,0x3
    1ba0:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1ba4:	fee44703          	lbu	a4,-18(s0)
    1ba8:	00e78ba3          	sb	a4,23(a5)
    1bac:	fee44783          	lbu	a5,-18(s0)
    1bb0:	4037d713          	srai	a4,a5,0x3
    1bb4:	000037b7          	lui	a5,0x3
    1bb8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1bbc:	0ff77713          	andi	a4,a4,255
    1bc0:	00e78ca3          	sb	a4,25(a5)
    1bc4:	000037b7          	lui	a5,0x3
    1bc8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1bcc:	0197c783          	lbu	a5,25(a5)
    1bd0:	00078693          	mv	a3,a5
    1bd4:	000037b7          	lui	a5,0x3
    1bd8:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1bdc:	00003737          	lui	a4,0x3
    1be0:	55070713          	addi	a4,a4,1360 # 3550 <_ZL8OSMapTbl>
    1be4:	00e68733          	add	a4,a3,a4
    1be8:	00074703          	lbu	a4,0(a4)
    1bec:	00e78da3          	sb	a4,27(a5)
    1bf0:	000037b7          	lui	a5,0x3
    1bf4:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1bf8:	fee44703          	lbu	a4,-18(s0)
    1bfc:	00777713          	andi	a4,a4,7
    1c00:	0ff77713          	andi	a4,a4,255
    1c04:	00e78c23          	sb	a4,24(a5)
    1c08:	000037b7          	lui	a5,0x3
    1c0c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1c10:	0187c783          	lbu	a5,24(a5)
    1c14:	00078693          	mv	a3,a5
    1c18:	000037b7          	lui	a5,0x3
    1c1c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1c20:	00003737          	lui	a4,0x3
    1c24:	55070713          	addi	a4,a4,1360 # 3550 <_ZL8OSMapTbl>
    1c28:	00e68733          	add	a4,a3,a4
    1c2c:	00074703          	lbu	a4,0(a4)
    1c30:	00e78d23          	sb	a4,26(a5)
    1c34:	000037b7          	lui	a5,0x3
    1c38:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1c3c:	01b7c703          	lbu	a4,27(a5)
    1c40:	000037b7          	lui	a5,0x3
    1c44:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    1c48:	00f767b3          	or	a5,a4,a5
    1c4c:	0ff7f713          	andi	a4,a5,255
    1c50:	000037b7          	lui	a5,0x3
    1c54:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    1c58:	000037b7          	lui	a5,0x3
    1c5c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1c60:	0197c783          	lbu	a5,25(a5)
    1c64:	00078713          	mv	a4,a5
    1c68:	000037b7          	lui	a5,0x3
    1c6c:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    1c70:	00f707b3          	add	a5,a4,a5
    1c74:	0007c703          	lbu	a4,0(a5)
    1c78:	000037b7          	lui	a5,0x3
    1c7c:	5f87a783          	lw	a5,1528(a5) # 35f8 <OSTCBCur>
    1c80:	01a7c783          	lbu	a5,26(a5)
    1c84:	000036b7          	lui	a3,0x3
    1c88:	5f86a683          	lw	a3,1528(a3) # 35f8 <OSTCBCur>
    1c8c:	0196c683          	lbu	a3,25(a3)
    1c90:	00f767b3          	or	a5,a4,a5
    1c94:	0ff7f713          	andi	a4,a5,255
    1c98:	000037b7          	lui	a5,0x3
    1c9c:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    1ca0:	00f687b3          	add	a5,a3,a5
    1ca4:	00e78023          	sb	a4,0(a5)
    1ca8:	fee44683          	lbu	a3,-18(s0)
    1cac:	000037b7          	lui	a5,0x3
    1cb0:	5f87a703          	lw	a4,1528(a5) # 35f8 <OSTCBCur>
    1cb4:	000047b7          	lui	a5,0x4
    1cb8:	00269693          	slli	a3,a3,0x2
    1cbc:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    1cc0:	00f687b3          	add	a5,a3,a5
    1cc4:	00e7a023          	sw	a4,0(a5)
    1cc8:	fef44703          	lbu	a4,-17(s0)
    1ccc:	000047b7          	lui	a5,0x4
    1cd0:	00271713          	slli	a4,a4,0x2
    1cd4:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    1cd8:	00f707b3          	add	a5,a4,a5
    1cdc:	00100713          	li	a4,1
    1ce0:	00e7a023          	sw	a4,0(a5)
    1ce4:	fdc42783          	lw	a5,-36(s0)
    1ce8:	0057c783          	lbu	a5,5(a5)
    1cec:	08078a63          	beqz	a5,1d80 <_Z11OSMutexPostP17EventControlBlock+0x358>
    1cf0:	02800613          	li	a2,40
    1cf4:	00000593          	li	a1,0
    1cf8:	fdc42503          	lw	a0,-36(s0)
    1cfc:	00000097          	auipc	ra,0x0
    1d00:	2e8080e7          	jalr	744(ra) # 1fe4 <_Z12EventTaskRdyP17EventControlBlockPvh>
    1d04:	00050793          	mv	a5,a0
    1d08:	fef40723          	sb	a5,-18(s0)
    1d0c:	fdc42783          	lw	a5,-36(s0)
    1d10:	0067d783          	lhu	a5,6(a5)
    1d14:	f007f793          	andi	a5,a5,-256
    1d18:	01079713          	slli	a4,a5,0x10
    1d1c:	01075713          	srli	a4,a4,0x10
    1d20:	fdc42783          	lw	a5,-36(s0)
    1d24:	00e79323          	sh	a4,6(a5)
    1d28:	fdc42783          	lw	a5,-36(s0)
    1d2c:	0067d703          	lhu	a4,6(a5)
    1d30:	fee44783          	lbu	a5,-18(s0)
    1d34:	01079793          	slli	a5,a5,0x10
    1d38:	0107d793          	srli	a5,a5,0x10
    1d3c:	00f767b3          	or	a5,a4,a5
    1d40:	01079713          	slli	a4,a5,0x10
    1d44:	01075713          	srli	a4,a4,0x10
    1d48:	fdc42783          	lw	a5,-36(s0)
    1d4c:	00e79323          	sh	a4,6(a5)
    1d50:	fee44703          	lbu	a4,-18(s0)
    1d54:	000047b7          	lui	a5,0x4
    1d58:	00271713          	slli	a4,a4,0x2
    1d5c:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    1d60:	00f707b3          	add	a5,a4,a5
    1d64:	0007a703          	lw	a4,0(a5)
    1d68:	fdc42783          	lw	a5,-36(s0)
    1d6c:	00e7a023          	sw	a4,0(a5)
    1d70:	ffffe097          	auipc	ra,0xffffe
    1d74:	7f4080e7          	jalr	2036(ra) # 564 <_Z8OS_Schedv>
    1d78:	00000793          	li	a5,0
    1d7c:	02c0006f          	j	1da8 <_Z11OSMutexPostP17EventControlBlock+0x380>
    1d80:	fdc42783          	lw	a5,-36(s0)
    1d84:	0067d783          	lhu	a5,6(a5)
    1d88:	0ff7e793          	ori	a5,a5,255
    1d8c:	01079713          	slli	a4,a5,0x10
    1d90:	01075713          	srli	a4,a4,0x10
    1d94:	fdc42783          	lw	a5,-36(s0)
    1d98:	00e79323          	sh	a4,6(a5)
    1d9c:	fdc42783          	lw	a5,-36(s0)
    1da0:	0007a023          	sw	zero,0(a5)
    1da4:	00000793          	li	a5,0
    1da8:	00078513          	mv	a0,a5
    1dac:	02c12083          	lw	ra,44(sp)
    1db0:	02812403          	lw	s0,40(sp)
    1db4:	03010113          	addi	sp,sp,48
    1db8:	00008067          	ret

00001dbc <_Z11OSEventInitP17EventControlBlockh>:
    1dbc:	fd010113          	addi	sp,sp,-48
    1dc0:	02812623          	sw	s0,44(sp)
    1dc4:	03010413          	addi	s0,sp,48
    1dc8:	fca42e23          	sw	a0,-36(s0)
    1dcc:	00058793          	mv	a5,a1
    1dd0:	fcf40da3          	sb	a5,-37(s0)
    1dd4:	fdc42783          	lw	a5,-36(s0)
    1dd8:	fdb44703          	lbu	a4,-37(s0)
    1ddc:	00e78223          	sb	a4,4(a5)
    1de0:	fdc42783          	lw	a5,-36(s0)
    1de4:	000782a3          	sb	zero,5(a5)
    1de8:	fdc42783          	lw	a5,-36(s0)
    1dec:	0007a023          	sw	zero,0(a5)
    1df0:	fe0407a3          	sb	zero,-17(s0)
    1df4:	fef44703          	lbu	a4,-17(s0)
    1df8:	01d00793          	li	a5,29
    1dfc:	02e7e263          	bltu	a5,a4,1e20 <_Z11OSEventInitP17EventControlBlockh+0x64>
    1e00:	fef44783          	lbu	a5,-17(s0)
    1e04:	fdc42703          	lw	a4,-36(s0)
    1e08:	00f707b3          	add	a5,a4,a5
    1e0c:	00078423          	sb	zero,8(a5)
    1e10:	fef44783          	lbu	a5,-17(s0)
    1e14:	00178793          	addi	a5,a5,1
    1e18:	fef407a3          	sb	a5,-17(s0)
    1e1c:	fd9ff06f          	j	1df4 <_Z11OSEventInitP17EventControlBlockh+0x38>
    1e20:	00000013          	nop
    1e24:	02c12403          	lw	s0,44(sp)
    1e28:	03010113          	addi	sp,sp,48
    1e2c:	00008067          	ret

00001e30 <_Z19appendToWaitingListP17EventControlBlockh>:
    1e30:	fe010113          	addi	sp,sp,-32
    1e34:	00812e23          	sw	s0,28(sp)
    1e38:	02010413          	addi	s0,sp,32
    1e3c:	fea42623          	sw	a0,-20(s0)
    1e40:	00058793          	mv	a5,a1
    1e44:	fef405a3          	sb	a5,-21(s0)
    1e48:	fec42783          	lw	a5,-20(s0)
    1e4c:	0057c703          	lbu	a4,5(a5)
    1e50:	feb44783          	lbu	a5,-21(s0)
    1e54:	4037d693          	srai	a3,a5,0x3
    1e58:	000037b7          	lui	a5,0x3
    1e5c:	57c78793          	addi	a5,a5,1404 # 357c <_ZL8OSMapTbl>
    1e60:	00f687b3          	add	a5,a3,a5
    1e64:	0007c783          	lbu	a5,0(a5)
    1e68:	00f767b3          	or	a5,a4,a5
    1e6c:	0ff7f713          	andi	a4,a5,255
    1e70:	fec42783          	lw	a5,-20(s0)
    1e74:	00e782a3          	sb	a4,5(a5)
    1e78:	feb44783          	lbu	a5,-21(s0)
    1e7c:	4037d793          	srai	a5,a5,0x3
    1e80:	fec42703          	lw	a4,-20(s0)
    1e84:	00f707b3          	add	a5,a4,a5
    1e88:	0087c683          	lbu	a3,8(a5)
    1e8c:	feb44783          	lbu	a5,-21(s0)
    1e90:	0077f713          	andi	a4,a5,7
    1e94:	000037b7          	lui	a5,0x3
    1e98:	57c78793          	addi	a5,a5,1404 # 357c <_ZL8OSMapTbl>
    1e9c:	00f707b3          	add	a5,a4,a5
    1ea0:	0007c703          	lbu	a4,0(a5)
    1ea4:	feb44783          	lbu	a5,-21(s0)
    1ea8:	4037d793          	srai	a5,a5,0x3
    1eac:	00e6e733          	or	a4,a3,a4
    1eb0:	0ff77713          	andi	a4,a4,255
    1eb4:	fec42683          	lw	a3,-20(s0)
    1eb8:	00f687b3          	add	a5,a3,a5
    1ebc:	00e78423          	sb	a4,8(a5)
    1ec0:	00000013          	nop
    1ec4:	01c12403          	lw	s0,28(sp)
    1ec8:	02010113          	addi	sp,sp,32
    1ecc:	00008067          	ret

00001ed0 <_Z20eraseFromWaitingListP17EventControlBlock>:
    1ed0:	fd010113          	addi	sp,sp,-48
    1ed4:	02112623          	sw	ra,44(sp)
    1ed8:	02812423          	sw	s0,40(sp)
    1edc:	03010413          	addi	s0,sp,48
    1ee0:	fca42e23          	sw	a0,-36(s0)
    1ee4:	fdc42503          	lw	a0,-36(s0)
    1ee8:	00000097          	auipc	ra,0x0
    1eec:	320080e7          	jalr	800(ra) # 2208 <_Z18getHighestPriorityP17EventControlBlock>
    1ef0:	00050793          	mv	a5,a0
    1ef4:	fef407a3          	sb	a5,-17(s0)
    1ef8:	fef44783          	lbu	a5,-17(s0)
    1efc:	4037d793          	srai	a5,a5,0x3
    1f00:	fdc42703          	lw	a4,-36(s0)
    1f04:	00f707b3          	add	a5,a4,a5
    1f08:	0087c783          	lbu	a5,8(a5)
    1f0c:	01879713          	slli	a4,a5,0x18
    1f10:	41875713          	srai	a4,a4,0x18
    1f14:	fef44783          	lbu	a5,-17(s0)
    1f18:	0077f693          	andi	a3,a5,7
    1f1c:	000037b7          	lui	a5,0x3
    1f20:	57c78793          	addi	a5,a5,1404 # 357c <_ZL8OSMapTbl>
    1f24:	00f687b3          	add	a5,a3,a5
    1f28:	0007c783          	lbu	a5,0(a5)
    1f2c:	01879793          	slli	a5,a5,0x18
    1f30:	4187d793          	srai	a5,a5,0x18
    1f34:	fff7c793          	not	a5,a5
    1f38:	01879793          	slli	a5,a5,0x18
    1f3c:	4187d793          	srai	a5,a5,0x18
    1f40:	00f777b3          	and	a5,a4,a5
    1f44:	01879713          	slli	a4,a5,0x18
    1f48:	41875713          	srai	a4,a4,0x18
    1f4c:	fef44783          	lbu	a5,-17(s0)
    1f50:	4037d793          	srai	a5,a5,0x3
    1f54:	0ff77693          	andi	a3,a4,255
    1f58:	fdc42703          	lw	a4,-36(s0)
    1f5c:	00f70733          	add	a4,a4,a5
    1f60:	00d70423          	sb	a3,8(a4)
    1f64:	fdc42703          	lw	a4,-36(s0)
    1f68:	00f707b3          	add	a5,a4,a5
    1f6c:	0087c783          	lbu	a5,8(a5)
    1f70:	0017b793          	seqz	a5,a5
    1f74:	0ff7f793          	andi	a5,a5,255
    1f78:	04078c63          	beqz	a5,1fd0 <_Z20eraseFromWaitingListP17EventControlBlock+0x100>
    1f7c:	fdc42783          	lw	a5,-36(s0)
    1f80:	0057c783          	lbu	a5,5(a5)
    1f84:	01879713          	slli	a4,a5,0x18
    1f88:	41875713          	srai	a4,a4,0x18
    1f8c:	fef44783          	lbu	a5,-17(s0)
    1f90:	4037d693          	srai	a3,a5,0x3
    1f94:	000037b7          	lui	a5,0x3
    1f98:	57c78793          	addi	a5,a5,1404 # 357c <_ZL8OSMapTbl>
    1f9c:	00f687b3          	add	a5,a3,a5
    1fa0:	0007c783          	lbu	a5,0(a5)
    1fa4:	01879793          	slli	a5,a5,0x18
    1fa8:	4187d793          	srai	a5,a5,0x18
    1fac:	fff7c793          	not	a5,a5
    1fb0:	01879793          	slli	a5,a5,0x18
    1fb4:	4187d793          	srai	a5,a5,0x18
    1fb8:	00f777b3          	and	a5,a4,a5
    1fbc:	01879793          	slli	a5,a5,0x18
    1fc0:	4187d793          	srai	a5,a5,0x18
    1fc4:	0ff7f713          	andi	a4,a5,255
    1fc8:	fdc42783          	lw	a5,-36(s0)
    1fcc:	00e782a3          	sb	a4,5(a5)
    1fd0:	00000013          	nop
    1fd4:	02c12083          	lw	ra,44(sp)
    1fd8:	02812403          	lw	s0,40(sp)
    1fdc:	03010113          	addi	sp,sp,48
    1fe0:	00008067          	ret

00001fe4 <_Z12EventTaskRdyP17EventControlBlockPvh>:
    1fe4:	fd010113          	addi	sp,sp,-48
    1fe8:	02812623          	sw	s0,44(sp)
    1fec:	03010413          	addi	s0,sp,48
    1ff0:	fca42e23          	sw	a0,-36(s0)
    1ff4:	fcb42c23          	sw	a1,-40(s0)
    1ff8:	00060793          	mv	a5,a2
    1ffc:	fcf40ba3          	sb	a5,-41(s0)
    2000:	fdc42783          	lw	a5,-36(s0)
    2004:	0057c783          	lbu	a5,5(a5)
    2008:	00078713          	mv	a4,a5
    200c:	000037b7          	lui	a5,0x3
    2010:	b7878793          	addi	a5,a5,-1160 # 2b78 <_ZL10OSUnMapTbl>
    2014:	00f707b3          	add	a5,a4,a5
    2018:	0007c783          	lbu	a5,0(a5)
    201c:	fef407a3          	sb	a5,-17(s0)
    2020:	fef44703          	lbu	a4,-17(s0)
    2024:	000037b7          	lui	a5,0x3
    2028:	57c78793          	addi	a5,a5,1404 # 357c <_ZL8OSMapTbl>
    202c:	00f707b3          	add	a5,a4,a5
    2030:	0007c783          	lbu	a5,0(a5)
    2034:	fef40723          	sb	a5,-18(s0)
    2038:	fef44783          	lbu	a5,-17(s0)
    203c:	fdc42703          	lw	a4,-36(s0)
    2040:	00f707b3          	add	a5,a4,a5
    2044:	0087c783          	lbu	a5,8(a5)
    2048:	00078713          	mv	a4,a5
    204c:	000037b7          	lui	a5,0x3
    2050:	b7878793          	addi	a5,a5,-1160 # 2b78 <_ZL10OSUnMapTbl>
    2054:	00f707b3          	add	a5,a4,a5
    2058:	0007c783          	lbu	a5,0(a5)
    205c:	fef406a3          	sb	a5,-19(s0)
    2060:	fed44703          	lbu	a4,-19(s0)
    2064:	000037b7          	lui	a5,0x3
    2068:	57c78793          	addi	a5,a5,1404 # 357c <_ZL8OSMapTbl>
    206c:	00f707b3          	add	a5,a4,a5
    2070:	0007c783          	lbu	a5,0(a5)
    2074:	fef40623          	sb	a5,-20(s0)
    2078:	fef44783          	lbu	a5,-17(s0)
    207c:	00379793          	slli	a5,a5,0x3
    2080:	0ff7f713          	andi	a4,a5,255
    2084:	fed44783          	lbu	a5,-19(s0)
    2088:	00f707b3          	add	a5,a4,a5
    208c:	0ff7f793          	andi	a5,a5,255
    2090:	fef403a3          	sb	a5,-25(s0)
    2094:	fef44783          	lbu	a5,-17(s0)
    2098:	fdc42703          	lw	a4,-36(s0)
    209c:	00f707b3          	add	a5,a4,a5
    20a0:	0087c783          	lbu	a5,8(a5)
    20a4:	01879713          	slli	a4,a5,0x18
    20a8:	41875713          	srai	a4,a4,0x18
    20ac:	fec40783          	lb	a5,-20(s0)
    20b0:	fff7c793          	not	a5,a5
    20b4:	01879793          	slli	a5,a5,0x18
    20b8:	4187d793          	srai	a5,a5,0x18
    20bc:	00f777b3          	and	a5,a4,a5
    20c0:	01879713          	slli	a4,a5,0x18
    20c4:	41875713          	srai	a4,a4,0x18
    20c8:	fef44783          	lbu	a5,-17(s0)
    20cc:	0ff77693          	andi	a3,a4,255
    20d0:	fdc42703          	lw	a4,-36(s0)
    20d4:	00f70733          	add	a4,a4,a5
    20d8:	00d70423          	sb	a3,8(a4)
    20dc:	fdc42703          	lw	a4,-36(s0)
    20e0:	00f707b3          	add	a5,a4,a5
    20e4:	0087c783          	lbu	a5,8(a5)
    20e8:	0017b793          	seqz	a5,a5
    20ec:	0ff7f793          	andi	a5,a5,255
    20f0:	02078e63          	beqz	a5,212c <_Z12EventTaskRdyP17EventControlBlockPvh+0x148>
    20f4:	fdc42783          	lw	a5,-36(s0)
    20f8:	0057c783          	lbu	a5,5(a5)
    20fc:	01879713          	slli	a4,a5,0x18
    2100:	41875713          	srai	a4,a4,0x18
    2104:	fee40783          	lb	a5,-18(s0)
    2108:	fff7c793          	not	a5,a5
    210c:	01879793          	slli	a5,a5,0x18
    2110:	4187d793          	srai	a5,a5,0x18
    2114:	00f777b3          	and	a5,a4,a5
    2118:	01879793          	slli	a5,a5,0x18
    211c:	4187d793          	srai	a5,a5,0x18
    2120:	0ff7f713          	andi	a4,a5,255
    2124:	fdc42783          	lw	a5,-36(s0)
    2128:	00e782a3          	sb	a4,5(a5)
    212c:	fe744783          	lbu	a5,-25(s0)
    2130:	00078713          	mv	a4,a5
    2134:	000047b7          	lui	a5,0x4
    2138:	00271713          	slli	a4,a4,0x2
    213c:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    2140:	00f707b3          	add	a5,a4,a5
    2144:	0007a783          	lw	a5,0(a5)
    2148:	fef42423          	sw	a5,-24(s0)
    214c:	fe842783          	lw	a5,-24(s0)
    2150:	0007a623          	sw	zero,12(a5)
    2154:	fe842783          	lw	a5,-24(s0)
    2158:	fd842703          	lw	a4,-40(s0)
    215c:	00e7a823          	sw	a4,16(a5)
    2160:	fe842783          	lw	a5,-24(s0)
    2164:	0167c783          	lbu	a5,22(a5)
    2168:	01879713          	slli	a4,a5,0x18
    216c:	41875713          	srai	a4,a4,0x18
    2170:	fd740783          	lb	a5,-41(s0)
    2174:	fff7c793          	not	a5,a5
    2178:	01879793          	slli	a5,a5,0x18
    217c:	4187d793          	srai	a5,a5,0x18
    2180:	00f777b3          	and	a5,a4,a5
    2184:	01879793          	slli	a5,a5,0x18
    2188:	4187d793          	srai	a5,a5,0x18
    218c:	0ff7f713          	andi	a4,a5,255
    2190:	fe842783          	lw	a5,-24(s0)
    2194:	00e78b23          	sb	a4,22(a5)
    2198:	fe842783          	lw	a5,-24(s0)
    219c:	0167c783          	lbu	a5,22(a5)
    21a0:	04079a63          	bnez	a5,21f4 <_Z12EventTaskRdyP17EventControlBlockPvh+0x210>
    21a4:	000037b7          	lui	a5,0x3
    21a8:	6017c703          	lbu	a4,1537(a5) # 3601 <OSRdyGrp>
    21ac:	fee44783          	lbu	a5,-18(s0)
    21b0:	00f767b3          	or	a5,a4,a5
    21b4:	0ff7f713          	andi	a4,a5,255
    21b8:	000037b7          	lui	a5,0x3
    21bc:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    21c0:	fef44703          	lbu	a4,-17(s0)
    21c4:	000037b7          	lui	a5,0x3
    21c8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    21cc:	00f707b3          	add	a5,a4,a5
    21d0:	0007c703          	lbu	a4,0(a5)
    21d4:	fef44683          	lbu	a3,-17(s0)
    21d8:	fec44783          	lbu	a5,-20(s0)
    21dc:	00f767b3          	or	a5,a4,a5
    21e0:	0ff7f713          	andi	a4,a5,255
    21e4:	000037b7          	lui	a5,0x3
    21e8:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    21ec:	00f687b3          	add	a5,a3,a5
    21f0:	00e78023          	sb	a4,0(a5)
    21f4:	fe744783          	lbu	a5,-25(s0)
    21f8:	00078513          	mv	a0,a5
    21fc:	02c12403          	lw	s0,44(sp)
    2200:	03010113          	addi	sp,sp,48
    2204:	00008067          	ret

00002208 <_Z18getHighestPriorityP17EventControlBlock>:
    2208:	fd010113          	addi	sp,sp,-48
    220c:	02812623          	sw	s0,44(sp)
    2210:	03010413          	addi	s0,sp,48
    2214:	fca42e23          	sw	a0,-36(s0)
    2218:	fdc42783          	lw	a5,-36(s0)
    221c:	0057c783          	lbu	a5,5(a5)
    2220:	00078713          	mv	a4,a5
    2224:	000037b7          	lui	a5,0x3
    2228:	b7878793          	addi	a5,a5,-1160 # 2b78 <_ZL10OSUnMapTbl>
    222c:	00f707b3          	add	a5,a4,a5
    2230:	0007c783          	lbu	a5,0(a5)
    2234:	fef407a3          	sb	a5,-17(s0)
    2238:	fef44783          	lbu	a5,-17(s0)
    223c:	fdc42703          	lw	a4,-36(s0)
    2240:	00f707b3          	add	a5,a4,a5
    2244:	0087c783          	lbu	a5,8(a5)
    2248:	00078713          	mv	a4,a5
    224c:	000037b7          	lui	a5,0x3
    2250:	b7878793          	addi	a5,a5,-1160 # 2b78 <_ZL10OSUnMapTbl>
    2254:	00f707b3          	add	a5,a4,a5
    2258:	0007c783          	lbu	a5,0(a5)
    225c:	fef40723          	sb	a5,-18(s0)
    2260:	fef44783          	lbu	a5,-17(s0)
    2264:	00379793          	slli	a5,a5,0x3
    2268:	0ff7f713          	andi	a4,a5,255
    226c:	fee44783          	lbu	a5,-18(s0)
    2270:	00f707b3          	add	a5,a4,a5
    2274:	fef406a3          	sb	a5,-19(s0)
    2278:	fed44783          	lbu	a5,-19(s0)
    227c:	00078513          	mv	a0,a5
    2280:	02c12403          	lw	s0,44(sp)
    2284:	03010113          	addi	sp,sp,48
    2288:	00008067          	ret

0000228c <_Z10OS_TCBInithPm>:
    228c:	fd010113          	addi	sp,sp,-48
    2290:	02112623          	sw	ra,44(sp)
    2294:	02812423          	sw	s0,40(sp)
    2298:	03010413          	addi	s0,sp,48
    229c:	00050793          	mv	a5,a0
    22a0:	fcb42c23          	sw	a1,-40(s0)
    22a4:	fcf40fa3          	sb	a5,-33(s0)
    22a8:	ffffe097          	auipc	ra,0xffffe
    22ac:	144080e7          	jalr	324(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    22b0:	000037b7          	lui	a5,0x3
    22b4:	5f07a783          	lw	a5,1520(a5) # 35f0 <OSTCBFreeList>
    22b8:	fef42623          	sw	a5,-20(s0)
    22bc:	fec42783          	lw	a5,-20(s0)
    22c0:	18078e63          	beqz	a5,245c <_Z10OS_TCBInithPm+0x1d0>
    22c4:	fec42783          	lw	a5,-20(s0)
    22c8:	0047a703          	lw	a4,4(a5)
    22cc:	000037b7          	lui	a5,0x3
    22d0:	5ee7a823          	sw	a4,1520(a5) # 35f0 <OSTCBFreeList>
    22d4:	ffffe097          	auipc	ra,0xffffe
    22d8:	134080e7          	jalr	308(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    22dc:	fec42783          	lw	a5,-20(s0)
    22e0:	fd842703          	lw	a4,-40(s0)
    22e4:	00e7a023          	sw	a4,0(a5)
    22e8:	fec42783          	lw	a5,-20(s0)
    22ec:	fdf44703          	lbu	a4,-33(s0)
    22f0:	00e78ba3          	sb	a4,23(a5)
    22f4:	fec42783          	lw	a5,-20(s0)
    22f8:	00078b23          	sb	zero,22(a5)
    22fc:	fec42783          	lw	a5,-20(s0)
    2300:	00079a23          	sh	zero,20(a5)
    2304:	fdf44783          	lbu	a5,-33(s0)
    2308:	4037d793          	srai	a5,a5,0x3
    230c:	0ff7f713          	andi	a4,a5,255
    2310:	fec42783          	lw	a5,-20(s0)
    2314:	00e78ca3          	sb	a4,25(a5)
    2318:	fec42783          	lw	a5,-20(s0)
    231c:	0197c783          	lbu	a5,25(a5)
    2320:	00078713          	mv	a4,a5
    2324:	000037b7          	lui	a5,0x3
    2328:	5a878793          	addi	a5,a5,1448 # 35a8 <_ZL8OSMapTbl>
    232c:	00f707b3          	add	a5,a4,a5
    2330:	0007c703          	lbu	a4,0(a5)
    2334:	fec42783          	lw	a5,-20(s0)
    2338:	00e78da3          	sb	a4,27(a5)
    233c:	fdf44783          	lbu	a5,-33(s0)
    2340:	0077f793          	andi	a5,a5,7
    2344:	0ff7f713          	andi	a4,a5,255
    2348:	fec42783          	lw	a5,-20(s0)
    234c:	00e78c23          	sb	a4,24(a5)
    2350:	fec42783          	lw	a5,-20(s0)
    2354:	0187c783          	lbu	a5,24(a5)
    2358:	00078713          	mv	a4,a5
    235c:	000037b7          	lui	a5,0x3
    2360:	5a878793          	addi	a5,a5,1448 # 35a8 <_ZL8OSMapTbl>
    2364:	00f707b3          	add	a5,a4,a5
    2368:	0007c703          	lbu	a4,0(a5)
    236c:	fec42783          	lw	a5,-20(s0)
    2370:	00e78d23          	sb	a4,26(a5)
    2374:	fec42783          	lw	a5,-20(s0)
    2378:	0007a623          	sw	zero,12(a5)
    237c:	fec42783          	lw	a5,-20(s0)
    2380:	0007a823          	sw	zero,16(a5)
    2384:	ffffe097          	auipc	ra,0xffffe
    2388:	068080e7          	jalr	104(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    238c:	fdf44703          	lbu	a4,-33(s0)
    2390:	000047b7          	lui	a5,0x4
    2394:	00271713          	slli	a4,a4,0x2
    2398:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    239c:	00f707b3          	add	a5,a4,a5
    23a0:	fec42703          	lw	a4,-20(s0)
    23a4:	00e7a023          	sw	a4,0(a5)
    23a8:	000037b7          	lui	a5,0x3
    23ac:	5f47a703          	lw	a4,1524(a5) # 35f4 <OSTCBList>
    23b0:	fec42783          	lw	a5,-20(s0)
    23b4:	00e7a223          	sw	a4,4(a5)
    23b8:	fec42783          	lw	a5,-20(s0)
    23bc:	0007a423          	sw	zero,8(a5)
    23c0:	000037b7          	lui	a5,0x3
    23c4:	5f47a783          	lw	a5,1524(a5) # 35f4 <OSTCBList>
    23c8:	00078a63          	beqz	a5,23dc <_Z10OS_TCBInithPm+0x150>
    23cc:	000037b7          	lui	a5,0x3
    23d0:	5f47a783          	lw	a5,1524(a5) # 35f4 <OSTCBList>
    23d4:	fec42703          	lw	a4,-20(s0)
    23d8:	00e7a423          	sw	a4,8(a5)
    23dc:	000037b7          	lui	a5,0x3
    23e0:	fec42703          	lw	a4,-20(s0)
    23e4:	5ee7aa23          	sw	a4,1524(a5) # 35f4 <OSTCBList>
    23e8:	fec42783          	lw	a5,-20(s0)
    23ec:	01b7c703          	lbu	a4,27(a5)
    23f0:	000037b7          	lui	a5,0x3
    23f4:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    23f8:	00f767b3          	or	a5,a4,a5
    23fc:	0ff7f713          	andi	a4,a5,255
    2400:	000037b7          	lui	a5,0x3
    2404:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    2408:	fec42783          	lw	a5,-20(s0)
    240c:	0197c783          	lbu	a5,25(a5)
    2410:	00078713          	mv	a4,a5
    2414:	000037b7          	lui	a5,0x3
    2418:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    241c:	00f707b3          	add	a5,a4,a5
    2420:	0007c703          	lbu	a4,0(a5)
    2424:	fec42783          	lw	a5,-20(s0)
    2428:	01a7c783          	lbu	a5,26(a5)
    242c:	fec42683          	lw	a3,-20(s0)
    2430:	0196c683          	lbu	a3,25(a3)
    2434:	00f767b3          	or	a5,a4,a5
    2438:	0ff7f713          	andi	a4,a5,255
    243c:	000037b7          	lui	a5,0x3
    2440:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    2444:	00f687b3          	add	a5,a3,a5
    2448:	00e78023          	sb	a4,0(a5)
    244c:	ffffe097          	auipc	ra,0xffffe
    2450:	fbc080e7          	jalr	-68(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2454:	00000793          	li	a5,0
    2458:	0100006f          	j	2468 <_Z10OS_TCBInithPm+0x1dc>
    245c:	ffffe097          	auipc	ra,0xffffe
    2460:	fac080e7          	jalr	-84(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2464:	00100793          	li	a5,1
    2468:	00078513          	mv	a0,a5
    246c:	02c12083          	lw	ra,44(sp)
    2470:	02812403          	lw	s0,40(sp)
    2474:	03010113          	addi	sp,sp,48
    2478:	00008067          	ret

0000247c <_Z12OSTaskCreatePFvPvES_Pmh>:
    247c:	fd010113          	addi	sp,sp,-48
    2480:	02112623          	sw	ra,44(sp)
    2484:	02812423          	sw	s0,40(sp)
    2488:	03010413          	addi	s0,sp,48
    248c:	fca42e23          	sw	a0,-36(s0)
    2490:	fcb42c23          	sw	a1,-40(s0)
    2494:	fcc42a23          	sw	a2,-44(s0)
    2498:	00068793          	mv	a5,a3
    249c:	fcf409a3          	sb	a5,-45(s0)
    24a0:	fd344703          	lbu	a4,-45(s0)
    24a4:	03f00793          	li	a5,63
    24a8:	00e7f663          	bgeu	a5,a4,24b4 <_Z12OSTaskCreatePFvPvES_Pmh+0x38>
    24ac:	00200793          	li	a5,2
    24b0:	1200006f          	j	25d0 <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    24b4:	ffffe097          	auipc	ra,0xffffe
    24b8:	f38080e7          	jalr	-200(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    24bc:	fd344703          	lbu	a4,-45(s0)
    24c0:	000047b7          	lui	a5,0x4
    24c4:	00271713          	slli	a4,a4,0x2
    24c8:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    24cc:	00f707b3          	add	a5,a4,a5
    24d0:	0007a783          	lw	a5,0(a5)
    24d4:	0e079863          	bnez	a5,25c4 <_Z12OSTaskCreatePFvPvES_Pmh+0x148>
    24d8:	fd344703          	lbu	a4,-45(s0)
    24dc:	000047b7          	lui	a5,0x4
    24e0:	00271713          	slli	a4,a4,0x2
    24e4:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    24e8:	00f707b3          	add	a5,a4,a5
    24ec:	00100713          	li	a4,1
    24f0:	00e7a023          	sw	a4,0(a5)
    24f4:	ffffe097          	auipc	ra,0xffffe
    24f8:	f14080e7          	jalr	-236(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    24fc:	00000693          	li	a3,0
    2500:	fd442603          	lw	a2,-44(s0)
    2504:	fd842583          	lw	a1,-40(s0)
    2508:	fdc42503          	lw	a0,-36(s0)
    250c:	ffffe097          	auipc	ra,0xffffe
    2510:	f18080e7          	jalr	-232(ra) # 424 <_Z13OSTaskStkInitPFvPvES_Pmt>
    2514:	00050793          	mv	a5,a0
    2518:	fef42623          	sw	a5,-20(s0)
    251c:	fd344783          	lbu	a5,-45(s0)
    2520:	fec42583          	lw	a1,-20(s0)
    2524:	00078513          	mv	a0,a5
    2528:	00000097          	auipc	ra,0x0
    252c:	d64080e7          	jalr	-668(ra) # 228c <_Z10OS_TCBInithPm>
    2530:	00050793          	mv	a5,a0
    2534:	fef403a3          	sb	a5,-25(s0)
    2538:	fe744783          	lbu	a5,-25(s0)
    253c:	04079c63          	bnez	a5,2594 <_Z12OSTaskCreatePFvPvES_Pmh+0x118>
    2540:	ffffe097          	auipc	ra,0xffffe
    2544:	eac080e7          	jalr	-340(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    2548:	000037b7          	lui	a5,0x3
    254c:	60c7c783          	lbu	a5,1548(a5) # 360c <OSTaskCtr>
    2550:	00178793          	addi	a5,a5,1
    2554:	0ff7f713          	andi	a4,a5,255
    2558:	000037b7          	lui	a5,0x3
    255c:	60e78623          	sb	a4,1548(a5) # 360c <OSTaskCtr>
    2560:	ffffe097          	auipc	ra,0xffffe
    2564:	ea8080e7          	jalr	-344(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2568:	fdc42783          	lw	a5,-36(s0)
    256c:	fef42423          	sw	a5,-24(s0)
    2570:	fd344703          	lbu	a4,-45(s0)
    2574:	000047b7          	lui	a5,0x4
    2578:	00271713          	slli	a4,a4,0x2
    257c:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    2580:	00f707b3          	add	a5,a4,a5
    2584:	0007a783          	lw	a5,0(a5)
    2588:	fe842703          	lw	a4,-24(s0)
    258c:	02e7a023          	sw	a4,32(a5)
    2590:	02c0006f          	j	25bc <_Z12OSTaskCreatePFvPvES_Pmh+0x140>
    2594:	ffffe097          	auipc	ra,0xffffe
    2598:	e58080e7          	jalr	-424(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    259c:	fd344703          	lbu	a4,-45(s0)
    25a0:	000047b7          	lui	a5,0x4
    25a4:	00271713          	slli	a4,a4,0x2
    25a8:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    25ac:	00f707b3          	add	a5,a4,a5
    25b0:	0007a023          	sw	zero,0(a5)
    25b4:	ffffe097          	auipc	ra,0xffffe
    25b8:	e54080e7          	jalr	-428(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    25bc:	fe744783          	lbu	a5,-25(s0)
    25c0:	0100006f          	j	25d0 <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    25c4:	ffffe097          	auipc	ra,0xffffe
    25c8:	e44080e7          	jalr	-444(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    25cc:	00500793          	li	a5,5
    25d0:	00078513          	mv	a0,a5
    25d4:	02c12083          	lw	ra,44(sp)
    25d8:	02812403          	lw	s0,40(sp)
    25dc:	03010113          	addi	sp,sp,48
    25e0:	00008067          	ret

000025e4 <_Z12OSTaskResumeh>:
    25e4:	fd010113          	addi	sp,sp,-48
    25e8:	02112623          	sw	ra,44(sp)
    25ec:	02812423          	sw	s0,40(sp)
    25f0:	03010413          	addi	s0,sp,48
    25f4:	00050793          	mv	a5,a0
    25f8:	fcf40fa3          	sb	a5,-33(s0)
    25fc:	fdf44703          	lbu	a4,-33(s0)
    2600:	03e00793          	li	a5,62
    2604:	00e7f663          	bgeu	a5,a4,2610 <_Z12OSTaskResumeh+0x2c>
    2608:	00200793          	li	a5,2
    260c:	11c0006f          	j	2728 <_Z12OSTaskResumeh+0x144>
    2610:	ffffe097          	auipc	ra,0xffffe
    2614:	ddc080e7          	jalr	-548(ra) # 3ec <_Z17OS_ENTER_CRITICALv>
    2618:	fdf44703          	lbu	a4,-33(s0)
    261c:	000047b7          	lui	a5,0x4
    2620:	00271713          	slli	a4,a4,0x2
    2624:	46878793          	addi	a5,a5,1128 # 4468 <OSTCBPrioTbl>
    2628:	00f707b3          	add	a5,a4,a5
    262c:	0007a783          	lw	a5,0(a5)
    2630:	fef42623          	sw	a5,-20(s0)
    2634:	fec42783          	lw	a5,-20(s0)
    2638:	00079a63          	bnez	a5,264c <_Z12OSTaskResumeh+0x68>
    263c:	ffffe097          	auipc	ra,0xffffe
    2640:	dcc080e7          	jalr	-564(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2644:	00600793          	li	a5,6
    2648:	0e00006f          	j	2728 <_Z12OSTaskResumeh+0x144>
    264c:	fec42783          	lw	a5,-20(s0)
    2650:	0167c783          	lbu	a5,22(a5)
    2654:	0037f793          	andi	a5,a5,3
    2658:	0c078263          	beqz	a5,271c <_Z12OSTaskResumeh+0x138>
    265c:	fec42783          	lw	a5,-20(s0)
    2660:	0167c783          	lbu	a5,22(a5)
    2664:	ffc7f793          	andi	a5,a5,-4
    2668:	0ff7f713          	andi	a4,a5,255
    266c:	fec42783          	lw	a5,-20(s0)
    2670:	00e78b23          	sb	a4,22(a5)
    2674:	fec42783          	lw	a5,-20(s0)
    2678:	0167c783          	lbu	a5,22(a5)
    267c:	00079c63          	bnez	a5,2694 <_Z12OSTaskResumeh+0xb0>
    2680:	fec42783          	lw	a5,-20(s0)
    2684:	0147d783          	lhu	a5,20(a5)
    2688:	00079663          	bnez	a5,2694 <_Z12OSTaskResumeh+0xb0>
    268c:	00100793          	li	a5,1
    2690:	0080006f          	j	2698 <_Z12OSTaskResumeh+0xb4>
    2694:	00000793          	li	a5,0
    2698:	06078a63          	beqz	a5,270c <_Z12OSTaskResumeh+0x128>
    269c:	fec42783          	lw	a5,-20(s0)
    26a0:	01b7c703          	lbu	a4,27(a5)
    26a4:	000037b7          	lui	a5,0x3
    26a8:	6017c783          	lbu	a5,1537(a5) # 3601 <OSRdyGrp>
    26ac:	00f767b3          	or	a5,a4,a5
    26b0:	0ff7f713          	andi	a4,a5,255
    26b4:	000037b7          	lui	a5,0x3
    26b8:	60e780a3          	sb	a4,1537(a5) # 3601 <OSRdyGrp>
    26bc:	fec42783          	lw	a5,-20(s0)
    26c0:	0197c783          	lbu	a5,25(a5)
    26c4:	00078713          	mv	a4,a5
    26c8:	000037b7          	lui	a5,0x3
    26cc:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    26d0:	00f707b3          	add	a5,a4,a5
    26d4:	0007c703          	lbu	a4,0(a5)
    26d8:	fec42783          	lw	a5,-20(s0)
    26dc:	01a7c783          	lbu	a5,26(a5)
    26e0:	fec42683          	lw	a3,-20(s0)
    26e4:	0196c683          	lbu	a3,25(a3)
    26e8:	00f767b3          	or	a5,a4,a5
    26ec:	0ff7f713          	andi	a4,a5,255
    26f0:	000037b7          	lui	a5,0x3
    26f4:	60478793          	addi	a5,a5,1540 # 3604 <OSRdyTbl>
    26f8:	00f687b3          	add	a5,a3,a5
    26fc:	00e78023          	sb	a4,0(a5)
    2700:	ffffe097          	auipc	ra,0xffffe
    2704:	d08080e7          	jalr	-760(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2708:	00c0006f          	j	2714 <_Z12OSTaskResumeh+0x130>
    270c:	ffffe097          	auipc	ra,0xffffe
    2710:	cfc080e7          	jalr	-772(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2714:	00000793          	li	a5,0
    2718:	0100006f          	j	2728 <_Z12OSTaskResumeh+0x144>
    271c:	ffffe097          	auipc	ra,0xffffe
    2720:	cec080e7          	jalr	-788(ra) # 408 <_Z16OS_EXIT_CRITICALv>
    2724:	00700793          	li	a5,7
    2728:	00078513          	mv	a0,a5
    272c:	02c12083          	lw	ra,44(sp)
    2730:	02812403          	lw	s0,40(sp)
    2734:	03010113          	addi	sp,sp,48
    2738:	00008067          	ret
