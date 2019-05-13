
final.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	01400137          	lui	sp,0x1400
       4:	ffc10113          	addi	sp,sp,-4 # 13ffffc <_fstack>
       8:	32c000ef          	jal	ra,334 <main>

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
      4c:	000027b7          	lui	a5,0x2
      50:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
      54:	0027a023          	sw	sp,0(a5)
      58:	000027b7          	lui	a5,0x2
      5c:	7bc7a703          	lw	a4,1980(a5) # 27bc <OSTCBHighRdy>
      60:	000027b7          	lui	a5,0x2
      64:	7ae7ac23          	sw	a4,1976(a5) # 27b8 <OSTCBCur>
      68:	000027b7          	lui	a5,0x2
      6c:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
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

0000010c <_Z11myTaskOtherPv>:
     10c:	fd010113          	addi	sp,sp,-48
     110:	02112623          	sw	ra,44(sp)
     114:	02812423          	sw	s0,40(sp)
     118:	03010413          	addi	s0,sp,48
     11c:	fca42e23          	sw	a0,-36(s0)
     120:	000027b7          	lui	a5,0x2
     124:	7887a783          	lw	a5,1928(a5) # 2788 <s1>
     128:	00078513          	mv	a0,a5
     12c:	00000097          	auipc	ra,0x0
     130:	f84080e7          	jalr	-124(ra) # b0 <_Z11printStringPKc>
     134:	fe042623          	sw	zero,-20(s0)
     138:	fe042423          	sw	zero,-24(s0)
     13c:	fe842703          	lw	a4,-24(s0)
     140:	01300793          	li	a5,19
     144:	02e7c863          	blt	a5,a4,174 <_Z11myTaskOtherPv+0x68>
     148:	fe842503          	lw	a0,-24(s0)
     14c:	00000097          	auipc	ra,0x0
     150:	f94080e7          	jalr	-108(ra) # e0 <_Z12printIntegeri>
     154:	fec42703          	lw	a4,-20(s0)
     158:	fe842783          	lw	a5,-24(s0)
     15c:	00f707b3          	add	a5,a4,a5
     160:	fef42623          	sw	a5,-20(s0)
     164:	fe842783          	lw	a5,-24(s0)
     168:	00178793          	addi	a5,a5,1
     16c:	fef42423          	sw	a5,-24(s0)
     170:	fcdff06f          	j	13c <_Z11myTaskOtherPv+0x30>
     174:	000027b7          	lui	a5,0x2
     178:	7e47a703          	lw	a4,2020(a5) # 27e4 <_ZL9myMailBox>
     17c:	000027b7          	lui	a5,0x2
     180:	c6078593          	addi	a1,a5,-928 # 1c60 <_ZL10OSUnMapTbl+0x170>
     184:	00070513          	mv	a0,a4
     188:	00001097          	auipc	ra,0x1
     18c:	c14080e7          	jalr	-1004(ra) # d9c <_Z10OSMboxPostP17EventControlBlockPv>
     190:	00050793          	mv	a5,a0
     194:	fef403a3          	sb	a5,-25(s0)
     198:	fe744783          	lbu	a5,-25(s0)
     19c:	00078513          	mv	a0,a5
     1a0:	00000097          	auipc	ra,0x0
     1a4:	f40080e7          	jalr	-192(ra) # e0 <_Z12printIntegeri>
     1a8:	000027b7          	lui	a5,0x2
     1ac:	c6478513          	addi	a0,a5,-924 # 1c64 <_ZL10OSUnMapTbl+0x174>
     1b0:	00000097          	auipc	ra,0x0
     1b4:	f00080e7          	jalr	-256(ra) # b0 <_Z11printStringPKc>
     1b8:	fec42503          	lw	a0,-20(s0)
     1bc:	00000097          	auipc	ra,0x0
     1c0:	f24080e7          	jalr	-220(ra) # e0 <_Z12printIntegeri>
     1c4:	000027b7          	lui	a5,0x2
     1c8:	c7478513          	addi	a0,a5,-908 # 1c74 <_ZL10OSUnMapTbl+0x184>
     1cc:	00000097          	auipc	ra,0x0
     1d0:	ee4080e7          	jalr	-284(ra) # b0 <_Z11printStringPKc>
     1d4:	000027b7          	lui	a5,0x2
     1d8:	78c7a783          	lw	a5,1932(a5) # 278c <s2>
     1dc:	00078513          	mv	a0,a5
     1e0:	00000097          	auipc	ra,0x0
     1e4:	ed0080e7          	jalr	-304(ra) # b0 <_Z11printStringPKc>
     1e8:	00a00893          	li	a7,10
     1ec:	00000073          	ecall
     1f0:	00000013          	nop
     1f4:	02c12083          	lw	ra,44(sp)
     1f8:	02812403          	lw	s0,40(sp)
     1fc:	03010113          	addi	sp,sp,48
     200:	00008067          	ret

00000204 <_Z6myTaskPv>:
     204:	fd010113          	addi	sp,sp,-48
     208:	02112623          	sw	ra,44(sp)
     20c:	02812423          	sw	s0,40(sp)
     210:	03010413          	addi	s0,sp,48
     214:	fca42e23          	sw	a0,-36(s0)
     218:	000027b7          	lui	a5,0x2
     21c:	7907a783          	lw	a5,1936(a5) # 2790 <s3>
     220:	00078513          	mv	a0,a5
     224:	00000097          	auipc	ra,0x0
     228:	e8c080e7          	jalr	-372(ra) # b0 <_Z11printStringPKc>
     22c:	fe042623          	sw	zero,-20(s0)
     230:	fec42703          	lw	a4,-20(s0)
     234:	01300793          	li	a5,19
     238:	0ce7c463          	blt	a5,a4,300 <_Z6myTaskPv+0xfc>
     23c:	fec42703          	lw	a4,-20(s0)
     240:	00a00793          	li	a5,10
     244:	0af71063          	bne	a4,a5,2e4 <_Z6myTaskPv+0xe0>
     248:	000027b7          	lui	a5,0x2
     24c:	7947a783          	lw	a5,1940(a5) # 2794 <s4>
     250:	00078513          	mv	a0,a5
     254:	00000097          	auipc	ra,0x0
     258:	e5c080e7          	jalr	-420(ra) # b0 <_Z11printStringPKc>
     25c:	000027b7          	lui	a5,0x2
     260:	7e47a703          	lw	a4,2020(a5) # 27e4 <_ZL9myMailBox>
     264:	000027b7          	lui	a5,0x2
     268:	7a87a783          	lw	a5,1960(a5) # 27a8 <err>
     26c:	00078593          	mv	a1,a5
     270:	00070513          	mv	a0,a4
     274:	00001097          	auipc	ra,0x1
     278:	a1c080e7          	jalr	-1508(ra) # c90 <_Z10OSMboxPendP17EventControlBlockPh>
     27c:	00050793          	mv	a5,a0
     280:	fef42423          	sw	a5,-24(s0)
     284:	000027b7          	lui	a5,0x2
     288:	7a87a783          	lw	a5,1960(a5) # 27a8 <err>
     28c:	00078513          	mv	a0,a5
     290:	00000097          	auipc	ra,0x0
     294:	e50080e7          	jalr	-432(ra) # e0 <_Z12printIntegeri>
     298:	fe842503          	lw	a0,-24(s0)
     29c:	00000097          	auipc	ra,0x0
     2a0:	e14080e7          	jalr	-492(ra) # b0 <_Z11printStringPKc>
     2a4:	000027b7          	lui	a5,0x2
     2a8:	7987a783          	lw	a5,1944(a5) # 2798 <s5>
     2ac:	00078513          	mv	a0,a5
     2b0:	00000097          	auipc	ra,0x0
     2b4:	e00080e7          	jalr	-512(ra) # b0 <_Z11printStringPKc>
     2b8:	000027b7          	lui	a5,0x2
     2bc:	c7878513          	addi	a0,a5,-904 # 1c78 <_ZL10OSUnMapTbl+0x188>
     2c0:	00000097          	auipc	ra,0x0
     2c4:	df0080e7          	jalr	-528(ra) # b0 <_Z11printStringPKc>
     2c8:	fec42503          	lw	a0,-20(s0)
     2cc:	00000097          	auipc	ra,0x0
     2d0:	e14080e7          	jalr	-492(ra) # e0 <_Z12printIntegeri>
     2d4:	000027b7          	lui	a5,0x2
     2d8:	c7478513          	addi	a0,a5,-908 # 1c74 <_ZL10OSUnMapTbl+0x184>
     2dc:	00000097          	auipc	ra,0x0
     2e0:	dd4080e7          	jalr	-556(ra) # b0 <_Z11printStringPKc>
     2e4:	fec42503          	lw	a0,-20(s0)
     2e8:	00000097          	auipc	ra,0x0
     2ec:	df8080e7          	jalr	-520(ra) # e0 <_Z12printIntegeri>
     2f0:	fec42783          	lw	a5,-20(s0)
     2f4:	00178793          	addi	a5,a5,1
     2f8:	fef42623          	sw	a5,-20(s0)
     2fc:	f35ff06f          	j	230 <_Z6myTaskPv+0x2c>
     300:	000027b7          	lui	a5,0x2
     304:	79c7a783          	lw	a5,1948(a5) # 279c <s6>
     308:	00078513          	mv	a0,a5
     30c:	00000097          	auipc	ra,0x0
     310:	da4080e7          	jalr	-604(ra) # b0 <_Z11printStringPKc>
     314:	00a00513          	li	a0,10
     318:	00001097          	auipc	ra,0x1
     31c:	c98080e7          	jalr	-872(ra) # fb0 <_Z13OSTaskSuspendh>
     320:	00000013          	nop
     324:	02c12083          	lw	ra,44(sp)
     328:	02812403          	lw	s0,40(sp)
     32c:	03010113          	addi	sp,sp,48
     330:	00008067          	ret

00000334 <main>:
     334:	81010113          	addi	sp,sp,-2032
     338:	7e112623          	sw	ra,2028(sp)
     33c:	7e812423          	sw	s0,2024(sp)
     340:	7f010413          	addi	s0,sp,2032
     344:	fe010113          	addi	sp,sp,-32
     348:	00000097          	auipc	ra,0x0
     34c:	3f4080e7          	jalr	1012(ra) # 73c <_Z7OS_Initv>
     350:	000027b7          	lui	a5,0x2
     354:	c9478513          	addi	a0,a5,-876 # 1c94 <_ZL10OSUnMapTbl+0x1a4>
     358:	00000097          	auipc	ra,0x0
     35c:	d58080e7          	jalr	-680(ra) # b0 <_Z11printStringPKc>
     360:	bf040793          	addi	a5,s0,-1040
     364:	3fc78793          	addi	a5,a5,1020
     368:	00a00693          	li	a3,10
     36c:	00078613          	mv	a2,a5
     370:	00000593          	li	a1,0
     374:	000007b7          	lui	a5,0x0
     378:	20478513          	addi	a0,a5,516 # 204 <_Z6myTaskPv>
     37c:	00001097          	auipc	ra,0x1
     380:	4b4080e7          	jalr	1204(ra) # 1830 <_Z12OSTaskCreatePFvPvES_Pmh>
     384:	fffff7b7          	lui	a5,0xfffff
     388:	7f078793          	addi	a5,a5,2032 # fffff7f0 <_fstack+0xfebff7f4>
     38c:	00f407b3          	add	a5,s0,a5
     390:	3fc78793          	addi	a5,a5,1020
     394:	01400693          	li	a3,20
     398:	00078613          	mv	a2,a5
     39c:	00000593          	li	a1,0
     3a0:	000007b7          	lui	a5,0x0
     3a4:	10c78513          	addi	a0,a5,268 # 10c <_Z11myTaskOtherPv>
     3a8:	00001097          	auipc	ra,0x1
     3ac:	488080e7          	jalr	1160(ra) # 1830 <_Z12OSTaskCreatePFvPvES_Pmh>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	4f4080e7          	jalr	1268(ra) # 8a4 <_Z17OSCreateSemaphorev>
     3b8:	00050713          	mv	a4,a0
     3bc:	000027b7          	lui	a5,0x2
     3c0:	7ee7a023          	sw	a4,2016(a5) # 27e0 <_ZL11mySemaphore>
     3c4:	00000513          	li	a0,0
     3c8:	00001097          	auipc	ra,0x1
     3cc:	848080e7          	jalr	-1976(ra) # c10 <_Z12OSMboxCreatePv>
     3d0:	00050713          	mv	a4,a0
     3d4:	000027b7          	lui	a5,0x2
     3d8:	7ee7a223          	sw	a4,2020(a5) # 27e4 <_ZL9myMailBox>
     3dc:	000027b7          	lui	a5,0x2
     3e0:	7a07a783          	lw	a5,1952(a5) # 27a0 <s7>
     3e4:	00078513          	mv	a0,a5
     3e8:	00000097          	auipc	ra,0x0
     3ec:	cc8080e7          	jalr	-824(ra) # b0 <_Z11printStringPKc>
     3f0:	00001097          	auipc	ra,0x1
     3f4:	ad4080e7          	jalr	-1324(ra) # ec4 <_Z8OS_Startv>
     3f8:	00a00893          	li	a7,10
     3fc:	00000073          	ecall
     400:	00000793          	li	a5,0
     404:	00078513          	mv	a0,a5
     408:	02010113          	addi	sp,sp,32
     40c:	7ec12083          	lw	ra,2028(sp)
     410:	7e812403          	lw	s0,2024(sp)
     414:	7f010113          	addi	sp,sp,2032
     418:	00008067          	ret

0000041c <_Z17OS_ENTER_CRITICALv>:
     41c:	ff010113          	addi	sp,sp,-16
     420:	00812623          	sw	s0,12(sp)
     424:	01010413          	addi	s0,sp,16
     428:	00000013          	nop
     42c:	00c12403          	lw	s0,12(sp)
     430:	01010113          	addi	sp,sp,16
     434:	00008067          	ret

00000438 <_Z16OS_EXIT_CRITICALv>:
     438:	ff010113          	addi	sp,sp,-16
     43c:	00812623          	sw	s0,12(sp)
     440:	01010413          	addi	s0,sp,16
     444:	00000013          	nop
     448:	00c12403          	lw	s0,12(sp)
     44c:	01010113          	addi	sp,sp,16
     450:	00008067          	ret

00000454 <_Z13OSTaskStkInitPFvPvES_Pmt>:
     454:	fd010113          	addi	sp,sp,-48
     458:	02812623          	sw	s0,44(sp)
     45c:	03010413          	addi	s0,sp,48
     460:	fca42e23          	sw	a0,-36(s0)
     464:	fcb42c23          	sw	a1,-40(s0)
     468:	fcc42a23          	sw	a2,-44(s0)
     46c:	00068793          	mv	a5,a3
     470:	fcf41923          	sh	a5,-46(s0)
     474:	fd442783          	lw	a5,-44(s0)
     478:	fef42623          	sw	a5,-20(s0)
     47c:	fec42783          	lw	a5,-20(s0)
     480:	ffc78713          	addi	a4,a5,-4
     484:	fee42623          	sw	a4,-20(s0)
     488:	fdc42703          	lw	a4,-36(s0)
     48c:	00e7a023          	sw	a4,0(a5)
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
     514:	ffc78713          	addi	a4,a5,-4
     518:	fee42623          	sw	a4,-20(s0)
     51c:	0007a023          	sw	zero,0(a5)
     520:	fec42783          	lw	a5,-20(s0)
     524:	ffc78713          	addi	a4,a5,-4
     528:	fee42623          	sw	a4,-20(s0)
     52c:	0007a023          	sw	zero,0(a5)
     530:	fec42783          	lw	a5,-20(s0)
     534:	ffc78713          	addi	a4,a5,-4
     538:	fee42623          	sw	a4,-20(s0)
     53c:	0007a023          	sw	zero,0(a5)
     540:	fec42783          	lw	a5,-20(s0)
     544:	0007a023          	sw	zero,0(a5)
     548:	fec42783          	lw	a5,-20(s0)
     54c:	00078513          	mv	a0,a5
     550:	02c12403          	lw	s0,44(sp)
     554:	03010113          	addi	sp,sp,48
     558:	00008067          	ret

0000055c <_Z16OSTaskCreateHookv>:
     55c:	ff010113          	addi	sp,sp,-16
     560:	00812623          	sw	s0,12(sp)
     564:	01010413          	addi	s0,sp,16
     568:	00000013          	nop
     56c:	00c12403          	lw	s0,12(sp)
     570:	01010113          	addi	sp,sp,16
     574:	00008067          	ret

00000578 <_Z10OS_TASK_SWv>:
     578:	ff010113          	addi	sp,sp,-16
     57c:	00812623          	sw	s0,12(sp)
     580:	01010413          	addi	s0,sp,16
     584:	00000013          	nop
     588:	00c12403          	lw	s0,12(sp)
     58c:	01010113          	addi	sp,sp,16
     590:	00008067          	ret

00000594 <_Z9OS_CTX_SWv>:
     594:	ff010113          	addi	sp,sp,-16
     598:	00812623          	sw	s0,12(sp)
     59c:	01010413          	addi	s0,sp,16
     5a0:	fd010113          	addi	sp,sp,-48
     5a4:	02812623          	sw	s0,44(sp)
     5a8:	02912423          	sw	s1,40(sp)
     5ac:	03212223          	sw	s2,36(sp)
     5b0:	03312023          	sw	s3,32(sp)
     5b4:	01412e23          	sw	s4,28(sp)
     5b8:	01512c23          	sw	s5,24(sp)
     5bc:	01612a23          	sw	s6,20(sp)
     5c0:	01712823          	sw	s7,16(sp)
     5c4:	01812623          	sw	s8,12(sp)
     5c8:	01912423          	sw	s9,8(sp)
     5cc:	01a12223          	sw	s10,4(sp)
     5d0:	01b12023          	sw	s11,0(sp)
     5d4:	00010713          	mv	a4,sp
     5d8:	000027b7          	lui	a5,0x2
     5dc:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     5e0:	00e7a023          	sw	a4,0(a5)
     5e4:	000027b7          	lui	a5,0x2
     5e8:	7bc7a703          	lw	a4,1980(a5) # 27bc <OSTCBHighRdy>
     5ec:	000027b7          	lui	a5,0x2
     5f0:	7ae7ac23          	sw	a4,1976(a5) # 27b8 <OSTCBCur>
     5f4:	000027b7          	lui	a5,0x2
     5f8:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     5fc:	0007a783          	lw	a5,0(a5)
     600:	00078113          	mv	sp,a5
     604:	02c12403          	lw	s0,44(sp)
     608:	02812483          	lw	s1,40(sp)
     60c:	02412903          	lw	s2,36(sp)
     610:	02012983          	lw	s3,32(sp)
     614:	01c12a03          	lw	s4,28(sp)
     618:	01812a83          	lw	s5,24(sp)
     61c:	01412b03          	lw	s6,20(sp)
     620:	01012b83          	lw	s7,16(sp)
     624:	00c12c03          	lw	s8,12(sp)
     628:	00812c83          	lw	s9,8(sp)
     62c:	00412d03          	lw	s10,4(sp)
     630:	00012d83          	lw	s11,0(sp)
     634:	03010113          	addi	sp,sp,48
     638:	00d00893          	li	a7,13
     63c:	00000073          	ecall
     640:	00000013          	nop
     644:	00c12403          	lw	s0,12(sp)
     648:	01010113          	addi	sp,sp,16
     64c:	00008067          	ret

00000650 <_Z8OS_Schedv>:
     650:	fe010113          	addi	sp,sp,-32
     654:	00112e23          	sw	ra,28(sp)
     658:	00812c23          	sw	s0,24(sp)
     65c:	02010413          	addi	s0,sp,32
     660:	00000097          	auipc	ra,0x0
     664:	dbc080e7          	jalr	-580(ra) # 41c <_Z17OS_ENTER_CRITICALv>
     668:	000027b7          	lui	a5,0x2
     66c:	7c17c783          	lbu	a5,1985(a5) # 27c1 <OSRdyGrp>
     670:	00078713          	mv	a4,a5
     674:	000027b7          	lui	a5,0x2
     678:	dac78793          	addi	a5,a5,-596 # 1dac <_ZL10OSUnMapTbl>
     67c:	00f707b3          	add	a5,a4,a5
     680:	0007c783          	lbu	a5,0(a5)
     684:	fef407a3          	sb	a5,-17(s0)
     688:	fef44783          	lbu	a5,-17(s0)
     68c:	00379793          	slli	a5,a5,0x3
     690:	0ff7f713          	andi	a4,a5,255
     694:	fef44683          	lbu	a3,-17(s0)
     698:	000027b7          	lui	a5,0x2
     69c:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
     6a0:	00f687b3          	add	a5,a3,a5
     6a4:	0007c783          	lbu	a5,0(a5)
     6a8:	00078693          	mv	a3,a5
     6ac:	000027b7          	lui	a5,0x2
     6b0:	dac78793          	addi	a5,a5,-596 # 1dac <_ZL10OSUnMapTbl>
     6b4:	00f687b3          	add	a5,a3,a5
     6b8:	0007c783          	lbu	a5,0(a5)
     6bc:	00f707b3          	add	a5,a4,a5
     6c0:	0ff7f713          	andi	a4,a5,255
     6c4:	000027b7          	lui	a5,0x2
     6c8:	7ae782a3          	sb	a4,1957(a5) # 27a5 <OSPrioHighRdy>
     6cc:	000027b7          	lui	a5,0x2
     6d0:	7a57c703          	lbu	a4,1957(a5) # 27a5 <OSPrioHighRdy>
     6d4:	000027b7          	lui	a5,0x2
     6d8:	7a47c783          	lbu	a5,1956(a5) # 27a4 <OSPrioCur>
     6dc:	04f70263          	beq	a4,a5,720 <_Z8OS_Schedv+0xd0>
     6e0:	000027b7          	lui	a5,0x2
     6e4:	7a57c783          	lbu	a5,1957(a5) # 27a5 <OSPrioHighRdy>
     6e8:	00078713          	mv	a4,a5
     6ec:	000037b7          	lui	a5,0x3
     6f0:	00271713          	slli	a4,a4,0x2
     6f4:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
     6f8:	00f707b3          	add	a5,a4,a5
     6fc:	0007a703          	lw	a4,0(a5)
     700:	000027b7          	lui	a5,0x2
     704:	7ae7ae23          	sw	a4,1980(a5) # 27bc <OSTCBHighRdy>
     708:	000027b7          	lui	a5,0x2
     70c:	7a57c703          	lbu	a4,1957(a5) # 27a5 <OSPrioHighRdy>
     710:	000027b7          	lui	a5,0x2
     714:	7ae78223          	sb	a4,1956(a5) # 27a4 <OSPrioCur>
     718:	00c00893          	li	a7,12
     71c:	00000073          	ecall
     720:	00000097          	auipc	ra,0x0
     724:	d18080e7          	jalr	-744(ra) # 438 <_Z16OS_EXIT_CRITICALv>
     728:	00000013          	nop
     72c:	01c12083          	lw	ra,28(sp)
     730:	01812403          	lw	s0,24(sp)
     734:	02010113          	addi	sp,sp,32
     738:	00008067          	ret

0000073c <_Z7OS_Initv>:
     73c:	ff010113          	addi	sp,sp,-16
     740:	00112623          	sw	ra,12(sp)
     744:	00812423          	sw	s0,8(sp)
     748:	01010413          	addi	s0,sp,16
     74c:	00000097          	auipc	ra,0x0
     750:	0bc080e7          	jalr	188(ra) # 808 <_Z20OS_EventWaitListInitv>
     754:	00000097          	auipc	ra,0x0
     758:	01c080e7          	jalr	28(ra) # 770 <_Z15OS_TaskFreePoolv>
     75c:	00000013          	nop
     760:	00c12083          	lw	ra,12(sp)
     764:	00812403          	lw	s0,8(sp)
     768:	01010113          	addi	sp,sp,16
     76c:	00008067          	ret

00000770 <_Z15OS_TaskFreePoolv>:
     770:	fe010113          	addi	sp,sp,-32
     774:	00812e23          	sw	s0,28(sp)
     778:	02010413          	addi	s0,sp,32
     77c:	000027b7          	lui	a5,0x2
     780:	00003737          	lui	a4,0x3
     784:	b0870713          	addi	a4,a4,-1272 # 2b08 <freeTCBs>
     788:	7ae7a823          	sw	a4,1968(a5) # 27b0 <OSTCBFreeList>
     78c:	000027b7          	lui	a5,0x2
     790:	7b07a783          	lw	a5,1968(a5) # 27b0 <OSTCBFreeList>
     794:	fef42623          	sw	a5,-20(s0)
     798:	00100793          	li	a5,1
     79c:	fef42423          	sw	a5,-24(s0)
     7a0:	fe842703          	lw	a4,-24(s0)
     7a4:	03f00793          	li	a5,63
     7a8:	04e7c463          	blt	a5,a4,7f0 <_Z15OS_TaskFreePoolv+0x80>
     7ac:	fe842703          	lw	a4,-24(s0)
     7b0:	00070793          	mv	a5,a4
     7b4:	00379793          	slli	a5,a5,0x3
     7b8:	00e787b3          	add	a5,a5,a4
     7bc:	00279793          	slli	a5,a5,0x2
     7c0:	00003737          	lui	a4,0x3
     7c4:	b0870713          	addi	a4,a4,-1272 # 2b08 <freeTCBs>
     7c8:	00e78733          	add	a4,a5,a4
     7cc:	fec42783          	lw	a5,-20(s0)
     7d0:	00e7a223          	sw	a4,4(a5)
     7d4:	fec42783          	lw	a5,-20(s0)
     7d8:	0047a783          	lw	a5,4(a5)
     7dc:	fef42623          	sw	a5,-20(s0)
     7e0:	fe842783          	lw	a5,-24(s0)
     7e4:	00178793          	addi	a5,a5,1
     7e8:	fef42423          	sw	a5,-24(s0)
     7ec:	fb5ff06f          	j	7a0 <_Z15OS_TaskFreePoolv+0x30>
     7f0:	fec42783          	lw	a5,-20(s0)
     7f4:	0007a223          	sw	zero,4(a5)
     7f8:	00000013          	nop
     7fc:	01c12403          	lw	s0,28(sp)
     800:	02010113          	addi	sp,sp,32
     804:	00008067          	ret

00000808 <_Z20OS_EventWaitListInitv>:
     808:	fe010113          	addi	sp,sp,-32
     80c:	00812e23          	sw	s0,28(sp)
     810:	02010413          	addi	s0,sp,32
     814:	000027b7          	lui	a5,0x2
     818:	00002737          	lui	a4,0x2
     81c:	7e870713          	addi	a4,a4,2024 # 27e8 <freeEvents>
     820:	7ae7a623          	sw	a4,1964(a5) # 27ac <OSEventFreeList>
     824:	000027b7          	lui	a5,0x2
     828:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     82c:	fef42623          	sw	a5,-20(s0)
     830:	00100793          	li	a5,1
     834:	fef405a3          	sb	a5,-21(s0)
     838:	feb40703          	lb	a4,-21(s0)
     83c:	01300793          	li	a5,19
     840:	04e7c663          	blt	a5,a4,88c <_Z20OS_EventWaitListInitv+0x84>
     844:	feb40703          	lb	a4,-21(s0)
     848:	00070793          	mv	a5,a4
     84c:	00279793          	slli	a5,a5,0x2
     850:	00e787b3          	add	a5,a5,a4
     854:	00379793          	slli	a5,a5,0x3
     858:	00002737          	lui	a4,0x2
     85c:	7e870713          	addi	a4,a4,2024 # 27e8 <freeEvents>
     860:	00e78733          	add	a4,a5,a4
     864:	fec42783          	lw	a5,-20(s0)
     868:	00e7a023          	sw	a4,0(a5)
     86c:	fec42783          	lw	a5,-20(s0)
     870:	0007a783          	lw	a5,0(a5)
     874:	fef42623          	sw	a5,-20(s0)
     878:	feb44783          	lbu	a5,-21(s0)
     87c:	00178793          	addi	a5,a5,1
     880:	0ff7f793          	andi	a5,a5,255
     884:	fef405a3          	sb	a5,-21(s0)
     888:	fb1ff06f          	j	838 <_Z20OS_EventWaitListInitv+0x30>
     88c:	fec42783          	lw	a5,-20(s0)
     890:	0007a023          	sw	zero,0(a5)
     894:	00000013          	nop
     898:	01c12403          	lw	s0,28(sp)
     89c:	02010113          	addi	sp,sp,32
     8a0:	00008067          	ret

000008a4 <_Z17OSCreateSemaphorev>:
     8a4:	fe010113          	addi	sp,sp,-32
     8a8:	00812e23          	sw	s0,28(sp)
     8ac:	02010413          	addi	s0,sp,32
     8b0:	000027b7          	lui	a5,0x2
     8b4:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     8b8:	fef42623          	sw	a5,-20(s0)
     8bc:	000027b7          	lui	a5,0x2
     8c0:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     8c4:	00078c63          	beqz	a5,8dc <_Z17OSCreateSemaphorev+0x38>
     8c8:	000027b7          	lui	a5,0x2
     8cc:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     8d0:	0007a703          	lw	a4,0(a5)
     8d4:	000027b7          	lui	a5,0x2
     8d8:	7ae7a623          	sw	a4,1964(a5) # 27ac <OSEventFreeList>
     8dc:	fec42783          	lw	a5,-20(s0)
     8e0:	02078463          	beqz	a5,908 <_Z17OSCreateSemaphorev+0x64>
     8e4:	fec42783          	lw	a5,-20(s0)
     8e8:	00800713          	li	a4,8
     8ec:	00e78223          	sb	a4,4(a5)
     8f0:	fec42783          	lw	a5,-20(s0)
     8f4:	00079323          	sh	zero,6(a5)
     8f8:	fec42783          	lw	a5,-20(s0)
     8fc:	0007a023          	sw	zero,0(a5)
     900:	fec42783          	lw	a5,-20(s0)
     904:	000782a3          	sb	zero,5(a5)
     908:	fec42783          	lw	a5,-20(s0)
     90c:	00078513          	mv	a0,a5
     910:	01c12403          	lw	s0,28(sp)
     914:	02010113          	addi	sp,sp,32
     918:	00008067          	ret

0000091c <_Z16OS_EventTaskWaitP17EventControlBlock>:
     91c:	fe010113          	addi	sp,sp,-32
     920:	00812e23          	sw	s0,28(sp)
     924:	02010413          	addi	s0,sp,32
     928:	fea42623          	sw	a0,-20(s0)
     92c:	000027b7          	lui	a5,0x2
     930:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     934:	fec42703          	lw	a4,-20(s0)
     938:	00e7a623          	sw	a4,12(a5)
     93c:	000027b7          	lui	a5,0x2
     940:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     944:	0197c783          	lbu	a5,25(a5)
     948:	00078713          	mv	a4,a5
     94c:	000027b7          	lui	a5,0x2
     950:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
     954:	00f707b3          	add	a5,a4,a5
     958:	0007c783          	lbu	a5,0(a5)
     95c:	01879713          	slli	a4,a5,0x18
     960:	41875713          	srai	a4,a4,0x18
     964:	000027b7          	lui	a5,0x2
     968:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     96c:	01a7c783          	lbu	a5,26(a5)
     970:	01879793          	slli	a5,a5,0x18
     974:	4187d793          	srai	a5,a5,0x18
     978:	fff7c793          	not	a5,a5
     97c:	01879793          	slli	a5,a5,0x18
     980:	4187d793          	srai	a5,a5,0x18
     984:	00f777b3          	and	a5,a4,a5
     988:	01879713          	slli	a4,a5,0x18
     98c:	41875713          	srai	a4,a4,0x18
     990:	000027b7          	lui	a5,0x2
     994:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     998:	0197c783          	lbu	a5,25(a5)
     99c:	0ff77693          	andi	a3,a4,255
     9a0:	00002737          	lui	a4,0x2
     9a4:	7c470713          	addi	a4,a4,1988 # 27c4 <OSRdyTbl>
     9a8:	00e78733          	add	a4,a5,a4
     9ac:	00d70023          	sb	a3,0(a4)
     9b0:	00002737          	lui	a4,0x2
     9b4:	7c470713          	addi	a4,a4,1988 # 27c4 <OSRdyTbl>
     9b8:	00e787b3          	add	a5,a5,a4
     9bc:	0007c783          	lbu	a5,0(a5)
     9c0:	0017b793          	seqz	a5,a5
     9c4:	0ff7f793          	andi	a5,a5,255
     9c8:	04078663          	beqz	a5,a14 <_Z16OS_EventTaskWaitP17EventControlBlock+0xf8>
     9cc:	000027b7          	lui	a5,0x2
     9d0:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     9d4:	01b7c783          	lbu	a5,27(a5)
     9d8:	01879793          	slli	a5,a5,0x18
     9dc:	4187d793          	srai	a5,a5,0x18
     9e0:	fff7c793          	not	a5,a5
     9e4:	01879713          	slli	a4,a5,0x18
     9e8:	41875713          	srai	a4,a4,0x18
     9ec:	000027b7          	lui	a5,0x2
     9f0:	7c17c783          	lbu	a5,1985(a5) # 27c1 <OSRdyGrp>
     9f4:	01879793          	slli	a5,a5,0x18
     9f8:	4187d793          	srai	a5,a5,0x18
     9fc:	00f777b3          	and	a5,a4,a5
     a00:	01879793          	slli	a5,a5,0x18
     a04:	4187d793          	srai	a5,a5,0x18
     a08:	0ff7f713          	andi	a4,a5,255
     a0c:	000027b7          	lui	a5,0x2
     a10:	7ce780a3          	sb	a4,1985(a5) # 27c1 <OSRdyGrp>
     a14:	000027b7          	lui	a5,0x2
     a18:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     a1c:	0197c783          	lbu	a5,25(a5)
     a20:	00078713          	mv	a4,a5
     a24:	fec42783          	lw	a5,-20(s0)
     a28:	00e787b3          	add	a5,a5,a4
     a2c:	0087c703          	lbu	a4,8(a5)
     a30:	000027b7          	lui	a5,0x2
     a34:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     a38:	01a7c783          	lbu	a5,26(a5)
     a3c:	000026b7          	lui	a3,0x2
     a40:	7b86a683          	lw	a3,1976(a3) # 27b8 <OSTCBCur>
     a44:	0196c683          	lbu	a3,25(a3)
     a48:	00f767b3          	or	a5,a4,a5
     a4c:	0ff7f713          	andi	a4,a5,255
     a50:	fec42783          	lw	a5,-20(s0)
     a54:	00d787b3          	add	a5,a5,a3
     a58:	00e78423          	sb	a4,8(a5)
     a5c:	fec42783          	lw	a5,-20(s0)
     a60:	0057c703          	lbu	a4,5(a5)
     a64:	000027b7          	lui	a5,0x2
     a68:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     a6c:	01b7c783          	lbu	a5,27(a5)
     a70:	00f767b3          	or	a5,a4,a5
     a74:	0ff7f713          	andi	a4,a5,255
     a78:	fec42783          	lw	a5,-20(s0)
     a7c:	00e782a3          	sb	a4,5(a5)
     a80:	00000013          	nop
     a84:	01c12403          	lw	s0,28(sp)
     a88:	02010113          	addi	sp,sp,32
     a8c:	00008067          	ret

00000a90 <_Z9OSSemPostP17EventControlBlock>:
     a90:	fe010113          	addi	sp,sp,-32
     a94:	00112e23          	sw	ra,28(sp)
     a98:	00812c23          	sw	s0,24(sp)
     a9c:	02010413          	addi	s0,sp,32
     aa0:	fea42623          	sw	a0,-20(s0)
     aa4:	fec42783          	lw	a5,-20(s0)
     aa8:	0057c783          	lbu	a5,5(a5)
     aac:	02078463          	beqz	a5,ad4 <_Z9OSSemPostP17EventControlBlock+0x44>
     ab0:	00a00613          	li	a2,10
     ab4:	00000593          	li	a1,0
     ab8:	fec42503          	lw	a0,-20(s0)
     abc:	00001097          	auipc	ra,0x1
     ac0:	8dc080e7          	jalr	-1828(ra) # 1398 <_Z12EventTaskRdyP17EventControlBlockPvh>
     ac4:	00000097          	auipc	ra,0x0
     ac8:	b8c080e7          	jalr	-1140(ra) # 650 <_Z8OS_Schedv>
     acc:	00000793          	li	a5,0
     ad0:	0400006f          	j	b10 <_Z9OSSemPostP17EventControlBlock+0x80>
     ad4:	fec42783          	lw	a5,-20(s0)
     ad8:	0067d703          	lhu	a4,6(a5)
     adc:	000107b7          	lui	a5,0x10
     ae0:	fff78793          	addi	a5,a5,-1 # ffff <__BSS_END__+0xcaf7>
     ae4:	02f70463          	beq	a4,a5,b0c <_Z9OSSemPostP17EventControlBlock+0x7c>
     ae8:	fec42783          	lw	a5,-20(s0)
     aec:	0067d783          	lhu	a5,6(a5)
     af0:	00178793          	addi	a5,a5,1
     af4:	01079713          	slli	a4,a5,0x10
     af8:	01075713          	srli	a4,a4,0x10
     afc:	fec42783          	lw	a5,-20(s0)
     b00:	00e79323          	sh	a4,6(a5)
     b04:	00000793          	li	a5,0
     b08:	0080006f          	j	b10 <_Z9OSSemPostP17EventControlBlock+0x80>
     b0c:	00500793          	li	a5,5
     b10:	00078513          	mv	a0,a5
     b14:	01c12083          	lw	ra,28(sp)
     b18:	01812403          	lw	s0,24(sp)
     b1c:	02010113          	addi	sp,sp,32
     b20:	00008067          	ret

00000b24 <_Z9OSSemPendP17EventControlBlockPh>:
     b24:	fe010113          	addi	sp,sp,-32
     b28:	00112e23          	sw	ra,28(sp)
     b2c:	00812c23          	sw	s0,24(sp)
     b30:	02010413          	addi	s0,sp,32
     b34:	fea42623          	sw	a0,-20(s0)
     b38:	feb42423          	sw	a1,-24(s0)
     b3c:	00008713          	mv	a4,ra
     b40:	000027b7          	lui	a5,0x2
     b44:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     b48:	02e7a023          	sw	a4,32(a5)
     b4c:	fec42783          	lw	a5,-20(s0)
     b50:	00079a63          	bnez	a5,b64 <_Z9OSSemPendP17EventControlBlockPh+0x40>
     b54:	fe842783          	lw	a5,-24(s0)
     b58:	00300713          	li	a4,3
     b5c:	00e78023          	sb	a4,0(a5)
     b60:	0a00006f          	j	c00 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     b64:	fec42783          	lw	a5,-20(s0)
     b68:	0047c703          	lbu	a4,4(a5)
     b6c:	00800793          	li	a5,8
     b70:	00f70a63          	beq	a4,a5,b84 <_Z9OSSemPendP17EventControlBlockPh+0x60>
     b74:	fe842783          	lw	a5,-24(s0)
     b78:	00400713          	li	a4,4
     b7c:	00e78023          	sb	a4,0(a5)
     b80:	0800006f          	j	c00 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     b84:	fec42783          	lw	a5,-20(s0)
     b88:	0067d783          	lhu	a5,6(a5)
     b8c:	02078663          	beqz	a5,bb8 <_Z9OSSemPendP17EventControlBlockPh+0x94>
     b90:	fec42783          	lw	a5,-20(s0)
     b94:	0067d783          	lhu	a5,6(a5)
     b98:	fff78793          	addi	a5,a5,-1
     b9c:	01079713          	slli	a4,a5,0x10
     ba0:	01075713          	srli	a4,a4,0x10
     ba4:	fec42783          	lw	a5,-20(s0)
     ba8:	00e79323          	sh	a4,6(a5)
     bac:	fe842783          	lw	a5,-24(s0)
     bb0:	00078023          	sb	zero,0(a5)
     bb4:	04c0006f          	j	c00 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     bb8:	000027b7          	lui	a5,0x2
     bbc:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     bc0:	0167c703          	lbu	a4,22(a5)
     bc4:	000027b7          	lui	a5,0x2
     bc8:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     bcc:	00a76713          	ori	a4,a4,10
     bd0:	0ff77713          	andi	a4,a4,255
     bd4:	00e78b23          	sb	a4,22(a5)
     bd8:	fec42503          	lw	a0,-20(s0)
     bdc:	00000097          	auipc	ra,0x0
     be0:	d40080e7          	jalr	-704(ra) # 91c <_Z16OS_EventTaskWaitP17EventControlBlock>
     be4:	00000097          	auipc	ra,0x0
     be8:	a6c080e7          	jalr	-1428(ra) # 650 <_Z8OS_Schedv>
     bec:	000027b7          	lui	a5,0x2
     bf0:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     bf4:	0007a623          	sw	zero,12(a5)
     bf8:	fe842783          	lw	a5,-24(s0)
     bfc:	00078023          	sb	zero,0(a5)
     c00:	01c12083          	lw	ra,28(sp)
     c04:	01812403          	lw	s0,24(sp)
     c08:	02010113          	addi	sp,sp,32
     c0c:	00008067          	ret

00000c10 <_Z12OSMboxCreatePv>:
     c10:	fd010113          	addi	sp,sp,-48
     c14:	02812623          	sw	s0,44(sp)
     c18:	03010413          	addi	s0,sp,48
     c1c:	fca42e23          	sw	a0,-36(s0)
     c20:	000027b7          	lui	a5,0x2
     c24:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     c28:	fef42623          	sw	a5,-20(s0)
     c2c:	000027b7          	lui	a5,0x2
     c30:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     c34:	00078c63          	beqz	a5,c4c <_Z12OSMboxCreatePv+0x3c>
     c38:	000027b7          	lui	a5,0x2
     c3c:	7ac7a783          	lw	a5,1964(a5) # 27ac <OSEventFreeList>
     c40:	0007a703          	lw	a4,0(a5)
     c44:	000027b7          	lui	a5,0x2
     c48:	7ae7a623          	sw	a4,1964(a5) # 27ac <OSEventFreeList>
     c4c:	fec42783          	lw	a5,-20(s0)
     c50:	02078663          	beqz	a5,c7c <_Z12OSMboxCreatePv+0x6c>
     c54:	fec42783          	lw	a5,-20(s0)
     c58:	00900713          	li	a4,9
     c5c:	00e78223          	sb	a4,4(a5)
     c60:	fec42783          	lw	a5,-20(s0)
     c64:	00079323          	sh	zero,6(a5)
     c68:	fec42783          	lw	a5,-20(s0)
     c6c:	fdc42703          	lw	a4,-36(s0)
     c70:	00e7a023          	sw	a4,0(a5)
     c74:	fec42783          	lw	a5,-20(s0)
     c78:	000782a3          	sb	zero,5(a5)
     c7c:	fec42783          	lw	a5,-20(s0)
     c80:	00078513          	mv	a0,a5
     c84:	02c12403          	lw	s0,44(sp)
     c88:	03010113          	addi	sp,sp,48
     c8c:	00008067          	ret

00000c90 <_Z10OSMboxPendP17EventControlBlockPh>:
     c90:	fd010113          	addi	sp,sp,-48
     c94:	02112623          	sw	ra,44(sp)
     c98:	02812423          	sw	s0,40(sp)
     c9c:	03010413          	addi	s0,sp,48
     ca0:	fca42e23          	sw	a0,-36(s0)
     ca4:	fcb42c23          	sw	a1,-40(s0)
     ca8:	fdc42783          	lw	a5,-36(s0)
     cac:	00079c63          	bnez	a5,cc4 <_Z10OSMboxPendP17EventControlBlockPh+0x34>
     cb0:	fd842783          	lw	a5,-40(s0)
     cb4:	00300713          	li	a4,3
     cb8:	00e78023          	sb	a4,0(a5)
     cbc:	00000793          	li	a5,0
     cc0:	0c80006f          	j	d88 <_Z10OSMboxPendP17EventControlBlockPh+0xf8>
     cc4:	fdc42783          	lw	a5,-36(s0)
     cc8:	0047c703          	lbu	a4,4(a5)
     ccc:	00900793          	li	a5,9
     cd0:	00f70c63          	beq	a4,a5,ce8 <_Z10OSMboxPendP17EventControlBlockPh+0x58>
     cd4:	fd842783          	lw	a5,-40(s0)
     cd8:	00400713          	li	a4,4
     cdc:	00e78023          	sb	a4,0(a5)
     ce0:	00000793          	li	a5,0
     ce4:	0a40006f          	j	d88 <_Z10OSMboxPendP17EventControlBlockPh+0xf8>
     ce8:	fdc42783          	lw	a5,-36(s0)
     cec:	0007a783          	lw	a5,0(a5)
     cf0:	fef42623          	sw	a5,-20(s0)
     cf4:	fec42783          	lw	a5,-20(s0)
     cf8:	00078e63          	beqz	a5,d14 <_Z10OSMboxPendP17EventControlBlockPh+0x84>
     cfc:	fdc42783          	lw	a5,-36(s0)
     d00:	0007a023          	sw	zero,0(a5)
     d04:	fd842783          	lw	a5,-40(s0)
     d08:	00078023          	sb	zero,0(a5)
     d0c:	fec42783          	lw	a5,-20(s0)
     d10:	0780006f          	j	d88 <_Z10OSMboxPendP17EventControlBlockPh+0xf8>
     d14:	000027b7          	lui	a5,0x2
     d18:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     d1c:	0167c703          	lbu	a4,22(a5)
     d20:	000027b7          	lui	a5,0x2
     d24:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     d28:	01476713          	ori	a4,a4,20
     d2c:	0ff77713          	andi	a4,a4,255
     d30:	00e78b23          	sb	a4,22(a5)
     d34:	fdc42503          	lw	a0,-36(s0)
     d38:	00000097          	auipc	ra,0x0
     d3c:	be4080e7          	jalr	-1052(ra) # 91c <_Z16OS_EventTaskWaitP17EventControlBlock>
     d40:	00000097          	auipc	ra,0x0
     d44:	910080e7          	jalr	-1776(ra) # 650 <_Z8OS_Schedv>
     d48:	000027b7          	lui	a5,0x2
     d4c:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     d50:	0107a783          	lw	a5,16(a5)
     d54:	fef42623          	sw	a5,-20(s0)
     d58:	000027b7          	lui	a5,0x2
     d5c:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     d60:	0007a823          	sw	zero,16(a5)
     d64:	000027b7          	lui	a5,0x2
     d68:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     d6c:	00078b23          	sb	zero,22(a5)
     d70:	000027b7          	lui	a5,0x2
     d74:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     d78:	0007a623          	sw	zero,12(a5)
     d7c:	fd842783          	lw	a5,-40(s0)
     d80:	00078023          	sb	zero,0(a5)
     d84:	fec42783          	lw	a5,-20(s0)
     d88:	00078513          	mv	a0,a5
     d8c:	02c12083          	lw	ra,44(sp)
     d90:	02812403          	lw	s0,40(sp)
     d94:	03010113          	addi	sp,sp,48
     d98:	00008067          	ret

00000d9c <_Z10OSMboxPostP17EventControlBlockPv>:
     d9c:	fe010113          	addi	sp,sp,-32
     da0:	00112e23          	sw	ra,28(sp)
     da4:	00812c23          	sw	s0,24(sp)
     da8:	02010413          	addi	s0,sp,32
     dac:	fea42623          	sw	a0,-20(s0)
     db0:	feb42423          	sw	a1,-24(s0)
     db4:	fec42783          	lw	a5,-20(s0)
     db8:	00079663          	bnez	a5,dc4 <_Z10OSMboxPostP17EventControlBlockPv+0x28>
     dbc:	00300793          	li	a5,3
     dc0:	0800006f          	j	e40 <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     dc4:	fe842783          	lw	a5,-24(s0)
     dc8:	00079663          	bnez	a5,dd4 <_Z10OSMboxPostP17EventControlBlockPv+0x38>
     dcc:	00600793          	li	a5,6
     dd0:	0700006f          	j	e40 <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     dd4:	fec42783          	lw	a5,-20(s0)
     dd8:	0047c703          	lbu	a4,4(a5)
     ddc:	00900793          	li	a5,9
     de0:	00f70663          	beq	a4,a5,dec <_Z10OSMboxPostP17EventControlBlockPv+0x50>
     de4:	00400793          	li	a5,4
     de8:	0580006f          	j	e40 <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     dec:	fec42783          	lw	a5,-20(s0)
     df0:	0057c783          	lbu	a5,5(a5)
     df4:	02078463          	beqz	a5,e1c <_Z10OSMboxPostP17EventControlBlockPv+0x80>
     df8:	01400613          	li	a2,20
     dfc:	fe842583          	lw	a1,-24(s0)
     e00:	fec42503          	lw	a0,-20(s0)
     e04:	00000097          	auipc	ra,0x0
     e08:	594080e7          	jalr	1428(ra) # 1398 <_Z12EventTaskRdyP17EventControlBlockPvh>
     e0c:	00000097          	auipc	ra,0x0
     e10:	844080e7          	jalr	-1980(ra) # 650 <_Z8OS_Schedv>
     e14:	00000793          	li	a5,0
     e18:	0280006f          	j	e40 <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     e1c:	fec42783          	lw	a5,-20(s0)
     e20:	0007a783          	lw	a5,0(a5)
     e24:	00078663          	beqz	a5,e30 <_Z10OSMboxPostP17EventControlBlockPv+0x94>
     e28:	00700793          	li	a5,7
     e2c:	0140006f          	j	e40 <_Z10OSMboxPostP17EventControlBlockPv+0xa4>
     e30:	fec42783          	lw	a5,-20(s0)
     e34:	fe842703          	lw	a4,-24(s0)
     e38:	00e7a023          	sw	a4,0(a5)
     e3c:	00000793          	li	a5,0
     e40:	00078513          	mv	a0,a5
     e44:	01c12083          	lw	ra,28(sp)
     e48:	01812403          	lw	s0,24(sp)
     e4c:	02010113          	addi	sp,sp,32
     e50:	00008067          	ret

00000e54 <_Z10getMessageP17EventControlBlock>:
     e54:	fe010113          	addi	sp,sp,-32
     e58:	00812e23          	sw	s0,28(sp)
     e5c:	02010413          	addi	s0,sp,32
     e60:	fea42623          	sw	a0,-20(s0)
     e64:	000027b7          	lui	a5,0x2
     e68:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     e6c:	0107a783          	lw	a5,16(a5)
     e70:	00078513          	mv	a0,a5
     e74:	01c12403          	lw	s0,28(sp)
     e78:	02010113          	addi	sp,sp,32
     e7c:	00008067          	ret

00000e80 <_Z14OSStartHighRdyv>:
     e80:	ff010113          	addi	sp,sp,-16
     e84:	00812623          	sw	s0,12(sp)
     e88:	01010413          	addi	s0,sp,16
     e8c:	000027b7          	lui	a5,0x2
     e90:	00100713          	li	a4,1
     e94:	7ce78023          	sb	a4,1984(a5) # 27c0 <OSRunning>
     e98:	000027b7          	lui	a5,0x2
     e9c:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     ea0:	0007a783          	lw	a5,0(a5)
     ea4:	00078113          	mv	sp,a5
     ea8:	03010113          	addi	sp,sp,48
     eac:	00d00893          	li	a7,13
     eb0:	00000073          	ecall
     eb4:	00000013          	nop
     eb8:	00c12403          	lw	s0,12(sp)
     ebc:	01010113          	addi	sp,sp,16
     ec0:	00008067          	ret

00000ec4 <_Z8OS_Startv>:
     ec4:	fe010113          	addi	sp,sp,-32
     ec8:	00112e23          	sw	ra,28(sp)
     ecc:	00812c23          	sw	s0,24(sp)
     ed0:	02010413          	addi	s0,sp,32
     ed4:	000027b7          	lui	a5,0x2
     ed8:	7c07c783          	lbu	a5,1984(a5) # 27c0 <OSRunning>
     edc:	0c079063          	bnez	a5,f9c <_Z8OS_Startv+0xd8>
     ee0:	000027b7          	lui	a5,0x2
     ee4:	7c17c783          	lbu	a5,1985(a5) # 27c1 <OSRdyGrp>
     ee8:	00078713          	mv	a4,a5
     eec:	000027b7          	lui	a5,0x2
     ef0:	dac78793          	addi	a5,a5,-596 # 1dac <_ZL10OSUnMapTbl>
     ef4:	00f707b3          	add	a5,a4,a5
     ef8:	0007c783          	lbu	a5,0(a5)
     efc:	fef407a3          	sb	a5,-17(s0)
     f00:	fef44703          	lbu	a4,-17(s0)
     f04:	000027b7          	lui	a5,0x2
     f08:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
     f0c:	00f707b3          	add	a5,a4,a5
     f10:	0007c783          	lbu	a5,0(a5)
     f14:	00078713          	mv	a4,a5
     f18:	000027b7          	lui	a5,0x2
     f1c:	dac78793          	addi	a5,a5,-596 # 1dac <_ZL10OSUnMapTbl>
     f20:	00f707b3          	add	a5,a4,a5
     f24:	0007c783          	lbu	a5,0(a5)
     f28:	fef40723          	sb	a5,-18(s0)
     f2c:	fef44783          	lbu	a5,-17(s0)
     f30:	00379793          	slli	a5,a5,0x3
     f34:	0ff7f713          	andi	a4,a5,255
     f38:	fee44783          	lbu	a5,-18(s0)
     f3c:	00f707b3          	add	a5,a4,a5
     f40:	0ff7f713          	andi	a4,a5,255
     f44:	000027b7          	lui	a5,0x2
     f48:	7ae782a3          	sb	a4,1957(a5) # 27a5 <OSPrioHighRdy>
     f4c:	000027b7          	lui	a5,0x2
     f50:	7a57c703          	lbu	a4,1957(a5) # 27a5 <OSPrioHighRdy>
     f54:	000027b7          	lui	a5,0x2
     f58:	7ae78223          	sb	a4,1956(a5) # 27a4 <OSPrioCur>
     f5c:	000027b7          	lui	a5,0x2
     f60:	7a57c783          	lbu	a5,1957(a5) # 27a5 <OSPrioHighRdy>
     f64:	00078713          	mv	a4,a5
     f68:	000037b7          	lui	a5,0x3
     f6c:	00271713          	slli	a4,a4,0x2
     f70:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
     f74:	00f707b3          	add	a5,a4,a5
     f78:	0007a703          	lw	a4,0(a5)
     f7c:	000027b7          	lui	a5,0x2
     f80:	7ae7ae23          	sw	a4,1980(a5) # 27bc <OSTCBHighRdy>
     f84:	000027b7          	lui	a5,0x2
     f88:	7bc7a703          	lw	a4,1980(a5) # 27bc <OSTCBHighRdy>
     f8c:	000027b7          	lui	a5,0x2
     f90:	7ae7ac23          	sw	a4,1976(a5) # 27b8 <OSTCBCur>
     f94:	00000097          	auipc	ra,0x0
     f98:	eec080e7          	jalr	-276(ra) # e80 <_Z14OSStartHighRdyv>
     f9c:	00000013          	nop
     fa0:	01c12083          	lw	ra,28(sp)
     fa4:	01812403          	lw	s0,24(sp)
     fa8:	02010113          	addi	sp,sp,32
     fac:	00008067          	ret

00000fb0 <_Z13OSTaskSuspendh>:
     fb0:	fd010113          	addi	sp,sp,-48
     fb4:	02112623          	sw	ra,44(sp)
     fb8:	02812423          	sw	s0,40(sp)
     fbc:	03010413          	addi	s0,sp,48
     fc0:	00050793          	mv	a5,a0
     fc4:	fcf40fa3          	sb	a5,-33(s0)
     fc8:	fdf44703          	lbu	a4,-33(s0)
     fcc:	03e00793          	li	a5,62
     fd0:	00e7fa63          	bgeu	a5,a4,fe4 <_Z13OSTaskSuspendh+0x34>
     fd4:	fdf44783          	lbu	a5,-33(s0)
     fd8:	00078663          	beqz	a5,fe4 <_Z13OSTaskSuspendh+0x34>
     fdc:	00200793          	li	a5,2
     fe0:	17c0006f          	j	115c <_Z13OSTaskSuspendh+0x1ac>
     fe4:	fffff097          	auipc	ra,0xfffff
     fe8:	438080e7          	jalr	1080(ra) # 41c <_Z17OS_ENTER_CRITICALv>
     fec:	fdf44783          	lbu	a5,-33(s0)
     ff0:	02079063          	bnez	a5,1010 <_Z13OSTaskSuspendh+0x60>
     ff4:	000027b7          	lui	a5,0x2
     ff8:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
     ffc:	0177c783          	lbu	a5,23(a5)
    1000:	fcf40fa3          	sb	a5,-33(s0)
    1004:	00100793          	li	a5,1
    1008:	fef407a3          	sb	a5,-17(s0)
    100c:	0280006f          	j	1034 <_Z13OSTaskSuspendh+0x84>
    1010:	000027b7          	lui	a5,0x2
    1014:	7b87a783          	lw	a5,1976(a5) # 27b8 <OSTCBCur>
    1018:	0177c783          	lbu	a5,23(a5)
    101c:	fdf44703          	lbu	a4,-33(s0)
    1020:	00f71863          	bne	a4,a5,1030 <_Z13OSTaskSuspendh+0x80>
    1024:	00100793          	li	a5,1
    1028:	fef407a3          	sb	a5,-17(s0)
    102c:	0080006f          	j	1034 <_Z13OSTaskSuspendh+0x84>
    1030:	fe0407a3          	sb	zero,-17(s0)
    1034:	fdf44703          	lbu	a4,-33(s0)
    1038:	000037b7          	lui	a5,0x3
    103c:	00271713          	slli	a4,a4,0x2
    1040:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    1044:	00f707b3          	add	a5,a4,a5
    1048:	0007a783          	lw	a5,0(a5)
    104c:	fef42423          	sw	a5,-24(s0)
    1050:	fe842783          	lw	a5,-24(s0)
    1054:	00079a63          	bnez	a5,1068 <_Z13OSTaskSuspendh+0xb8>
    1058:	fffff097          	auipc	ra,0xfffff
    105c:	3e0080e7          	jalr	992(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1060:	00400793          	li	a5,4
    1064:	0f80006f          	j	115c <_Z13OSTaskSuspendh+0x1ac>
    1068:	fe842783          	lw	a5,-24(s0)
    106c:	0197c783          	lbu	a5,25(a5)
    1070:	00078713          	mv	a4,a5
    1074:	000027b7          	lui	a5,0x2
    1078:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    107c:	00f707b3          	add	a5,a4,a5
    1080:	0007c783          	lbu	a5,0(a5)
    1084:	01879713          	slli	a4,a5,0x18
    1088:	41875713          	srai	a4,a4,0x18
    108c:	fe842783          	lw	a5,-24(s0)
    1090:	01a7c783          	lbu	a5,26(a5)
    1094:	01879793          	slli	a5,a5,0x18
    1098:	4187d793          	srai	a5,a5,0x18
    109c:	fff7c793          	not	a5,a5
    10a0:	01879793          	slli	a5,a5,0x18
    10a4:	4187d793          	srai	a5,a5,0x18
    10a8:	00f777b3          	and	a5,a4,a5
    10ac:	01879713          	slli	a4,a5,0x18
    10b0:	41875713          	srai	a4,a4,0x18
    10b4:	fe842783          	lw	a5,-24(s0)
    10b8:	0197c783          	lbu	a5,25(a5)
    10bc:	0ff77693          	andi	a3,a4,255
    10c0:	00002737          	lui	a4,0x2
    10c4:	7c470713          	addi	a4,a4,1988 # 27c4 <OSRdyTbl>
    10c8:	00e78733          	add	a4,a5,a4
    10cc:	00d70023          	sb	a3,0(a4)
    10d0:	00002737          	lui	a4,0x2
    10d4:	7c470713          	addi	a4,a4,1988 # 27c4 <OSRdyTbl>
    10d8:	00e787b3          	add	a5,a5,a4
    10dc:	0007c783          	lbu	a5,0(a5)
    10e0:	0017b793          	seqz	a5,a5
    10e4:	0ff7f793          	andi	a5,a5,255
    10e8:	04078463          	beqz	a5,1130 <_Z13OSTaskSuspendh+0x180>
    10ec:	fe842783          	lw	a5,-24(s0)
    10f0:	01b7c783          	lbu	a5,27(a5)
    10f4:	01879793          	slli	a5,a5,0x18
    10f8:	4187d793          	srai	a5,a5,0x18
    10fc:	fff7c793          	not	a5,a5
    1100:	01879713          	slli	a4,a5,0x18
    1104:	41875713          	srai	a4,a4,0x18
    1108:	000027b7          	lui	a5,0x2
    110c:	7c17c783          	lbu	a5,1985(a5) # 27c1 <OSRdyGrp>
    1110:	01879793          	slli	a5,a5,0x18
    1114:	4187d793          	srai	a5,a5,0x18
    1118:	00f777b3          	and	a5,a4,a5
    111c:	01879793          	slli	a5,a5,0x18
    1120:	4187d793          	srai	a5,a5,0x18
    1124:	0ff7f713          	andi	a4,a5,255
    1128:	000027b7          	lui	a5,0x2
    112c:	7ce780a3          	sb	a4,1985(a5) # 27c1 <OSRdyGrp>
    1130:	fe842783          	lw	a5,-24(s0)
    1134:	0167c783          	lbu	a5,22(a5)
    1138:	0037e793          	ori	a5,a5,3
    113c:	0ff7f713          	andi	a4,a5,255
    1140:	fe842783          	lw	a5,-24(s0)
    1144:	00e78b23          	sb	a4,22(a5)
    1148:	fffff097          	auipc	ra,0xfffff
    114c:	2f0080e7          	jalr	752(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1150:	fffff097          	auipc	ra,0xfffff
    1154:	500080e7          	jalr	1280(ra) # 650 <_Z8OS_Schedv>
    1158:	00000793          	li	a5,0
    115c:	00078513          	mv	a0,a5
    1160:	02c12083          	lw	ra,44(sp)
    1164:	02812403          	lw	s0,40(sp)
    1168:	03010113          	addi	sp,sp,48
    116c:	00008067          	ret

00001170 <_Z11OSEventInitP17EventControlBlockh>:
    1170:	fd010113          	addi	sp,sp,-48
    1174:	02812623          	sw	s0,44(sp)
    1178:	03010413          	addi	s0,sp,48
    117c:	fca42e23          	sw	a0,-36(s0)
    1180:	00058793          	mv	a5,a1
    1184:	fcf40da3          	sb	a5,-37(s0)
    1188:	fdc42783          	lw	a5,-36(s0)
    118c:	fdb44703          	lbu	a4,-37(s0)
    1190:	00e78223          	sb	a4,4(a5)
    1194:	fdc42783          	lw	a5,-36(s0)
    1198:	000782a3          	sb	zero,5(a5)
    119c:	fdc42783          	lw	a5,-36(s0)
    11a0:	0007a023          	sw	zero,0(a5)
    11a4:	fe0407a3          	sb	zero,-17(s0)
    11a8:	fef44703          	lbu	a4,-17(s0)
    11ac:	01d00793          	li	a5,29
    11b0:	02e7e263          	bltu	a5,a4,11d4 <_Z11OSEventInitP17EventControlBlockh+0x64>
    11b4:	fef44783          	lbu	a5,-17(s0)
    11b8:	fdc42703          	lw	a4,-36(s0)
    11bc:	00f707b3          	add	a5,a4,a5
    11c0:	00078423          	sb	zero,8(a5)
    11c4:	fef44783          	lbu	a5,-17(s0)
    11c8:	00178793          	addi	a5,a5,1
    11cc:	fef407a3          	sb	a5,-17(s0)
    11d0:	fd9ff06f          	j	11a8 <_Z11OSEventInitP17EventControlBlockh+0x38>
    11d4:	00000013          	nop
    11d8:	02c12403          	lw	s0,44(sp)
    11dc:	03010113          	addi	sp,sp,48
    11e0:	00008067          	ret

000011e4 <_Z19appendToWaitingListP17EventControlBlockh>:
    11e4:	fe010113          	addi	sp,sp,-32
    11e8:	00812e23          	sw	s0,28(sp)
    11ec:	02010413          	addi	s0,sp,32
    11f0:	fea42623          	sw	a0,-20(s0)
    11f4:	00058793          	mv	a5,a1
    11f8:	fef405a3          	sb	a5,-21(s0)
    11fc:	fec42783          	lw	a5,-20(s0)
    1200:	0057c703          	lbu	a4,5(a5)
    1204:	feb44783          	lbu	a5,-21(s0)
    1208:	4037d693          	srai	a3,a5,0x3
    120c:	000027b7          	lui	a5,0x2
    1210:	74078793          	addi	a5,a5,1856 # 2740 <_ZL8OSMapTbl>
    1214:	00f687b3          	add	a5,a3,a5
    1218:	0007c783          	lbu	a5,0(a5)
    121c:	00f767b3          	or	a5,a4,a5
    1220:	0ff7f713          	andi	a4,a5,255
    1224:	fec42783          	lw	a5,-20(s0)
    1228:	00e782a3          	sb	a4,5(a5)
    122c:	feb44783          	lbu	a5,-21(s0)
    1230:	4037d793          	srai	a5,a5,0x3
    1234:	fec42703          	lw	a4,-20(s0)
    1238:	00f707b3          	add	a5,a4,a5
    123c:	0087c683          	lbu	a3,8(a5)
    1240:	feb44783          	lbu	a5,-21(s0)
    1244:	0077f713          	andi	a4,a5,7
    1248:	000027b7          	lui	a5,0x2
    124c:	74078793          	addi	a5,a5,1856 # 2740 <_ZL8OSMapTbl>
    1250:	00f707b3          	add	a5,a4,a5
    1254:	0007c703          	lbu	a4,0(a5)
    1258:	feb44783          	lbu	a5,-21(s0)
    125c:	4037d793          	srai	a5,a5,0x3
    1260:	00e6e733          	or	a4,a3,a4
    1264:	0ff77713          	andi	a4,a4,255
    1268:	fec42683          	lw	a3,-20(s0)
    126c:	00f687b3          	add	a5,a3,a5
    1270:	00e78423          	sb	a4,8(a5)
    1274:	00000013          	nop
    1278:	01c12403          	lw	s0,28(sp)
    127c:	02010113          	addi	sp,sp,32
    1280:	00008067          	ret

00001284 <_Z20eraseFromWaitingListP17EventControlBlock>:
    1284:	fd010113          	addi	sp,sp,-48
    1288:	02112623          	sw	ra,44(sp)
    128c:	02812423          	sw	s0,40(sp)
    1290:	03010413          	addi	s0,sp,48
    1294:	fca42e23          	sw	a0,-36(s0)
    1298:	fdc42503          	lw	a0,-36(s0)
    129c:	00000097          	auipc	ra,0x0
    12a0:	320080e7          	jalr	800(ra) # 15bc <_Z18getHighestPriorityP17EventControlBlock>
    12a4:	00050793          	mv	a5,a0
    12a8:	fef407a3          	sb	a5,-17(s0)
    12ac:	fef44783          	lbu	a5,-17(s0)
    12b0:	4037d793          	srai	a5,a5,0x3
    12b4:	fdc42703          	lw	a4,-36(s0)
    12b8:	00f707b3          	add	a5,a4,a5
    12bc:	0087c783          	lbu	a5,8(a5)
    12c0:	01879713          	slli	a4,a5,0x18
    12c4:	41875713          	srai	a4,a4,0x18
    12c8:	fef44783          	lbu	a5,-17(s0)
    12cc:	0077f693          	andi	a3,a5,7
    12d0:	000027b7          	lui	a5,0x2
    12d4:	74078793          	addi	a5,a5,1856 # 2740 <_ZL8OSMapTbl>
    12d8:	00f687b3          	add	a5,a3,a5
    12dc:	0007c783          	lbu	a5,0(a5)
    12e0:	01879793          	slli	a5,a5,0x18
    12e4:	4187d793          	srai	a5,a5,0x18
    12e8:	fff7c793          	not	a5,a5
    12ec:	01879793          	slli	a5,a5,0x18
    12f0:	4187d793          	srai	a5,a5,0x18
    12f4:	00f777b3          	and	a5,a4,a5
    12f8:	01879713          	slli	a4,a5,0x18
    12fc:	41875713          	srai	a4,a4,0x18
    1300:	fef44783          	lbu	a5,-17(s0)
    1304:	4037d793          	srai	a5,a5,0x3
    1308:	0ff77693          	andi	a3,a4,255
    130c:	fdc42703          	lw	a4,-36(s0)
    1310:	00f70733          	add	a4,a4,a5
    1314:	00d70423          	sb	a3,8(a4)
    1318:	fdc42703          	lw	a4,-36(s0)
    131c:	00f707b3          	add	a5,a4,a5
    1320:	0087c783          	lbu	a5,8(a5)
    1324:	0017b793          	seqz	a5,a5
    1328:	0ff7f793          	andi	a5,a5,255
    132c:	04078c63          	beqz	a5,1384 <_Z20eraseFromWaitingListP17EventControlBlock+0x100>
    1330:	fdc42783          	lw	a5,-36(s0)
    1334:	0057c783          	lbu	a5,5(a5)
    1338:	01879713          	slli	a4,a5,0x18
    133c:	41875713          	srai	a4,a4,0x18
    1340:	fef44783          	lbu	a5,-17(s0)
    1344:	4037d693          	srai	a3,a5,0x3
    1348:	000027b7          	lui	a5,0x2
    134c:	74078793          	addi	a5,a5,1856 # 2740 <_ZL8OSMapTbl>
    1350:	00f687b3          	add	a5,a3,a5
    1354:	0007c783          	lbu	a5,0(a5)
    1358:	01879793          	slli	a5,a5,0x18
    135c:	4187d793          	srai	a5,a5,0x18
    1360:	fff7c793          	not	a5,a5
    1364:	01879793          	slli	a5,a5,0x18
    1368:	4187d793          	srai	a5,a5,0x18
    136c:	00f777b3          	and	a5,a4,a5
    1370:	01879793          	slli	a5,a5,0x18
    1374:	4187d793          	srai	a5,a5,0x18
    1378:	0ff7f713          	andi	a4,a5,255
    137c:	fdc42783          	lw	a5,-36(s0)
    1380:	00e782a3          	sb	a4,5(a5)
    1384:	00000013          	nop
    1388:	02c12083          	lw	ra,44(sp)
    138c:	02812403          	lw	s0,40(sp)
    1390:	03010113          	addi	sp,sp,48
    1394:	00008067          	ret

00001398 <_Z12EventTaskRdyP17EventControlBlockPvh>:
    1398:	fd010113          	addi	sp,sp,-48
    139c:	02812623          	sw	s0,44(sp)
    13a0:	03010413          	addi	s0,sp,48
    13a4:	fca42e23          	sw	a0,-36(s0)
    13a8:	fcb42c23          	sw	a1,-40(s0)
    13ac:	00060793          	mv	a5,a2
    13b0:	fcf40ba3          	sb	a5,-41(s0)
    13b4:	fdc42783          	lw	a5,-36(s0)
    13b8:	0057c783          	lbu	a5,5(a5)
    13bc:	00078713          	mv	a4,a5
    13c0:	000027b7          	lui	a5,0x2
    13c4:	eac78793          	addi	a5,a5,-340 # 1eac <_ZL10OSUnMapTbl>
    13c8:	00f707b3          	add	a5,a4,a5
    13cc:	0007c783          	lbu	a5,0(a5)
    13d0:	fef407a3          	sb	a5,-17(s0)
    13d4:	fef44703          	lbu	a4,-17(s0)
    13d8:	000027b7          	lui	a5,0x2
    13dc:	74078793          	addi	a5,a5,1856 # 2740 <_ZL8OSMapTbl>
    13e0:	00f707b3          	add	a5,a4,a5
    13e4:	0007c783          	lbu	a5,0(a5)
    13e8:	fef40723          	sb	a5,-18(s0)
    13ec:	fef44783          	lbu	a5,-17(s0)
    13f0:	fdc42703          	lw	a4,-36(s0)
    13f4:	00f707b3          	add	a5,a4,a5
    13f8:	0087c783          	lbu	a5,8(a5)
    13fc:	00078713          	mv	a4,a5
    1400:	000027b7          	lui	a5,0x2
    1404:	eac78793          	addi	a5,a5,-340 # 1eac <_ZL10OSUnMapTbl>
    1408:	00f707b3          	add	a5,a4,a5
    140c:	0007c783          	lbu	a5,0(a5)
    1410:	fef406a3          	sb	a5,-19(s0)
    1414:	fed44703          	lbu	a4,-19(s0)
    1418:	000027b7          	lui	a5,0x2
    141c:	74078793          	addi	a5,a5,1856 # 2740 <_ZL8OSMapTbl>
    1420:	00f707b3          	add	a5,a4,a5
    1424:	0007c783          	lbu	a5,0(a5)
    1428:	fef40623          	sb	a5,-20(s0)
    142c:	fef44783          	lbu	a5,-17(s0)
    1430:	00379793          	slli	a5,a5,0x3
    1434:	0ff7f713          	andi	a4,a5,255
    1438:	fed44783          	lbu	a5,-19(s0)
    143c:	00f707b3          	add	a5,a4,a5
    1440:	0ff7f793          	andi	a5,a5,255
    1444:	fef403a3          	sb	a5,-25(s0)
    1448:	fef44783          	lbu	a5,-17(s0)
    144c:	fdc42703          	lw	a4,-36(s0)
    1450:	00f707b3          	add	a5,a4,a5
    1454:	0087c783          	lbu	a5,8(a5)
    1458:	01879713          	slli	a4,a5,0x18
    145c:	41875713          	srai	a4,a4,0x18
    1460:	fec40783          	lb	a5,-20(s0)
    1464:	fff7c793          	not	a5,a5
    1468:	01879793          	slli	a5,a5,0x18
    146c:	4187d793          	srai	a5,a5,0x18
    1470:	00f777b3          	and	a5,a4,a5
    1474:	01879713          	slli	a4,a5,0x18
    1478:	41875713          	srai	a4,a4,0x18
    147c:	fef44783          	lbu	a5,-17(s0)
    1480:	0ff77693          	andi	a3,a4,255
    1484:	fdc42703          	lw	a4,-36(s0)
    1488:	00f70733          	add	a4,a4,a5
    148c:	00d70423          	sb	a3,8(a4)
    1490:	fdc42703          	lw	a4,-36(s0)
    1494:	00f707b3          	add	a5,a4,a5
    1498:	0087c783          	lbu	a5,8(a5)
    149c:	0017b793          	seqz	a5,a5
    14a0:	0ff7f793          	andi	a5,a5,255
    14a4:	02078e63          	beqz	a5,14e0 <_Z12EventTaskRdyP17EventControlBlockPvh+0x148>
    14a8:	fdc42783          	lw	a5,-36(s0)
    14ac:	0057c783          	lbu	a5,5(a5)
    14b0:	01879713          	slli	a4,a5,0x18
    14b4:	41875713          	srai	a4,a4,0x18
    14b8:	fee40783          	lb	a5,-18(s0)
    14bc:	fff7c793          	not	a5,a5
    14c0:	01879793          	slli	a5,a5,0x18
    14c4:	4187d793          	srai	a5,a5,0x18
    14c8:	00f777b3          	and	a5,a4,a5
    14cc:	01879793          	slli	a5,a5,0x18
    14d0:	4187d793          	srai	a5,a5,0x18
    14d4:	0ff7f713          	andi	a4,a5,255
    14d8:	fdc42783          	lw	a5,-36(s0)
    14dc:	00e782a3          	sb	a4,5(a5)
    14e0:	fe744783          	lbu	a5,-25(s0)
    14e4:	00078713          	mv	a4,a5
    14e8:	000037b7          	lui	a5,0x3
    14ec:	00271713          	slli	a4,a4,0x2
    14f0:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    14f4:	00f707b3          	add	a5,a4,a5
    14f8:	0007a783          	lw	a5,0(a5)
    14fc:	fef42423          	sw	a5,-24(s0)
    1500:	fe842783          	lw	a5,-24(s0)
    1504:	0007a623          	sw	zero,12(a5)
    1508:	fe842783          	lw	a5,-24(s0)
    150c:	fd842703          	lw	a4,-40(s0)
    1510:	00e7a823          	sw	a4,16(a5)
    1514:	fe842783          	lw	a5,-24(s0)
    1518:	0167c783          	lbu	a5,22(a5)
    151c:	01879713          	slli	a4,a5,0x18
    1520:	41875713          	srai	a4,a4,0x18
    1524:	fd740783          	lb	a5,-41(s0)
    1528:	fff7c793          	not	a5,a5
    152c:	01879793          	slli	a5,a5,0x18
    1530:	4187d793          	srai	a5,a5,0x18
    1534:	00f777b3          	and	a5,a4,a5
    1538:	01879793          	slli	a5,a5,0x18
    153c:	4187d793          	srai	a5,a5,0x18
    1540:	0ff7f713          	andi	a4,a5,255
    1544:	fe842783          	lw	a5,-24(s0)
    1548:	00e78b23          	sb	a4,22(a5)
    154c:	fe842783          	lw	a5,-24(s0)
    1550:	0167c783          	lbu	a5,22(a5)
    1554:	04079a63          	bnez	a5,15a8 <_Z12EventTaskRdyP17EventControlBlockPvh+0x210>
    1558:	000027b7          	lui	a5,0x2
    155c:	7c17c703          	lbu	a4,1985(a5) # 27c1 <OSRdyGrp>
    1560:	fee44783          	lbu	a5,-18(s0)
    1564:	00f767b3          	or	a5,a4,a5
    1568:	0ff7f713          	andi	a4,a5,255
    156c:	000027b7          	lui	a5,0x2
    1570:	7ce780a3          	sb	a4,1985(a5) # 27c1 <OSRdyGrp>
    1574:	fef44703          	lbu	a4,-17(s0)
    1578:	000027b7          	lui	a5,0x2
    157c:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    1580:	00f707b3          	add	a5,a4,a5
    1584:	0007c703          	lbu	a4,0(a5)
    1588:	fef44683          	lbu	a3,-17(s0)
    158c:	fec44783          	lbu	a5,-20(s0)
    1590:	00f767b3          	or	a5,a4,a5
    1594:	0ff7f713          	andi	a4,a5,255
    1598:	000027b7          	lui	a5,0x2
    159c:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    15a0:	00f687b3          	add	a5,a3,a5
    15a4:	00e78023          	sb	a4,0(a5)
    15a8:	fe744783          	lbu	a5,-25(s0)
    15ac:	00078513          	mv	a0,a5
    15b0:	02c12403          	lw	s0,44(sp)
    15b4:	03010113          	addi	sp,sp,48
    15b8:	00008067          	ret

000015bc <_Z18getHighestPriorityP17EventControlBlock>:
    15bc:	fd010113          	addi	sp,sp,-48
    15c0:	02812623          	sw	s0,44(sp)
    15c4:	03010413          	addi	s0,sp,48
    15c8:	fca42e23          	sw	a0,-36(s0)
    15cc:	fdc42783          	lw	a5,-36(s0)
    15d0:	0057c783          	lbu	a5,5(a5)
    15d4:	00078713          	mv	a4,a5
    15d8:	000027b7          	lui	a5,0x2
    15dc:	eac78793          	addi	a5,a5,-340 # 1eac <_ZL10OSUnMapTbl>
    15e0:	00f707b3          	add	a5,a4,a5
    15e4:	0007c783          	lbu	a5,0(a5)
    15e8:	fef407a3          	sb	a5,-17(s0)
    15ec:	fef44783          	lbu	a5,-17(s0)
    15f0:	fdc42703          	lw	a4,-36(s0)
    15f4:	00f707b3          	add	a5,a4,a5
    15f8:	0087c783          	lbu	a5,8(a5)
    15fc:	00078713          	mv	a4,a5
    1600:	000027b7          	lui	a5,0x2
    1604:	eac78793          	addi	a5,a5,-340 # 1eac <_ZL10OSUnMapTbl>
    1608:	00f707b3          	add	a5,a4,a5
    160c:	0007c783          	lbu	a5,0(a5)
    1610:	fef40723          	sb	a5,-18(s0)
    1614:	fef44783          	lbu	a5,-17(s0)
    1618:	00379793          	slli	a5,a5,0x3
    161c:	0ff7f713          	andi	a4,a5,255
    1620:	fee44783          	lbu	a5,-18(s0)
    1624:	00f707b3          	add	a5,a4,a5
    1628:	fef406a3          	sb	a5,-19(s0)
    162c:	fed44783          	lbu	a5,-19(s0)
    1630:	00078513          	mv	a0,a5
    1634:	02c12403          	lw	s0,44(sp)
    1638:	03010113          	addi	sp,sp,48
    163c:	00008067          	ret

00001640 <_Z10OS_TCBInithPm>:
    1640:	fd010113          	addi	sp,sp,-48
    1644:	02112623          	sw	ra,44(sp)
    1648:	02812423          	sw	s0,40(sp)
    164c:	03010413          	addi	s0,sp,48
    1650:	00050793          	mv	a5,a0
    1654:	fcb42c23          	sw	a1,-40(s0)
    1658:	fcf40fa3          	sb	a5,-33(s0)
    165c:	fffff097          	auipc	ra,0xfffff
    1660:	dc0080e7          	jalr	-576(ra) # 41c <_Z17OS_ENTER_CRITICALv>
    1664:	000027b7          	lui	a5,0x2
    1668:	7b07a783          	lw	a5,1968(a5) # 27b0 <OSTCBFreeList>
    166c:	fef42623          	sw	a5,-20(s0)
    1670:	fec42783          	lw	a5,-20(s0)
    1674:	18078e63          	beqz	a5,1810 <_Z10OS_TCBInithPm+0x1d0>
    1678:	fec42783          	lw	a5,-20(s0)
    167c:	0047a703          	lw	a4,4(a5)
    1680:	000027b7          	lui	a5,0x2
    1684:	7ae7a823          	sw	a4,1968(a5) # 27b0 <OSTCBFreeList>
    1688:	fffff097          	auipc	ra,0xfffff
    168c:	db0080e7          	jalr	-592(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1690:	fec42783          	lw	a5,-20(s0)
    1694:	fd842703          	lw	a4,-40(s0)
    1698:	00e7a023          	sw	a4,0(a5)
    169c:	fec42783          	lw	a5,-20(s0)
    16a0:	fdf44703          	lbu	a4,-33(s0)
    16a4:	00e78ba3          	sb	a4,23(a5)
    16a8:	fec42783          	lw	a5,-20(s0)
    16ac:	00078b23          	sb	zero,22(a5)
    16b0:	fec42783          	lw	a5,-20(s0)
    16b4:	00079a23          	sh	zero,20(a5)
    16b8:	fdf44783          	lbu	a5,-33(s0)
    16bc:	4037d793          	srai	a5,a5,0x3
    16c0:	0ff7f713          	andi	a4,a5,255
    16c4:	fec42783          	lw	a5,-20(s0)
    16c8:	00e78ca3          	sb	a4,25(a5)
    16cc:	fec42783          	lw	a5,-20(s0)
    16d0:	0197c783          	lbu	a5,25(a5)
    16d4:	00078713          	mv	a4,a5
    16d8:	000027b7          	lui	a5,0x2
    16dc:	76878793          	addi	a5,a5,1896 # 2768 <_ZL8OSMapTbl>
    16e0:	00f707b3          	add	a5,a4,a5
    16e4:	0007c703          	lbu	a4,0(a5)
    16e8:	fec42783          	lw	a5,-20(s0)
    16ec:	00e78da3          	sb	a4,27(a5)
    16f0:	fdf44783          	lbu	a5,-33(s0)
    16f4:	0077f793          	andi	a5,a5,7
    16f8:	0ff7f713          	andi	a4,a5,255
    16fc:	fec42783          	lw	a5,-20(s0)
    1700:	00e78c23          	sb	a4,24(a5)
    1704:	fec42783          	lw	a5,-20(s0)
    1708:	0187c783          	lbu	a5,24(a5)
    170c:	00078713          	mv	a4,a5
    1710:	000027b7          	lui	a5,0x2
    1714:	76878793          	addi	a5,a5,1896 # 2768 <_ZL8OSMapTbl>
    1718:	00f707b3          	add	a5,a4,a5
    171c:	0007c703          	lbu	a4,0(a5)
    1720:	fec42783          	lw	a5,-20(s0)
    1724:	00e78d23          	sb	a4,26(a5)
    1728:	fec42783          	lw	a5,-20(s0)
    172c:	0007a623          	sw	zero,12(a5)
    1730:	fec42783          	lw	a5,-20(s0)
    1734:	0007a823          	sw	zero,16(a5)
    1738:	fffff097          	auipc	ra,0xfffff
    173c:	ce4080e7          	jalr	-796(ra) # 41c <_Z17OS_ENTER_CRITICALv>
    1740:	fdf44703          	lbu	a4,-33(s0)
    1744:	000037b7          	lui	a5,0x3
    1748:	00271713          	slli	a4,a4,0x2
    174c:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    1750:	00f707b3          	add	a5,a4,a5
    1754:	fec42703          	lw	a4,-20(s0)
    1758:	00e7a023          	sw	a4,0(a5)
    175c:	000027b7          	lui	a5,0x2
    1760:	7b47a703          	lw	a4,1972(a5) # 27b4 <OSTCBList>
    1764:	fec42783          	lw	a5,-20(s0)
    1768:	00e7a223          	sw	a4,4(a5)
    176c:	fec42783          	lw	a5,-20(s0)
    1770:	0007a423          	sw	zero,8(a5)
    1774:	000027b7          	lui	a5,0x2
    1778:	7b47a783          	lw	a5,1972(a5) # 27b4 <OSTCBList>
    177c:	00078a63          	beqz	a5,1790 <_Z10OS_TCBInithPm+0x150>
    1780:	000027b7          	lui	a5,0x2
    1784:	7b47a783          	lw	a5,1972(a5) # 27b4 <OSTCBList>
    1788:	fec42703          	lw	a4,-20(s0)
    178c:	00e7a423          	sw	a4,8(a5)
    1790:	000027b7          	lui	a5,0x2
    1794:	fec42703          	lw	a4,-20(s0)
    1798:	7ae7aa23          	sw	a4,1972(a5) # 27b4 <OSTCBList>
    179c:	fec42783          	lw	a5,-20(s0)
    17a0:	01b7c703          	lbu	a4,27(a5)
    17a4:	000027b7          	lui	a5,0x2
    17a8:	7c17c783          	lbu	a5,1985(a5) # 27c1 <OSRdyGrp>
    17ac:	00f767b3          	or	a5,a4,a5
    17b0:	0ff7f713          	andi	a4,a5,255
    17b4:	000027b7          	lui	a5,0x2
    17b8:	7ce780a3          	sb	a4,1985(a5) # 27c1 <OSRdyGrp>
    17bc:	fec42783          	lw	a5,-20(s0)
    17c0:	0197c783          	lbu	a5,25(a5)
    17c4:	00078713          	mv	a4,a5
    17c8:	000027b7          	lui	a5,0x2
    17cc:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    17d0:	00f707b3          	add	a5,a4,a5
    17d4:	0007c703          	lbu	a4,0(a5)
    17d8:	fec42783          	lw	a5,-20(s0)
    17dc:	01a7c783          	lbu	a5,26(a5)
    17e0:	fec42683          	lw	a3,-20(s0)
    17e4:	0196c683          	lbu	a3,25(a3)
    17e8:	00f767b3          	or	a5,a4,a5
    17ec:	0ff7f713          	andi	a4,a5,255
    17f0:	000027b7          	lui	a5,0x2
    17f4:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    17f8:	00f687b3          	add	a5,a3,a5
    17fc:	00e78023          	sb	a4,0(a5)
    1800:	fffff097          	auipc	ra,0xfffff
    1804:	c38080e7          	jalr	-968(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1808:	00000793          	li	a5,0
    180c:	0100006f          	j	181c <_Z10OS_TCBInithPm+0x1dc>
    1810:	fffff097          	auipc	ra,0xfffff
    1814:	c28080e7          	jalr	-984(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1818:	00100793          	li	a5,1
    181c:	00078513          	mv	a0,a5
    1820:	02c12083          	lw	ra,44(sp)
    1824:	02812403          	lw	s0,40(sp)
    1828:	03010113          	addi	sp,sp,48
    182c:	00008067          	ret

00001830 <_Z12OSTaskCreatePFvPvES_Pmh>:
    1830:	fd010113          	addi	sp,sp,-48
    1834:	02112623          	sw	ra,44(sp)
    1838:	02812423          	sw	s0,40(sp)
    183c:	03010413          	addi	s0,sp,48
    1840:	fca42e23          	sw	a0,-36(s0)
    1844:	fcb42c23          	sw	a1,-40(s0)
    1848:	fcc42a23          	sw	a2,-44(s0)
    184c:	00068793          	mv	a5,a3
    1850:	fcf409a3          	sb	a5,-45(s0)
    1854:	fd344703          	lbu	a4,-45(s0)
    1858:	03f00793          	li	a5,63
    185c:	00e7f663          	bgeu	a5,a4,1868 <_Z12OSTaskCreatePFvPvES_Pmh+0x38>
    1860:	00200793          	li	a5,2
    1864:	1200006f          	j	1984 <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    1868:	fffff097          	auipc	ra,0xfffff
    186c:	bb4080e7          	jalr	-1100(ra) # 41c <_Z17OS_ENTER_CRITICALv>
    1870:	fd344703          	lbu	a4,-45(s0)
    1874:	000037b7          	lui	a5,0x3
    1878:	00271713          	slli	a4,a4,0x2
    187c:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    1880:	00f707b3          	add	a5,a4,a5
    1884:	0007a783          	lw	a5,0(a5)
    1888:	0e079863          	bnez	a5,1978 <_Z12OSTaskCreatePFvPvES_Pmh+0x148>
    188c:	fd344703          	lbu	a4,-45(s0)
    1890:	000037b7          	lui	a5,0x3
    1894:	00271713          	slli	a4,a4,0x2
    1898:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    189c:	00f707b3          	add	a5,a4,a5
    18a0:	00100713          	li	a4,1
    18a4:	00e7a023          	sw	a4,0(a5)
    18a8:	fffff097          	auipc	ra,0xfffff
    18ac:	b90080e7          	jalr	-1136(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    18b0:	00000693          	li	a3,0
    18b4:	fd442603          	lw	a2,-44(s0)
    18b8:	fd842583          	lw	a1,-40(s0)
    18bc:	fdc42503          	lw	a0,-36(s0)
    18c0:	fffff097          	auipc	ra,0xfffff
    18c4:	b94080e7          	jalr	-1132(ra) # 454 <_Z13OSTaskStkInitPFvPvES_Pmt>
    18c8:	00050793          	mv	a5,a0
    18cc:	fef42623          	sw	a5,-20(s0)
    18d0:	fd344783          	lbu	a5,-45(s0)
    18d4:	fec42583          	lw	a1,-20(s0)
    18d8:	00078513          	mv	a0,a5
    18dc:	00000097          	auipc	ra,0x0
    18e0:	d64080e7          	jalr	-668(ra) # 1640 <_Z10OS_TCBInithPm>
    18e4:	00050793          	mv	a5,a0
    18e8:	fef403a3          	sb	a5,-25(s0)
    18ec:	fe744783          	lbu	a5,-25(s0)
    18f0:	04079c63          	bnez	a5,1948 <_Z12OSTaskCreatePFvPvES_Pmh+0x118>
    18f4:	fffff097          	auipc	ra,0xfffff
    18f8:	b28080e7          	jalr	-1240(ra) # 41c <_Z17OS_ENTER_CRITICALv>
    18fc:	000027b7          	lui	a5,0x2
    1900:	7cc7c783          	lbu	a5,1996(a5) # 27cc <OSTaskCtr>
    1904:	00178793          	addi	a5,a5,1
    1908:	0ff7f713          	andi	a4,a5,255
    190c:	000027b7          	lui	a5,0x2
    1910:	7ce78623          	sb	a4,1996(a5) # 27cc <OSTaskCtr>
    1914:	fffff097          	auipc	ra,0xfffff
    1918:	b24080e7          	jalr	-1244(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    191c:	fdc42783          	lw	a5,-36(s0)
    1920:	fef42423          	sw	a5,-24(s0)
    1924:	fd344703          	lbu	a4,-45(s0)
    1928:	000037b7          	lui	a5,0x3
    192c:	00271713          	slli	a4,a4,0x2
    1930:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    1934:	00f707b3          	add	a5,a4,a5
    1938:	0007a783          	lw	a5,0(a5)
    193c:	fe842703          	lw	a4,-24(s0)
    1940:	02e7a023          	sw	a4,32(a5)
    1944:	02c0006f          	j	1970 <_Z12OSTaskCreatePFvPvES_Pmh+0x140>
    1948:	fffff097          	auipc	ra,0xfffff
    194c:	ad4080e7          	jalr	-1324(ra) # 41c <_Z17OS_ENTER_CRITICALv>
    1950:	fd344703          	lbu	a4,-45(s0)
    1954:	000037b7          	lui	a5,0x3
    1958:	00271713          	slli	a4,a4,0x2
    195c:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    1960:	00f707b3          	add	a5,a4,a5
    1964:	0007a023          	sw	zero,0(a5)
    1968:	fffff097          	auipc	ra,0xfffff
    196c:	ad0080e7          	jalr	-1328(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1970:	fe744783          	lbu	a5,-25(s0)
    1974:	0100006f          	j	1984 <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    1978:	fffff097          	auipc	ra,0xfffff
    197c:	ac0080e7          	jalr	-1344(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1980:	00500793          	li	a5,5
    1984:	00078513          	mv	a0,a5
    1988:	02c12083          	lw	ra,44(sp)
    198c:	02812403          	lw	s0,40(sp)
    1990:	03010113          	addi	sp,sp,48
    1994:	00008067          	ret

00001998 <_Z12OSTaskResumeh>:
    1998:	fd010113          	addi	sp,sp,-48
    199c:	02112623          	sw	ra,44(sp)
    19a0:	02812423          	sw	s0,40(sp)
    19a4:	03010413          	addi	s0,sp,48
    19a8:	00050793          	mv	a5,a0
    19ac:	fcf40fa3          	sb	a5,-33(s0)
    19b0:	fdf44703          	lbu	a4,-33(s0)
    19b4:	03e00793          	li	a5,62
    19b8:	00e7f663          	bgeu	a5,a4,19c4 <_Z12OSTaskResumeh+0x2c>
    19bc:	00200793          	li	a5,2
    19c0:	11c0006f          	j	1adc <_Z12OSTaskResumeh+0x144>
    19c4:	fffff097          	auipc	ra,0xfffff
    19c8:	a58080e7          	jalr	-1448(ra) # 41c <_Z17OS_ENTER_CRITICALv>
    19cc:	fdf44703          	lbu	a4,-33(s0)
    19d0:	000037b7          	lui	a5,0x3
    19d4:	00271713          	slli	a4,a4,0x2
    19d8:	40878793          	addi	a5,a5,1032 # 3408 <OSTCBPrioTbl>
    19dc:	00f707b3          	add	a5,a4,a5
    19e0:	0007a783          	lw	a5,0(a5)
    19e4:	fef42623          	sw	a5,-20(s0)
    19e8:	fec42783          	lw	a5,-20(s0)
    19ec:	00079a63          	bnez	a5,1a00 <_Z12OSTaskResumeh+0x68>
    19f0:	fffff097          	auipc	ra,0xfffff
    19f4:	a48080e7          	jalr	-1464(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    19f8:	00600793          	li	a5,6
    19fc:	0e00006f          	j	1adc <_Z12OSTaskResumeh+0x144>
    1a00:	fec42783          	lw	a5,-20(s0)
    1a04:	0167c783          	lbu	a5,22(a5)
    1a08:	0037f793          	andi	a5,a5,3
    1a0c:	0c078263          	beqz	a5,1ad0 <_Z12OSTaskResumeh+0x138>
    1a10:	fec42783          	lw	a5,-20(s0)
    1a14:	0167c783          	lbu	a5,22(a5)
    1a18:	ffc7f793          	andi	a5,a5,-4
    1a1c:	0ff7f713          	andi	a4,a5,255
    1a20:	fec42783          	lw	a5,-20(s0)
    1a24:	00e78b23          	sb	a4,22(a5)
    1a28:	fec42783          	lw	a5,-20(s0)
    1a2c:	0167c783          	lbu	a5,22(a5)
    1a30:	00079c63          	bnez	a5,1a48 <_Z12OSTaskResumeh+0xb0>
    1a34:	fec42783          	lw	a5,-20(s0)
    1a38:	0147d783          	lhu	a5,20(a5)
    1a3c:	00079663          	bnez	a5,1a48 <_Z12OSTaskResumeh+0xb0>
    1a40:	00100793          	li	a5,1
    1a44:	0080006f          	j	1a4c <_Z12OSTaskResumeh+0xb4>
    1a48:	00000793          	li	a5,0
    1a4c:	06078a63          	beqz	a5,1ac0 <_Z12OSTaskResumeh+0x128>
    1a50:	fec42783          	lw	a5,-20(s0)
    1a54:	01b7c703          	lbu	a4,27(a5)
    1a58:	000027b7          	lui	a5,0x2
    1a5c:	7c17c783          	lbu	a5,1985(a5) # 27c1 <OSRdyGrp>
    1a60:	00f767b3          	or	a5,a4,a5
    1a64:	0ff7f713          	andi	a4,a5,255
    1a68:	000027b7          	lui	a5,0x2
    1a6c:	7ce780a3          	sb	a4,1985(a5) # 27c1 <OSRdyGrp>
    1a70:	fec42783          	lw	a5,-20(s0)
    1a74:	0197c783          	lbu	a5,25(a5)
    1a78:	00078713          	mv	a4,a5
    1a7c:	000027b7          	lui	a5,0x2
    1a80:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    1a84:	00f707b3          	add	a5,a4,a5
    1a88:	0007c703          	lbu	a4,0(a5)
    1a8c:	fec42783          	lw	a5,-20(s0)
    1a90:	01a7c783          	lbu	a5,26(a5)
    1a94:	fec42683          	lw	a3,-20(s0)
    1a98:	0196c683          	lbu	a3,25(a3)
    1a9c:	00f767b3          	or	a5,a4,a5
    1aa0:	0ff7f713          	andi	a4,a5,255
    1aa4:	000027b7          	lui	a5,0x2
    1aa8:	7c478793          	addi	a5,a5,1988 # 27c4 <OSRdyTbl>
    1aac:	00f687b3          	add	a5,a3,a5
    1ab0:	00e78023          	sb	a4,0(a5)
    1ab4:	fffff097          	auipc	ra,0xfffff
    1ab8:	984080e7          	jalr	-1660(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1abc:	00c0006f          	j	1ac8 <_Z12OSTaskResumeh+0x130>
    1ac0:	fffff097          	auipc	ra,0xfffff
    1ac4:	978080e7          	jalr	-1672(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1ac8:	00000793          	li	a5,0
    1acc:	0100006f          	j	1adc <_Z12OSTaskResumeh+0x144>
    1ad0:	fffff097          	auipc	ra,0xfffff
    1ad4:	968080e7          	jalr	-1688(ra) # 438 <_Z16OS_EXIT_CRITICALv>
    1ad8:	00700793          	li	a5,7
    1adc:	00078513          	mv	a0,a5
    1ae0:	02c12083          	lw	ra,44(sp)
    1ae4:	02812403          	lw	s0,40(sp)
    1ae8:	03010113          	addi	sp,sp,48
    1aec:	00008067          	ret
