
final.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	01400137          	lui	sp,0x1400
       4:	ffc10113          	addi	sp,sp,-4 # 13ffffc <_fstack>
       8:	1a4000ef          	jal	ra,1ac <main>

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

00000048 <_Z11myTaskOtherPv>:
      48:	fd010113          	addi	sp,sp,-48
      4c:	02112623          	sw	ra,44(sp)
      50:	02812423          	sw	s0,40(sp)
      54:	03010413          	addi	s0,sp,48
      58:	fca42e23          	sw	a0,-36(s0)
      5c:	000027b7          	lui	a5,0x2
      60:	1fc7a783          	lw	a5,508(a5) # 21fc <s1>
      64:	00078513          	mv	a0,a5
      68:	00000097          	auipc	ra,0x0
      6c:	fb0080e7          	jalr	-80(ra) # 18 <_Z11printStringPKc>
      70:	fe042623          	sw	zero,-20(s0)
      74:	fe042423          	sw	zero,-24(s0)
      78:	fe842703          	lw	a4,-24(s0)
      7c:	01300793          	li	a5,19
      80:	02e7c263          	blt	a5,a4,a4 <_Z11myTaskOtherPv+0x5c>
      84:	fec42703          	lw	a4,-20(s0)
      88:	fe842783          	lw	a5,-24(s0)
      8c:	00f707b3          	add	a5,a4,a5
      90:	fef42623          	sw	a5,-20(s0)
      94:	fe842783          	lw	a5,-24(s0)
      98:	00178793          	addi	a5,a5,1
      9c:	fef42423          	sw	a5,-24(s0)
      a0:	fd9ff06f          	j	78 <_Z11myTaskOtherPv+0x30>
      a4:	000027b7          	lui	a5,0x2
      a8:	2007a783          	lw	a5,512(a5) # 2200 <s2>
      ac:	00078513          	mv	a0,a5
      b0:	00000097          	auipc	ra,0x0
      b4:	f68080e7          	jalr	-152(ra) # 18 <_Z11printStringPKc>
      b8:	000027b7          	lui	a5,0x2
      bc:	2547a783          	lw	a5,596(a5) # 2254 <_ZL11mySemaphore>
      c0:	00078513          	mv	a0,a5
      c4:	00001097          	auipc	ra,0x1
      c8:	81c080e7          	jalr	-2020(ra) # 8e0 <_Z9OSSemPostP17EventControlBlock>
      cc:	00000013          	nop
      d0:	02c12083          	lw	ra,44(sp)
      d4:	02812403          	lw	s0,40(sp)
      d8:	03010113          	addi	sp,sp,48
      dc:	00008067          	ret

000000e0 <_Z6myTaskPv>:
      e0:	fd010113          	addi	sp,sp,-48
      e4:	02112623          	sw	ra,44(sp)
      e8:	02812423          	sw	s0,40(sp)
      ec:	03010413          	addi	s0,sp,48
      f0:	fca42e23          	sw	a0,-36(s0)
      f4:	000027b7          	lui	a5,0x2
      f8:	2047a783          	lw	a5,516(a5) # 2204 <s3>
      fc:	00078513          	mv	a0,a5
     100:	00000097          	auipc	ra,0x0
     104:	f18080e7          	jalr	-232(ra) # 18 <_Z11printStringPKc>
     108:	fe042623          	sw	zero,-20(s0)
     10c:	fec42703          	lw	a4,-20(s0)
     110:	01300793          	li	a5,19
     114:	06e7c463          	blt	a5,a4,17c <_Z6myTaskPv+0x9c>
     118:	fec42703          	lw	a4,-20(s0)
     11c:	00a00793          	li	a5,10
     120:	04f71663          	bne	a4,a5,16c <_Z6myTaskPv+0x8c>
     124:	000027b7          	lui	a5,0x2
     128:	2087a783          	lw	a5,520(a5) # 2208 <s4>
     12c:	00078513          	mv	a0,a5
     130:	00000097          	auipc	ra,0x0
     134:	ee8080e7          	jalr	-280(ra) # 18 <_Z11printStringPKc>
     138:	000027b7          	lui	a5,0x2
     13c:	2547a703          	lw	a4,596(a5) # 2254 <_ZL11mySemaphore>
     140:	000027b7          	lui	a5,0x2
     144:	21c7a783          	lw	a5,540(a5) # 221c <err>
     148:	00078593          	mv	a1,a5
     14c:	00070513          	mv	a0,a4
     150:	00001097          	auipc	ra,0x1
     154:	824080e7          	jalr	-2012(ra) # 974 <_Z9OSSemPendP17EventControlBlockPh>
     158:	000027b7          	lui	a5,0x2
     15c:	20c7a783          	lw	a5,524(a5) # 220c <s5>
     160:	00078513          	mv	a0,a5
     164:	00000097          	auipc	ra,0x0
     168:	eb4080e7          	jalr	-332(ra) # 18 <_Z11printStringPKc>
     16c:	fec42783          	lw	a5,-20(s0)
     170:	00178793          	addi	a5,a5,1
     174:	fef42623          	sw	a5,-20(s0)
     178:	f95ff06f          	j	10c <_Z6myTaskPv+0x2c>
     17c:	000027b7          	lui	a5,0x2
     180:	2107a783          	lw	a5,528(a5) # 2210 <s6>
     184:	00078513          	mv	a0,a5
     188:	00000097          	auipc	ra,0x0
     18c:	e90080e7          	jalr	-368(ra) # 18 <_Z11printStringPKc>
     190:	00a00893          	li	a7,10
     194:	00000073          	ecall
     198:	00000013          	nop
     19c:	02c12083          	lw	ra,44(sp)
     1a0:	02812403          	lw	s0,40(sp)
     1a4:	03010113          	addi	sp,sp,48
     1a8:	00008067          	ret

000001ac <main>:
     1ac:	81010113          	addi	sp,sp,-2032
     1b0:	7e112623          	sw	ra,2028(sp)
     1b4:	7e812423          	sw	s0,2024(sp)
     1b8:	7f010413          	addi	s0,sp,2032
     1bc:	fe010113          	addi	sp,sp,-32
     1c0:	00000097          	auipc	ra,0x0
     1c4:	3cc080e7          	jalr	972(ra) # 58c <_Z7OS_Initv>
     1c8:	bf040793          	addi	a5,s0,-1040
     1cc:	3fc78793          	addi	a5,a5,1020
     1d0:	00a00693          	li	a3,10
     1d4:	00078613          	mv	a2,a5
     1d8:	00000593          	li	a1,0
     1dc:	000007b7          	lui	a5,0x0
     1e0:	0e078513          	addi	a0,a5,224 # e0 <_Z6myTaskPv>
     1e4:	00001097          	auipc	ra,0x1
     1e8:	228080e7          	jalr	552(ra) # 140c <_Z12OSTaskCreatePFvPvES_Pmh>
     1ec:	fffff7b7          	lui	a5,0xfffff
     1f0:	7f078793          	addi	a5,a5,2032 # fffff7f0 <_fstack+0xfebff7f4>
     1f4:	00f407b3          	add	a5,s0,a5
     1f8:	3fc78793          	addi	a5,a5,1020
     1fc:	01400693          	li	a3,20
     200:	00078613          	mv	a2,a5
     204:	00000593          	li	a1,0
     208:	000007b7          	lui	a5,0x0
     20c:	04878513          	addi	a0,a5,72 # 48 <_Z11myTaskOtherPv>
     210:	00001097          	auipc	ra,0x1
     214:	1fc080e7          	jalr	508(ra) # 140c <_Z12OSTaskCreatePFvPvES_Pmh>
     218:	00000097          	auipc	ra,0x0
     21c:	4dc080e7          	jalr	1244(ra) # 6f4 <_Z17OSCreateSemaphorev>
     220:	00050713          	mv	a4,a0
     224:	000027b7          	lui	a5,0x2
     228:	24e7aa23          	sw	a4,596(a5) # 2254 <_ZL11mySemaphore>
     22c:	000027b7          	lui	a5,0x2
     230:	2147a783          	lw	a5,532(a5) # 2214 <s7>
     234:	00078513          	mv	a0,a5
     238:	00000097          	auipc	ra,0x0
     23c:	de0080e7          	jalr	-544(ra) # 18 <_Z11printStringPKc>
     240:	00001097          	auipc	ra,0x1
     244:	868080e7          	jalr	-1944(ra) # aa8 <_Z8OS_Startv>
     248:	00000793          	li	a5,0
     24c:	00078513          	mv	a0,a5
     250:	02010113          	addi	sp,sp,32
     254:	7ec12083          	lw	ra,2028(sp)
     258:	7e812403          	lw	s0,2024(sp)
     25c:	7f010113          	addi	sp,sp,2032
     260:	00008067          	ret

00000264 <_Z17OS_ENTER_CRITICALv>:
     264:	ff010113          	addi	sp,sp,-16
     268:	00812623          	sw	s0,12(sp)
     26c:	01010413          	addi	s0,sp,16
     270:	00000013          	nop
     274:	00c12403          	lw	s0,12(sp)
     278:	01010113          	addi	sp,sp,16
     27c:	00008067          	ret

00000280 <_Z16OS_EXIT_CRITICALv>:
     280:	ff010113          	addi	sp,sp,-16
     284:	00812623          	sw	s0,12(sp)
     288:	01010413          	addi	s0,sp,16
     28c:	00000013          	nop
     290:	00c12403          	lw	s0,12(sp)
     294:	01010113          	addi	sp,sp,16
     298:	00008067          	ret

0000029c <_Z13OSTaskStkInitPFvPvES_Pmt>:
     29c:	fd010113          	addi	sp,sp,-48
     2a0:	02812623          	sw	s0,44(sp)
     2a4:	03010413          	addi	s0,sp,48
     2a8:	fca42e23          	sw	a0,-36(s0)
     2ac:	fcb42c23          	sw	a1,-40(s0)
     2b0:	fcc42a23          	sw	a2,-44(s0)
     2b4:	00068793          	mv	a5,a3
     2b8:	fcf41923          	sh	a5,-46(s0)
     2bc:	fd442783          	lw	a5,-44(s0)
     2c0:	fef42623          	sw	a5,-20(s0)
     2c4:	fec42783          	lw	a5,-20(s0)
     2c8:	ffc78713          	addi	a4,a5,-4
     2cc:	fee42623          	sw	a4,-20(s0)
     2d0:	fdc42703          	lw	a4,-36(s0)
     2d4:	00e7a023          	sw	a4,0(a5)
     2d8:	fec42783          	lw	a5,-20(s0)
     2dc:	ffc78713          	addi	a4,a5,-4
     2e0:	fee42623          	sw	a4,-20(s0)
     2e4:	0007a023          	sw	zero,0(a5)
     2e8:	fec42783          	lw	a5,-20(s0)
     2ec:	ffc78713          	addi	a4,a5,-4
     2f0:	fee42623          	sw	a4,-20(s0)
     2f4:	0007a023          	sw	zero,0(a5)
     2f8:	fec42783          	lw	a5,-20(s0)
     2fc:	ffc78713          	addi	a4,a5,-4
     300:	fee42623          	sw	a4,-20(s0)
     304:	0007a023          	sw	zero,0(a5)
     308:	fec42783          	lw	a5,-20(s0)
     30c:	ffc78713          	addi	a4,a5,-4
     310:	fee42623          	sw	a4,-20(s0)
     314:	0007a023          	sw	zero,0(a5)
     318:	fec42783          	lw	a5,-20(s0)
     31c:	ffc78713          	addi	a4,a5,-4
     320:	fee42623          	sw	a4,-20(s0)
     324:	0007a023          	sw	zero,0(a5)
     328:	fec42783          	lw	a5,-20(s0)
     32c:	ffc78713          	addi	a4,a5,-4
     330:	fee42623          	sw	a4,-20(s0)
     334:	0007a023          	sw	zero,0(a5)
     338:	fec42783          	lw	a5,-20(s0)
     33c:	ffc78713          	addi	a4,a5,-4
     340:	fee42623          	sw	a4,-20(s0)
     344:	0007a023          	sw	zero,0(a5)
     348:	fec42783          	lw	a5,-20(s0)
     34c:	ffc78713          	addi	a4,a5,-4
     350:	fee42623          	sw	a4,-20(s0)
     354:	0007a023          	sw	zero,0(a5)
     358:	fec42783          	lw	a5,-20(s0)
     35c:	ffc78713          	addi	a4,a5,-4
     360:	fee42623          	sw	a4,-20(s0)
     364:	0007a023          	sw	zero,0(a5)
     368:	fec42783          	lw	a5,-20(s0)
     36c:	ffc78713          	addi	a4,a5,-4
     370:	fee42623          	sw	a4,-20(s0)
     374:	0007a023          	sw	zero,0(a5)
     378:	fec42783          	lw	a5,-20(s0)
     37c:	ffc78713          	addi	a4,a5,-4
     380:	fee42623          	sw	a4,-20(s0)
     384:	0007a023          	sw	zero,0(a5)
     388:	fec42783          	lw	a5,-20(s0)
     38c:	0007a023          	sw	zero,0(a5)
     390:	fec42783          	lw	a5,-20(s0)
     394:	00078513          	mv	a0,a5
     398:	02c12403          	lw	s0,44(sp)
     39c:	03010113          	addi	sp,sp,48
     3a0:	00008067          	ret

000003a4 <_Z16OSTaskCreateHookv>:
     3a4:	ff010113          	addi	sp,sp,-16
     3a8:	00812623          	sw	s0,12(sp)
     3ac:	01010413          	addi	s0,sp,16
     3b0:	00000013          	nop
     3b4:	00c12403          	lw	s0,12(sp)
     3b8:	01010113          	addi	sp,sp,16
     3bc:	00008067          	ret

000003c0 <_Z10OS_TASK_SWv>:
     3c0:	ff010113          	addi	sp,sp,-16
     3c4:	00812623          	sw	s0,12(sp)
     3c8:	01010413          	addi	s0,sp,16
     3cc:	00000013          	nop
     3d0:	00c12403          	lw	s0,12(sp)
     3d4:	01010113          	addi	sp,sp,16
     3d8:	00008067          	ret

000003dc <_Z8OS_Schedv>:
     3dc:	fe010113          	addi	sp,sp,-32
     3e0:	00112e23          	sw	ra,28(sp)
     3e4:	00812c23          	sw	s0,24(sp)
     3e8:	02010413          	addi	s0,sp,32
     3ec:	00000097          	auipc	ra,0x0
     3f0:	e78080e7          	jalr	-392(ra) # 264 <_Z17OS_ENTER_CRITICALv>
     3f4:	000027b7          	lui	a5,0x2
     3f8:	2357c783          	lbu	a5,565(a5) # 2235 <OSRdyGrp>
     3fc:	00078713          	mv	a4,a5
     400:	000027b7          	lui	a5,0x2
     404:	93c78793          	addi	a5,a5,-1732 # 193c <_ZL10OSUnMapTbl>
     408:	00f707b3          	add	a5,a4,a5
     40c:	0007c783          	lbu	a5,0(a5)
     410:	fef407a3          	sb	a5,-17(s0)
     414:	fef44783          	lbu	a5,-17(s0)
     418:	00379793          	slli	a5,a5,0x3
     41c:	0ff7f713          	andi	a4,a5,255
     420:	fef44683          	lbu	a3,-17(s0)
     424:	000027b7          	lui	a5,0x2
     428:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
     42c:	00f687b3          	add	a5,a3,a5
     430:	0007c783          	lbu	a5,0(a5)
     434:	00078693          	mv	a3,a5
     438:	000027b7          	lui	a5,0x2
     43c:	93c78793          	addi	a5,a5,-1732 # 193c <_ZL10OSUnMapTbl>
     440:	00f687b3          	add	a5,a3,a5
     444:	0007c783          	lbu	a5,0(a5)
     448:	00f707b3          	add	a5,a4,a5
     44c:	0ff7f713          	andi	a4,a5,255
     450:	000027b7          	lui	a5,0x2
     454:	20e78ca3          	sb	a4,537(a5) # 2219 <OSPrioHighRdy>
     458:	000027b7          	lui	a5,0x2
     45c:	2197c703          	lbu	a4,537(a5) # 2219 <OSPrioHighRdy>
     460:	000027b7          	lui	a5,0x2
     464:	2187c783          	lbu	a5,536(a5) # 2218 <OSPrioCur>
     468:	10f70463          	beq	a4,a5,570 <_Z8OS_Schedv+0x194>
     46c:	00010793          	mv	a5,sp
     470:	fef42423          	sw	a5,-24(s0)
     474:	fe842783          	lw	a5,-24(s0)
     478:	ffc78793          	addi	a5,a5,-4
     47c:	fef42423          	sw	a5,-24(s0)
     480:	000027b7          	lui	a5,0x2
     484:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     488:	0207a783          	lw	a5,32(a5)
     48c:	00078713          	mv	a4,a5
     490:	fe842783          	lw	a5,-24(s0)
     494:	00e7a023          	sw	a4,0(a5)
     498:	fcc10113          	addi	sp,sp,-52
     49c:	02812623          	sw	s0,44(sp)
     4a0:	02912423          	sw	s1,40(sp)
     4a4:	03212223          	sw	s2,36(sp)
     4a8:	03312023          	sw	s3,32(sp)
     4ac:	01412e23          	sw	s4,28(sp)
     4b0:	01512c23          	sw	s5,24(sp)
     4b4:	01612a23          	sw	s6,20(sp)
     4b8:	01712823          	sw	s7,16(sp)
     4bc:	01812623          	sw	s8,12(sp)
     4c0:	01912423          	sw	s9,8(sp)
     4c4:	01a12223          	sw	s10,4(sp)
     4c8:	01b12023          	sw	s11,0(sp)
     4cc:	00010713          	mv	a4,sp
     4d0:	000027b7          	lui	a5,0x2
     4d4:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     4d8:	00e7a023          	sw	a4,0(a5)
     4dc:	000027b7          	lui	a5,0x2
     4e0:	2197c703          	lbu	a4,537(a5) # 2219 <OSPrioHighRdy>
     4e4:	000027b7          	lui	a5,0x2
     4e8:	20e78c23          	sb	a4,536(a5) # 2218 <OSPrioCur>
     4ec:	000027b7          	lui	a5,0x2
     4f0:	2197c783          	lbu	a5,537(a5) # 2219 <OSPrioHighRdy>
     4f4:	00078713          	mv	a4,a5
     4f8:	000037b7          	lui	a5,0x3
     4fc:	00271713          	slli	a4,a4,0x2
     500:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
     504:	00f707b3          	add	a5,a4,a5
     508:	0007a703          	lw	a4,0(a5)
     50c:	000027b7          	lui	a5,0x2
     510:	22e7a823          	sw	a4,560(a5) # 2230 <OSTCBHighRdy>
     514:	000027b7          	lui	a5,0x2
     518:	2307a703          	lw	a4,560(a5) # 2230 <OSTCBHighRdy>
     51c:	000027b7          	lui	a5,0x2
     520:	22e7a623          	sw	a4,556(a5) # 222c <OSTCBCur>
     524:	000027b7          	lui	a5,0x2
     528:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     52c:	0007a783          	lw	a5,0(a5)
     530:	00078113          	mv	sp,a5
     534:	03012e03          	lw	t3,48(sp)
     538:	02c12403          	lw	s0,44(sp)
     53c:	02812483          	lw	s1,40(sp)
     540:	02412903          	lw	s2,36(sp)
     544:	02012983          	lw	s3,32(sp)
     548:	01c12a03          	lw	s4,28(sp)
     54c:	01812a83          	lw	s5,24(sp)
     550:	01412b03          	lw	s6,20(sp)
     554:	01012b83          	lw	s7,16(sp)
     558:	00c12c03          	lw	s8,12(sp)
     55c:	00812c83          	lw	s9,8(sp)
     560:	00412d03          	lw	s10,4(sp)
     564:	00012d83          	lw	s11,0(sp)
     568:	03410113          	addi	sp,sp,52
     56c:	000e0067          	jr	t3
     570:	00000097          	auipc	ra,0x0
     574:	d10080e7          	jalr	-752(ra) # 280 <_Z16OS_EXIT_CRITICALv>
     578:	00000013          	nop
     57c:	01c12083          	lw	ra,28(sp)
     580:	01812403          	lw	s0,24(sp)
     584:	02010113          	addi	sp,sp,32
     588:	00008067          	ret

0000058c <_Z7OS_Initv>:
     58c:	ff010113          	addi	sp,sp,-16
     590:	00112623          	sw	ra,12(sp)
     594:	00812423          	sw	s0,8(sp)
     598:	01010413          	addi	s0,sp,16
     59c:	00000097          	auipc	ra,0x0
     5a0:	0bc080e7          	jalr	188(ra) # 658 <_Z20OS_EventWaitListInitv>
     5a4:	00000097          	auipc	ra,0x0
     5a8:	01c080e7          	jalr	28(ra) # 5c0 <_Z15OS_TaskFreePoolv>
     5ac:	00000013          	nop
     5b0:	00c12083          	lw	ra,12(sp)
     5b4:	00812403          	lw	s0,8(sp)
     5b8:	01010113          	addi	sp,sp,16
     5bc:	00008067          	ret

000005c0 <_Z15OS_TaskFreePoolv>:
     5c0:	fe010113          	addi	sp,sp,-32
     5c4:	00812e23          	sw	s0,28(sp)
     5c8:	02010413          	addi	s0,sp,32
     5cc:	000027b7          	lui	a5,0x2
     5d0:	00002737          	lui	a4,0x2
     5d4:	57870713          	addi	a4,a4,1400 # 2578 <freeTCBs>
     5d8:	22e7a223          	sw	a4,548(a5) # 2224 <OSTCBFreeList>
     5dc:	000027b7          	lui	a5,0x2
     5e0:	2247a783          	lw	a5,548(a5) # 2224 <OSTCBFreeList>
     5e4:	fef42623          	sw	a5,-20(s0)
     5e8:	00100793          	li	a5,1
     5ec:	fef42423          	sw	a5,-24(s0)
     5f0:	fe842703          	lw	a4,-24(s0)
     5f4:	03f00793          	li	a5,63
     5f8:	04e7c463          	blt	a5,a4,640 <_Z15OS_TaskFreePoolv+0x80>
     5fc:	fe842703          	lw	a4,-24(s0)
     600:	00070793          	mv	a5,a4
     604:	00379793          	slli	a5,a5,0x3
     608:	00e787b3          	add	a5,a5,a4
     60c:	00279793          	slli	a5,a5,0x2
     610:	00002737          	lui	a4,0x2
     614:	57870713          	addi	a4,a4,1400 # 2578 <freeTCBs>
     618:	00e78733          	add	a4,a5,a4
     61c:	fec42783          	lw	a5,-20(s0)
     620:	00e7a223          	sw	a4,4(a5)
     624:	fec42783          	lw	a5,-20(s0)
     628:	0047a783          	lw	a5,4(a5)
     62c:	fef42623          	sw	a5,-20(s0)
     630:	fe842783          	lw	a5,-24(s0)
     634:	00178793          	addi	a5,a5,1
     638:	fef42423          	sw	a5,-24(s0)
     63c:	fb5ff06f          	j	5f0 <_Z15OS_TaskFreePoolv+0x30>
     640:	fec42783          	lw	a5,-20(s0)
     644:	0007a223          	sw	zero,4(a5)
     648:	00000013          	nop
     64c:	01c12403          	lw	s0,28(sp)
     650:	02010113          	addi	sp,sp,32
     654:	00008067          	ret

00000658 <_Z20OS_EventWaitListInitv>:
     658:	fe010113          	addi	sp,sp,-32
     65c:	00812e23          	sw	s0,28(sp)
     660:	02010413          	addi	s0,sp,32
     664:	000027b7          	lui	a5,0x2
     668:	00002737          	lui	a4,0x2
     66c:	25870713          	addi	a4,a4,600 # 2258 <freeEvents>
     670:	22e7a023          	sw	a4,544(a5) # 2220 <OSEventFreeList>
     674:	000027b7          	lui	a5,0x2
     678:	2207a783          	lw	a5,544(a5) # 2220 <OSEventFreeList>
     67c:	fef42623          	sw	a5,-20(s0)
     680:	00100793          	li	a5,1
     684:	fef405a3          	sb	a5,-21(s0)
     688:	feb40703          	lb	a4,-21(s0)
     68c:	01300793          	li	a5,19
     690:	04e7c663          	blt	a5,a4,6dc <_Z20OS_EventWaitListInitv+0x84>
     694:	feb40703          	lb	a4,-21(s0)
     698:	00070793          	mv	a5,a4
     69c:	00279793          	slli	a5,a5,0x2
     6a0:	00e787b3          	add	a5,a5,a4
     6a4:	00379793          	slli	a5,a5,0x3
     6a8:	00002737          	lui	a4,0x2
     6ac:	25870713          	addi	a4,a4,600 # 2258 <freeEvents>
     6b0:	00e78733          	add	a4,a5,a4
     6b4:	fec42783          	lw	a5,-20(s0)
     6b8:	00e7a023          	sw	a4,0(a5)
     6bc:	fec42783          	lw	a5,-20(s0)
     6c0:	0007a783          	lw	a5,0(a5)
     6c4:	fef42623          	sw	a5,-20(s0)
     6c8:	feb44783          	lbu	a5,-21(s0)
     6cc:	00178793          	addi	a5,a5,1
     6d0:	0ff7f793          	andi	a5,a5,255
     6d4:	fef405a3          	sb	a5,-21(s0)
     6d8:	fb1ff06f          	j	688 <_Z20OS_EventWaitListInitv+0x30>
     6dc:	fec42783          	lw	a5,-20(s0)
     6e0:	0007a023          	sw	zero,0(a5)
     6e4:	00000013          	nop
     6e8:	01c12403          	lw	s0,28(sp)
     6ec:	02010113          	addi	sp,sp,32
     6f0:	00008067          	ret

000006f4 <_Z17OSCreateSemaphorev>:
     6f4:	fe010113          	addi	sp,sp,-32
     6f8:	00812e23          	sw	s0,28(sp)
     6fc:	02010413          	addi	s0,sp,32
     700:	000027b7          	lui	a5,0x2
     704:	2207a783          	lw	a5,544(a5) # 2220 <OSEventFreeList>
     708:	fef42623          	sw	a5,-20(s0)
     70c:	000027b7          	lui	a5,0x2
     710:	2207a783          	lw	a5,544(a5) # 2220 <OSEventFreeList>
     714:	00078c63          	beqz	a5,72c <_Z17OSCreateSemaphorev+0x38>
     718:	000027b7          	lui	a5,0x2
     71c:	2207a783          	lw	a5,544(a5) # 2220 <OSEventFreeList>
     720:	0007a703          	lw	a4,0(a5)
     724:	000027b7          	lui	a5,0x2
     728:	22e7a023          	sw	a4,544(a5) # 2220 <OSEventFreeList>
     72c:	fec42783          	lw	a5,-20(s0)
     730:	02078463          	beqz	a5,758 <_Z17OSCreateSemaphorev+0x64>
     734:	fec42783          	lw	a5,-20(s0)
     738:	00800713          	li	a4,8
     73c:	00e78223          	sb	a4,4(a5)
     740:	fec42783          	lw	a5,-20(s0)
     744:	00079323          	sh	zero,6(a5)
     748:	fec42783          	lw	a5,-20(s0)
     74c:	0007a023          	sw	zero,0(a5)
     750:	fec42783          	lw	a5,-20(s0)
     754:	000782a3          	sb	zero,5(a5)
     758:	fec42783          	lw	a5,-20(s0)
     75c:	00078513          	mv	a0,a5
     760:	01c12403          	lw	s0,28(sp)
     764:	02010113          	addi	sp,sp,32
     768:	00008067          	ret

0000076c <_Z16OS_EventTaskWaitP17EventControlBlock>:
     76c:	fe010113          	addi	sp,sp,-32
     770:	00812e23          	sw	s0,28(sp)
     774:	02010413          	addi	s0,sp,32
     778:	fea42623          	sw	a0,-20(s0)
     77c:	000027b7          	lui	a5,0x2
     780:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     784:	fec42703          	lw	a4,-20(s0)
     788:	00e7a623          	sw	a4,12(a5)
     78c:	000027b7          	lui	a5,0x2
     790:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     794:	0197c783          	lbu	a5,25(a5)
     798:	00078713          	mv	a4,a5
     79c:	000027b7          	lui	a5,0x2
     7a0:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
     7a4:	00f707b3          	add	a5,a4,a5
     7a8:	0007c783          	lbu	a5,0(a5)
     7ac:	01879713          	slli	a4,a5,0x18
     7b0:	41875713          	srai	a4,a4,0x18
     7b4:	000027b7          	lui	a5,0x2
     7b8:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     7bc:	01a7c783          	lbu	a5,26(a5)
     7c0:	01879793          	slli	a5,a5,0x18
     7c4:	4187d793          	srai	a5,a5,0x18
     7c8:	fff7c793          	not	a5,a5
     7cc:	01879793          	slli	a5,a5,0x18
     7d0:	4187d793          	srai	a5,a5,0x18
     7d4:	00f777b3          	and	a5,a4,a5
     7d8:	01879713          	slli	a4,a5,0x18
     7dc:	41875713          	srai	a4,a4,0x18
     7e0:	000027b7          	lui	a5,0x2
     7e4:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     7e8:	0197c783          	lbu	a5,25(a5)
     7ec:	0ff77693          	andi	a3,a4,255
     7f0:	00002737          	lui	a4,0x2
     7f4:	23870713          	addi	a4,a4,568 # 2238 <OSRdyTbl>
     7f8:	00e78733          	add	a4,a5,a4
     7fc:	00d70023          	sb	a3,0(a4)
     800:	00002737          	lui	a4,0x2
     804:	23870713          	addi	a4,a4,568 # 2238 <OSRdyTbl>
     808:	00e787b3          	add	a5,a5,a4
     80c:	0007c783          	lbu	a5,0(a5)
     810:	0017b793          	seqz	a5,a5
     814:	0ff7f793          	andi	a5,a5,255
     818:	04078663          	beqz	a5,864 <_Z16OS_EventTaskWaitP17EventControlBlock+0xf8>
     81c:	000027b7          	lui	a5,0x2
     820:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     824:	01b7c783          	lbu	a5,27(a5)
     828:	01879793          	slli	a5,a5,0x18
     82c:	4187d793          	srai	a5,a5,0x18
     830:	fff7c793          	not	a5,a5
     834:	01879713          	slli	a4,a5,0x18
     838:	41875713          	srai	a4,a4,0x18
     83c:	000027b7          	lui	a5,0x2
     840:	2357c783          	lbu	a5,565(a5) # 2235 <OSRdyGrp>
     844:	01879793          	slli	a5,a5,0x18
     848:	4187d793          	srai	a5,a5,0x18
     84c:	00f777b3          	and	a5,a4,a5
     850:	01879793          	slli	a5,a5,0x18
     854:	4187d793          	srai	a5,a5,0x18
     858:	0ff7f713          	andi	a4,a5,255
     85c:	000027b7          	lui	a5,0x2
     860:	22e78aa3          	sb	a4,565(a5) # 2235 <OSRdyGrp>
     864:	000027b7          	lui	a5,0x2
     868:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     86c:	0197c783          	lbu	a5,25(a5)
     870:	00078713          	mv	a4,a5
     874:	fec42783          	lw	a5,-20(s0)
     878:	00e787b3          	add	a5,a5,a4
     87c:	0087c703          	lbu	a4,8(a5)
     880:	000027b7          	lui	a5,0x2
     884:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     888:	01a7c783          	lbu	a5,26(a5)
     88c:	000026b7          	lui	a3,0x2
     890:	22c6a683          	lw	a3,556(a3) # 222c <OSTCBCur>
     894:	0196c683          	lbu	a3,25(a3)
     898:	00f767b3          	or	a5,a4,a5
     89c:	0ff7f713          	andi	a4,a5,255
     8a0:	fec42783          	lw	a5,-20(s0)
     8a4:	00d787b3          	add	a5,a5,a3
     8a8:	00e78423          	sb	a4,8(a5)
     8ac:	fec42783          	lw	a5,-20(s0)
     8b0:	0057c703          	lbu	a4,5(a5)
     8b4:	000027b7          	lui	a5,0x2
     8b8:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     8bc:	01b7c783          	lbu	a5,27(a5)
     8c0:	00f767b3          	or	a5,a4,a5
     8c4:	0ff7f713          	andi	a4,a5,255
     8c8:	fec42783          	lw	a5,-20(s0)
     8cc:	00e782a3          	sb	a4,5(a5)
     8d0:	00000013          	nop
     8d4:	01c12403          	lw	s0,28(sp)
     8d8:	02010113          	addi	sp,sp,32
     8dc:	00008067          	ret

000008e0 <_Z9OSSemPostP17EventControlBlock>:
     8e0:	fe010113          	addi	sp,sp,-32
     8e4:	00112e23          	sw	ra,28(sp)
     8e8:	00812c23          	sw	s0,24(sp)
     8ec:	02010413          	addi	s0,sp,32
     8f0:	fea42623          	sw	a0,-20(s0)
     8f4:	fec42783          	lw	a5,-20(s0)
     8f8:	0057c783          	lbu	a5,5(a5)
     8fc:	02078463          	beqz	a5,924 <_Z9OSSemPostP17EventControlBlock+0x44>
     900:	00a00613          	li	a2,10
     904:	00000593          	li	a1,0
     908:	fec42503          	lw	a0,-20(s0)
     90c:	00000097          	auipc	ra,0x0
     910:	668080e7          	jalr	1640(ra) # f74 <_Z12EventTaskRdyP17EventControlBlockPvh>
     914:	00000097          	auipc	ra,0x0
     918:	ac8080e7          	jalr	-1336(ra) # 3dc <_Z8OS_Schedv>
     91c:	00000793          	li	a5,0
     920:	0400006f          	j	960 <_Z9OSSemPostP17EventControlBlock+0x80>
     924:	fec42783          	lw	a5,-20(s0)
     928:	0067d703          	lhu	a4,6(a5)
     92c:	000107b7          	lui	a5,0x10
     930:	fff78793          	addi	a5,a5,-1 # ffff <__BSS_END__+0xd087>
     934:	02f70463          	beq	a4,a5,95c <_Z9OSSemPostP17EventControlBlock+0x7c>
     938:	fec42783          	lw	a5,-20(s0)
     93c:	0067d783          	lhu	a5,6(a5)
     940:	00178793          	addi	a5,a5,1
     944:	01079713          	slli	a4,a5,0x10
     948:	01075713          	srli	a4,a4,0x10
     94c:	fec42783          	lw	a5,-20(s0)
     950:	00e79323          	sh	a4,6(a5)
     954:	00000793          	li	a5,0
     958:	0080006f          	j	960 <_Z9OSSemPostP17EventControlBlock+0x80>
     95c:	00500793          	li	a5,5
     960:	00078513          	mv	a0,a5
     964:	01c12083          	lw	ra,28(sp)
     968:	01812403          	lw	s0,24(sp)
     96c:	02010113          	addi	sp,sp,32
     970:	00008067          	ret

00000974 <_Z9OSSemPendP17EventControlBlockPh>:
     974:	fe010113          	addi	sp,sp,-32
     978:	00112e23          	sw	ra,28(sp)
     97c:	00812c23          	sw	s0,24(sp)
     980:	02010413          	addi	s0,sp,32
     984:	fea42623          	sw	a0,-20(s0)
     988:	feb42423          	sw	a1,-24(s0)
     98c:	00008713          	mv	a4,ra
     990:	000027b7          	lui	a5,0x2
     994:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     998:	02e7a023          	sw	a4,32(a5)
     99c:	fec42783          	lw	a5,-20(s0)
     9a0:	00079a63          	bnez	a5,9b4 <_Z9OSSemPendP17EventControlBlockPh+0x40>
     9a4:	fe842783          	lw	a5,-24(s0)
     9a8:	00300713          	li	a4,3
     9ac:	00e78023          	sb	a4,0(a5)
     9b0:	0a00006f          	j	a50 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     9b4:	fec42783          	lw	a5,-20(s0)
     9b8:	0047c703          	lbu	a4,4(a5)
     9bc:	00800793          	li	a5,8
     9c0:	00f70a63          	beq	a4,a5,9d4 <_Z9OSSemPendP17EventControlBlockPh+0x60>
     9c4:	fe842783          	lw	a5,-24(s0)
     9c8:	00400713          	li	a4,4
     9cc:	00e78023          	sb	a4,0(a5)
     9d0:	0800006f          	j	a50 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     9d4:	fec42783          	lw	a5,-20(s0)
     9d8:	0067d783          	lhu	a5,6(a5)
     9dc:	02078663          	beqz	a5,a08 <_Z9OSSemPendP17EventControlBlockPh+0x94>
     9e0:	fec42783          	lw	a5,-20(s0)
     9e4:	0067d783          	lhu	a5,6(a5)
     9e8:	fff78793          	addi	a5,a5,-1
     9ec:	01079713          	slli	a4,a5,0x10
     9f0:	01075713          	srli	a4,a4,0x10
     9f4:	fec42783          	lw	a5,-20(s0)
     9f8:	00e79323          	sh	a4,6(a5)
     9fc:	fe842783          	lw	a5,-24(s0)
     a00:	00078023          	sb	zero,0(a5)
     a04:	04c0006f          	j	a50 <_Z9OSSemPendP17EventControlBlockPh+0xdc>
     a08:	000027b7          	lui	a5,0x2
     a0c:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     a10:	0167c703          	lbu	a4,22(a5)
     a14:	000027b7          	lui	a5,0x2
     a18:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     a1c:	00a76713          	ori	a4,a4,10
     a20:	0ff77713          	andi	a4,a4,255
     a24:	00e78b23          	sb	a4,22(a5)
     a28:	fec42503          	lw	a0,-20(s0)
     a2c:	00000097          	auipc	ra,0x0
     a30:	d40080e7          	jalr	-704(ra) # 76c <_Z16OS_EventTaskWaitP17EventControlBlock>
     a34:	00000097          	auipc	ra,0x0
     a38:	9a8080e7          	jalr	-1624(ra) # 3dc <_Z8OS_Schedv>
     a3c:	000027b7          	lui	a5,0x2
     a40:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     a44:	0007a623          	sw	zero,12(a5)
     a48:	fe842783          	lw	a5,-24(s0)
     a4c:	00078023          	sb	zero,0(a5)
     a50:	01c12083          	lw	ra,28(sp)
     a54:	01812403          	lw	s0,24(sp)
     a58:	02010113          	addi	sp,sp,32
     a5c:	00008067          	ret

00000a60 <_Z14OSStartHighRdyv>:
     a60:	ff010113          	addi	sp,sp,-16
     a64:	00812623          	sw	s0,12(sp)
     a68:	01010413          	addi	s0,sp,16
     a6c:	000027b7          	lui	a5,0x2
     a70:	00100713          	li	a4,1
     a74:	22e78a23          	sb	a4,564(a5) # 2234 <OSRunning>
     a78:	000027b7          	lui	a5,0x2
     a7c:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     a80:	0007a783          	lw	a5,0(a5)
     a84:	00078113          	mv	sp,a5
     a88:	03010113          	addi	sp,sp,48
     a8c:	00012e03          	lw	t3,0(sp)
     a90:	00410113          	addi	sp,sp,4
     a94:	000e0067          	jr	t3
     a98:	00000013          	nop
     a9c:	00c12403          	lw	s0,12(sp)
     aa0:	01010113          	addi	sp,sp,16
     aa4:	00008067          	ret

00000aa8 <_Z8OS_Startv>:
     aa8:	fe010113          	addi	sp,sp,-32
     aac:	00112e23          	sw	ra,28(sp)
     ab0:	00812c23          	sw	s0,24(sp)
     ab4:	02010413          	addi	s0,sp,32
     ab8:	000027b7          	lui	a5,0x2
     abc:	2347c783          	lbu	a5,564(a5) # 2234 <OSRunning>
     ac0:	0c079063          	bnez	a5,b80 <_Z8OS_Startv+0xd8>
     ac4:	000027b7          	lui	a5,0x2
     ac8:	2357c783          	lbu	a5,565(a5) # 2235 <OSRdyGrp>
     acc:	00078713          	mv	a4,a5
     ad0:	000027b7          	lui	a5,0x2
     ad4:	93c78793          	addi	a5,a5,-1732 # 193c <_ZL10OSUnMapTbl>
     ad8:	00f707b3          	add	a5,a4,a5
     adc:	0007c783          	lbu	a5,0(a5)
     ae0:	fef407a3          	sb	a5,-17(s0)
     ae4:	fef44703          	lbu	a4,-17(s0)
     ae8:	000027b7          	lui	a5,0x2
     aec:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
     af0:	00f707b3          	add	a5,a4,a5
     af4:	0007c783          	lbu	a5,0(a5)
     af8:	00078713          	mv	a4,a5
     afc:	000027b7          	lui	a5,0x2
     b00:	93c78793          	addi	a5,a5,-1732 # 193c <_ZL10OSUnMapTbl>
     b04:	00f707b3          	add	a5,a4,a5
     b08:	0007c783          	lbu	a5,0(a5)
     b0c:	fef40723          	sb	a5,-18(s0)
     b10:	fef44783          	lbu	a5,-17(s0)
     b14:	00379793          	slli	a5,a5,0x3
     b18:	0ff7f713          	andi	a4,a5,255
     b1c:	fee44783          	lbu	a5,-18(s0)
     b20:	00f707b3          	add	a5,a4,a5
     b24:	0ff7f713          	andi	a4,a5,255
     b28:	000027b7          	lui	a5,0x2
     b2c:	20e78ca3          	sb	a4,537(a5) # 2219 <OSPrioHighRdy>
     b30:	000027b7          	lui	a5,0x2
     b34:	2197c703          	lbu	a4,537(a5) # 2219 <OSPrioHighRdy>
     b38:	000027b7          	lui	a5,0x2
     b3c:	20e78c23          	sb	a4,536(a5) # 2218 <OSPrioCur>
     b40:	000027b7          	lui	a5,0x2
     b44:	2197c783          	lbu	a5,537(a5) # 2219 <OSPrioHighRdy>
     b48:	00078713          	mv	a4,a5
     b4c:	000037b7          	lui	a5,0x3
     b50:	00271713          	slli	a4,a4,0x2
     b54:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
     b58:	00f707b3          	add	a5,a4,a5
     b5c:	0007a703          	lw	a4,0(a5)
     b60:	000027b7          	lui	a5,0x2
     b64:	22e7a823          	sw	a4,560(a5) # 2230 <OSTCBHighRdy>
     b68:	000027b7          	lui	a5,0x2
     b6c:	2307a703          	lw	a4,560(a5) # 2230 <OSTCBHighRdy>
     b70:	000027b7          	lui	a5,0x2
     b74:	22e7a623          	sw	a4,556(a5) # 222c <OSTCBCur>
     b78:	00000097          	auipc	ra,0x0
     b7c:	ee8080e7          	jalr	-280(ra) # a60 <_Z14OSStartHighRdyv>
     b80:	00000013          	nop
     b84:	01c12083          	lw	ra,28(sp)
     b88:	01812403          	lw	s0,24(sp)
     b8c:	02010113          	addi	sp,sp,32
     b90:	00008067          	ret

00000b94 <_Z13OSTaskSuspendh>:
     b94:	fd010113          	addi	sp,sp,-48
     b98:	02112623          	sw	ra,44(sp)
     b9c:	02812423          	sw	s0,40(sp)
     ba0:	03010413          	addi	s0,sp,48
     ba4:	00050793          	mv	a5,a0
     ba8:	fcf40fa3          	sb	a5,-33(s0)
     bac:	fdf44703          	lbu	a4,-33(s0)
     bb0:	03e00793          	li	a5,62
     bb4:	00e7fa63          	bgeu	a5,a4,bc8 <_Z13OSTaskSuspendh+0x34>
     bb8:	fdf44783          	lbu	a5,-33(s0)
     bbc:	00078663          	beqz	a5,bc8 <_Z13OSTaskSuspendh+0x34>
     bc0:	00200793          	li	a5,2
     bc4:	1740006f          	j	d38 <_Z13OSTaskSuspendh+0x1a4>
     bc8:	fffff097          	auipc	ra,0xfffff
     bcc:	69c080e7          	jalr	1692(ra) # 264 <_Z17OS_ENTER_CRITICALv>
     bd0:	fdf44783          	lbu	a5,-33(s0)
     bd4:	02079063          	bnez	a5,bf4 <_Z13OSTaskSuspendh+0x60>
     bd8:	000027b7          	lui	a5,0x2
     bdc:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     be0:	0177c783          	lbu	a5,23(a5)
     be4:	fcf40fa3          	sb	a5,-33(s0)
     be8:	00100793          	li	a5,1
     bec:	fef407a3          	sb	a5,-17(s0)
     bf0:	0280006f          	j	c18 <_Z13OSTaskSuspendh+0x84>
     bf4:	000027b7          	lui	a5,0x2
     bf8:	22c7a783          	lw	a5,556(a5) # 222c <OSTCBCur>
     bfc:	0177c783          	lbu	a5,23(a5)
     c00:	fdf44703          	lbu	a4,-33(s0)
     c04:	00f71863          	bne	a4,a5,c14 <_Z13OSTaskSuspendh+0x80>
     c08:	00100793          	li	a5,1
     c0c:	fef407a3          	sb	a5,-17(s0)
     c10:	0080006f          	j	c18 <_Z13OSTaskSuspendh+0x84>
     c14:	fe0407a3          	sb	zero,-17(s0)
     c18:	fdf44703          	lbu	a4,-33(s0)
     c1c:	000037b7          	lui	a5,0x3
     c20:	00271713          	slli	a4,a4,0x2
     c24:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
     c28:	00f707b3          	add	a5,a4,a5
     c2c:	0007a783          	lw	a5,0(a5)
     c30:	fef42423          	sw	a5,-24(s0)
     c34:	fe842783          	lw	a5,-24(s0)
     c38:	00079a63          	bnez	a5,c4c <_Z13OSTaskSuspendh+0xb8>
     c3c:	fffff097          	auipc	ra,0xfffff
     c40:	644080e7          	jalr	1604(ra) # 280 <_Z16OS_EXIT_CRITICALv>
     c44:	00400793          	li	a5,4
     c48:	0f00006f          	j	d38 <_Z13OSTaskSuspendh+0x1a4>
     c4c:	fe842783          	lw	a5,-24(s0)
     c50:	0197c783          	lbu	a5,25(a5)
     c54:	00078713          	mv	a4,a5
     c58:	000027b7          	lui	a5,0x2
     c5c:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
     c60:	00f707b3          	add	a5,a4,a5
     c64:	0007c783          	lbu	a5,0(a5)
     c68:	01879713          	slli	a4,a5,0x18
     c6c:	41875713          	srai	a4,a4,0x18
     c70:	fe842783          	lw	a5,-24(s0)
     c74:	01a7c783          	lbu	a5,26(a5)
     c78:	01879793          	slli	a5,a5,0x18
     c7c:	4187d793          	srai	a5,a5,0x18
     c80:	fff7c793          	not	a5,a5
     c84:	01879793          	slli	a5,a5,0x18
     c88:	4187d793          	srai	a5,a5,0x18
     c8c:	00f777b3          	and	a5,a4,a5
     c90:	01879713          	slli	a4,a5,0x18
     c94:	41875713          	srai	a4,a4,0x18
     c98:	fe842783          	lw	a5,-24(s0)
     c9c:	0197c783          	lbu	a5,25(a5)
     ca0:	0ff77693          	andi	a3,a4,255
     ca4:	00002737          	lui	a4,0x2
     ca8:	23870713          	addi	a4,a4,568 # 2238 <OSRdyTbl>
     cac:	00e78733          	add	a4,a5,a4
     cb0:	00d70023          	sb	a3,0(a4)
     cb4:	00002737          	lui	a4,0x2
     cb8:	23870713          	addi	a4,a4,568 # 2238 <OSRdyTbl>
     cbc:	00e787b3          	add	a5,a5,a4
     cc0:	0007c783          	lbu	a5,0(a5)
     cc4:	0017b793          	seqz	a5,a5
     cc8:	0ff7f793          	andi	a5,a5,255
     ccc:	04078463          	beqz	a5,d14 <_Z13OSTaskSuspendh+0x180>
     cd0:	fe842783          	lw	a5,-24(s0)
     cd4:	01b7c783          	lbu	a5,27(a5)
     cd8:	01879793          	slli	a5,a5,0x18
     cdc:	4187d793          	srai	a5,a5,0x18
     ce0:	fff7c793          	not	a5,a5
     ce4:	01879713          	slli	a4,a5,0x18
     ce8:	41875713          	srai	a4,a4,0x18
     cec:	000027b7          	lui	a5,0x2
     cf0:	2357c783          	lbu	a5,565(a5) # 2235 <OSRdyGrp>
     cf4:	01879793          	slli	a5,a5,0x18
     cf8:	4187d793          	srai	a5,a5,0x18
     cfc:	00f777b3          	and	a5,a4,a5
     d00:	01879793          	slli	a5,a5,0x18
     d04:	4187d793          	srai	a5,a5,0x18
     d08:	0ff7f713          	andi	a4,a5,255
     d0c:	000027b7          	lui	a5,0x2
     d10:	22e78aa3          	sb	a4,565(a5) # 2235 <OSRdyGrp>
     d14:	fe842783          	lw	a5,-24(s0)
     d18:	0167c783          	lbu	a5,22(a5)
     d1c:	0037e793          	ori	a5,a5,3
     d20:	0ff7f713          	andi	a4,a5,255
     d24:	fe842783          	lw	a5,-24(s0)
     d28:	00e78b23          	sb	a4,22(a5)
     d2c:	fffff097          	auipc	ra,0xfffff
     d30:	554080e7          	jalr	1364(ra) # 280 <_Z16OS_EXIT_CRITICALv>
     d34:	00000793          	li	a5,0
     d38:	00078513          	mv	a0,a5
     d3c:	02c12083          	lw	ra,44(sp)
     d40:	02812403          	lw	s0,40(sp)
     d44:	03010113          	addi	sp,sp,48
     d48:	00008067          	ret

00000d4c <_Z11OSEventInitP17EventControlBlockh>:
     d4c:	fd010113          	addi	sp,sp,-48
     d50:	02812623          	sw	s0,44(sp)
     d54:	03010413          	addi	s0,sp,48
     d58:	fca42e23          	sw	a0,-36(s0)
     d5c:	00058793          	mv	a5,a1
     d60:	fcf40da3          	sb	a5,-37(s0)
     d64:	fdc42783          	lw	a5,-36(s0)
     d68:	fdb44703          	lbu	a4,-37(s0)
     d6c:	00e78223          	sb	a4,4(a5)
     d70:	fdc42783          	lw	a5,-36(s0)
     d74:	000782a3          	sb	zero,5(a5)
     d78:	fdc42783          	lw	a5,-36(s0)
     d7c:	0007a023          	sw	zero,0(a5)
     d80:	fe0407a3          	sb	zero,-17(s0)
     d84:	fef44703          	lbu	a4,-17(s0)
     d88:	01d00793          	li	a5,29
     d8c:	02e7e263          	bltu	a5,a4,db0 <_Z11OSEventInitP17EventControlBlockh+0x64>
     d90:	fef44783          	lbu	a5,-17(s0)
     d94:	fdc42703          	lw	a4,-36(s0)
     d98:	00f707b3          	add	a5,a4,a5
     d9c:	00078423          	sb	zero,8(a5)
     da0:	fef44783          	lbu	a5,-17(s0)
     da4:	00178793          	addi	a5,a5,1
     da8:	fef407a3          	sb	a5,-17(s0)
     dac:	fd9ff06f          	j	d84 <_Z11OSEventInitP17EventControlBlockh+0x38>
     db0:	00000013          	nop
     db4:	02c12403          	lw	s0,44(sp)
     db8:	03010113          	addi	sp,sp,48
     dbc:	00008067          	ret

00000dc0 <_Z19appendToWaitingListP17EventControlBlockh>:
     dc0:	fe010113          	addi	sp,sp,-32
     dc4:	00812e23          	sw	s0,28(sp)
     dc8:	02010413          	addi	s0,sp,32
     dcc:	fea42623          	sw	a0,-20(s0)
     dd0:	00058793          	mv	a5,a1
     dd4:	fef405a3          	sb	a5,-21(s0)
     dd8:	fec42783          	lw	a5,-20(s0)
     ddc:	0057c703          	lbu	a4,5(a5)
     de0:	feb44783          	lbu	a5,-21(s0)
     de4:	4037d693          	srai	a3,a5,0x3
     de8:	000027b7          	lui	a5,0x2
     dec:	1bc78793          	addi	a5,a5,444 # 21bc <_ZL8OSMapTbl>
     df0:	00f687b3          	add	a5,a3,a5
     df4:	0007c783          	lbu	a5,0(a5)
     df8:	00f767b3          	or	a5,a4,a5
     dfc:	0ff7f713          	andi	a4,a5,255
     e00:	fec42783          	lw	a5,-20(s0)
     e04:	00e782a3          	sb	a4,5(a5)
     e08:	feb44783          	lbu	a5,-21(s0)
     e0c:	4037d793          	srai	a5,a5,0x3
     e10:	fec42703          	lw	a4,-20(s0)
     e14:	00f707b3          	add	a5,a4,a5
     e18:	0087c683          	lbu	a3,8(a5)
     e1c:	feb44783          	lbu	a5,-21(s0)
     e20:	0077f713          	andi	a4,a5,7
     e24:	000027b7          	lui	a5,0x2
     e28:	1bc78793          	addi	a5,a5,444 # 21bc <_ZL8OSMapTbl>
     e2c:	00f707b3          	add	a5,a4,a5
     e30:	0007c703          	lbu	a4,0(a5)
     e34:	feb44783          	lbu	a5,-21(s0)
     e38:	4037d793          	srai	a5,a5,0x3
     e3c:	00e6e733          	or	a4,a3,a4
     e40:	0ff77713          	andi	a4,a4,255
     e44:	fec42683          	lw	a3,-20(s0)
     e48:	00f687b3          	add	a5,a3,a5
     e4c:	00e78423          	sb	a4,8(a5)
     e50:	00000013          	nop
     e54:	01c12403          	lw	s0,28(sp)
     e58:	02010113          	addi	sp,sp,32
     e5c:	00008067          	ret

00000e60 <_Z20eraseFromWaitingListP17EventControlBlock>:
     e60:	fd010113          	addi	sp,sp,-48
     e64:	02112623          	sw	ra,44(sp)
     e68:	02812423          	sw	s0,40(sp)
     e6c:	03010413          	addi	s0,sp,48
     e70:	fca42e23          	sw	a0,-36(s0)
     e74:	fdc42503          	lw	a0,-36(s0)
     e78:	00000097          	auipc	ra,0x0
     e7c:	320080e7          	jalr	800(ra) # 1198 <_Z18getHighestPriorityP17EventControlBlock>
     e80:	00050793          	mv	a5,a0
     e84:	fef407a3          	sb	a5,-17(s0)
     e88:	fef44783          	lbu	a5,-17(s0)
     e8c:	4037d793          	srai	a5,a5,0x3
     e90:	fdc42703          	lw	a4,-36(s0)
     e94:	00f707b3          	add	a5,a4,a5
     e98:	0087c783          	lbu	a5,8(a5)
     e9c:	01879713          	slli	a4,a5,0x18
     ea0:	41875713          	srai	a4,a4,0x18
     ea4:	fef44783          	lbu	a5,-17(s0)
     ea8:	0077f693          	andi	a3,a5,7
     eac:	000027b7          	lui	a5,0x2
     eb0:	1bc78793          	addi	a5,a5,444 # 21bc <_ZL8OSMapTbl>
     eb4:	00f687b3          	add	a5,a3,a5
     eb8:	0007c783          	lbu	a5,0(a5)
     ebc:	01879793          	slli	a5,a5,0x18
     ec0:	4187d793          	srai	a5,a5,0x18
     ec4:	fff7c793          	not	a5,a5
     ec8:	01879793          	slli	a5,a5,0x18
     ecc:	4187d793          	srai	a5,a5,0x18
     ed0:	00f777b3          	and	a5,a4,a5
     ed4:	01879713          	slli	a4,a5,0x18
     ed8:	41875713          	srai	a4,a4,0x18
     edc:	fef44783          	lbu	a5,-17(s0)
     ee0:	4037d793          	srai	a5,a5,0x3
     ee4:	0ff77693          	andi	a3,a4,255
     ee8:	fdc42703          	lw	a4,-36(s0)
     eec:	00f70733          	add	a4,a4,a5
     ef0:	00d70423          	sb	a3,8(a4)
     ef4:	fdc42703          	lw	a4,-36(s0)
     ef8:	00f707b3          	add	a5,a4,a5
     efc:	0087c783          	lbu	a5,8(a5)
     f00:	0017b793          	seqz	a5,a5
     f04:	0ff7f793          	andi	a5,a5,255
     f08:	04078c63          	beqz	a5,f60 <_Z20eraseFromWaitingListP17EventControlBlock+0x100>
     f0c:	fdc42783          	lw	a5,-36(s0)
     f10:	0057c783          	lbu	a5,5(a5)
     f14:	01879713          	slli	a4,a5,0x18
     f18:	41875713          	srai	a4,a4,0x18
     f1c:	fef44783          	lbu	a5,-17(s0)
     f20:	4037d693          	srai	a3,a5,0x3
     f24:	000027b7          	lui	a5,0x2
     f28:	1bc78793          	addi	a5,a5,444 # 21bc <_ZL8OSMapTbl>
     f2c:	00f687b3          	add	a5,a3,a5
     f30:	0007c783          	lbu	a5,0(a5)
     f34:	01879793          	slli	a5,a5,0x18
     f38:	4187d793          	srai	a5,a5,0x18
     f3c:	fff7c793          	not	a5,a5
     f40:	01879793          	slli	a5,a5,0x18
     f44:	4187d793          	srai	a5,a5,0x18
     f48:	00f777b3          	and	a5,a4,a5
     f4c:	01879793          	slli	a5,a5,0x18
     f50:	4187d793          	srai	a5,a5,0x18
     f54:	0ff7f713          	andi	a4,a5,255
     f58:	fdc42783          	lw	a5,-36(s0)
     f5c:	00e782a3          	sb	a4,5(a5)
     f60:	00000013          	nop
     f64:	02c12083          	lw	ra,44(sp)
     f68:	02812403          	lw	s0,40(sp)
     f6c:	03010113          	addi	sp,sp,48
     f70:	00008067          	ret

00000f74 <_Z12EventTaskRdyP17EventControlBlockPvh>:
     f74:	fd010113          	addi	sp,sp,-48
     f78:	02812623          	sw	s0,44(sp)
     f7c:	03010413          	addi	s0,sp,48
     f80:	fca42e23          	sw	a0,-36(s0)
     f84:	fcb42c23          	sw	a1,-40(s0)
     f88:	00060793          	mv	a5,a2
     f8c:	fcf40ba3          	sb	a5,-41(s0)
     f90:	fdc42783          	lw	a5,-36(s0)
     f94:	0057c783          	lbu	a5,5(a5)
     f98:	00078713          	mv	a4,a5
     f9c:	000027b7          	lui	a5,0x2
     fa0:	a3c78793          	addi	a5,a5,-1476 # 1a3c <_ZL10OSUnMapTbl>
     fa4:	00f707b3          	add	a5,a4,a5
     fa8:	0007c783          	lbu	a5,0(a5)
     fac:	fef407a3          	sb	a5,-17(s0)
     fb0:	fef44703          	lbu	a4,-17(s0)
     fb4:	000027b7          	lui	a5,0x2
     fb8:	1bc78793          	addi	a5,a5,444 # 21bc <_ZL8OSMapTbl>
     fbc:	00f707b3          	add	a5,a4,a5
     fc0:	0007c783          	lbu	a5,0(a5)
     fc4:	fef40723          	sb	a5,-18(s0)
     fc8:	fef44783          	lbu	a5,-17(s0)
     fcc:	fdc42703          	lw	a4,-36(s0)
     fd0:	00f707b3          	add	a5,a4,a5
     fd4:	0087c783          	lbu	a5,8(a5)
     fd8:	00078713          	mv	a4,a5
     fdc:	000027b7          	lui	a5,0x2
     fe0:	a3c78793          	addi	a5,a5,-1476 # 1a3c <_ZL10OSUnMapTbl>
     fe4:	00f707b3          	add	a5,a4,a5
     fe8:	0007c783          	lbu	a5,0(a5)
     fec:	fef406a3          	sb	a5,-19(s0)
     ff0:	fed44703          	lbu	a4,-19(s0)
     ff4:	000027b7          	lui	a5,0x2
     ff8:	1bc78793          	addi	a5,a5,444 # 21bc <_ZL8OSMapTbl>
     ffc:	00f707b3          	add	a5,a4,a5
    1000:	0007c783          	lbu	a5,0(a5)
    1004:	fef40623          	sb	a5,-20(s0)
    1008:	fef44783          	lbu	a5,-17(s0)
    100c:	00379793          	slli	a5,a5,0x3
    1010:	0ff7f713          	andi	a4,a5,255
    1014:	fed44783          	lbu	a5,-19(s0)
    1018:	00f707b3          	add	a5,a4,a5
    101c:	0ff7f793          	andi	a5,a5,255
    1020:	fef403a3          	sb	a5,-25(s0)
    1024:	fef44783          	lbu	a5,-17(s0)
    1028:	fdc42703          	lw	a4,-36(s0)
    102c:	00f707b3          	add	a5,a4,a5
    1030:	0087c783          	lbu	a5,8(a5)
    1034:	01879713          	slli	a4,a5,0x18
    1038:	41875713          	srai	a4,a4,0x18
    103c:	fec40783          	lb	a5,-20(s0)
    1040:	fff7c793          	not	a5,a5
    1044:	01879793          	slli	a5,a5,0x18
    1048:	4187d793          	srai	a5,a5,0x18
    104c:	00f777b3          	and	a5,a4,a5
    1050:	01879713          	slli	a4,a5,0x18
    1054:	41875713          	srai	a4,a4,0x18
    1058:	fef44783          	lbu	a5,-17(s0)
    105c:	0ff77693          	andi	a3,a4,255
    1060:	fdc42703          	lw	a4,-36(s0)
    1064:	00f70733          	add	a4,a4,a5
    1068:	00d70423          	sb	a3,8(a4)
    106c:	fdc42703          	lw	a4,-36(s0)
    1070:	00f707b3          	add	a5,a4,a5
    1074:	0087c783          	lbu	a5,8(a5)
    1078:	0017b793          	seqz	a5,a5
    107c:	0ff7f793          	andi	a5,a5,255
    1080:	02078e63          	beqz	a5,10bc <_Z12EventTaskRdyP17EventControlBlockPvh+0x148>
    1084:	fdc42783          	lw	a5,-36(s0)
    1088:	0057c783          	lbu	a5,5(a5)
    108c:	01879713          	slli	a4,a5,0x18
    1090:	41875713          	srai	a4,a4,0x18
    1094:	fee40783          	lb	a5,-18(s0)
    1098:	fff7c793          	not	a5,a5
    109c:	01879793          	slli	a5,a5,0x18
    10a0:	4187d793          	srai	a5,a5,0x18
    10a4:	00f777b3          	and	a5,a4,a5
    10a8:	01879793          	slli	a5,a5,0x18
    10ac:	4187d793          	srai	a5,a5,0x18
    10b0:	0ff7f713          	andi	a4,a5,255
    10b4:	fdc42783          	lw	a5,-36(s0)
    10b8:	00e782a3          	sb	a4,5(a5)
    10bc:	fe744783          	lbu	a5,-25(s0)
    10c0:	00078713          	mv	a4,a5
    10c4:	000037b7          	lui	a5,0x3
    10c8:	00271713          	slli	a4,a4,0x2
    10cc:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    10d0:	00f707b3          	add	a5,a4,a5
    10d4:	0007a783          	lw	a5,0(a5)
    10d8:	fef42423          	sw	a5,-24(s0)
    10dc:	fe842783          	lw	a5,-24(s0)
    10e0:	0007a623          	sw	zero,12(a5)
    10e4:	fe842783          	lw	a5,-24(s0)
    10e8:	fd842703          	lw	a4,-40(s0)
    10ec:	00e7a823          	sw	a4,16(a5)
    10f0:	fe842783          	lw	a5,-24(s0)
    10f4:	0167c783          	lbu	a5,22(a5)
    10f8:	01879713          	slli	a4,a5,0x18
    10fc:	41875713          	srai	a4,a4,0x18
    1100:	fd740783          	lb	a5,-41(s0)
    1104:	fff7c793          	not	a5,a5
    1108:	01879793          	slli	a5,a5,0x18
    110c:	4187d793          	srai	a5,a5,0x18
    1110:	00f777b3          	and	a5,a4,a5
    1114:	01879793          	slli	a5,a5,0x18
    1118:	4187d793          	srai	a5,a5,0x18
    111c:	0ff7f713          	andi	a4,a5,255
    1120:	fe842783          	lw	a5,-24(s0)
    1124:	00e78b23          	sb	a4,22(a5)
    1128:	fe842783          	lw	a5,-24(s0)
    112c:	0167c783          	lbu	a5,22(a5)
    1130:	04079a63          	bnez	a5,1184 <_Z12EventTaskRdyP17EventControlBlockPvh+0x210>
    1134:	000027b7          	lui	a5,0x2
    1138:	2357c703          	lbu	a4,565(a5) # 2235 <OSRdyGrp>
    113c:	fee44783          	lbu	a5,-18(s0)
    1140:	00f767b3          	or	a5,a4,a5
    1144:	0ff7f713          	andi	a4,a5,255
    1148:	000027b7          	lui	a5,0x2
    114c:	22e78aa3          	sb	a4,565(a5) # 2235 <OSRdyGrp>
    1150:	fef44703          	lbu	a4,-17(s0)
    1154:	000027b7          	lui	a5,0x2
    1158:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
    115c:	00f707b3          	add	a5,a4,a5
    1160:	0007c703          	lbu	a4,0(a5)
    1164:	fef44683          	lbu	a3,-17(s0)
    1168:	fec44783          	lbu	a5,-20(s0)
    116c:	00f767b3          	or	a5,a4,a5
    1170:	0ff7f713          	andi	a4,a5,255
    1174:	000027b7          	lui	a5,0x2
    1178:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
    117c:	00f687b3          	add	a5,a3,a5
    1180:	00e78023          	sb	a4,0(a5)
    1184:	fe744783          	lbu	a5,-25(s0)
    1188:	00078513          	mv	a0,a5
    118c:	02c12403          	lw	s0,44(sp)
    1190:	03010113          	addi	sp,sp,48
    1194:	00008067          	ret

00001198 <_Z18getHighestPriorityP17EventControlBlock>:
    1198:	fd010113          	addi	sp,sp,-48
    119c:	02812623          	sw	s0,44(sp)
    11a0:	03010413          	addi	s0,sp,48
    11a4:	fca42e23          	sw	a0,-36(s0)
    11a8:	fdc42783          	lw	a5,-36(s0)
    11ac:	0057c783          	lbu	a5,5(a5)
    11b0:	00078713          	mv	a4,a5
    11b4:	000027b7          	lui	a5,0x2
    11b8:	a3c78793          	addi	a5,a5,-1476 # 1a3c <_ZL10OSUnMapTbl>
    11bc:	00f707b3          	add	a5,a4,a5
    11c0:	0007c783          	lbu	a5,0(a5)
    11c4:	fef407a3          	sb	a5,-17(s0)
    11c8:	fef44783          	lbu	a5,-17(s0)
    11cc:	fdc42703          	lw	a4,-36(s0)
    11d0:	00f707b3          	add	a5,a4,a5
    11d4:	0087c783          	lbu	a5,8(a5)
    11d8:	00078713          	mv	a4,a5
    11dc:	000027b7          	lui	a5,0x2
    11e0:	a3c78793          	addi	a5,a5,-1476 # 1a3c <_ZL10OSUnMapTbl>
    11e4:	00f707b3          	add	a5,a4,a5
    11e8:	0007c783          	lbu	a5,0(a5)
    11ec:	fef40723          	sb	a5,-18(s0)
    11f0:	fef44783          	lbu	a5,-17(s0)
    11f4:	00379793          	slli	a5,a5,0x3
    11f8:	0ff7f713          	andi	a4,a5,255
    11fc:	fee44783          	lbu	a5,-18(s0)
    1200:	00f707b3          	add	a5,a4,a5
    1204:	fef406a3          	sb	a5,-19(s0)
    1208:	fed44783          	lbu	a5,-19(s0)
    120c:	00078513          	mv	a0,a5
    1210:	02c12403          	lw	s0,44(sp)
    1214:	03010113          	addi	sp,sp,48
    1218:	00008067          	ret

0000121c <_Z10OS_TCBInithPm>:
    121c:	fd010113          	addi	sp,sp,-48
    1220:	02112623          	sw	ra,44(sp)
    1224:	02812423          	sw	s0,40(sp)
    1228:	03010413          	addi	s0,sp,48
    122c:	00050793          	mv	a5,a0
    1230:	fcb42c23          	sw	a1,-40(s0)
    1234:	fcf40fa3          	sb	a5,-33(s0)
    1238:	fffff097          	auipc	ra,0xfffff
    123c:	02c080e7          	jalr	44(ra) # 264 <_Z17OS_ENTER_CRITICALv>
    1240:	000027b7          	lui	a5,0x2
    1244:	2247a783          	lw	a5,548(a5) # 2224 <OSTCBFreeList>
    1248:	fef42623          	sw	a5,-20(s0)
    124c:	fec42783          	lw	a5,-20(s0)
    1250:	18078e63          	beqz	a5,13ec <_Z10OS_TCBInithPm+0x1d0>
    1254:	fec42783          	lw	a5,-20(s0)
    1258:	0047a703          	lw	a4,4(a5)
    125c:	000027b7          	lui	a5,0x2
    1260:	22e7a223          	sw	a4,548(a5) # 2224 <OSTCBFreeList>
    1264:	fffff097          	auipc	ra,0xfffff
    1268:	01c080e7          	jalr	28(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    126c:	fec42783          	lw	a5,-20(s0)
    1270:	fd842703          	lw	a4,-40(s0)
    1274:	00e7a023          	sw	a4,0(a5)
    1278:	fec42783          	lw	a5,-20(s0)
    127c:	fdf44703          	lbu	a4,-33(s0)
    1280:	00e78ba3          	sb	a4,23(a5)
    1284:	fec42783          	lw	a5,-20(s0)
    1288:	00078b23          	sb	zero,22(a5)
    128c:	fec42783          	lw	a5,-20(s0)
    1290:	00079a23          	sh	zero,20(a5)
    1294:	fdf44783          	lbu	a5,-33(s0)
    1298:	4037d793          	srai	a5,a5,0x3
    129c:	0ff7f713          	andi	a4,a5,255
    12a0:	fec42783          	lw	a5,-20(s0)
    12a4:	00e78ca3          	sb	a4,25(a5)
    12a8:	fec42783          	lw	a5,-20(s0)
    12ac:	0197c783          	lbu	a5,25(a5)
    12b0:	00078713          	mv	a4,a5
    12b4:	000027b7          	lui	a5,0x2
    12b8:	1e078793          	addi	a5,a5,480 # 21e0 <_ZL8OSMapTbl>
    12bc:	00f707b3          	add	a5,a4,a5
    12c0:	0007c703          	lbu	a4,0(a5)
    12c4:	fec42783          	lw	a5,-20(s0)
    12c8:	00e78da3          	sb	a4,27(a5)
    12cc:	fdf44783          	lbu	a5,-33(s0)
    12d0:	0077f793          	andi	a5,a5,7
    12d4:	0ff7f713          	andi	a4,a5,255
    12d8:	fec42783          	lw	a5,-20(s0)
    12dc:	00e78c23          	sb	a4,24(a5)
    12e0:	fec42783          	lw	a5,-20(s0)
    12e4:	0187c783          	lbu	a5,24(a5)
    12e8:	00078713          	mv	a4,a5
    12ec:	000027b7          	lui	a5,0x2
    12f0:	1e078793          	addi	a5,a5,480 # 21e0 <_ZL8OSMapTbl>
    12f4:	00f707b3          	add	a5,a4,a5
    12f8:	0007c703          	lbu	a4,0(a5)
    12fc:	fec42783          	lw	a5,-20(s0)
    1300:	00e78d23          	sb	a4,26(a5)
    1304:	fec42783          	lw	a5,-20(s0)
    1308:	0007a623          	sw	zero,12(a5)
    130c:	fec42783          	lw	a5,-20(s0)
    1310:	0007a823          	sw	zero,16(a5)
    1314:	fffff097          	auipc	ra,0xfffff
    1318:	f50080e7          	jalr	-176(ra) # 264 <_Z17OS_ENTER_CRITICALv>
    131c:	fdf44703          	lbu	a4,-33(s0)
    1320:	000037b7          	lui	a5,0x3
    1324:	00271713          	slli	a4,a4,0x2
    1328:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    132c:	00f707b3          	add	a5,a4,a5
    1330:	fec42703          	lw	a4,-20(s0)
    1334:	00e7a023          	sw	a4,0(a5)
    1338:	000027b7          	lui	a5,0x2
    133c:	2287a703          	lw	a4,552(a5) # 2228 <OSTCBList>
    1340:	fec42783          	lw	a5,-20(s0)
    1344:	00e7a223          	sw	a4,4(a5)
    1348:	fec42783          	lw	a5,-20(s0)
    134c:	0007a423          	sw	zero,8(a5)
    1350:	000027b7          	lui	a5,0x2
    1354:	2287a783          	lw	a5,552(a5) # 2228 <OSTCBList>
    1358:	00078a63          	beqz	a5,136c <_Z10OS_TCBInithPm+0x150>
    135c:	000027b7          	lui	a5,0x2
    1360:	2287a783          	lw	a5,552(a5) # 2228 <OSTCBList>
    1364:	fec42703          	lw	a4,-20(s0)
    1368:	00e7a423          	sw	a4,8(a5)
    136c:	000027b7          	lui	a5,0x2
    1370:	fec42703          	lw	a4,-20(s0)
    1374:	22e7a423          	sw	a4,552(a5) # 2228 <OSTCBList>
    1378:	fec42783          	lw	a5,-20(s0)
    137c:	01b7c703          	lbu	a4,27(a5)
    1380:	000027b7          	lui	a5,0x2
    1384:	2357c783          	lbu	a5,565(a5) # 2235 <OSRdyGrp>
    1388:	00f767b3          	or	a5,a4,a5
    138c:	0ff7f713          	andi	a4,a5,255
    1390:	000027b7          	lui	a5,0x2
    1394:	22e78aa3          	sb	a4,565(a5) # 2235 <OSRdyGrp>
    1398:	fec42783          	lw	a5,-20(s0)
    139c:	0197c783          	lbu	a5,25(a5)
    13a0:	00078713          	mv	a4,a5
    13a4:	000027b7          	lui	a5,0x2
    13a8:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
    13ac:	00f707b3          	add	a5,a4,a5
    13b0:	0007c703          	lbu	a4,0(a5)
    13b4:	fec42783          	lw	a5,-20(s0)
    13b8:	01a7c783          	lbu	a5,26(a5)
    13bc:	fec42683          	lw	a3,-20(s0)
    13c0:	0196c683          	lbu	a3,25(a3)
    13c4:	00f767b3          	or	a5,a4,a5
    13c8:	0ff7f713          	andi	a4,a5,255
    13cc:	000027b7          	lui	a5,0x2
    13d0:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
    13d4:	00f687b3          	add	a5,a3,a5
    13d8:	00e78023          	sb	a4,0(a5)
    13dc:	fffff097          	auipc	ra,0xfffff
    13e0:	ea4080e7          	jalr	-348(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    13e4:	00000793          	li	a5,0
    13e8:	0100006f          	j	13f8 <_Z10OS_TCBInithPm+0x1dc>
    13ec:	fffff097          	auipc	ra,0xfffff
    13f0:	e94080e7          	jalr	-364(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    13f4:	00100793          	li	a5,1
    13f8:	00078513          	mv	a0,a5
    13fc:	02c12083          	lw	ra,44(sp)
    1400:	02812403          	lw	s0,40(sp)
    1404:	03010113          	addi	sp,sp,48
    1408:	00008067          	ret

0000140c <_Z12OSTaskCreatePFvPvES_Pmh>:
    140c:	fd010113          	addi	sp,sp,-48
    1410:	02112623          	sw	ra,44(sp)
    1414:	02812423          	sw	s0,40(sp)
    1418:	03010413          	addi	s0,sp,48
    141c:	fca42e23          	sw	a0,-36(s0)
    1420:	fcb42c23          	sw	a1,-40(s0)
    1424:	fcc42a23          	sw	a2,-44(s0)
    1428:	00068793          	mv	a5,a3
    142c:	fcf409a3          	sb	a5,-45(s0)
    1430:	fd344703          	lbu	a4,-45(s0)
    1434:	03f00793          	li	a5,63
    1438:	00e7f663          	bgeu	a5,a4,1444 <_Z12OSTaskCreatePFvPvES_Pmh+0x38>
    143c:	00200793          	li	a5,2
    1440:	1200006f          	j	1560 <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    1444:	fffff097          	auipc	ra,0xfffff
    1448:	e20080e7          	jalr	-480(ra) # 264 <_Z17OS_ENTER_CRITICALv>
    144c:	fd344703          	lbu	a4,-45(s0)
    1450:	000037b7          	lui	a5,0x3
    1454:	00271713          	slli	a4,a4,0x2
    1458:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    145c:	00f707b3          	add	a5,a4,a5
    1460:	0007a783          	lw	a5,0(a5)
    1464:	0e079863          	bnez	a5,1554 <_Z12OSTaskCreatePFvPvES_Pmh+0x148>
    1468:	fd344703          	lbu	a4,-45(s0)
    146c:	000037b7          	lui	a5,0x3
    1470:	00271713          	slli	a4,a4,0x2
    1474:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    1478:	00f707b3          	add	a5,a4,a5
    147c:	00100713          	li	a4,1
    1480:	00e7a023          	sw	a4,0(a5)
    1484:	fffff097          	auipc	ra,0xfffff
    1488:	dfc080e7          	jalr	-516(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    148c:	00000693          	li	a3,0
    1490:	fd442603          	lw	a2,-44(s0)
    1494:	fd842583          	lw	a1,-40(s0)
    1498:	fdc42503          	lw	a0,-36(s0)
    149c:	fffff097          	auipc	ra,0xfffff
    14a0:	e00080e7          	jalr	-512(ra) # 29c <_Z13OSTaskStkInitPFvPvES_Pmt>
    14a4:	00050793          	mv	a5,a0
    14a8:	fef42623          	sw	a5,-20(s0)
    14ac:	fd344783          	lbu	a5,-45(s0)
    14b0:	fec42583          	lw	a1,-20(s0)
    14b4:	00078513          	mv	a0,a5
    14b8:	00000097          	auipc	ra,0x0
    14bc:	d64080e7          	jalr	-668(ra) # 121c <_Z10OS_TCBInithPm>
    14c0:	00050793          	mv	a5,a0
    14c4:	fef403a3          	sb	a5,-25(s0)
    14c8:	fe744783          	lbu	a5,-25(s0)
    14cc:	04079c63          	bnez	a5,1524 <_Z12OSTaskCreatePFvPvES_Pmh+0x118>
    14d0:	fffff097          	auipc	ra,0xfffff
    14d4:	d94080e7          	jalr	-620(ra) # 264 <_Z17OS_ENTER_CRITICALv>
    14d8:	000027b7          	lui	a5,0x2
    14dc:	2407c783          	lbu	a5,576(a5) # 2240 <OSTaskCtr>
    14e0:	00178793          	addi	a5,a5,1
    14e4:	0ff7f713          	andi	a4,a5,255
    14e8:	000027b7          	lui	a5,0x2
    14ec:	24e78023          	sb	a4,576(a5) # 2240 <OSTaskCtr>
    14f0:	fffff097          	auipc	ra,0xfffff
    14f4:	d90080e7          	jalr	-624(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    14f8:	fdc42783          	lw	a5,-36(s0)
    14fc:	fef42423          	sw	a5,-24(s0)
    1500:	fd344703          	lbu	a4,-45(s0)
    1504:	000037b7          	lui	a5,0x3
    1508:	00271713          	slli	a4,a4,0x2
    150c:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    1510:	00f707b3          	add	a5,a4,a5
    1514:	0007a783          	lw	a5,0(a5)
    1518:	fe842703          	lw	a4,-24(s0)
    151c:	02e7a023          	sw	a4,32(a5)
    1520:	02c0006f          	j	154c <_Z12OSTaskCreatePFvPvES_Pmh+0x140>
    1524:	fffff097          	auipc	ra,0xfffff
    1528:	d40080e7          	jalr	-704(ra) # 264 <_Z17OS_ENTER_CRITICALv>
    152c:	fd344703          	lbu	a4,-45(s0)
    1530:	000037b7          	lui	a5,0x3
    1534:	00271713          	slli	a4,a4,0x2
    1538:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    153c:	00f707b3          	add	a5,a4,a5
    1540:	0007a023          	sw	zero,0(a5)
    1544:	fffff097          	auipc	ra,0xfffff
    1548:	d3c080e7          	jalr	-708(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    154c:	fe744783          	lbu	a5,-25(s0)
    1550:	0100006f          	j	1560 <_Z12OSTaskCreatePFvPvES_Pmh+0x154>
    1554:	fffff097          	auipc	ra,0xfffff
    1558:	d2c080e7          	jalr	-724(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    155c:	00500793          	li	a5,5
    1560:	00078513          	mv	a0,a5
    1564:	02c12083          	lw	ra,44(sp)
    1568:	02812403          	lw	s0,40(sp)
    156c:	03010113          	addi	sp,sp,48
    1570:	00008067          	ret

00001574 <_Z12OSTaskResumeh>:
    1574:	fd010113          	addi	sp,sp,-48
    1578:	02112623          	sw	ra,44(sp)
    157c:	02812423          	sw	s0,40(sp)
    1580:	03010413          	addi	s0,sp,48
    1584:	00050793          	mv	a5,a0
    1588:	fcf40fa3          	sb	a5,-33(s0)
    158c:	fdf44703          	lbu	a4,-33(s0)
    1590:	03e00793          	li	a5,62
    1594:	00e7f663          	bgeu	a5,a4,15a0 <_Z12OSTaskResumeh+0x2c>
    1598:	00200793          	li	a5,2
    159c:	11c0006f          	j	16b8 <_Z12OSTaskResumeh+0x144>
    15a0:	fffff097          	auipc	ra,0xfffff
    15a4:	cc4080e7          	jalr	-828(ra) # 264 <_Z17OS_ENTER_CRITICALv>
    15a8:	fdf44703          	lbu	a4,-33(s0)
    15ac:	000037b7          	lui	a5,0x3
    15b0:	00271713          	slli	a4,a4,0x2
    15b4:	e7878793          	addi	a5,a5,-392 # 2e78 <OSTCBPrioTbl>
    15b8:	00f707b3          	add	a5,a4,a5
    15bc:	0007a783          	lw	a5,0(a5)
    15c0:	fef42623          	sw	a5,-20(s0)
    15c4:	fec42783          	lw	a5,-20(s0)
    15c8:	00079a63          	bnez	a5,15dc <_Z12OSTaskResumeh+0x68>
    15cc:	fffff097          	auipc	ra,0xfffff
    15d0:	cb4080e7          	jalr	-844(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    15d4:	00600793          	li	a5,6
    15d8:	0e00006f          	j	16b8 <_Z12OSTaskResumeh+0x144>
    15dc:	fec42783          	lw	a5,-20(s0)
    15e0:	0167c783          	lbu	a5,22(a5)
    15e4:	0037f793          	andi	a5,a5,3
    15e8:	0c078263          	beqz	a5,16ac <_Z12OSTaskResumeh+0x138>
    15ec:	fec42783          	lw	a5,-20(s0)
    15f0:	0167c783          	lbu	a5,22(a5)
    15f4:	ffc7f793          	andi	a5,a5,-4
    15f8:	0ff7f713          	andi	a4,a5,255
    15fc:	fec42783          	lw	a5,-20(s0)
    1600:	00e78b23          	sb	a4,22(a5)
    1604:	fec42783          	lw	a5,-20(s0)
    1608:	0167c783          	lbu	a5,22(a5)
    160c:	00079c63          	bnez	a5,1624 <_Z12OSTaskResumeh+0xb0>
    1610:	fec42783          	lw	a5,-20(s0)
    1614:	0147d783          	lhu	a5,20(a5)
    1618:	00079663          	bnez	a5,1624 <_Z12OSTaskResumeh+0xb0>
    161c:	00100793          	li	a5,1
    1620:	0080006f          	j	1628 <_Z12OSTaskResumeh+0xb4>
    1624:	00000793          	li	a5,0
    1628:	06078a63          	beqz	a5,169c <_Z12OSTaskResumeh+0x128>
    162c:	fec42783          	lw	a5,-20(s0)
    1630:	01b7c703          	lbu	a4,27(a5)
    1634:	000027b7          	lui	a5,0x2
    1638:	2357c783          	lbu	a5,565(a5) # 2235 <OSRdyGrp>
    163c:	00f767b3          	or	a5,a4,a5
    1640:	0ff7f713          	andi	a4,a5,255
    1644:	000027b7          	lui	a5,0x2
    1648:	22e78aa3          	sb	a4,565(a5) # 2235 <OSRdyGrp>
    164c:	fec42783          	lw	a5,-20(s0)
    1650:	0197c783          	lbu	a5,25(a5)
    1654:	00078713          	mv	a4,a5
    1658:	000027b7          	lui	a5,0x2
    165c:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
    1660:	00f707b3          	add	a5,a4,a5
    1664:	0007c703          	lbu	a4,0(a5)
    1668:	fec42783          	lw	a5,-20(s0)
    166c:	01a7c783          	lbu	a5,26(a5)
    1670:	fec42683          	lw	a3,-20(s0)
    1674:	0196c683          	lbu	a3,25(a3)
    1678:	00f767b3          	or	a5,a4,a5
    167c:	0ff7f713          	andi	a4,a5,255
    1680:	000027b7          	lui	a5,0x2
    1684:	23878793          	addi	a5,a5,568 # 2238 <OSRdyTbl>
    1688:	00f687b3          	add	a5,a3,a5
    168c:	00e78023          	sb	a4,0(a5)
    1690:	fffff097          	auipc	ra,0xfffff
    1694:	bf0080e7          	jalr	-1040(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    1698:	00c0006f          	j	16a4 <_Z12OSTaskResumeh+0x130>
    169c:	fffff097          	auipc	ra,0xfffff
    16a0:	be4080e7          	jalr	-1052(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    16a4:	00000793          	li	a5,0
    16a8:	0100006f          	j	16b8 <_Z12OSTaskResumeh+0x144>
    16ac:	fffff097          	auipc	ra,0xfffff
    16b0:	bd4080e7          	jalr	-1068(ra) # 280 <_Z16OS_EXIT_CRITICALv>
    16b4:	00700793          	li	a5,7
    16b8:	00078513          	mv	a0,a5
    16bc:	02c12083          	lw	ra,44(sp)
    16c0:	02812403          	lw	s0,40(sp)
    16c4:	03010113          	addi	sp,sp,48
    16c8:	00008067          	ret
