
final.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	01400137          	lui	sp,0x1400
       4:	ffc10113          	addi	sp,sp,-4 # 13ffffc <_fstack>
       8:	254000ef          	jal	ra,25c <main>

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
      8c:	2b87a783          	lw	a5,696(a5) # 22b8 <s1>
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
      e0:	88878513          	addi	a0,a5,-1912 # 1888 <_ZL10OSUnMapTbl+0x170>
      e4:	00000097          	auipc	ra,0x0
      e8:	f34080e7          	jalr	-204(ra) # 18 <_Z11printStringPKc>
      ec:	fec42503          	lw	a0,-20(s0)
      f0:	00000097          	auipc	ra,0x0
      f4:	f58080e7          	jalr	-168(ra) # 48 <_Z12printIntegeri>
      f8:	000027b7          	lui	a5,0x2
      fc:	89878513          	addi	a0,a5,-1896 # 1898 <_ZL10OSUnMapTbl+0x180>
     100:	00000097          	auipc	ra,0x0
     104:	f18080e7          	jalr	-232(ra) # 18 <_Z11printStringPKc>
     108:	000027b7          	lui	a5,0x2
     10c:	2bc7a783          	lw	a5,700(a5) # 22bc <s2>
     110:	00078513          	mv	a0,a5
     114:	00000097          	auipc	ra,0x0
     118:	f04080e7          	jalr	-252(ra) # 18 <_Z11printStringPKc>
     11c:	000027b7          	lui	a5,0x2
     120:	3107a783          	lw	a5,784(a5) # 2310 <_ZL11mySemaphore>
     124:	00078513          	mv	a0,a5
     128:	00001097          	auipc	ra,0x1
     12c:	804080e7          	jalr	-2044(ra) # 92c <_Z9OSSemPostP17EventControlBlock>
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
     15c:	2c07a783          	lw	a5,704(a5) # 22c0 <s3>
     160:	00078513          	mv	a0,a5
     164:	00000097          	auipc	ra,0x0
     168:	eb4080e7          	jalr	-332(ra) # 18 <_Z11printStringPKc>
     16c:	fe042623          	sw	zero,-20(s0)
     170:	fec42703          	lw	a4,-20(s0)
     174:	01300793          	li	a5,19
     178:	0ae7ca63          	blt	a5,a4,22c <_Z6myTaskPv+0xe8>
     17c:	fec42703          	lw	a4,-20(s0)
     180:	00a00793          	li	a5,10
     184:	08f71663          	bne	a4,a5,210 <_Z6myTaskPv+0xcc>
     188:	000027b7          	lui	a5,0x2
     18c:	2c47a783          	lw	a5,708(a5) # 22c4 <s4>
     190:	00078513          	mv	a0,a5
     194:	00000097          	auipc	ra,0x0
     198:	e84080e7          	jalr	-380(ra) # 18 <_Z11printStringPKc>
     19c:	00700893          	li	a7,7
     1a0:	000027b7          	lui	a5,0x2
     1a4:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     1a8:	00078513          	mv	a0,a5
     1ac:	00000073          	ecall
     1b0:	000027b7          	lui	a5,0x2
     1b4:	3107a703          	lw	a4,784(a5) # 2310 <_ZL11mySemaphore>
     1b8:	000027b7          	lui	a5,0x2
     1bc:	2d87a783          	lw	a5,728(a5) # 22d8 <err>
     1c0:	00078593          	mv	a1,a5
     1c4:	00070513          	mv	a0,a4
     1c8:	00000097          	auipc	ra,0x0
     1cc:	7f8080e7          	jalr	2040(ra) # 9c0 <_Z9OSSemPendP17EventControlBlockPh>
     1d0:	000027b7          	lui	a5,0x2
     1d4:	2c87a783          	lw	a5,712(a5) # 22c8 <s5>
     1d8:	00078513          	mv	a0,a5
     1dc:	00000097          	auipc	ra,0x0
     1e0:	e3c080e7          	jalr	-452(ra) # 18 <_Z11printStringPKc>
     1e4:	000027b7          	lui	a5,0x2
     1e8:	89c78513          	addi	a0,a5,-1892 # 189c <_ZL10OSUnMapTbl+0x184>
     1ec:	00000097          	auipc	ra,0x0
     1f0:	e2c080e7          	jalr	-468(ra) # 18 <_Z11printStringPKc>
     1f4:	fec42503          	lw	a0,-20(s0)
     1f8:	00000097          	auipc	ra,0x0
     1fc:	e50080e7          	jalr	-432(ra) # 48 <_Z12printIntegeri>
     200:	000027b7          	lui	a5,0x2
     204:	89878513          	addi	a0,a5,-1896 # 1898 <_ZL10OSUnMapTbl+0x180>
     208:	00000097          	auipc	ra,0x0
     20c:	e10080e7          	jalr	-496(ra) # 18 <_Z11printStringPKc>
     210:	fec42503          	lw	a0,-20(s0)
     214:	00000097          	auipc	ra,0x0
     218:	e34080e7          	jalr	-460(ra) # 48 <_Z12printIntegeri>
     21c:	fec42783          	lw	a5,-20(s0)
     220:	00178793          	addi	a5,a5,1
     224:	fef42623          	sw	a5,-20(s0)
     228:	f49ff06f          	j	170 <_Z6myTaskPv+0x2c>
     22c:	000027b7          	lui	a5,0x2
     230:	2cc7a783          	lw	a5,716(a5) # 22cc <s6>
     234:	00078513          	mv	a0,a5
     238:	00000097          	auipc	ra,0x0
     23c:	de0080e7          	jalr	-544(ra) # 18 <_Z11printStringPKc>
     240:	00a00893          	li	a7,10
     244:	00000073          	ecall
     248:	00000013          	nop
     24c:	02c12083          	lw	ra,44(sp)
     250:	02812403          	lw	s0,40(sp)
     254:	03010113          	addi	sp,sp,48
     258:	00008067          	ret

0000025c <main>:
     25c:	81010113          	addi	sp,sp,-2032
     260:	7e112623          	sw	ra,2028(sp)
     264:	7e812423          	sw	s0,2024(sp)
     268:	7f010413          	addi	s0,sp,2032
     26c:	fe010113          	addi	sp,sp,-32
     270:	00000097          	auipc	ra,0x0
     274:	368080e7          	jalr	872(ra) # 5d8 <_Z7OS_Initv>
     278:	000027b7          	lui	a5,0x2
     27c:	8b878513          	addi	a0,a5,-1864 # 18b8 <_ZL10OSUnMapTbl+0x1a0>
     280:	00000097          	auipc	ra,0x0
     284:	d98080e7          	jalr	-616(ra) # 18 <_Z11printStringPKc>
     288:	bf040793          	addi	a5,s0,-1040
     28c:	3fc78793          	addi	a5,a5,1020
     290:	00a00693          	li	a3,10
     294:	00078613          	mv	a2,a5
     298:	00000593          	li	a1,0
     29c:	000007b7          	lui	a5,0x0
     2a0:	14478513          	addi	a0,a5,324 # 144 <_Z6myTaskPv>
     2a4:	00001097          	auipc	ra,0x1
     2a8:	1b4080e7          	jalr	436(ra) # 1458 <_Z12OSTaskCreatePFvPvES_Pmh>
     2ac:	fffff7b7          	lui	a5,0xfffff
     2b0:	7f078793          	addi	a5,a5,2032 # fffff7f0 <_fstack+0xfebff7f4>
     2b4:	00f407b3          	add	a5,s0,a5
     2b8:	3fc78793          	addi	a5,a5,1020
     2bc:	01400693          	li	a3,20
     2c0:	00078613          	mv	a2,a5
     2c4:	00000593          	li	a1,0
     2c8:	000007b7          	lui	a5,0x0
     2cc:	07478513          	addi	a0,a5,116 # 74 <_Z11myTaskOtherPv>
     2d0:	00001097          	auipc	ra,0x1
     2d4:	188080e7          	jalr	392(ra) # 1458 <_Z12OSTaskCreatePFvPvES_Pmh>
     2d8:	00000097          	auipc	ra,0x0
     2dc:	468080e7          	jalr	1128(ra) # 740 <_Z17OSCreateSemaphorev>
     2e0:	00050713          	mv	a4,a0
     2e4:	000027b7          	lui	a5,0x2
     2e8:	30e7a823          	sw	a4,784(a5) # 2310 <_ZL11mySemaphore>
     2ec:	000027b7          	lui	a5,0x2
     2f0:	2d07a783          	lw	a5,720(a5) # 22d0 <s7>
     2f4:	00078513          	mv	a0,a5
     2f8:	00000097          	auipc	ra,0x0
     2fc:	d20080e7          	jalr	-736(ra) # 18 <_Z11printStringPKc>
     300:	00000097          	auipc	ra,0x0
     304:	7f4080e7          	jalr	2036(ra) # af4 <_Z8OS_Startv>
     308:	00000793          	li	a5,0
     30c:	00078513          	mv	a0,a5
     310:	02010113          	addi	sp,sp,32
     314:	7ec12083          	lw	ra,2028(sp)
     318:	7e812403          	lw	s0,2024(sp)
     31c:	7f010113          	addi	sp,sp,2032
     320:	00008067          	ret

00000324 <_Z17OS_ENTER_CRITICALv>:
     324:	ff010113          	addi	sp,sp,-16
     328:	00812623          	sw	s0,12(sp)
     32c:	01010413          	addi	s0,sp,16
     330:	00000013          	nop
     334:	00c12403          	lw	s0,12(sp)
     338:	01010113          	addi	sp,sp,16
     33c:	00008067          	ret

00000340 <_Z16OS_EXIT_CRITICALv>:
     340:	ff010113          	addi	sp,sp,-16
     344:	00812623          	sw	s0,12(sp)
     348:	01010413          	addi	s0,sp,16
     34c:	00000013          	nop
     350:	00c12403          	lw	s0,12(sp)
     354:	01010113          	addi	sp,sp,16
     358:	00008067          	ret

0000035c <_Z13OSTaskStkInitPFvPvES_Pmt>:
     35c:	fd010113          	addi	sp,sp,-48
     360:	02812623          	sw	s0,44(sp)
     364:	03010413          	addi	s0,sp,48
     368:	fca42e23          	sw	a0,-36(s0)
     36c:	fcb42c23          	sw	a1,-40(s0)
     370:	fcc42a23          	sw	a2,-44(s0)
     374:	00068793          	mv	a5,a3
     378:	fcf41923          	sh	a5,-46(s0)
     37c:	fd442783          	lw	a5,-44(s0)
     380:	fef42623          	sw	a5,-20(s0)
     384:	fec42783          	lw	a5,-20(s0)
     388:	ffc78713          	addi	a4,a5,-4
     38c:	fee42623          	sw	a4,-20(s0)
     390:	fdc42703          	lw	a4,-36(s0)
     394:	00e7a023          	sw	a4,0(a5)
     398:	fec42783          	lw	a5,-20(s0)
     39c:	ffc78713          	addi	a4,a5,-4
     3a0:	fee42623          	sw	a4,-20(s0)
     3a4:	0007a023          	sw	zero,0(a5)
     3a8:	fec42783          	lw	a5,-20(s0)
     3ac:	ffc78713          	addi	a4,a5,-4
     3b0:	fee42623          	sw	a4,-20(s0)
     3b4:	0007a023          	sw	zero,0(a5)
     3b8:	fec42783          	lw	a5,-20(s0)
     3bc:	ffc78713          	addi	a4,a5,-4
     3c0:	fee42623          	sw	a4,-20(s0)
     3c4:	0007a023          	sw	zero,0(a5)
     3c8:	fec42783          	lw	a5,-20(s0)
     3cc:	ffc78713          	addi	a4,a5,-4
     3d0:	fee42623          	sw	a4,-20(s0)
     3d4:	0007a023          	sw	zero,0(a5)
     3d8:	fec42783          	lw	a5,-20(s0)
     3dc:	ffc78713          	addi	a4,a5,-4
     3e0:	fee42623          	sw	a4,-20(s0)
     3e4:	0007a023          	sw	zero,0(a5)
     3e8:	fec42783          	lw	a5,-20(s0)
     3ec:	ffc78713          	addi	a4,a5,-4
     3f0:	fee42623          	sw	a4,-20(s0)
     3f4:	0007a023          	sw	zero,0(a5)
     3f8:	fec42783          	lw	a5,-20(s0)
     3fc:	ffc78713          	addi	a4,a5,-4
     400:	fee42623          	sw	a4,-20(s0)
     404:	0007a023          	sw	zero,0(a5)
     408:	fec42783          	lw	a5,-20(s0)
     40c:	ffc78713          	addi	a4,a5,-4
     410:	fee42623          	sw	a4,-20(s0)
     414:	0007a023          	sw	zero,0(a5)
     418:	fec42783          	lw	a5,-20(s0)
     41c:	ffc78713          	addi	a4,a5,-4
     420:	fee42623          	sw	a4,-20(s0)
     424:	0007a023          	sw	zero,0(a5)
     428:	fec42783          	lw	a5,-20(s0)
     42c:	ffc78713          	addi	a4,a5,-4
     430:	fee42623          	sw	a4,-20(s0)
     434:	0007a023          	sw	zero,0(a5)
     438:	fec42783          	lw	a5,-20(s0)
     43c:	ffc78713          	addi	a4,a5,-4
     440:	fee42623          	sw	a4,-20(s0)
     444:	0007a023          	sw	zero,0(a5)
     448:	fec42783          	lw	a5,-20(s0)
     44c:	0007a023          	sw	zero,0(a5)
     450:	fec42783          	lw	a5,-20(s0)
     454:	00078513          	mv	a0,a5
     458:	02c12403          	lw	s0,44(sp)
     45c:	03010113          	addi	sp,sp,48
     460:	00008067          	ret

00000464 <_Z16OSTaskCreateHookv>:
     464:	ff010113          	addi	sp,sp,-16
     468:	00812623          	sw	s0,12(sp)
     46c:	01010413          	addi	s0,sp,16
     470:	00000013          	nop
     474:	00c12403          	lw	s0,12(sp)
     478:	01010113          	addi	sp,sp,16
     47c:	00008067          	ret

00000480 <_Z10OS_TASK_SWv>:
     480:	ff010113          	addi	sp,sp,-16
     484:	00812623          	sw	s0,12(sp)
     488:	01010413          	addi	s0,sp,16
     48c:	00000013          	nop
     490:	00c12403          	lw	s0,12(sp)
     494:	01010113          	addi	sp,sp,16
     498:	00008067          	ret

0000049c <_Z8OS_Schedv>:
     49c:	fe010113          	addi	sp,sp,-32
     4a0:	00112e23          	sw	ra,28(sp)
     4a4:	00812c23          	sw	s0,24(sp)
     4a8:	02010413          	addi	s0,sp,32
     4ac:	00000097          	auipc	ra,0x0
     4b0:	e78080e7          	jalr	-392(ra) # 324 <_Z17OS_ENTER_CRITICALv>
     4b4:	000027b7          	lui	a5,0x2
     4b8:	2f17c783          	lbu	a5,753(a5) # 22f1 <OSRdyGrp>
     4bc:	00078713          	mv	a4,a5
     4c0:	000027b7          	lui	a5,0x2
     4c4:	9d078793          	addi	a5,a5,-1584 # 19d0 <_ZL10OSUnMapTbl>
     4c8:	00f707b3          	add	a5,a4,a5
     4cc:	0007c783          	lbu	a5,0(a5)
     4d0:	fef407a3          	sb	a5,-17(s0)
     4d4:	fef44783          	lbu	a5,-17(s0)
     4d8:	00379793          	slli	a5,a5,0x3
     4dc:	0ff7f713          	andi	a4,a5,255
     4e0:	fef44683          	lbu	a3,-17(s0)
     4e4:	000027b7          	lui	a5,0x2
     4e8:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
     4ec:	00f687b3          	add	a5,a3,a5
     4f0:	0007c783          	lbu	a5,0(a5)
     4f4:	00078693          	mv	a3,a5
     4f8:	000027b7          	lui	a5,0x2
     4fc:	9d078793          	addi	a5,a5,-1584 # 19d0 <_ZL10OSUnMapTbl>
     500:	00f687b3          	add	a5,a3,a5
     504:	0007c783          	lbu	a5,0(a5)
     508:	00f707b3          	add	a5,a4,a5
     50c:	0ff7f713          	andi	a4,a5,255
     510:	000027b7          	lui	a5,0x2
     514:	2ce78aa3          	sb	a4,725(a5) # 22d5 <OSPrioHighRdy>
     518:	000027b7          	lui	a5,0x2
     51c:	2d57c703          	lbu	a4,725(a5) # 22d5 <OSPrioHighRdy>
     520:	000027b7          	lui	a5,0x2
     524:	2ce78a23          	sb	a4,724(a5) # 22d4 <OSPrioCur>
     528:	000027b7          	lui	a5,0x2
     52c:	2d57c783          	lbu	a5,725(a5) # 22d5 <OSPrioHighRdy>
     530:	00078713          	mv	a4,a5
     534:	000037b7          	lui	a5,0x3
     538:	00271713          	slli	a4,a4,0x2
     53c:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
     540:	00f707b3          	add	a5,a4,a5
     544:	0007a703          	lw	a4,0(a5)
     548:	000027b7          	lui	a5,0x2
     54c:	2ee7a623          	sw	a4,748(a5) # 22ec <OSTCBHighRdy>
     550:	000027b7          	lui	a5,0x2
     554:	2ec7a703          	lw	a4,748(a5) # 22ec <OSTCBHighRdy>
     558:	000027b7          	lui	a5,0x2
     55c:	2ee7a423          	sw	a4,744(a5) # 22e8 <OSTCBCur>
     560:	000027b7          	lui	a5,0x2
     564:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     568:	0007a783          	lw	a5,0(a5)
     56c:	00078113          	mv	sp,a5
     570:	03012e03          	lw	t3,48(sp)
     574:	02c12403          	lw	s0,44(sp)
     578:	02812483          	lw	s1,40(sp)
     57c:	02412903          	lw	s2,36(sp)
     580:	02012983          	lw	s3,32(sp)
     584:	01c12a03          	lw	s4,28(sp)
     588:	01812a83          	lw	s5,24(sp)
     58c:	01412b03          	lw	s6,20(sp)
     590:	01012b83          	lw	s7,16(sp)
     594:	00c12c03          	lw	s8,12(sp)
     598:	00812c83          	lw	s9,8(sp)
     59c:	00412d03          	lw	s10,4(sp)
     5a0:	00012d83          	lw	s11,0(sp)
     5a4:	03410113          	addi	sp,sp,52
     5a8:	000027b7          	lui	a5,0x2
     5ac:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     5b0:	0207a783          	lw	a5,32(a5)
     5b4:	00078e13          	mv	t3,a5
     5b8:	000e0067          	jr	t3
     5bc:	00000097          	auipc	ra,0x0
     5c0:	d84080e7          	jalr	-636(ra) # 340 <_Z16OS_EXIT_CRITICALv>
     5c4:	00000013          	nop
     5c8:	01c12083          	lw	ra,28(sp)
     5cc:	01812403          	lw	s0,24(sp)
     5d0:	02010113          	addi	sp,sp,32
     5d4:	00008067          	ret

000005d8 <_Z7OS_Initv>:
     5d8:	ff010113          	addi	sp,sp,-16
     5dc:	00112623          	sw	ra,12(sp)
     5e0:	00812423          	sw	s0,8(sp)
     5e4:	01010413          	addi	s0,sp,16
     5e8:	00000097          	auipc	ra,0x0
     5ec:	0bc080e7          	jalr	188(ra) # 6a4 <_Z20OS_EventWaitListInitv>
     5f0:	00000097          	auipc	ra,0x0
     5f4:	01c080e7          	jalr	28(ra) # 60c <_Z15OS_TaskFreePoolv>
     5f8:	00000013          	nop
     5fc:	00c12083          	lw	ra,12(sp)
     600:	00812403          	lw	s0,8(sp)
     604:	01010113          	addi	sp,sp,16
     608:	00008067          	ret

0000060c <_Z15OS_TaskFreePoolv>:
     60c:	fe010113          	addi	sp,sp,-32
     610:	00812e23          	sw	s0,28(sp)
     614:	02010413          	addi	s0,sp,32
     618:	000027b7          	lui	a5,0x2
     61c:	00002737          	lui	a4,0x2
     620:	63470713          	addi	a4,a4,1588 # 2634 <freeTCBs>
     624:	2ee7a023          	sw	a4,736(a5) # 22e0 <OSTCBFreeList>
     628:	000027b7          	lui	a5,0x2
     62c:	2e07a783          	lw	a5,736(a5) # 22e0 <OSTCBFreeList>
     630:	fef42623          	sw	a5,-20(s0)
     634:	00100793          	li	a5,1
     638:	fef42423          	sw	a5,-24(s0)
     63c:	fe842703          	lw	a4,-24(s0)
     640:	03f00793          	li	a5,63
     644:	04e7c463          	blt	a5,a4,68c <_Z15OS_TaskFreePoolv+0x80>
     648:	fe842703          	lw	a4,-24(s0)
     64c:	00070793          	mv	a5,a4
     650:	00379793          	slli	a5,a5,0x3
     654:	00e787b3          	add	a5,a5,a4
     658:	00279793          	slli	a5,a5,0x2
     65c:	00002737          	lui	a4,0x2
     660:	63470713          	addi	a4,a4,1588 # 2634 <freeTCBs>
     664:	00e78733          	add	a4,a5,a4
     668:	fec42783          	lw	a5,-20(s0)
     66c:	00e7a223          	sw	a4,4(a5)
     670:	fec42783          	lw	a5,-20(s0)
     674:	0047a783          	lw	a5,4(a5)
     678:	fef42623          	sw	a5,-20(s0)
     67c:	fe842783          	lw	a5,-24(s0)
     680:	00178793          	addi	a5,a5,1
     684:	fef42423          	sw	a5,-24(s0)
     688:	fb5ff06f          	j	63c <_Z15OS_TaskFreePoolv+0x30>
     68c:	fec42783          	lw	a5,-20(s0)
     690:	0007a223          	sw	zero,4(a5)
     694:	00000013          	nop
     698:	01c12403          	lw	s0,28(sp)
     69c:	02010113          	addi	sp,sp,32
     6a0:	00008067          	ret

000006a4 <_Z20OS_EventWaitListInitv>:
     6a4:	fe010113          	addi	sp,sp,-32
     6a8:	00812e23          	sw	s0,28(sp)
     6ac:	02010413          	addi	s0,sp,32
     6b0:	000027b7          	lui	a5,0x2
     6b4:	00002737          	lui	a4,0x2
     6b8:	31470713          	addi	a4,a4,788 # 2314 <freeEvents>
     6bc:	2ce7ae23          	sw	a4,732(a5) # 22dc <OSEventFreeList>
     6c0:	000027b7          	lui	a5,0x2
     6c4:	2dc7a783          	lw	a5,732(a5) # 22dc <OSEventFreeList>
     6c8:	fef42623          	sw	a5,-20(s0)
     6cc:	00100793          	li	a5,1
     6d0:	fef405a3          	sb	a5,-21(s0)
     6d4:	feb40703          	lb	a4,-21(s0)
     6d8:	01300793          	li	a5,19
     6dc:	04e7c663          	blt	a5,a4,728 <_Z20OS_EventWaitListInitv+0x84>
     6e0:	feb40703          	lb	a4,-21(s0)
     6e4:	00070793          	mv	a5,a4
     6e8:	00279793          	slli	a5,a5,0x2
     6ec:	00e787b3          	add	a5,a5,a4
     6f0:	00379793          	slli	a5,a5,0x3
     6f4:	00002737          	lui	a4,0x2
     6f8:	31470713          	addi	a4,a4,788 # 2314 <freeEvents>
     6fc:	00e78733          	add	a4,a5,a4
     700:	fec42783          	lw	a5,-20(s0)
     704:	00e7a023          	sw	a4,0(a5)
     708:	fec42783          	lw	a5,-20(s0)
     70c:	0007a783          	lw	a5,0(a5)
     710:	fef42623          	sw	a5,-20(s0)
     714:	feb44783          	lbu	a5,-21(s0)
     718:	00178793          	addi	a5,a5,1
     71c:	0ff7f793          	andi	a5,a5,255
     720:	fef405a3          	sb	a5,-21(s0)
     724:	fb1ff06f          	j	6d4 <_Z20OS_EventWaitListInitv+0x30>
     728:	fec42783          	lw	a5,-20(s0)
     72c:	0007a023          	sw	zero,0(a5)
     730:	00000013          	nop
     734:	01c12403          	lw	s0,28(sp)
     738:	02010113          	addi	sp,sp,32
     73c:	00008067          	ret

00000740 <_Z17OSCreateSemaphorev>:
     740:	fe010113          	addi	sp,sp,-32
     744:	00812e23          	sw	s0,28(sp)
     748:	02010413          	addi	s0,sp,32
     74c:	000027b7          	lui	a5,0x2
     750:	2dc7a783          	lw	a5,732(a5) # 22dc <OSEventFreeList>
     754:	fef42623          	sw	a5,-20(s0)
     758:	000027b7          	lui	a5,0x2
     75c:	2dc7a783          	lw	a5,732(a5) # 22dc <OSEventFreeList>
     760:	00078c63          	beqz	a5,778 <_Z17OSCreateSemaphorev+0x38>
     764:	000027b7          	lui	a5,0x2
     768:	2dc7a783          	lw	a5,732(a5) # 22dc <OSEventFreeList>
     76c:	0007a703          	lw	a4,0(a5)
     770:	000027b7          	lui	a5,0x2
     774:	2ce7ae23          	sw	a4,732(a5) # 22dc <OSEventFreeList>
     778:	fec42783          	lw	a5,-20(s0)
     77c:	02078463          	beqz	a5,7a4 <_Z17OSCreateSemaphorev+0x64>
     780:	fec42783          	lw	a5,-20(s0)
     784:	00800713          	li	a4,8
     788:	00e78223          	sb	a4,4(a5)
     78c:	fec42783          	lw	a5,-20(s0)
     790:	00079323          	sh	zero,6(a5)
     794:	fec42783          	lw	a5,-20(s0)
     798:	0007a023          	sw	zero,0(a5)
     79c:	fec42783          	lw	a5,-20(s0)
     7a0:	000782a3          	sb	zero,5(a5)
     7a4:	fec42783          	lw	a5,-20(s0)
     7a8:	00078513          	mv	a0,a5
     7ac:	01c12403          	lw	s0,28(sp)
     7b0:	02010113          	addi	sp,sp,32
     7b4:	00008067          	ret

000007b8 <_Z16OS_EventTaskWaitP17EventControlBlock>:
     7b8:	fe010113          	addi	sp,sp,-32
     7bc:	00812e23          	sw	s0,28(sp)
     7c0:	02010413          	addi	s0,sp,32
     7c4:	fea42623          	sw	a0,-20(s0)
     7c8:	000027b7          	lui	a5,0x2
     7cc:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     7d0:	fec42703          	lw	a4,-20(s0)
     7d4:	00e7a623          	sw	a4,12(a5)
     7d8:	000027b7          	lui	a5,0x2
     7dc:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     7e0:	0197c783          	lbu	a5,25(a5)
     7e4:	00078713          	mv	a4,a5
     7e8:	000027b7          	lui	a5,0x2
     7ec:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
     7f0:	00f707b3          	add	a5,a4,a5
     7f4:	0007c783          	lbu	a5,0(a5)
     7f8:	01879713          	slli	a4,a5,0x18
     7fc:	41875713          	srai	a4,a4,0x18
     800:	000027b7          	lui	a5,0x2
     804:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     808:	01a7c783          	lbu	a5,26(a5)
     80c:	01879793          	slli	a5,a5,0x18
     810:	4187d793          	srai	a5,a5,0x18
     814:	fff7c793          	not	a5,a5
     818:	01879793          	slli	a5,a5,0x18
     81c:	4187d793          	srai	a5,a5,0x18
     820:	00f777b3          	and	a5,a4,a5
     824:	01879713          	slli	a4,a5,0x18
     828:	41875713          	srai	a4,a4,0x18
     82c:	000027b7          	lui	a5,0x2
     830:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     834:	0197c783          	lbu	a5,25(a5)
     838:	0ff77693          	andi	a3,a4,255
     83c:	00002737          	lui	a4,0x2
     840:	2f470713          	addi	a4,a4,756 # 22f4 <OSRdyTbl>
     844:	00e78733          	add	a4,a5,a4
     848:	00d70023          	sb	a3,0(a4)
     84c:	00002737          	lui	a4,0x2
     850:	2f470713          	addi	a4,a4,756 # 22f4 <OSRdyTbl>
     854:	00e787b3          	add	a5,a5,a4
     858:	0007c783          	lbu	a5,0(a5)
     85c:	0017b793          	seqz	a5,a5
     860:	0ff7f793          	andi	a5,a5,255
     864:	04078663          	beqz	a5,8b0 <_Z16OS_EventTaskWaitP17EventControlBlock+0xf8>
     868:	000027b7          	lui	a5,0x2
     86c:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     870:	01b7c783          	lbu	a5,27(a5)
     874:	01879793          	slli	a5,a5,0x18
     878:	4187d793          	srai	a5,a5,0x18
     87c:	fff7c793          	not	a5,a5
     880:	01879713          	slli	a4,a5,0x18
     884:	41875713          	srai	a4,a4,0x18
     888:	000027b7          	lui	a5,0x2
     88c:	2f17c783          	lbu	a5,753(a5) # 22f1 <OSRdyGrp>
     890:	01879793          	slli	a5,a5,0x18
     894:	4187d793          	srai	a5,a5,0x18
     898:	00f777b3          	and	a5,a4,a5
     89c:	01879793          	slli	a5,a5,0x18
     8a0:	4187d793          	srai	a5,a5,0x18
     8a4:	0ff7f713          	andi	a4,a5,255
     8a8:	000027b7          	lui	a5,0x2
     8ac:	2ee788a3          	sb	a4,753(a5) # 22f1 <OSRdyGrp>
     8b0:	000027b7          	lui	a5,0x2
     8b4:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     8b8:	0197c783          	lbu	a5,25(a5)
     8bc:	00078713          	mv	a4,a5
     8c0:	fec42783          	lw	a5,-20(s0)
     8c4:	00e787b3          	add	a5,a5,a4
     8c8:	0087c703          	lbu	a4,8(a5)
     8cc:	000027b7          	lui	a5,0x2
     8d0:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     8d4:	01a7c783          	lbu	a5,26(a5)
     8d8:	000026b7          	lui	a3,0x2
     8dc:	2e86a683          	lw	a3,744(a3) # 22e8 <OSTCBCur>
     8e0:	0196c683          	lbu	a3,25(a3)
     8e4:	00f767b3          	or	a5,a4,a5
     8e8:	0ff7f713          	andi	a4,a5,255
     8ec:	fec42783          	lw	a5,-20(s0)
     8f0:	00d787b3          	add	a5,a5,a3
     8f4:	00e78423          	sb	a4,8(a5)
     8f8:	fec42783          	lw	a5,-20(s0)
     8fc:	0057c703          	lbu	a4,5(a5)
     900:	000027b7          	lui	a5,0x2
     904:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     908:	01b7c783          	lbu	a5,27(a5)
     90c:	00f767b3          	or	a5,a4,a5
     910:	0ff7f713          	andi	a4,a5,255
     914:	fec42783          	lw	a5,-20(s0)
     918:	00e782a3          	sb	a4,5(a5)
     91c:	00000013          	nop
     920:	01c12403          	lw	s0,28(sp)
     924:	02010113          	addi	sp,sp,32
     928:	00008067          	ret

0000092c <_Z9OSSemPostP17EventControlBlock>:
     92c:	fe010113          	addi	sp,sp,-32
     930:	00112e23          	sw	ra,28(sp)
     934:	00812c23          	sw	s0,24(sp)
     938:	02010413          	addi	s0,sp,32
     93c:	fea42623          	sw	a0,-20(s0)
     940:	fec42783          	lw	a5,-20(s0)
     944:	0057c783          	lbu	a5,5(a5)
     948:	02078463          	beqz	a5,970 <_Z9OSSemPostP17EventControlBlock+0x44>
     94c:	00a00613          	li	a2,10
     950:	00000593          	li	a1,0
     954:	fec42503          	lw	a0,-20(s0)
     958:	00000097          	auipc	ra,0x0
     95c:	668080e7          	jalr	1640(ra) # fc0 <_Z12EventTaskRdyP17EventControlBlockPvh>
     960:	00000097          	auipc	ra,0x0
     964:	b3c080e7          	jalr	-1220(ra) # 49c <_Z8OS_Schedv>
     968:	00000793          	li	a5,0
     96c:	0400006f          	j	9ac <_Z9OSSemPostP17EventControlBlock+0x80>
     970:	fec42783          	lw	a5,-20(s0)
     974:	0067d703          	lhu	a4,6(a5)
     978:	000107b7          	lui	a5,0x10
     97c:	fff78793          	addi	a5,a5,-1 # ffff <__BSS_END__+0xcfcb>
     980:	02f70463          	beq	a4,a5,9a8 <_Z9OSSemPostP17EventControlBlock+0x7c>
     984:	fec42783          	lw	a5,-20(s0)
     988:	0067d783          	lhu	a5,6(a5)
     98c:	00178793          	addi	a5,a5,1
     990:	01079713          	slli	a4,a5,0x10
     994:	01075713          	srli	a4,a4,0x10
     998:	fec42783          	lw	a5,-20(s0)
     99c:	00e79323          	sh	a4,6(a5)
     9a0:	00000793          	li	a5,0
     9a4:	0080006f          	j	9ac <_Z9OSSemPostP17EventControlBlock+0x80>
     9a8:	00500793          	li	a5,5
     9ac:	00078513          	mv	a0,a5
     9b0:	01c12083          	lw	ra,28(sp)
     9b4:	01812403          	lw	s0,24(sp)
     9b8:	02010113          	addi	sp,sp,32
     9bc:	00008067          	ret

000009c0 <_Z9OSSemPendP17EventControlBlockPh>:
     9c0:	fe010113          	addi	sp,sp,-32
     9c4:	00112e23          	sw	ra,28(sp)
     9c8:	00812c23          	sw	s0,24(sp)
     9cc:	02010413          	addi	s0,sp,32
     9d0:	fea42623          	sw	a0,-20(s0)
     9d4:	feb42423          	sw	a1,-24(s0)
     9d8:	00008713          	mv	a4,ra
     9dc:	000027b7          	lui	a5,0x2
     9e0:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     9e4:	02e7a023          	sw	a4,32(a5)
     9e8:	fec42783          	lw	a5,-20(s0)
     9ec:	00079a63          	bnez	a5,a00 <_Z9OSSemPendP17EventControlBlockPh+0x40>
     9f0:	fe842783          	lw	a5,-24(s0)
     9f4:	00300713          	li	a4,3
     9f8:	00e78023          	sb	a4,0(a5)
     9fc:	0a00006f          	j	a9c <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     a00:	fec42783          	lw	a5,-20(s0)
     a04:	0047c703          	lbu	a4,4(a5)
     a08:	00800793          	li	a5,8
     a0c:	00f70a63          	beq	a4,a5,a20 <_Z9OSSemPendP17EventControlBlockPh+0x60>
     a10:	fe842783          	lw	a5,-24(s0)
     a14:	00400713          	li	a4,4
     a18:	00e78023          	sb	a4,0(a5)
     a1c:	0800006f          	j	a9c <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     a20:	fec42783          	lw	a5,-20(s0)
     a24:	0067d783          	lhu	a5,6(a5)
     a28:	02078663          	beqz	a5,a54 <_Z9OSSemPendP17EventControlBlockPh+0x94>
     a2c:	fec42783          	lw	a5,-20(s0)
     a30:	0067d783          	lhu	a5,6(a5)
     a34:	fff78793          	addi	a5,a5,-1
     a38:	01079713          	slli	a4,a5,0x10
     a3c:	01075713          	srli	a4,a4,0x10
     a40:	fec42783          	lw	a5,-20(s0)
     a44:	00e79323          	sh	a4,6(a5)
     a48:	fe842783          	lw	a5,-24(s0)
     a4c:	00078023          	sb	zero,0(a5)
     a50:	04c0006f          	j	a9c <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     a54:	000027b7          	lui	a5,0x2
     a58:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     a5c:	0167c703          	lbu	a4,22(a5)
     a60:	000027b7          	lui	a5,0x2
     a64:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     a68:	00a76713          	ori	a4,a4,10
     a6c:	0ff77713          	andi	a4,a4,255
     a70:	00e78b23          	sb	a4,22(a5)
     a74:	fec42503          	lw	a0,-20(s0)
     a78:	00000097          	auipc	ra,0x0
     a7c:	d40080e7          	jalr	-704(ra) # 7b8 <_Z16OS_EventTaskWaitP17EventControlBlock>
     a80:	00000097          	auipc	ra,0x0
     a84:	a1c080e7          	jalr	-1508(ra) # 49c <_Z8OS_Schedv>
     a88:	000027b7          	lui	a5,0x2
     a8c:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     a90:	0007a623          	sw	zero,12(a5)
     a94:	fe842783          	lw	a5,-24(s0)
     a98:	00078023          	sb	zero,0(a5)
     a9c:	01c12083          	lw	ra,28(sp)
     aa0:	01812403          	lw	s0,24(sp)
     aa4:	02010113          	addi	sp,sp,32
     aa8:	00008067          	ret

00000aac <_Z14OSStartHighRdyv>:
     aac:	ff010113          	addi	sp,sp,-16
     ab0:	00812623          	sw	s0,12(sp)
     ab4:	01010413          	addi	s0,sp,16
     ab8:	000027b7          	lui	a5,0x2
     abc:	00100713          	li	a4,1
     ac0:	2ee78823          	sb	a4,752(a5) # 22f0 <OSRunning>
     ac4:	000027b7          	lui	a5,0x2
     ac8:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     acc:	0007a783          	lw	a5,0(a5)
     ad0:	00078113          	mv	sp,a5
     ad4:	03010113          	addi	sp,sp,48
     ad8:	00012e03          	lw	t3,0(sp)
     adc:	00410113          	addi	sp,sp,4
     ae0:	000e0067          	jr	t3
     ae4:	00000013          	nop
     ae8:	00c12403          	lw	s0,12(sp)
     aec:	01010113          	addi	sp,sp,16
     af0:	00008067          	ret

00000af4 <_Z8OS_Startv>:
     af4:	fe010113          	addi	sp,sp,-32
     af8:	00112e23          	sw	ra,28(sp)
     afc:	00812c23          	sw	s0,24(sp)
     b00:	02010413          	addi	s0,sp,32
     b04:	000027b7          	lui	a5,0x2
     b08:	2f07c783          	lbu	a5,752(a5) # 22f0 <OSRunning>
     b0c:	0c079063          	bnez	a5,bcc <_Z8OS_Startv+0xd8>
     b10:	000027b7          	lui	a5,0x2
     b14:	2f17c783          	lbu	a5,753(a5) # 22f1 <OSRdyGrp>
     b18:	00078713          	mv	a4,a5
     b1c:	000027b7          	lui	a5,0x2
     b20:	9d078793          	addi	a5,a5,-1584 # 19d0 <_ZL10OSUnMapTbl>
     b24:	00f707b3          	add	a5,a4,a5
     b28:	0007c783          	lbu	a5,0(a5)
     b2c:	fef407a3          	sb	a5,-17(s0)
     b30:	fef44703          	lbu	a4,-17(s0)
     b34:	000027b7          	lui	a5,0x2
     b38:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
     b3c:	00f707b3          	add	a5,a4,a5
     b40:	0007c783          	lbu	a5,0(a5)
     b44:	00078713          	mv	a4,a5
     b48:	000027b7          	lui	a5,0x2
     b4c:	9d078793          	addi	a5,a5,-1584 # 19d0 <_ZL10OSUnMapTbl>
     b50:	00f707b3          	add	a5,a4,a5
     b54:	0007c783          	lbu	a5,0(a5)
     b58:	fef40723          	sb	a5,-18(s0)
     b5c:	fef44783          	lbu	a5,-17(s0)
     b60:	00379793          	slli	a5,a5,0x3
     b64:	0ff7f713          	andi	a4,a5,255
     b68:	fee44783          	lbu	a5,-18(s0)
     b6c:	00f707b3          	add	a5,a4,a5
     b70:	0ff7f713          	andi	a4,a5,255
     b74:	000027b7          	lui	a5,0x2
     b78:	2ce78aa3          	sb	a4,725(a5) # 22d5 <OSPrioHighRdy>
     b7c:	000027b7          	lui	a5,0x2
     b80:	2d57c703          	lbu	a4,725(a5) # 22d5 <OSPrioHighRdy>
     b84:	000027b7          	lui	a5,0x2
     b88:	2ce78a23          	sb	a4,724(a5) # 22d4 <OSPrioCur>
     b8c:	000027b7          	lui	a5,0x2
     b90:	2d57c783          	lbu	a5,725(a5) # 22d5 <OSPrioHighRdy>
     b94:	00078713          	mv	a4,a5
     b98:	000037b7          	lui	a5,0x3
     b9c:	00271713          	slli	a4,a4,0x2
     ba0:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
     ba4:	00f707b3          	add	a5,a4,a5
     ba8:	0007a703          	lw	a4,0(a5)
     bac:	000027b7          	lui	a5,0x2
     bb0:	2ee7a623          	sw	a4,748(a5) # 22ec <OSTCBHighRdy>
     bb4:	000027b7          	lui	a5,0x2
     bb8:	2ec7a703          	lw	a4,748(a5) # 22ec <OSTCBHighRdy>
     bbc:	000027b7          	lui	a5,0x2
     bc0:	2ee7a423          	sw	a4,744(a5) # 22e8 <OSTCBCur>
     bc4:	00000097          	auipc	ra,0x0
     bc8:	ee8080e7          	jalr	-280(ra) # aac <_Z14OSStartHighRdyv>
     bcc:	00000013          	nop
     bd0:	01c12083          	lw	ra,28(sp)
     bd4:	01812403          	lw	s0,24(sp)
     bd8:	02010113          	addi	sp,sp,32
     bdc:	00008067          	ret

00000be0 <_Z13OSTaskSuspendh>:
     be0:	fd010113          	addi	sp,sp,-48
     be4:	02112623          	sw	ra,44(sp)
     be8:	02812423          	sw	s0,40(sp)
     bec:	03010413          	addi	s0,sp,48
     bf0:	00050793          	mv	a5,a0
     bf4:	fcf40fa3          	sb	a5,-33(s0)
     bf8:	fdf44703          	lbu	a4,-33(s0)
     bfc:	03e00793          	li	a5,62
     c00:	00e7fa63          	bgeu	a5,a4,c14 <_Z13OSTaskSuspendh+0x34>
     c04:	fdf44783          	lbu	a5,-33(s0)
     c08:	00078663          	beqz	a5,c14 <_Z13OSTaskSuspendh+0x34>
     c0c:	00200793          	li	a5,2
     c10:	1740006f          	j	d84 <_Z13OSTaskSuspendh+0x1a4>
     c14:	fffff097          	auipc	ra,0xfffff
     c18:	710080e7          	jalr	1808(ra) # 324 <_Z17OS_ENTER_CRITICALv>
     c1c:	fdf44783          	lbu	a5,-33(s0)
     c20:	02079063          	bnez	a5,c40 <_Z13OSTaskSuspendh+0x60>
     c24:	000027b7          	lui	a5,0x2
     c28:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     c2c:	0177c783          	lbu	a5,23(a5)
     c30:	fcf40fa3          	sb	a5,-33(s0)
     c34:	00100793          	li	a5,1
     c38:	fef407a3          	sb	a5,-17(s0)
     c3c:	0280006f          	j	c64 <_Z13OSTaskSuspendh+0x84>
     c40:	000027b7          	lui	a5,0x2
     c44:	2e87a783          	lw	a5,744(a5) # 22e8 <OSTCBCur>
     c48:	0177c783          	lbu	a5,23(a5)
     c4c:	fdf44703          	lbu	a4,-33(s0)
     c50:	00f71863          	bne	a4,a5,c60 <_Z13OSTaskSuspendh+0x80>
     c54:	00100793          	li	a5,1
     c58:	fef407a3          	sb	a5,-17(s0)
     c5c:	0080006f          	j	c64 <_Z13OSTaskSuspendh+0x84>
     c60:	fe0407a3          	sb	zero,-17(s0)
     c64:	fdf44703          	lbu	a4,-33(s0)
     c68:	000037b7          	lui	a5,0x3
     c6c:	00271713          	slli	a4,a4,0x2
     c70:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
     c74:	00f707b3          	add	a5,a4,a5
     c78:	0007a783          	lw	a5,0(a5)
     c7c:	fef42423          	sw	a5,-24(s0)
     c80:	fe842783          	lw	a5,-24(s0)
     c84:	00079a63          	bnez	a5,c98 <_Z13OSTaskSuspendh+0xb8>
     c88:	fffff097          	auipc	ra,0xfffff
     c8c:	6b8080e7          	jalr	1720(ra) # 340 <_Z16OS_EXIT_CRITICALv>
     c90:	00400793          	li	a5,4
     c94:	0f00006f          	j	d84 <_Z13OSTaskSuspendh+0x1a4>
     c98:	fe842783          	lw	a5,-24(s0)
     c9c:	0197c783          	lbu	a5,25(a5)
     ca0:	00078713          	mv	a4,a5
     ca4:	000027b7          	lui	a5,0x2
     ca8:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
     cac:	00f707b3          	add	a5,a4,a5
     cb0:	0007c783          	lbu	a5,0(a5)
     cb4:	01879713          	slli	a4,a5,0x18
     cb8:	41875713          	srai	a4,a4,0x18
     cbc:	fe842783          	lw	a5,-24(s0)
     cc0:	01a7c783          	lbu	a5,26(a5)
     cc4:	01879793          	slli	a5,a5,0x18
     cc8:	4187d793          	srai	a5,a5,0x18
     ccc:	fff7c793          	not	a5,a5
     cd0:	01879793          	slli	a5,a5,0x18
     cd4:	4187d793          	srai	a5,a5,0x18
     cd8:	00f777b3          	and	a5,a4,a5
     cdc:	01879713          	slli	a4,a5,0x18
     ce0:	41875713          	srai	a4,a4,0x18
     ce4:	fe842783          	lw	a5,-24(s0)
     ce8:	0197c783          	lbu	a5,25(a5)
     cec:	0ff77693          	andi	a3,a4,255
     cf0:	00002737          	lui	a4,0x2
     cf4:	2f470713          	addi	a4,a4,756 # 22f4 <OSRdyTbl>
     cf8:	00e78733          	add	a4,a5,a4
     cfc:	00d70023          	sb	a3,0(a4)
     d00:	00002737          	lui	a4,0x2
     d04:	2f470713          	addi	a4,a4,756 # 22f4 <OSRdyTbl>
     d08:	00e787b3          	add	a5,a5,a4
     d0c:	0007c783          	lbu	a5,0(a5)
     d10:	0017b793          	seqz	a5,a5
     d14:	0ff7f793          	andi	a5,a5,255
     d18:	04078463          	beqz	a5,d60 <_Z13OSTaskSuspendh+0x180>
     d1c:	fe842783          	lw	a5,-24(s0)
     d20:	01b7c783          	lbu	a5,27(a5)
     d24:	01879793          	slli	a5,a5,0x18
     d28:	4187d793          	srai	a5,a5,0x18
     d2c:	fff7c793          	not	a5,a5
     d30:	01879713          	slli	a4,a5,0x18
     d34:	41875713          	srai	a4,a4,0x18
     d38:	000027b7          	lui	a5,0x2
     d3c:	2f17c783          	lbu	a5,753(a5) # 22f1 <OSRdyGrp>
     d40:	01879793          	slli	a5,a5,0x18
     d44:	4187d793          	srai	a5,a5,0x18
     d48:	00f777b3          	and	a5,a4,a5
     d4c:	01879793          	slli	a5,a5,0x18
     d50:	4187d793          	srai	a5,a5,0x18
     d54:	0ff7f713          	andi	a4,a5,255
     d58:	000027b7          	lui	a5,0x2
     d5c:	2ee788a3          	sb	a4,753(a5) # 22f1 <OSRdyGrp>
     d60:	fe842783          	lw	a5,-24(s0)
     d64:	0167c783          	lbu	a5,22(a5)
     d68:	0037e793          	ori	a5,a5,3
     d6c:	0ff7f713          	andi	a4,a5,255
     d70:	fe842783          	lw	a5,-24(s0)
     d74:	00e78b23          	sb	a4,22(a5)
     d78:	fffff097          	auipc	ra,0xfffff
     d7c:	5c8080e7          	jalr	1480(ra) # 340 <_Z16OS_EXIT_CRITICALv>
     d80:	00000793          	li	a5,0
     d84:	00078513          	mv	a0,a5
     d88:	02c12083          	lw	ra,44(sp)
     d8c:	02812403          	lw	s0,40(sp)
     d90:	03010113          	addi	sp,sp,48
     d94:	00008067          	ret

00000d98 <_Z11OSEventInitP17EventControlBlockh>:
     d98:	fd010113          	addi	sp,sp,-48
     d9c:	02812623          	sw	s0,44(sp)
     da0:	03010413          	addi	s0,sp,48
     da4:	fca42e23          	sw	a0,-36(s0)
     da8:	00058793          	mv	a5,a1
     dac:	fcf40da3          	sb	a5,-37(s0)
     db0:	fdc42783          	lw	a5,-36(s0)
     db4:	fdb44703          	lbu	a4,-37(s0)
     db8:	00e78223          	sb	a4,4(a5)
     dbc:	fdc42783          	lw	a5,-36(s0)
     dc0:	000782a3          	sb	zero,5(a5)
     dc4:	fdc42783          	lw	a5,-36(s0)
     dc8:	0007a023          	sw	zero,0(a5)
     dcc:	fe0407a3          	sb	zero,-17(s0)
     dd0:	fef44703          	lbu	a4,-17(s0)
     dd4:	01d00793          	li	a5,29
     dd8:	02e7e263          	bltu	a5,a4,dfc <_Z11OSEventInitP17EventControlBlockh+0x64>
     ddc:	fef44783          	lbu	a5,-17(s0)
     de0:	fdc42703          	lw	a4,-36(s0)
     de4:	00f707b3          	add	a5,a4,a5
     de8:	00078423          	sb	zero,8(a5)
     dec:	fef44783          	lbu	a5,-17(s0)
     df0:	00178793          	addi	a5,a5,1
     df4:	fef407a3          	sb	a5,-17(s0)
     df8:	fd9ff06f          	j	dd0 <_Z11OSEventInitP17EventControlBlockh+0x38>
     dfc:	00000013          	nop
     e00:	02c12403          	lw	s0,44(sp)
     e04:	03010113          	addi	sp,sp,48
     e08:	00008067          	ret

00000e0c <_Z19appendToWaitingListP17EventControlBlockh>:
     e0c:	fe010113          	addi	sp,sp,-32
     e10:	00812e23          	sw	s0,28(sp)
     e14:	02010413          	addi	s0,sp,32
     e18:	fea42623          	sw	a0,-20(s0)
     e1c:	00058793          	mv	a5,a1
     e20:	fef405a3          	sb	a5,-21(s0)
     e24:	fec42783          	lw	a5,-20(s0)
     e28:	0057c703          	lbu	a4,5(a5)
     e2c:	feb44783          	lbu	a5,-21(s0)
     e30:	4037d693          	srai	a3,a5,0x3
     e34:	000027b7          	lui	a5,0x2
     e38:	27878793          	addi	a5,a5,632 # 2278 <_ZL8OSMapTbl>
     e3c:	00f687b3          	add	a5,a3,a5
     e40:	0007c783          	lbu	a5,0(a5)
     e44:	00f767b3          	or	a5,a4,a5
     e48:	0ff7f713          	andi	a4,a5,255
     e4c:	fec42783          	lw	a5,-20(s0)
     e50:	00e782a3          	sb	a4,5(a5)
     e54:	feb44783          	lbu	a5,-21(s0)
     e58:	4037d793          	srai	a5,a5,0x3
     e5c:	fec42703          	lw	a4,-20(s0)
     e60:	00f707b3          	add	a5,a4,a5
     e64:	0087c683          	lbu	a3,8(a5)
     e68:	feb44783          	lbu	a5,-21(s0)
     e6c:	0077f713          	andi	a4,a5,7
     e70:	000027b7          	lui	a5,0x2
     e74:	27878793          	addi	a5,a5,632 # 2278 <_ZL8OSMapTbl>
     e78:	00f707b3          	add	a5,a4,a5
     e7c:	0007c703          	lbu	a4,0(a5)
     e80:	feb44783          	lbu	a5,-21(s0)
     e84:	4037d793          	srai	a5,a5,0x3
     e88:	00e6e733          	or	a4,a3,a4
     e8c:	0ff77713          	andi	a4,a4,255
     e90:	fec42683          	lw	a3,-20(s0)
     e94:	00f687b3          	add	a5,a3,a5
     e98:	00e78423          	sb	a4,8(a5)
     e9c:	00000013          	nop
     ea0:	01c12403          	lw	s0,28(sp)
     ea4:	02010113          	addi	sp,sp,32
     ea8:	00008067          	ret

00000eac <_Z20eraseFromWaitingListP17EventControlBlock>:
     eac:	fd010113          	addi	sp,sp,-48
     eb0:	02112623          	sw	ra,44(sp)
     eb4:	02812423          	sw	s0,40(sp)
     eb8:	03010413          	addi	s0,sp,48
     ebc:	fca42e23          	sw	a0,-36(s0)
     ec0:	fdc42503          	lw	a0,-36(s0)
     ec4:	00000097          	auipc	ra,0x0
     ec8:	320080e7          	jalr	800(ra) # 11e4 <_Z18getHighestPriorityP17EventControlBlock>
     ecc:	00050793          	mv	a5,a0
     ed0:	fef407a3          	sb	a5,-17(s0)
     ed4:	fef44783          	lbu	a5,-17(s0)
     ed8:	4037d793          	srai	a5,a5,0x3
     edc:	fdc42703          	lw	a4,-36(s0)
     ee0:	00f707b3          	add	a5,a4,a5
     ee4:	0087c783          	lbu	a5,8(a5)
     ee8:	01879713          	slli	a4,a5,0x18
     eec:	41875713          	srai	a4,a4,0x18
     ef0:	fef44783          	lbu	a5,-17(s0)
     ef4:	0077f693          	andi	a3,a5,7
     ef8:	000027b7          	lui	a5,0x2
     efc:	27878793          	addi	a5,a5,632 # 2278 <_ZL8OSMapTbl>
     f00:	00f687b3          	add	a5,a3,a5
     f04:	0007c783          	lbu	a5,0(a5)
     f08:	01879793          	slli	a5,a5,0x18
     f0c:	4187d793          	srai	a5,a5,0x18
     f10:	fff7c793          	not	a5,a5
     f14:	01879793          	slli	a5,a5,0x18
     f18:	4187d793          	srai	a5,a5,0x18
     f1c:	00f777b3          	and	a5,a4,a5
     f20:	01879713          	slli	a4,a5,0x18
     f24:	41875713          	srai	a4,a4,0x18
     f28:	fef44783          	lbu	a5,-17(s0)
     f2c:	4037d793          	srai	a5,a5,0x3
     f30:	0ff77693          	andi	a3,a4,255
     f34:	fdc42703          	lw	a4,-36(s0)
     f38:	00f70733          	add	a4,a4,a5
     f3c:	00d70423          	sb	a3,8(a4)
     f40:	fdc42703          	lw	a4,-36(s0)
     f44:	00f707b3          	add	a5,a4,a5
     f48:	0087c783          	lbu	a5,8(a5)
     f4c:	0017b793          	seqz	a5,a5
     f50:	0ff7f793          	andi	a5,a5,255
     f54:	04078c63          	beqz	a5,fac <_Z20eraseFromWaitingListP17EventControlBlock+0x100>
     f58:	fdc42783          	lw	a5,-36(s0)
     f5c:	0057c783          	lbu	a5,5(a5)
     f60:	01879713          	slli	a4,a5,0x18
     f64:	41875713          	srai	a4,a4,0x18
     f68:	fef44783          	lbu	a5,-17(s0)
     f6c:	4037d693          	srai	a3,a5,0x3
     f70:	000027b7          	lui	a5,0x2
     f74:	27878793          	addi	a5,a5,632 # 2278 <_ZL8OSMapTbl>
     f78:	00f687b3          	add	a5,a3,a5
     f7c:	0007c783          	lbu	a5,0(a5)
     f80:	01879793          	slli	a5,a5,0x18
     f84:	4187d793          	srai	a5,a5,0x18
     f88:	fff7c793          	not	a5,a5
     f8c:	01879793          	slli	a5,a5,0x18
     f90:	4187d793          	srai	a5,a5,0x18
     f94:	00f777b3          	and	a5,a4,a5
     f98:	01879793          	slli	a5,a5,0x18
     f9c:	4187d793          	srai	a5,a5,0x18
     fa0:	0ff7f713          	andi	a4,a5,255
     fa4:	fdc42783          	lw	a5,-36(s0)
     fa8:	00e782a3          	sb	a4,5(a5)
     fac:	00000013          	nop
     fb0:	02c12083          	lw	ra,44(sp)
     fb4:	02812403          	lw	s0,40(sp)
     fb8:	03010113          	addi	sp,sp,48
     fbc:	00008067          	ret

00000fc0 <_Z12EventTaskRdyP17EventControlBlockPvh>:
     fc0:	fd010113          	addi	sp,sp,-48
     fc4:	02812623          	sw	s0,44(sp)
     fc8:	03010413          	addi	s0,sp,48
     fcc:	fca42e23          	sw	a0,-36(s0)
     fd0:	fcb42c23          	sw	a1,-40(s0)
     fd4:	00060793          	mv	a5,a2
     fd8:	fcf40ba3          	sb	a5,-41(s0)
     fdc:	fdc42783          	lw	a5,-36(s0)
     fe0:	0057c783          	lbu	a5,5(a5)
     fe4:	00078713          	mv	a4,a5
     fe8:	000027b7          	lui	a5,0x2
     fec:	ad078793          	addi	a5,a5,-1328 # 1ad0 <_ZL10OSUnMapTbl>
     ff0:	00f707b3          	add	a5,a4,a5
     ff4:	0007c783          	lbu	a5,0(a5)
     ff8:	fef407a3          	sb	a5,-17(s0)
     ffc:	fef44703          	lbu	a4,-17(s0)
    1000:	000027b7          	lui	a5,0x2
    1004:	27878793          	addi	a5,a5,632 # 2278 <_ZL8OSMapTbl>
    1008:	00f707b3          	add	a5,a4,a5
    100c:	0007c783          	lbu	a5,0(a5)
    1010:	fef40723          	sb	a5,-18(s0)
    1014:	fef44783          	lbu	a5,-17(s0)
    1018:	fdc42703          	lw	a4,-36(s0)
    101c:	00f707b3          	add	a5,a4,a5
    1020:	0087c783          	lbu	a5,8(a5)
    1024:	00078713          	mv	a4,a5
    1028:	000027b7          	lui	a5,0x2
    102c:	ad078793          	addi	a5,a5,-1328 # 1ad0 <_ZL10OSUnMapTbl>
    1030:	00f707b3          	add	a5,a4,a5
    1034:	0007c783          	lbu	a5,0(a5)
    1038:	fef406a3          	sb	a5,-19(s0)
    103c:	fed44703          	lbu	a4,-19(s0)
    1040:	000027b7          	lui	a5,0x2
    1044:	27878793          	addi	a5,a5,632 # 2278 <_ZL8OSMapTbl>
    1048:	00f707b3          	add	a5,a4,a5
    104c:	0007c783          	lbu	a5,0(a5)
    1050:	fef40623          	sb	a5,-20(s0)
    1054:	fef44783          	lbu	a5,-17(s0)
    1058:	00379793          	slli	a5,a5,0x3
    105c:	0ff7f713          	andi	a4,a5,255
    1060:	fed44783          	lbu	a5,-19(s0)
    1064:	00f707b3          	add	a5,a4,a5
    1068:	0ff7f793          	andi	a5,a5,255
    106c:	fef403a3          	sb	a5,-25(s0)
    1070:	fef44783          	lbu	a5,-17(s0)
    1074:	fdc42703          	lw	a4,-36(s0)
    1078:	00f707b3          	add	a5,a4,a5
    107c:	0087c783          	lbu	a5,8(a5)
    1080:	01879713          	slli	a4,a5,0x18
    1084:	41875713          	srai	a4,a4,0x18
    1088:	fec40783          	lb	a5,-20(s0)
    108c:	fff7c793          	not	a5,a5
    1090:	01879793          	slli	a5,a5,0x18
    1094:	4187d793          	srai	a5,a5,0x18
    1098:	00f777b3          	and	a5,a4,a5
    109c:	01879713          	slli	a4,a5,0x18
    10a0:	41875713          	srai	a4,a4,0x18
    10a4:	fef44783          	lbu	a5,-17(s0)
    10a8:	0ff77693          	andi	a3,a4,255
    10ac:	fdc42703          	lw	a4,-36(s0)
    10b0:	00f70733          	add	a4,a4,a5
    10b4:	00d70423          	sb	a3,8(a4)
    10b8:	fdc42703          	lw	a4,-36(s0)
    10bc:	00f707b3          	add	a5,a4,a5
    10c0:	0087c783          	lbu	a5,8(a5)
    10c4:	0017b793          	seqz	a5,a5
    10c8:	0ff7f793          	andi	a5,a5,255
    10cc:	02078e63          	beqz	a5,1108 <_Z12EventTaskRdyP17EventControlBlockPvh+0x148>
    10d0:	fdc42783          	lw	a5,-36(s0)
    10d4:	0057c783          	lbu	a5,5(a5)
    10d8:	01879713          	slli	a4,a5,0x18
    10dc:	41875713          	srai	a4,a4,0x18
    10e0:	fee40783          	lb	a5,-18(s0)
    10e4:	fff7c793          	not	a5,a5
    10e8:	01879793          	slli	a5,a5,0x18
    10ec:	4187d793          	srai	a5,a5,0x18
    10f0:	00f777b3          	and	a5,a4,a5
    10f4:	01879793          	slli	a5,a5,0x18
    10f8:	4187d793          	srai	a5,a5,0x18
    10fc:	0ff7f713          	andi	a4,a5,255
    1100:	fdc42783          	lw	a5,-36(s0)
    1104:	00e782a3          	sb	a4,5(a5)
    1108:	fe744783          	lbu	a5,-25(s0)
    110c:	00078713          	mv	a4,a5
    1110:	000037b7          	lui	a5,0x3
    1114:	00271713          	slli	a4,a4,0x2
    1118:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    111c:	00f707b3          	add	a5,a4,a5
    1120:	0007a783          	lw	a5,0(a5)
    1124:	fef42423          	sw	a5,-24(s0)
    1128:	fe842783          	lw	a5,-24(s0)
    112c:	0007a623          	sw	zero,12(a5)
    1130:	fe842783          	lw	a5,-24(s0)
    1134:	fd842703          	lw	a4,-40(s0)
    1138:	00e7a823          	sw	a4,16(a5)
    113c:	fe842783          	lw	a5,-24(s0)
    1140:	0167c783          	lbu	a5,22(a5)
    1144:	01879713          	slli	a4,a5,0x18
    1148:	41875713          	srai	a4,a4,0x18
    114c:	fd740783          	lb	a5,-41(s0)
    1150:	fff7c793          	not	a5,a5
    1154:	01879793          	slli	a5,a5,0x18
    1158:	4187d793          	srai	a5,a5,0x18
    115c:	00f777b3          	and	a5,a4,a5
    1160:	01879793          	slli	a5,a5,0x18
    1164:	4187d793          	srai	a5,a5,0x18
    1168:	0ff7f713          	andi	a4,a5,255
    116c:	fe842783          	lw	a5,-24(s0)
    1170:	00e78b23          	sb	a4,22(a5)
    1174:	fe842783          	lw	a5,-24(s0)
    1178:	0167c783          	lbu	a5,22(a5)
    117c:	04079a63          	bnez	a5,11d0 <_Z12EventTaskRdyP17EventControlBlockPvh+0x210>
    1180:	000027b7          	lui	a5,0x2
    1184:	2f17c703          	lbu	a4,753(a5) # 22f1 <OSRdyGrp>
    1188:	fee44783          	lbu	a5,-18(s0)
    118c:	00f767b3          	or	a5,a4,a5
    1190:	0ff7f713          	andi	a4,a5,255
    1194:	000027b7          	lui	a5,0x2
    1198:	2ee788a3          	sb	a4,753(a5) # 22f1 <OSRdyGrp>
    119c:	fef44703          	lbu	a4,-17(s0)
    11a0:	000027b7          	lui	a5,0x2
    11a4:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
    11a8:	00f707b3          	add	a5,a4,a5
    11ac:	0007c703          	lbu	a4,0(a5)
    11b0:	fef44683          	lbu	a3,-17(s0)
    11b4:	fec44783          	lbu	a5,-20(s0)
    11b8:	00f767b3          	or	a5,a4,a5
    11bc:	0ff7f713          	andi	a4,a5,255
    11c0:	000027b7          	lui	a5,0x2
    11c4:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
    11c8:	00f687b3          	add	a5,a3,a5
    11cc:	00e78023          	sb	a4,0(a5)
    11d0:	fe744783          	lbu	a5,-25(s0)
    11d4:	00078513          	mv	a0,a5
    11d8:	02c12403          	lw	s0,44(sp)
    11dc:	03010113          	addi	sp,sp,48
    11e0:	00008067          	ret

000011e4 <_Z18getHighestPriorityP17EventControlBlock>:
    11e4:	fd010113          	addi	sp,sp,-48
    11e8:	02812623          	sw	s0,44(sp)
    11ec:	03010413          	addi	s0,sp,48
    11f0:	fca42e23          	sw	a0,-36(s0)
    11f4:	fdc42783          	lw	a5,-36(s0)
    11f8:	0057c783          	lbu	a5,5(a5)
    11fc:	00078713          	mv	a4,a5
    1200:	000027b7          	lui	a5,0x2
    1204:	ad078793          	addi	a5,a5,-1328 # 1ad0 <_ZL10OSUnMapTbl>
    1208:	00f707b3          	add	a5,a4,a5
    120c:	0007c783          	lbu	a5,0(a5)
    1210:	fef407a3          	sb	a5,-17(s0)
    1214:	fef44783          	lbu	a5,-17(s0)
    1218:	fdc42703          	lw	a4,-36(s0)
    121c:	00f707b3          	add	a5,a4,a5
    1220:	0087c783          	lbu	a5,8(a5)
    1224:	00078713          	mv	a4,a5
    1228:	000027b7          	lui	a5,0x2
    122c:	ad078793          	addi	a5,a5,-1328 # 1ad0 <_ZL10OSUnMapTbl>
    1230:	00f707b3          	add	a5,a4,a5
    1234:	0007c783          	lbu	a5,0(a5)
    1238:	fef40723          	sb	a5,-18(s0)
    123c:	fef44783          	lbu	a5,-17(s0)
    1240:	00379793          	slli	a5,a5,0x3
    1244:	0ff7f713          	andi	a4,a5,255
    1248:	fee44783          	lbu	a5,-18(s0)
    124c:	00f707b3          	add	a5,a4,a5
    1250:	fef406a3          	sb	a5,-19(s0)
    1254:	fed44783          	lbu	a5,-19(s0)
    1258:	00078513          	mv	a0,a5
    125c:	02c12403          	lw	s0,44(sp)
    1260:	03010113          	addi	sp,sp,48
    1264:	00008067          	ret

00001268 <_Z10OS_TCBInithPm>:
    1268:	fd010113          	addi	sp,sp,-48
    126c:	02112623          	sw	ra,44(sp)
    1270:	02812423          	sw	s0,40(sp)
    1274:	03010413          	addi	s0,sp,48
    1278:	00050793          	mv	a5,a0
    127c:	fcb42c23          	sw	a1,-40(s0)
    1280:	fcf40fa3          	sb	a5,-33(s0)
    1284:	fffff097          	auipc	ra,0xfffff
    1288:	0a0080e7          	jalr	160(ra) # 324 <_Z17OS_ENTER_CRITICALv>
    128c:	000027b7          	lui	a5,0x2
    1290:	2e07a783          	lw	a5,736(a5) # 22e0 <OSTCBFreeList>
    1294:	fef42623          	sw	a5,-20(s0)
    1298:	fec42783          	lw	a5,-20(s0)
    129c:	18078e63          	beqz	a5,1438 <_Z10OS_TCBInithPm+0x1d0>
    12a0:	fec42783          	lw	a5,-20(s0)
    12a4:	0047a703          	lw	a4,4(a5)
    12a8:	000027b7          	lui	a5,0x2
    12ac:	2ee7a023          	sw	a4,736(a5) # 22e0 <OSTCBFreeList>
    12b0:	fffff097          	auipc	ra,0xfffff
    12b4:	090080e7          	jalr	144(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    12b8:	fec42783          	lw	a5,-20(s0)
    12bc:	fd842703          	lw	a4,-40(s0)
    12c0:	00e7a023          	sw	a4,0(a5)
    12c4:	fec42783          	lw	a5,-20(s0)
    12c8:	fdf44703          	lbu	a4,-33(s0)
    12cc:	00e78ba3          	sb	a4,23(a5)
    12d0:	fec42783          	lw	a5,-20(s0)
    12d4:	00078b23          	sb	zero,22(a5)
    12d8:	fec42783          	lw	a5,-20(s0)
    12dc:	00079a23          	sh	zero,20(a5)
    12e0:	fdf44783          	lbu	a5,-33(s0)
    12e4:	4037d793          	srai	a5,a5,0x3
    12e8:	0ff7f713          	andi	a4,a5,255
    12ec:	fec42783          	lw	a5,-20(s0)
    12f0:	00e78ca3          	sb	a4,25(a5)
    12f4:	fec42783          	lw	a5,-20(s0)
    12f8:	0197c783          	lbu	a5,25(a5)
    12fc:	00078713          	mv	a4,a5
    1300:	000027b7          	lui	a5,0x2
    1304:	29c78793          	addi	a5,a5,668 # 229c <_ZL8OSMapTbl>
    1308:	00f707b3          	add	a5,a4,a5
    130c:	0007c703          	lbu	a4,0(a5)
    1310:	fec42783          	lw	a5,-20(s0)
    1314:	00e78da3          	sb	a4,27(a5)
    1318:	fdf44783          	lbu	a5,-33(s0)
    131c:	0077f793          	andi	a5,a5,7
    1320:	0ff7f713          	andi	a4,a5,255
    1324:	fec42783          	lw	a5,-20(s0)
    1328:	00e78c23          	sb	a4,24(a5)
    132c:	fec42783          	lw	a5,-20(s0)
    1330:	0187c783          	lbu	a5,24(a5)
    1334:	00078713          	mv	a4,a5
    1338:	000027b7          	lui	a5,0x2
    133c:	29c78793          	addi	a5,a5,668 # 229c <_ZL8OSMapTbl>
    1340:	00f707b3          	add	a5,a4,a5
    1344:	0007c703          	lbu	a4,0(a5)
    1348:	fec42783          	lw	a5,-20(s0)
    134c:	00e78d23          	sb	a4,26(a5)
    1350:	fec42783          	lw	a5,-20(s0)
    1354:	0007a623          	sw	zero,12(a5)
    1358:	fec42783          	lw	a5,-20(s0)
    135c:	0007a823          	sw	zero,16(a5)
    1360:	fffff097          	auipc	ra,0xfffff
    1364:	fc4080e7          	jalr	-60(ra) # 324 <_Z17OS_ENTER_CRITICALv>
    1368:	fdf44703          	lbu	a4,-33(s0)
    136c:	000037b7          	lui	a5,0x3
    1370:	00271713          	slli	a4,a4,0x2
    1374:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    1378:	00f707b3          	add	a5,a4,a5
    137c:	fec42703          	lw	a4,-20(s0)
    1380:	00e7a023          	sw	a4,0(a5)
    1384:	000027b7          	lui	a5,0x2
    1388:	2e47a703          	lw	a4,740(a5) # 22e4 <OSTCBList>
    138c:	fec42783          	lw	a5,-20(s0)
    1390:	00e7a223          	sw	a4,4(a5)
    1394:	fec42783          	lw	a5,-20(s0)
    1398:	0007a423          	sw	zero,8(a5)
    139c:	000027b7          	lui	a5,0x2
    13a0:	2e47a783          	lw	a5,740(a5) # 22e4 <OSTCBList>
    13a4:	00078a63          	beqz	a5,13b8 <_Z10OS_TCBInithPm+0x150>
    13a8:	000027b7          	lui	a5,0x2
    13ac:	2e47a783          	lw	a5,740(a5) # 22e4 <OSTCBList>
    13b0:	fec42703          	lw	a4,-20(s0)
    13b4:	00e7a423          	sw	a4,8(a5)
    13b8:	000027b7          	lui	a5,0x2
    13bc:	fec42703          	lw	a4,-20(s0)
    13c0:	2ee7a223          	sw	a4,740(a5) # 22e4 <OSTCBList>
    13c4:	fec42783          	lw	a5,-20(s0)
    13c8:	01b7c703          	lbu	a4,27(a5)
    13cc:	000027b7          	lui	a5,0x2
    13d0:	2f17c783          	lbu	a5,753(a5) # 22f1 <OSRdyGrp>
    13d4:	00f767b3          	or	a5,a4,a5
    13d8:	0ff7f713          	andi	a4,a5,255
    13dc:	000027b7          	lui	a5,0x2
    13e0:	2ee788a3          	sb	a4,753(a5) # 22f1 <OSRdyGrp>
    13e4:	fec42783          	lw	a5,-20(s0)
    13e8:	0197c783          	lbu	a5,25(a5)
    13ec:	00078713          	mv	a4,a5
    13f0:	000027b7          	lui	a5,0x2
    13f4:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
    13f8:	00f707b3          	add	a5,a4,a5
    13fc:	0007c703          	lbu	a4,0(a5)
    1400:	fec42783          	lw	a5,-20(s0)
    1404:	01a7c783          	lbu	a5,26(a5)
    1408:	fec42683          	lw	a3,-20(s0)
    140c:	0196c683          	lbu	a3,25(a3)
    1410:	00f767b3          	or	a5,a4,a5
    1414:	0ff7f713          	andi	a4,a5,255
    1418:	000027b7          	lui	a5,0x2
    141c:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
    1420:	00f687b3          	add	a5,a3,a5
    1424:	00e78023          	sb	a4,0(a5)
    1428:	fffff097          	auipc	ra,0xfffff
    142c:	f18080e7          	jalr	-232(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    1430:	00000793          	li	a5,0
    1434:	0100006f          	j	1444 <_Z10OS_TCBInithPm+0x1dc>
    1438:	fffff097          	auipc	ra,0xfffff
    143c:	f08080e7          	jalr	-248(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    1440:	00100793          	li	a5,1
    1444:	00078513          	mv	a0,a5
    1448:	02c12083          	lw	ra,44(sp)
    144c:	02812403          	lw	s0,40(sp)
    1450:	03010113          	addi	sp,sp,48
    1454:	00008067          	ret

00001458 <_Z12OSTaskCreatePFvPvES_Pmh>:
    1458:	fd010113          	addi	sp,sp,-48
    145c:	02112623          	sw	ra,44(sp)
    1460:	02812423          	sw	s0,40(sp)
    1464:	03010413          	addi	s0,sp,48
    1468:	fca42e23          	sw	a0,-36(s0)
    146c:	fcb42c23          	sw	a1,-40(s0)
    1470:	fcc42a23          	sw	a2,-44(s0)
    1474:	00068793          	mv	a5,a3
    1478:	fcf409a3          	sb	a5,-45(s0)
    147c:	fd344703          	lbu	a4,-45(s0)
    1480:	03f00793          	li	a5,63
    1484:	00e7f663          	bgeu	a5,a4,1490 <_Z12OSTaskCreatePFvPvES_Pmh+0x38>
    1488:	00200793          	li	a5,2
    148c:	1200006f          	j	15ac <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    1490:	fffff097          	auipc	ra,0xfffff
    1494:	e94080e7          	jalr	-364(ra) # 324 <_Z17OS_ENTER_CRITICALv>
    1498:	fd344703          	lbu	a4,-45(s0)
    149c:	000037b7          	lui	a5,0x3
    14a0:	00271713          	slli	a4,a4,0x2
    14a4:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    14a8:	00f707b3          	add	a5,a4,a5
    14ac:	0007a783          	lw	a5,0(a5)
    14b0:	0e079863          	bnez	a5,15a0 <_Z12OSTaskCreatePFvPvES_Pmh+0x148>
    14b4:	fd344703          	lbu	a4,-45(s0)
    14b8:	000037b7          	lui	a5,0x3
    14bc:	00271713          	slli	a4,a4,0x2
    14c0:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    14c4:	00f707b3          	add	a5,a4,a5
    14c8:	00100713          	li	a4,1
    14cc:	00e7a023          	sw	a4,0(a5)
    14d0:	fffff097          	auipc	ra,0xfffff
    14d4:	e70080e7          	jalr	-400(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    14d8:	00000693          	li	a3,0
    14dc:	fd442603          	lw	a2,-44(s0)
    14e0:	fd842583          	lw	a1,-40(s0)
    14e4:	fdc42503          	lw	a0,-36(s0)
    14e8:	fffff097          	auipc	ra,0xfffff
    14ec:	e74080e7          	jalr	-396(ra) # 35c <_Z13OSTaskStkInitPFvPvES_Pmt>
    14f0:	00050793          	mv	a5,a0
    14f4:	fef42623          	sw	a5,-20(s0)
    14f8:	fd344783          	lbu	a5,-45(s0)
    14fc:	fec42583          	lw	a1,-20(s0)
    1500:	00078513          	mv	a0,a5
    1504:	00000097          	auipc	ra,0x0
    1508:	d64080e7          	jalr	-668(ra) # 1268 <_Z10OS_TCBInithPm>
    150c:	00050793          	mv	a5,a0
    1510:	fef403a3          	sb	a5,-25(s0)
    1514:	fe744783          	lbu	a5,-25(s0)
    1518:	04079c63          	bnez	a5,1570 <_Z12OSTaskCreatePFvPvES_Pmh+0x118>
    151c:	fffff097          	auipc	ra,0xfffff
    1520:	e08080e7          	jalr	-504(ra) # 324 <_Z17OS_ENTER_CRITICALv>
    1524:	000027b7          	lui	a5,0x2
    1528:	2fc7c783          	lbu	a5,764(a5) # 22fc <OSTaskCtr>
    152c:	00178793          	addi	a5,a5,1
    1530:	0ff7f713          	andi	a4,a5,255
    1534:	000027b7          	lui	a5,0x2
    1538:	2ee78e23          	sb	a4,764(a5) # 22fc <OSTaskCtr>
    153c:	fffff097          	auipc	ra,0xfffff
    1540:	e04080e7          	jalr	-508(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    1544:	fdc42783          	lw	a5,-36(s0)
    1548:	fef42423          	sw	a5,-24(s0)
    154c:	fd344703          	lbu	a4,-45(s0)
    1550:	000037b7          	lui	a5,0x3
    1554:	00271713          	slli	a4,a4,0x2
    1558:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    155c:	00f707b3          	add	a5,a4,a5
    1560:	0007a783          	lw	a5,0(a5)
    1564:	fe842703          	lw	a4,-24(s0)
    1568:	02e7a023          	sw	a4,32(a5)
    156c:	02c0006f          	j	1598 <_Z12OSTaskCreatePFvPvES_Pmh+0x140>
    1570:	fffff097          	auipc	ra,0xfffff
    1574:	db4080e7          	jalr	-588(ra) # 324 <_Z17OS_ENTER_CRITICALv>
    1578:	fd344703          	lbu	a4,-45(s0)
    157c:	000037b7          	lui	a5,0x3
    1580:	00271713          	slli	a4,a4,0x2
    1584:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    1588:	00f707b3          	add	a5,a4,a5
    158c:	0007a023          	sw	zero,0(a5)
    1590:	fffff097          	auipc	ra,0xfffff
    1594:	db0080e7          	jalr	-592(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    1598:	fe744783          	lbu	a5,-25(s0)
    159c:	0100006f          	j	15ac <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    15a0:	fffff097          	auipc	ra,0xfffff
    15a4:	da0080e7          	jalr	-608(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    15a8:	00500793          	li	a5,5
    15ac:	00078513          	mv	a0,a5
    15b0:	02c12083          	lw	ra,44(sp)
    15b4:	02812403          	lw	s0,40(sp)
    15b8:	03010113          	addi	sp,sp,48
    15bc:	00008067          	ret

000015c0 <_Z12OSTaskResumeh>:
    15c0:	fd010113          	addi	sp,sp,-48
    15c4:	02112623          	sw	ra,44(sp)
    15c8:	02812423          	sw	s0,40(sp)
    15cc:	03010413          	addi	s0,sp,48
    15d0:	00050793          	mv	a5,a0
    15d4:	fcf40fa3          	sb	a5,-33(s0)
    15d8:	fdf44703          	lbu	a4,-33(s0)
    15dc:	03e00793          	li	a5,62
    15e0:	00e7f663          	bgeu	a5,a4,15ec <_Z12OSTaskResumeh+0x2c>
    15e4:	00200793          	li	a5,2
    15e8:	11c0006f          	j	1704 <_Z12OSTaskResumeh+0x144>
    15ec:	fffff097          	auipc	ra,0xfffff
    15f0:	d38080e7          	jalr	-712(ra) # 324 <_Z17OS_ENTER_CRITICALv>
    15f4:	fdf44703          	lbu	a4,-33(s0)
    15f8:	000037b7          	lui	a5,0x3
    15fc:	00271713          	slli	a4,a4,0x2
    1600:	f3478793          	addi	a5,a5,-204 # 2f34 <OSTCBPrioTbl>
    1604:	00f707b3          	add	a5,a4,a5
    1608:	0007a783          	lw	a5,0(a5)
    160c:	fef42623          	sw	a5,-20(s0)
    1610:	fec42783          	lw	a5,-20(s0)
    1614:	00079a63          	bnez	a5,1628 <_Z12OSTaskResumeh+0x68>
    1618:	fffff097          	auipc	ra,0xfffff
    161c:	d28080e7          	jalr	-728(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    1620:	00600793          	li	a5,6
    1624:	0e00006f          	j	1704 <_Z12OSTaskResumeh+0x144>
    1628:	fec42783          	lw	a5,-20(s0)
    162c:	0167c783          	lbu	a5,22(a5)
    1630:	0037f793          	andi	a5,a5,3
    1634:	0c078263          	beqz	a5,16f8 <_Z12OSTaskResumeh+0x138>
    1638:	fec42783          	lw	a5,-20(s0)
    163c:	0167c783          	lbu	a5,22(a5)
    1640:	ffc7f793          	andi	a5,a5,-4
    1644:	0ff7f713          	andi	a4,a5,255
    1648:	fec42783          	lw	a5,-20(s0)
    164c:	00e78b23          	sb	a4,22(a5)
    1650:	fec42783          	lw	a5,-20(s0)
    1654:	0167c783          	lbu	a5,22(a5)
    1658:	00079c63          	bnez	a5,1670 <_Z12OSTaskResumeh+0xb0>
    165c:	fec42783          	lw	a5,-20(s0)
    1660:	0147d783          	lhu	a5,20(a5)
    1664:	00079663          	bnez	a5,1670 <_Z12OSTaskResumeh+0xb0>
    1668:	00100793          	li	a5,1
    166c:	0080006f          	j	1674 <_Z12OSTaskResumeh+0xb4>
    1670:	00000793          	li	a5,0
    1674:	06078a63          	beqz	a5,16e8 <_Z12OSTaskResumeh+0x128>
    1678:	fec42783          	lw	a5,-20(s0)
    167c:	01b7c703          	lbu	a4,27(a5)
    1680:	000027b7          	lui	a5,0x2
    1684:	2f17c783          	lbu	a5,753(a5) # 22f1 <OSRdyGrp>
    1688:	00f767b3          	or	a5,a4,a5
    168c:	0ff7f713          	andi	a4,a5,255
    1690:	000027b7          	lui	a5,0x2
    1694:	2ee788a3          	sb	a4,753(a5) # 22f1 <OSRdyGrp>
    1698:	fec42783          	lw	a5,-20(s0)
    169c:	0197c783          	lbu	a5,25(a5)
    16a0:	00078713          	mv	a4,a5
    16a4:	000027b7          	lui	a5,0x2
    16a8:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
    16ac:	00f707b3          	add	a5,a4,a5
    16b0:	0007c703          	lbu	a4,0(a5)
    16b4:	fec42783          	lw	a5,-20(s0)
    16b8:	01a7c783          	lbu	a5,26(a5)
    16bc:	fec42683          	lw	a3,-20(s0)
    16c0:	0196c683          	lbu	a3,25(a3)
    16c4:	00f767b3          	or	a5,a4,a5
    16c8:	0ff7f713          	andi	a4,a5,255
    16cc:	000027b7          	lui	a5,0x2
    16d0:	2f478793          	addi	a5,a5,756 # 22f4 <OSRdyTbl>
    16d4:	00f687b3          	add	a5,a3,a5
    16d8:	00e78023          	sb	a4,0(a5)
    16dc:	fffff097          	auipc	ra,0xfffff
    16e0:	c64080e7          	jalr	-924(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    16e4:	00c0006f          	j	16f0 <_Z12OSTaskResumeh+0x130>
    16e8:	fffff097          	auipc	ra,0xfffff
    16ec:	c58080e7          	jalr	-936(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    16f0:	00000793          	li	a5,0
    16f4:	0100006f          	j	1704 <_Z12OSTaskResumeh+0x144>
    16f8:	fffff097          	auipc	ra,0xfffff
    16fc:	c48080e7          	jalr	-952(ra) # 340 <_Z16OS_EXIT_CRITICALv>
    1700:	00700793          	li	a5,7
    1704:	00078513          	mv	a0,a5
    1708:	02c12083          	lw	ra,44(sp)
    170c:	02812403          	lw	s0,40(sp)
    1710:	03010113          	addi	sp,sp,48
    1714:	00008067          	ret
