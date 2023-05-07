
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 28 50 00 00       	push   $0x5028
      16:	6a 01                	push   $0x1
      18:	e8 43 3c 00 00       	call   3c60 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 3c 50 00 00       	push   $0x503c
      26:	e8 0b 3b 00 00       	call   3b36 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 a4 57 00 00       	push   $0x57a4
      39:	6a 01                	push   $0x1
      3b:	e8 20 3c 00 00       	call   3c60 <printf>
    exit();
      40:	e8 b1 3a 00 00       	call   3af6 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 3c 50 00 00       	push   $0x503c
      51:	e8 e0 3a 00 00       	call   3b36 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 c0 3a 00 00       	call   3b1e <close>

  clonetest();
      5e:	e8 cd 00 00 00       	call   130 <clonetest>
      63:	66 90                	xchg   %ax,%ax
      65:	66 90                	xchg   %ax,%ax
      67:	66 90                	xchg   %ax,%ax
      69:	66 90                	xchg   %ax,%ax
      6b:	66 90                	xchg   %ax,%ax
      6d:	66 90                	xchg   %ax,%ax
      6f:	90                   	nop

00000070 <worker>:
worker(void *arg1, void *arg2) {
      70:	55                   	push   %ebp
      71:	89 e5                	mov    %esp,%ebp
      73:	83 ec 08             	sub    $0x8,%esp
   int tmp2 = *(int*)arg2;
      76:	8b 45 0c             	mov    0xc(%ebp),%eax
      79:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
      7b:	8b 45 08             	mov    0x8(%ebp),%eax
      7e:	83 38 2a             	cmpl   $0x2a,(%eax)
      81:	75 75                	jne    f8 <worker+0x88>
   assert(tmp2 == 24);
      83:	83 fa 18             	cmp    $0x18,%edx
      86:	75 2a                	jne    b2 <worker+0x42>
   assert(global == 1);
      88:	83 3d 18 62 00 00 01 	cmpl   $0x1,0x6218
      8f:	0f 84 80 00 00 00    	je     115 <worker+0xa5>
      95:	6a 43                	push   $0x43
      97:	68 88 3f 00 00       	push   $0x3f88
      9c:	68 94 3f 00 00       	push   $0x3f94
      a1:	6a 01                	push   $0x1
      a3:	e8 b8 3b 00 00       	call   3c60 <printf>
      a8:	83 c4 0c             	add    $0xc,%esp
      ab:	68 d3 3f 00 00       	push   $0x3fd3
      b0:	eb 1b                	jmp    cd <worker+0x5d>
   assert(tmp2 == 24);
      b2:	6a 42                	push   $0x42
      b4:	68 88 3f 00 00       	push   $0x3f88
      b9:	68 94 3f 00 00       	push   $0x3f94
      be:	6a 01                	push   $0x1
      c0:	e8 9b 3b 00 00       	call   3c60 <printf>
      c5:	83 c4 0c             	add    $0xc,%esp
      c8:	68 c8 3f 00 00       	push   $0x3fc8
      cd:	68 a7 3f 00 00       	push   $0x3fa7
      d2:	6a 01                	push   $0x1
      d4:	e8 87 3b 00 00       	call   3c60 <printf>
      d9:	58                   	pop    %eax
      da:	5a                   	pop    %edx
      db:	68 bb 3f 00 00       	push   $0x3fbb
      e0:	6a 01                	push   $0x1
      e2:	e8 79 3b 00 00       	call   3c60 <printf>
      e7:	59                   	pop    %ecx
      e8:	ff 35 60 a9 00 00    	push   0xa960
      ee:	e8 33 3a 00 00       	call   3b26 <kill>
      f3:	e8 fe 39 00 00       	call   3af6 <exit>
   assert(tmp1 == 42);
      f8:	6a 41                	push   $0x41
      fa:	68 88 3f 00 00       	push   $0x3f88
      ff:	68 94 3f 00 00       	push   $0x3f94
     104:	6a 01                	push   $0x1
     106:	e8 55 3b 00 00       	call   3c60 <printf>
     10b:	83 c4 0c             	add    $0xc,%esp
     10e:	68 9c 3f 00 00       	push   $0x3f9c
     113:	eb b8                	jmp    cd <worker+0x5d>
   global++;
     115:	c7 05 18 62 00 00 02 	movl   $0x2,0x6218
     11c:	00 00 00 
   exit();
     11f:	e8 d2 39 00 00       	call   3af6 <exit>
     124:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     12b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     12f:	90                   	nop

00000130 <clonetest>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	57                   	push   %edi
     134:	56                   	push   %esi
     135:	53                   	push   %ebx
     136:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
     139:	e8 38 3a 00 00       	call   3b76 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
     13e:	83 ec 0c             	sub    $0xc,%esp
     141:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
     146:	a3 60 a9 00 00       	mov    %eax,0xa960
   void *stack, *p = malloc(PGSIZE * 2);
     14b:	e8 40 3d 00 00       	call   3e90 <malloc>
   assert(p != NULL);
     150:	83 c4 10             	add    $0x10,%esp
     153:	85 c0                	test   %eax,%eax
     155:	0f 84 00 01 00 00    	je     25b <clonetest+0x12b>
     15b:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
     15d:	89 c7                	mov    %eax,%edi
     15f:	25 ff 0f 00 00       	and    $0xfff,%eax
     164:	74 0a                	je     170 <clonetest+0x40>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
     166:	89 da                	mov    %ebx,%edx
     168:	29 c2                	sub    %eax,%edx
     16a:	8d ba 00 10 00 00    	lea    0x1000(%edx),%edi
   int clone_pid = clone(worker, &arg1, &arg2, stack);
     170:	8d 45 e0             	lea    -0x20(%ebp),%eax
     173:	57                   	push   %edi
     174:	50                   	push   %eax
     175:	8d 45 dc             	lea    -0x24(%ebp),%eax
     178:	50                   	push   %eax
     179:	68 70 00 00 00       	push   $0x70
   int arg1 = 42, arg2 = 24;
     17e:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
     185:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
     18c:	e8 05 3a 00 00       	call   3b96 <clone>
   assert(clone_pid > 0);
     191:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
     194:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
     196:	85 c0                	test   %eax,%eax
     198:	7e 59                	jle    1f3 <clonetest+0xc3>
   int join_pid = join(&join_stack);
     19a:	83 ec 0c             	sub    $0xc,%esp
     19d:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     1a0:	50                   	push   %eax
     1a1:	e8 f8 39 00 00       	call   3b9e <join>
   assert(join_pid == clone_pid);
     1a6:	83 c4 10             	add    $0x10,%esp
     1a9:	39 c6                	cmp    %eax,%esi
     1ab:	74 63                	je     210 <clonetest+0xe0>
     1ad:	6a 34                	push   $0x34
     1af:	68 88 3f 00 00       	push   $0x3f88
     1b4:	68 94 3f 00 00       	push   $0x3f94
     1b9:	6a 01                	push   $0x1
     1bb:	e8 a0 3a 00 00       	call   3c60 <printf>
     1c0:	83 c4 0c             	add    $0xc,%esp
     1c3:	68 f7 3f 00 00       	push   $0x3ff7
   assert(clone_pid > 0);
     1c8:	68 a7 3f 00 00       	push   $0x3fa7
     1cd:	6a 01                	push   $0x1
     1cf:	e8 8c 3a 00 00       	call   3c60 <printf>
     1d4:	5a                   	pop    %edx
     1d5:	59                   	pop    %ecx
     1d6:	68 bb 3f 00 00       	push   $0x3fbb
     1db:	6a 01                	push   $0x1
     1dd:	e8 7e 3a 00 00       	call   3c60 <printf>
     1e2:	5b                   	pop    %ebx
     1e3:	ff 35 60 a9 00 00    	push   0xa960
     1e9:	e8 38 39 00 00       	call   3b26 <kill>
     1ee:	e8 03 39 00 00       	call   3af6 <exit>
     1f3:	6a 30                	push   $0x30
     1f5:	68 88 3f 00 00       	push   $0x3f88
     1fa:	68 94 3f 00 00       	push   $0x3f94
     1ff:	6a 01                	push   $0x1
     201:	e8 5a 3a 00 00       	call   3c60 <printf>
     206:	83 c4 0c             	add    $0xc,%esp
     209:	68 e9 3f 00 00       	push   $0x3fe9
     20e:	eb b8                	jmp    1c8 <clonetest+0x98>
   assert(stack == join_stack);
     210:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
     213:	74 1d                	je     232 <clonetest+0x102>
     215:	6a 35                	push   $0x35
     217:	68 88 3f 00 00       	push   $0x3f88
     21c:	68 94 3f 00 00       	push   $0x3f94
     221:	6a 01                	push   $0x1
     223:	e8 38 3a 00 00       	call   3c60 <printf>
     228:	83 c4 0c             	add    $0xc,%esp
     22b:	68 0d 40 00 00       	push   $0x400d
     230:	eb 96                	jmp    1c8 <clonetest+0x98>
   assert(global == 2);
     232:	83 3d 18 62 00 00 02 	cmpl   $0x2,0x6218
     239:	74 40                	je     27b <clonetest+0x14b>
     23b:	6a 36                	push   $0x36
     23d:	68 88 3f 00 00       	push   $0x3f88
     242:	68 94 3f 00 00       	push   $0x3f94
     247:	6a 01                	push   $0x1
     249:	e8 12 3a 00 00       	call   3c60 <printf>
     24e:	83 c4 0c             	add    $0xc,%esp
     251:	68 21 40 00 00       	push   $0x4021
     256:	e9 6d ff ff ff       	jmp    1c8 <clonetest+0x98>
   assert(p != NULL);
     25b:	6a 28                	push   $0x28
     25d:	68 88 3f 00 00       	push   $0x3f88
     262:	68 94 3f 00 00       	push   $0x3f94
     267:	6a 01                	push   $0x1
     269:	e8 f2 39 00 00       	call   3c60 <printf>
     26e:	83 c4 0c             	add    $0xc,%esp
     271:	68 df 3f 00 00       	push   $0x3fdf
     276:	e9 4d ff ff ff       	jmp    1c8 <clonetest+0x98>
   printf(1, "TEST PASSED\n");
     27b:	50                   	push   %eax
     27c:	50                   	push   %eax
     27d:	68 2d 40 00 00       	push   $0x402d
     282:	6a 01                	push   $0x1
     284:	e8 d7 39 00 00       	call   3c60 <printf>
   free(p);
     289:	89 1c 24             	mov    %ebx,(%esp)
     28c:	e8 6f 3b 00 00       	call   3e00 <free>
   exit();
     291:	e8 60 38 00 00       	call   3af6 <exit>
     296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     29d:	8d 76 00             	lea    0x0(%esi),%esi

000002a0 <iputtest>:
{
     2a0:	55                   	push   %ebp
     2a1:	89 e5                	mov    %esp,%ebp
     2a3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     2a6:	68 ce 40 00 00       	push   $0x40ce
     2ab:	ff 35 1c 62 00 00    	push   0x621c
     2b1:	e8 aa 39 00 00       	call   3c60 <printf>
  if(mkdir("iputdir") < 0){
     2b6:	c7 04 24 61 40 00 00 	movl   $0x4061,(%esp)
     2bd:	e8 9c 38 00 00       	call   3b5e <mkdir>
     2c2:	83 c4 10             	add    $0x10,%esp
     2c5:	85 c0                	test   %eax,%eax
     2c7:	78 58                	js     321 <iputtest+0x81>
  if(chdir("iputdir") < 0){
     2c9:	83 ec 0c             	sub    $0xc,%esp
     2cc:	68 61 40 00 00       	push   $0x4061
     2d1:	e8 90 38 00 00       	call   3b66 <chdir>
     2d6:	83 c4 10             	add    $0x10,%esp
     2d9:	85 c0                	test   %eax,%eax
     2db:	0f 88 85 00 00 00    	js     366 <iputtest+0xc6>
  if(unlink("../iputdir") < 0){
     2e1:	83 ec 0c             	sub    $0xc,%esp
     2e4:	68 5e 40 00 00       	push   $0x405e
     2e9:	e8 58 38 00 00       	call   3b46 <unlink>
     2ee:	83 c4 10             	add    $0x10,%esp
     2f1:	85 c0                	test   %eax,%eax
     2f3:	78 5a                	js     34f <iputtest+0xaf>
  if(chdir("/") < 0){
     2f5:	83 ec 0c             	sub    $0xc,%esp
     2f8:	68 83 40 00 00       	push   $0x4083
     2fd:	e8 64 38 00 00       	call   3b66 <chdir>
     302:	83 c4 10             	add    $0x10,%esp
     305:	85 c0                	test   %eax,%eax
     307:	78 2f                	js     338 <iputtest+0x98>
  printf(stdout, "iput test ok\n");
     309:	83 ec 08             	sub    $0x8,%esp
     30c:	68 06 41 00 00       	push   $0x4106
     311:	ff 35 1c 62 00 00    	push   0x621c
     317:	e8 44 39 00 00       	call   3c60 <printf>
}
     31c:	83 c4 10             	add    $0x10,%esp
     31f:	c9                   	leave  
     320:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     321:	50                   	push   %eax
     322:	50                   	push   %eax
     323:	68 3a 40 00 00       	push   $0x403a
     328:	ff 35 1c 62 00 00    	push   0x621c
     32e:	e8 2d 39 00 00       	call   3c60 <printf>
    exit();
     333:	e8 be 37 00 00       	call   3af6 <exit>
    printf(stdout, "chdir / failed\n");
     338:	50                   	push   %eax
     339:	50                   	push   %eax
     33a:	68 85 40 00 00       	push   $0x4085
     33f:	ff 35 1c 62 00 00    	push   0x621c
     345:	e8 16 39 00 00       	call   3c60 <printf>
    exit();
     34a:	e8 a7 37 00 00       	call   3af6 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     34f:	52                   	push   %edx
     350:	52                   	push   %edx
     351:	68 69 40 00 00       	push   $0x4069
     356:	ff 35 1c 62 00 00    	push   0x621c
     35c:	e8 ff 38 00 00       	call   3c60 <printf>
    exit();
     361:	e8 90 37 00 00       	call   3af6 <exit>
    printf(stdout, "chdir iputdir failed\n");
     366:	51                   	push   %ecx
     367:	51                   	push   %ecx
     368:	68 48 40 00 00       	push   $0x4048
     36d:	ff 35 1c 62 00 00    	push   0x621c
     373:	e8 e8 38 00 00       	call   3c60 <printf>
    exit();
     378:	e8 79 37 00 00       	call   3af6 <exit>
     37d:	8d 76 00             	lea    0x0(%esi),%esi

00000380 <exitiputtest>:
{
     380:	55                   	push   %ebp
     381:	89 e5                	mov    %esp,%ebp
     383:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     386:	68 95 40 00 00       	push   $0x4095
     38b:	ff 35 1c 62 00 00    	push   0x621c
     391:	e8 ca 38 00 00       	call   3c60 <printf>
  pid = fork();
     396:	e8 53 37 00 00       	call   3aee <fork>
  if(pid < 0){
     39b:	83 c4 10             	add    $0x10,%esp
     39e:	85 c0                	test   %eax,%eax
     3a0:	0f 88 8a 00 00 00    	js     430 <exitiputtest+0xb0>
  if(pid == 0){
     3a6:	75 50                	jne    3f8 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
     3a8:	83 ec 0c             	sub    $0xc,%esp
     3ab:	68 61 40 00 00       	push   $0x4061
     3b0:	e8 a9 37 00 00       	call   3b5e <mkdir>
     3b5:	83 c4 10             	add    $0x10,%esp
     3b8:	85 c0                	test   %eax,%eax
     3ba:	0f 88 87 00 00 00    	js     447 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
     3c0:	83 ec 0c             	sub    $0xc,%esp
     3c3:	68 61 40 00 00       	push   $0x4061
     3c8:	e8 99 37 00 00       	call   3b66 <chdir>
     3cd:	83 c4 10             	add    $0x10,%esp
     3d0:	85 c0                	test   %eax,%eax
     3d2:	0f 88 86 00 00 00    	js     45e <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
     3d8:	83 ec 0c             	sub    $0xc,%esp
     3db:	68 5e 40 00 00       	push   $0x405e
     3e0:	e8 61 37 00 00       	call   3b46 <unlink>
     3e5:	83 c4 10             	add    $0x10,%esp
     3e8:	85 c0                	test   %eax,%eax
     3ea:	78 2c                	js     418 <exitiputtest+0x98>
    exit();
     3ec:	e8 05 37 00 00       	call   3af6 <exit>
     3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
     3f8:	e8 01 37 00 00       	call   3afe <wait>
  printf(stdout, "exitiput test ok\n");
     3fd:	83 ec 08             	sub    $0x8,%esp
     400:	68 b8 40 00 00       	push   $0x40b8
     405:	ff 35 1c 62 00 00    	push   0x621c
     40b:	e8 50 38 00 00       	call   3c60 <printf>
}
     410:	83 c4 10             	add    $0x10,%esp
     413:	c9                   	leave  
     414:	c3                   	ret    
     415:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     418:	83 ec 08             	sub    $0x8,%esp
     41b:	68 69 40 00 00       	push   $0x4069
     420:	ff 35 1c 62 00 00    	push   0x621c
     426:	e8 35 38 00 00       	call   3c60 <printf>
      exit();
     42b:	e8 c6 36 00 00       	call   3af6 <exit>
    printf(stdout, "fork failed\n");
     430:	51                   	push   %ecx
     431:	51                   	push   %ecx
     432:	68 7b 4f 00 00       	push   $0x4f7b
     437:	ff 35 1c 62 00 00    	push   0x621c
     43d:	e8 1e 38 00 00       	call   3c60 <printf>
    exit();
     442:	e8 af 36 00 00       	call   3af6 <exit>
      printf(stdout, "mkdir failed\n");
     447:	52                   	push   %edx
     448:	52                   	push   %edx
     449:	68 3a 40 00 00       	push   $0x403a
     44e:	ff 35 1c 62 00 00    	push   0x621c
     454:	e8 07 38 00 00       	call   3c60 <printf>
      exit();
     459:	e8 98 36 00 00       	call   3af6 <exit>
      printf(stdout, "child chdir failed\n");
     45e:	50                   	push   %eax
     45f:	50                   	push   %eax
     460:	68 a4 40 00 00       	push   $0x40a4
     465:	ff 35 1c 62 00 00    	push   0x621c
     46b:	e8 f0 37 00 00       	call   3c60 <printf>
      exit();
     470:	e8 81 36 00 00       	call   3af6 <exit>
     475:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000480 <openiputtest>:
{
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     486:	68 ca 40 00 00       	push   $0x40ca
     48b:	ff 35 1c 62 00 00    	push   0x621c
     491:	e8 ca 37 00 00       	call   3c60 <printf>
  if(mkdir("oidir") < 0){
     496:	c7 04 24 d9 40 00 00 	movl   $0x40d9,(%esp)
     49d:	e8 bc 36 00 00       	call   3b5e <mkdir>
     4a2:	83 c4 10             	add    $0x10,%esp
     4a5:	85 c0                	test   %eax,%eax
     4a7:	0f 88 9f 00 00 00    	js     54c <openiputtest+0xcc>
  pid = fork();
     4ad:	e8 3c 36 00 00       	call   3aee <fork>
  if(pid < 0){
     4b2:	85 c0                	test   %eax,%eax
     4b4:	78 7f                	js     535 <openiputtest+0xb5>
  if(pid == 0){
     4b6:	75 38                	jne    4f0 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     4b8:	83 ec 08             	sub    $0x8,%esp
     4bb:	6a 02                	push   $0x2
     4bd:	68 d9 40 00 00       	push   $0x40d9
     4c2:	e8 6f 36 00 00       	call   3b36 <open>
    if(fd >= 0){
     4c7:	83 c4 10             	add    $0x10,%esp
     4ca:	85 c0                	test   %eax,%eax
     4cc:	78 62                	js     530 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     4ce:	83 ec 08             	sub    $0x8,%esp
     4d1:	68 5c 50 00 00       	push   $0x505c
     4d6:	ff 35 1c 62 00 00    	push   0x621c
     4dc:	e8 7f 37 00 00       	call   3c60 <printf>
      exit();
     4e1:	e8 10 36 00 00       	call   3af6 <exit>
     4e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4ed:	8d 76 00             	lea    0x0(%esi),%esi
  sleep(1);
     4f0:	83 ec 0c             	sub    $0xc,%esp
     4f3:	6a 01                	push   $0x1
     4f5:	e8 8c 36 00 00       	call   3b86 <sleep>
  if(unlink("oidir") != 0){
     4fa:	c7 04 24 d9 40 00 00 	movl   $0x40d9,(%esp)
     501:	e8 40 36 00 00       	call   3b46 <unlink>
     506:	83 c4 10             	add    $0x10,%esp
     509:	85 c0                	test   %eax,%eax
     50b:	75 56                	jne    563 <openiputtest+0xe3>
  wait();
     50d:	e8 ec 35 00 00       	call   3afe <wait>
  printf(stdout, "openiput test ok\n");
     512:	83 ec 08             	sub    $0x8,%esp
     515:	68 02 41 00 00       	push   $0x4102
     51a:	ff 35 1c 62 00 00    	push   0x621c
     520:	e8 3b 37 00 00       	call   3c60 <printf>
}
     525:	83 c4 10             	add    $0x10,%esp
     528:	c9                   	leave  
     529:	c3                   	ret    
     52a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     530:	e8 c1 35 00 00       	call   3af6 <exit>
    printf(stdout, "fork failed\n");
     535:	52                   	push   %edx
     536:	52                   	push   %edx
     537:	68 7b 4f 00 00       	push   $0x4f7b
     53c:	ff 35 1c 62 00 00    	push   0x621c
     542:	e8 19 37 00 00       	call   3c60 <printf>
    exit();
     547:	e8 aa 35 00 00       	call   3af6 <exit>
    printf(stdout, "mkdir oidir failed\n");
     54c:	51                   	push   %ecx
     54d:	51                   	push   %ecx
     54e:	68 df 40 00 00       	push   $0x40df
     553:	ff 35 1c 62 00 00    	push   0x621c
     559:	e8 02 37 00 00       	call   3c60 <printf>
    exit();
     55e:	e8 93 35 00 00       	call   3af6 <exit>
    printf(stdout, "unlink failed\n");
     563:	50                   	push   %eax
     564:	50                   	push   %eax
     565:	68 f3 40 00 00       	push   $0x40f3
     56a:	ff 35 1c 62 00 00    	push   0x621c
     570:	e8 eb 36 00 00       	call   3c60 <printf>
    exit();
     575:	e8 7c 35 00 00       	call   3af6 <exit>
     57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000580 <opentest>:
{
     580:	55                   	push   %ebp
     581:	89 e5                	mov    %esp,%ebp
     583:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     586:	68 14 41 00 00       	push   $0x4114
     58b:	ff 35 1c 62 00 00    	push   0x621c
     591:	e8 ca 36 00 00       	call   3c60 <printf>
  fd = open("echo", 0);
     596:	58                   	pop    %eax
     597:	5a                   	pop    %edx
     598:	6a 00                	push   $0x0
     59a:	68 1f 41 00 00       	push   $0x411f
     59f:	e8 92 35 00 00       	call   3b36 <open>
  if(fd < 0){
     5a4:	83 c4 10             	add    $0x10,%esp
     5a7:	85 c0                	test   %eax,%eax
     5a9:	78 36                	js     5e1 <opentest+0x61>
  close(fd);
     5ab:	83 ec 0c             	sub    $0xc,%esp
     5ae:	50                   	push   %eax
     5af:	e8 6a 35 00 00       	call   3b1e <close>
  fd = open("doesnotexist", 0);
     5b4:	5a                   	pop    %edx
     5b5:	59                   	pop    %ecx
     5b6:	6a 00                	push   $0x0
     5b8:	68 37 41 00 00       	push   $0x4137
     5bd:	e8 74 35 00 00       	call   3b36 <open>
  if(fd >= 0){
     5c2:	83 c4 10             	add    $0x10,%esp
     5c5:	85 c0                	test   %eax,%eax
     5c7:	79 2f                	jns    5f8 <opentest+0x78>
  printf(stdout, "open test ok\n");
     5c9:	83 ec 08             	sub    $0x8,%esp
     5cc:	68 62 41 00 00       	push   $0x4162
     5d1:	ff 35 1c 62 00 00    	push   0x621c
     5d7:	e8 84 36 00 00       	call   3c60 <printf>
}
     5dc:	83 c4 10             	add    $0x10,%esp
     5df:	c9                   	leave  
     5e0:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     5e1:	50                   	push   %eax
     5e2:	50                   	push   %eax
     5e3:	68 24 41 00 00       	push   $0x4124
     5e8:	ff 35 1c 62 00 00    	push   0x621c
     5ee:	e8 6d 36 00 00       	call   3c60 <printf>
    exit();
     5f3:	e8 fe 34 00 00       	call   3af6 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     5f8:	50                   	push   %eax
     5f9:	50                   	push   %eax
     5fa:	68 44 41 00 00       	push   $0x4144
     5ff:	ff 35 1c 62 00 00    	push   0x621c
     605:	e8 56 36 00 00       	call   3c60 <printf>
    exit();
     60a:	e8 e7 34 00 00       	call   3af6 <exit>
     60f:	90                   	nop

00000610 <writetest>:
{
     610:	55                   	push   %ebp
     611:	89 e5                	mov    %esp,%ebp
     613:	56                   	push   %esi
     614:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     615:	83 ec 08             	sub    $0x8,%esp
     618:	68 70 41 00 00       	push   $0x4170
     61d:	ff 35 1c 62 00 00    	push   0x621c
     623:	e8 38 36 00 00       	call   3c60 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     628:	58                   	pop    %eax
     629:	5a                   	pop    %edx
     62a:	68 02 02 00 00       	push   $0x202
     62f:	68 81 41 00 00       	push   $0x4181
     634:	e8 fd 34 00 00       	call   3b36 <open>
  if(fd >= 0){
     639:	83 c4 10             	add    $0x10,%esp
     63c:	85 c0                	test   %eax,%eax
     63e:	0f 88 88 01 00 00    	js     7cc <writetest+0x1bc>
    printf(stdout, "creat small succeeded; ok\n");
     644:	83 ec 08             	sub    $0x8,%esp
     647:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
     649:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     64b:	68 87 41 00 00       	push   $0x4187
     650:	ff 35 1c 62 00 00    	push   0x621c
     656:	e8 05 36 00 00       	call   3c60 <printf>
     65b:	83 c4 10             	add    $0x10,%esp
     65e:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     660:	83 ec 04             	sub    $0x4,%esp
     663:	6a 0a                	push   $0xa
     665:	68 be 41 00 00       	push   $0x41be
     66a:	56                   	push   %esi
     66b:	e8 a6 34 00 00       	call   3b16 <write>
     670:	83 c4 10             	add    $0x10,%esp
     673:	83 f8 0a             	cmp    $0xa,%eax
     676:	0f 85 d9 00 00 00    	jne    755 <writetest+0x145>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     67c:	83 ec 04             	sub    $0x4,%esp
     67f:	6a 0a                	push   $0xa
     681:	68 c9 41 00 00       	push   $0x41c9
     686:	56                   	push   %esi
     687:	e8 8a 34 00 00       	call   3b16 <write>
     68c:	83 c4 10             	add    $0x10,%esp
     68f:	83 f8 0a             	cmp    $0xa,%eax
     692:	0f 85 d6 00 00 00    	jne    76e <writetest+0x15e>
  for(i = 0; i < 100; i++){
     698:	83 c3 01             	add    $0x1,%ebx
     69b:	83 fb 64             	cmp    $0x64,%ebx
     69e:	75 c0                	jne    660 <writetest+0x50>
  printf(stdout, "writes ok\n");
     6a0:	83 ec 08             	sub    $0x8,%esp
     6a3:	68 d4 41 00 00       	push   $0x41d4
     6a8:	ff 35 1c 62 00 00    	push   0x621c
     6ae:	e8 ad 35 00 00       	call   3c60 <printf>
  close(fd);
     6b3:	89 34 24             	mov    %esi,(%esp)
     6b6:	e8 63 34 00 00       	call   3b1e <close>
  fd = open("small", O_RDONLY);
     6bb:	5b                   	pop    %ebx
     6bc:	5e                   	pop    %esi
     6bd:	6a 00                	push   $0x0
     6bf:	68 81 41 00 00       	push   $0x4181
     6c4:	e8 6d 34 00 00       	call   3b36 <open>
  if(fd >= 0){
     6c9:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     6cc:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     6ce:	85 c0                	test   %eax,%eax
     6d0:	0f 88 b1 00 00 00    	js     787 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
     6d6:	83 ec 08             	sub    $0x8,%esp
     6d9:	68 df 41 00 00       	push   $0x41df
     6de:	ff 35 1c 62 00 00    	push   0x621c
     6e4:	e8 77 35 00 00       	call   3c60 <printf>
  i = read(fd, buf, 2000);
     6e9:	83 c4 0c             	add    $0xc,%esp
     6ec:	68 d0 07 00 00       	push   $0x7d0
     6f1:	68 60 89 00 00       	push   $0x8960
     6f6:	53                   	push   %ebx
     6f7:	e8 12 34 00 00       	call   3b0e <read>
  if(i == 2000){
     6fc:	83 c4 10             	add    $0x10,%esp
     6ff:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     704:	0f 85 94 00 00 00    	jne    79e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     70a:	83 ec 08             	sub    $0x8,%esp
     70d:	68 13 42 00 00       	push   $0x4213
     712:	ff 35 1c 62 00 00    	push   0x621c
     718:	e8 43 35 00 00       	call   3c60 <printf>
  close(fd);
     71d:	89 1c 24             	mov    %ebx,(%esp)
     720:	e8 f9 33 00 00       	call   3b1e <close>
  if(unlink("small") < 0){
     725:	c7 04 24 81 41 00 00 	movl   $0x4181,(%esp)
     72c:	e8 15 34 00 00       	call   3b46 <unlink>
     731:	83 c4 10             	add    $0x10,%esp
     734:	85 c0                	test   %eax,%eax
     736:	78 7d                	js     7b5 <writetest+0x1a5>
  printf(stdout, "small file test ok\n");
     738:	83 ec 08             	sub    $0x8,%esp
     73b:	68 3b 42 00 00       	push   $0x423b
     740:	ff 35 1c 62 00 00    	push   0x621c
     746:	e8 15 35 00 00       	call   3c60 <printf>
}
     74b:	83 c4 10             	add    $0x10,%esp
     74e:	8d 65 f8             	lea    -0x8(%ebp),%esp
     751:	5b                   	pop    %ebx
     752:	5e                   	pop    %esi
     753:	5d                   	pop    %ebp
     754:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     755:	83 ec 04             	sub    $0x4,%esp
     758:	53                   	push   %ebx
     759:	68 80 50 00 00       	push   $0x5080
     75e:	ff 35 1c 62 00 00    	push   0x621c
     764:	e8 f7 34 00 00       	call   3c60 <printf>
      exit();
     769:	e8 88 33 00 00       	call   3af6 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     76e:	83 ec 04             	sub    $0x4,%esp
     771:	53                   	push   %ebx
     772:	68 a4 50 00 00       	push   $0x50a4
     777:	ff 35 1c 62 00 00    	push   0x621c
     77d:	e8 de 34 00 00       	call   3c60 <printf>
      exit();
     782:	e8 6f 33 00 00       	call   3af6 <exit>
    printf(stdout, "error: open small failed!\n");
     787:	51                   	push   %ecx
     788:	51                   	push   %ecx
     789:	68 f8 41 00 00       	push   $0x41f8
     78e:	ff 35 1c 62 00 00    	push   0x621c
     794:	e8 c7 34 00 00       	call   3c60 <printf>
    exit();
     799:	e8 58 33 00 00       	call   3af6 <exit>
    printf(stdout, "read failed\n");
     79e:	52                   	push   %edx
     79f:	52                   	push   %edx
     7a0:	68 3f 45 00 00       	push   $0x453f
     7a5:	ff 35 1c 62 00 00    	push   0x621c
     7ab:	e8 b0 34 00 00       	call   3c60 <printf>
    exit();
     7b0:	e8 41 33 00 00       	call   3af6 <exit>
    printf(stdout, "unlink small failed\n");
     7b5:	50                   	push   %eax
     7b6:	50                   	push   %eax
     7b7:	68 26 42 00 00       	push   $0x4226
     7bc:	ff 35 1c 62 00 00    	push   0x621c
     7c2:	e8 99 34 00 00       	call   3c60 <printf>
    exit();
     7c7:	e8 2a 33 00 00       	call   3af6 <exit>
    printf(stdout, "error: creat small failed!\n");
     7cc:	50                   	push   %eax
     7cd:	50                   	push   %eax
     7ce:	68 a2 41 00 00       	push   $0x41a2
     7d3:	ff 35 1c 62 00 00    	push   0x621c
     7d9:	e8 82 34 00 00       	call   3c60 <printf>
    exit();
     7de:	e8 13 33 00 00       	call   3af6 <exit>
     7e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000007f0 <writetest1>:
{
     7f0:	55                   	push   %ebp
     7f1:	89 e5                	mov    %esp,%ebp
     7f3:	56                   	push   %esi
     7f4:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     7f5:	83 ec 08             	sub    $0x8,%esp
     7f8:	68 4f 42 00 00       	push   $0x424f
     7fd:	ff 35 1c 62 00 00    	push   0x621c
     803:	e8 58 34 00 00       	call   3c60 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     808:	58                   	pop    %eax
     809:	5a                   	pop    %edx
     80a:	68 02 02 00 00       	push   $0x202
     80f:	68 c9 42 00 00       	push   $0x42c9
     814:	e8 1d 33 00 00       	call   3b36 <open>
  if(fd < 0){
     819:	83 c4 10             	add    $0x10,%esp
     81c:	85 c0                	test   %eax,%eax
     81e:	0f 88 61 01 00 00    	js     985 <writetest1+0x195>
     824:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     826:	31 db                	xor    %ebx,%ebx
     828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     82f:	90                   	nop
    if(write(fd, buf, 512) != 512){
     830:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     833:	89 1d 60 89 00 00    	mov    %ebx,0x8960
    if(write(fd, buf, 512) != 512){
     839:	68 00 02 00 00       	push   $0x200
     83e:	68 60 89 00 00       	push   $0x8960
     843:	56                   	push   %esi
     844:	e8 cd 32 00 00       	call   3b16 <write>
     849:	83 c4 10             	add    $0x10,%esp
     84c:	3d 00 02 00 00       	cmp    $0x200,%eax
     851:	0f 85 b3 00 00 00    	jne    90a <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
     857:	83 c3 01             	add    $0x1,%ebx
     85a:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     860:	75 ce                	jne    830 <writetest1+0x40>
  close(fd);
     862:	83 ec 0c             	sub    $0xc,%esp
     865:	56                   	push   %esi
     866:	e8 b3 32 00 00       	call   3b1e <close>
  fd = open("big", O_RDONLY);
     86b:	5b                   	pop    %ebx
     86c:	5e                   	pop    %esi
     86d:	6a 00                	push   $0x0
     86f:	68 c9 42 00 00       	push   $0x42c9
     874:	e8 bd 32 00 00       	call   3b36 <open>
  if(fd < 0){
     879:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     87c:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     87e:	85 c0                	test   %eax,%eax
     880:	0f 88 e8 00 00 00    	js     96e <writetest1+0x17e>
  n = 0;
     886:	31 f6                	xor    %esi,%esi
     888:	eb 1d                	jmp    8a7 <writetest1+0xb7>
     88a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     890:	3d 00 02 00 00       	cmp    $0x200,%eax
     895:	0f 85 9f 00 00 00    	jne    93a <writetest1+0x14a>
    if(((int*)buf)[0] != n){
     89b:	a1 60 89 00 00       	mov    0x8960,%eax
     8a0:	39 f0                	cmp    %esi,%eax
     8a2:	75 7f                	jne    923 <writetest1+0x133>
    n++;
     8a4:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
     8a7:	83 ec 04             	sub    $0x4,%esp
     8aa:	68 00 02 00 00       	push   $0x200
     8af:	68 60 89 00 00       	push   $0x8960
     8b4:	53                   	push   %ebx
     8b5:	e8 54 32 00 00       	call   3b0e <read>
    if(i == 0){
     8ba:	83 c4 10             	add    $0x10,%esp
     8bd:	85 c0                	test   %eax,%eax
     8bf:	75 cf                	jne    890 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     8c1:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     8c7:	0f 84 86 00 00 00    	je     953 <writetest1+0x163>
  close(fd);
     8cd:	83 ec 0c             	sub    $0xc,%esp
     8d0:	53                   	push   %ebx
     8d1:	e8 48 32 00 00       	call   3b1e <close>
  if(unlink("big") < 0){
     8d6:	c7 04 24 c9 42 00 00 	movl   $0x42c9,(%esp)
     8dd:	e8 64 32 00 00       	call   3b46 <unlink>
     8e2:	83 c4 10             	add    $0x10,%esp
     8e5:	85 c0                	test   %eax,%eax
     8e7:	0f 88 af 00 00 00    	js     99c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
     8ed:	83 ec 08             	sub    $0x8,%esp
     8f0:	68 f0 42 00 00       	push   $0x42f0
     8f5:	ff 35 1c 62 00 00    	push   0x621c
     8fb:	e8 60 33 00 00       	call   3c60 <printf>
}
     900:	83 c4 10             	add    $0x10,%esp
     903:	8d 65 f8             	lea    -0x8(%ebp),%esp
     906:	5b                   	pop    %ebx
     907:	5e                   	pop    %esi
     908:	5d                   	pop    %ebp
     909:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     90a:	83 ec 04             	sub    $0x4,%esp
     90d:	53                   	push   %ebx
     90e:	68 79 42 00 00       	push   $0x4279
     913:	ff 35 1c 62 00 00    	push   0x621c
     919:	e8 42 33 00 00       	call   3c60 <printf>
      exit();
     91e:	e8 d3 31 00 00       	call   3af6 <exit>
      printf(stdout, "read content of block %d is %d\n",
     923:	50                   	push   %eax
     924:	56                   	push   %esi
     925:	68 c8 50 00 00       	push   $0x50c8
     92a:	ff 35 1c 62 00 00    	push   0x621c
     930:	e8 2b 33 00 00       	call   3c60 <printf>
      exit();
     935:	e8 bc 31 00 00       	call   3af6 <exit>
      printf(stdout, "read failed %d\n", i);
     93a:	83 ec 04             	sub    $0x4,%esp
     93d:	50                   	push   %eax
     93e:	68 cd 42 00 00       	push   $0x42cd
     943:	ff 35 1c 62 00 00    	push   0x621c
     949:	e8 12 33 00 00       	call   3c60 <printf>
      exit();
     94e:	e8 a3 31 00 00       	call   3af6 <exit>
        printf(stdout, "read only %d blocks from big", n);
     953:	52                   	push   %edx
     954:	68 8b 00 00 00       	push   $0x8b
     959:	68 b0 42 00 00       	push   $0x42b0
     95e:	ff 35 1c 62 00 00    	push   0x621c
     964:	e8 f7 32 00 00       	call   3c60 <printf>
        exit();
     969:	e8 88 31 00 00       	call   3af6 <exit>
    printf(stdout, "error: open big failed!\n");
     96e:	51                   	push   %ecx
     96f:	51                   	push   %ecx
     970:	68 97 42 00 00       	push   $0x4297
     975:	ff 35 1c 62 00 00    	push   0x621c
     97b:	e8 e0 32 00 00       	call   3c60 <printf>
    exit();
     980:	e8 71 31 00 00       	call   3af6 <exit>
    printf(stdout, "error: creat big failed!\n");
     985:	50                   	push   %eax
     986:	50                   	push   %eax
     987:	68 5f 42 00 00       	push   $0x425f
     98c:	ff 35 1c 62 00 00    	push   0x621c
     992:	e8 c9 32 00 00       	call   3c60 <printf>
    exit();
     997:	e8 5a 31 00 00       	call   3af6 <exit>
    printf(stdout, "unlink big failed\n");
     99c:	50                   	push   %eax
     99d:	50                   	push   %eax
     99e:	68 dd 42 00 00       	push   $0x42dd
     9a3:	ff 35 1c 62 00 00    	push   0x621c
     9a9:	e8 b2 32 00 00       	call   3c60 <printf>
    exit();
     9ae:	e8 43 31 00 00       	call   3af6 <exit>
     9b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009c0 <createtest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	53                   	push   %ebx
  name[2] = '\0';
     9c4:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     9c9:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     9cc:	68 e8 50 00 00       	push   $0x50e8
     9d1:	ff 35 1c 62 00 00    	push   0x621c
     9d7:	e8 84 32 00 00       	call   3c60 <printf>
  name[0] = 'a';
     9dc:	c6 05 50 89 00 00 61 	movb   $0x61,0x8950
  name[2] = '\0';
     9e3:	83 c4 10             	add    $0x10,%esp
     9e6:	c6 05 52 89 00 00 00 	movb   $0x0,0x8952
  for(i = 0; i < 52; i++){
     9ed:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     9f0:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     9f3:	88 1d 51 89 00 00    	mov    %bl,0x8951
  for(i = 0; i < 52; i++){
     9f9:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     9fc:	68 02 02 00 00       	push   $0x202
     a01:	68 50 89 00 00       	push   $0x8950
     a06:	e8 2b 31 00 00       	call   3b36 <open>
    close(fd);
     a0b:	89 04 24             	mov    %eax,(%esp)
     a0e:	e8 0b 31 00 00       	call   3b1e <close>
  for(i = 0; i < 52; i++){
     a13:	83 c4 10             	add    $0x10,%esp
     a16:	80 fb 64             	cmp    $0x64,%bl
     a19:	75 d5                	jne    9f0 <createtest+0x30>
  name[0] = 'a';
     a1b:	c6 05 50 89 00 00 61 	movb   $0x61,0x8950
  name[2] = '\0';
     a22:	bb 30 00 00 00       	mov    $0x30,%ebx
     a27:	c6 05 52 89 00 00 00 	movb   $0x0,0x8952
  for(i = 0; i < 52; i++){
     a2e:	66 90                	xchg   %ax,%ax
    unlink(name);
     a30:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     a33:	88 1d 51 89 00 00    	mov    %bl,0x8951
  for(i = 0; i < 52; i++){
     a39:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     a3c:	68 50 89 00 00       	push   $0x8950
     a41:	e8 00 31 00 00       	call   3b46 <unlink>
  for(i = 0; i < 52; i++){
     a46:	83 c4 10             	add    $0x10,%esp
     a49:	80 fb 64             	cmp    $0x64,%bl
     a4c:	75 e2                	jne    a30 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     a4e:	83 ec 08             	sub    $0x8,%esp
     a51:	68 10 51 00 00       	push   $0x5110
     a56:	ff 35 1c 62 00 00    	push   0x621c
     a5c:	e8 ff 31 00 00       	call   3c60 <printf>
}
     a61:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a64:	83 c4 10             	add    $0x10,%esp
     a67:	c9                   	leave  
     a68:	c3                   	ret    
     a69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a70 <dirtest>:
{
     a70:	55                   	push   %ebp
     a71:	89 e5                	mov    %esp,%ebp
     a73:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     a76:	68 fe 42 00 00       	push   $0x42fe
     a7b:	ff 35 1c 62 00 00    	push   0x621c
     a81:	e8 da 31 00 00       	call   3c60 <printf>
  if(mkdir("dir0") < 0){
     a86:	c7 04 24 0a 43 00 00 	movl   $0x430a,(%esp)
     a8d:	e8 cc 30 00 00       	call   3b5e <mkdir>
     a92:	83 c4 10             	add    $0x10,%esp
     a95:	85 c0                	test   %eax,%eax
     a97:	78 58                	js     af1 <dirtest+0x81>
  if(chdir("dir0") < 0){
     a99:	83 ec 0c             	sub    $0xc,%esp
     a9c:	68 0a 43 00 00       	push   $0x430a
     aa1:	e8 c0 30 00 00       	call   3b66 <chdir>
     aa6:	83 c4 10             	add    $0x10,%esp
     aa9:	85 c0                	test   %eax,%eax
     aab:	0f 88 85 00 00 00    	js     b36 <dirtest+0xc6>
  if(chdir("..") < 0){
     ab1:	83 ec 0c             	sub    $0xc,%esp
     ab4:	68 af 48 00 00       	push   $0x48af
     ab9:	e8 a8 30 00 00       	call   3b66 <chdir>
     abe:	83 c4 10             	add    $0x10,%esp
     ac1:	85 c0                	test   %eax,%eax
     ac3:	78 5a                	js     b1f <dirtest+0xaf>
  if(unlink("dir0") < 0){
     ac5:	83 ec 0c             	sub    $0xc,%esp
     ac8:	68 0a 43 00 00       	push   $0x430a
     acd:	e8 74 30 00 00       	call   3b46 <unlink>
     ad2:	83 c4 10             	add    $0x10,%esp
     ad5:	85 c0                	test   %eax,%eax
     ad7:	78 2f                	js     b08 <dirtest+0x98>
  printf(stdout, "mkdir test ok\n");
     ad9:	83 ec 08             	sub    $0x8,%esp
     adc:	68 47 43 00 00       	push   $0x4347
     ae1:	ff 35 1c 62 00 00    	push   0x621c
     ae7:	e8 74 31 00 00       	call   3c60 <printf>
}
     aec:	83 c4 10             	add    $0x10,%esp
     aef:	c9                   	leave  
     af0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     af1:	50                   	push   %eax
     af2:	50                   	push   %eax
     af3:	68 3a 40 00 00       	push   $0x403a
     af8:	ff 35 1c 62 00 00    	push   0x621c
     afe:	e8 5d 31 00 00       	call   3c60 <printf>
    exit();
     b03:	e8 ee 2f 00 00       	call   3af6 <exit>
    printf(stdout, "unlink dir0 failed\n");
     b08:	50                   	push   %eax
     b09:	50                   	push   %eax
     b0a:	68 33 43 00 00       	push   $0x4333
     b0f:	ff 35 1c 62 00 00    	push   0x621c
     b15:	e8 46 31 00 00       	call   3c60 <printf>
    exit();
     b1a:	e8 d7 2f 00 00       	call   3af6 <exit>
    printf(stdout, "chdir .. failed\n");
     b1f:	52                   	push   %edx
     b20:	52                   	push   %edx
     b21:	68 22 43 00 00       	push   $0x4322
     b26:	ff 35 1c 62 00 00    	push   0x621c
     b2c:	e8 2f 31 00 00       	call   3c60 <printf>
    exit();
     b31:	e8 c0 2f 00 00       	call   3af6 <exit>
    printf(stdout, "chdir dir0 failed\n");
     b36:	51                   	push   %ecx
     b37:	51                   	push   %ecx
     b38:	68 0f 43 00 00       	push   $0x430f
     b3d:	ff 35 1c 62 00 00    	push   0x621c
     b43:	e8 18 31 00 00       	call   3c60 <printf>
    exit();
     b48:	e8 a9 2f 00 00       	call   3af6 <exit>
     b4d:	8d 76 00             	lea    0x0(%esi),%esi

00000b50 <exectest>:
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     b56:	68 56 43 00 00       	push   $0x4356
     b5b:	ff 35 1c 62 00 00    	push   0x621c
     b61:	e8 fa 30 00 00       	call   3c60 <printf>
  if(exec("echo", echoargv) < 0){
     b66:	5a                   	pop    %edx
     b67:	59                   	pop    %ecx
     b68:	68 20 62 00 00       	push   $0x6220
     b6d:	68 1f 41 00 00       	push   $0x411f
     b72:	e8 b7 2f 00 00       	call   3b2e <exec>
     b77:	83 c4 10             	add    $0x10,%esp
     b7a:	85 c0                	test   %eax,%eax
     b7c:	78 02                	js     b80 <exectest+0x30>
}
     b7e:	c9                   	leave  
     b7f:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     b80:	50                   	push   %eax
     b81:	50                   	push   %eax
     b82:	68 61 43 00 00       	push   $0x4361
     b87:	ff 35 1c 62 00 00    	push   0x621c
     b8d:	e8 ce 30 00 00       	call   3c60 <printf>
    exit();
     b92:	e8 5f 2f 00 00       	call   3af6 <exit>
     b97:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b9e:	66 90                	xchg   %ax,%ax

00000ba0 <pipe1>:
{
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	57                   	push   %edi
     ba4:	56                   	push   %esi
  if(pipe(fds) != 0){
     ba5:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     ba8:	53                   	push   %ebx
     ba9:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     bac:	50                   	push   %eax
     bad:	e8 54 2f 00 00       	call   3b06 <pipe>
     bb2:	83 c4 10             	add    $0x10,%esp
     bb5:	85 c0                	test   %eax,%eax
     bb7:	0f 85 34 01 00 00    	jne    cf1 <pipe1+0x151>
  pid = fork();
     bbd:	e8 2c 2f 00 00       	call   3aee <fork>
  if(pid == 0){
     bc2:	85 c0                	test   %eax,%eax
     bc4:	0f 84 85 00 00 00    	je     c4f <pipe1+0xaf>
  } else if(pid > 0){
     bca:	0f 8e 34 01 00 00    	jle    d04 <pipe1+0x164>
    close(fds[1]);
     bd0:	83 ec 0c             	sub    $0xc,%esp
     bd3:	ff 75 e4             	push   -0x1c(%ebp)
  seq = 0;
     bd6:	31 db                	xor    %ebx,%ebx
    cc = 1;
     bd8:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
     bdd:	e8 3c 2f 00 00       	call   3b1e <close>
    total = 0;
     be2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     be9:	83 c4 10             	add    $0x10,%esp
     bec:	83 ec 04             	sub    $0x4,%esp
     bef:	56                   	push   %esi
     bf0:	68 60 89 00 00       	push   $0x8960
     bf5:	ff 75 e0             	push   -0x20(%ebp)
     bf8:	e8 11 2f 00 00       	call   3b0e <read>
     bfd:	83 c4 10             	add    $0x10,%esp
     c00:	89 c7                	mov    %eax,%edi
     c02:	85 c0                	test   %eax,%eax
     c04:	0f 8e a3 00 00 00    	jle    cad <pipe1+0x10d>
     c0a:	8d 0c 1f             	lea    (%edi,%ebx,1),%ecx
      for(i = 0; i < n; i++){
     c0d:	31 c0                	xor    %eax,%eax
     c0f:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     c10:	89 da                	mov    %ebx,%edx
     c12:	83 c3 01             	add    $0x1,%ebx
     c15:	38 90 60 89 00 00    	cmp    %dl,0x8960(%eax)
     c1b:	75 18                	jne    c35 <pipe1+0x95>
      for(i = 0; i < n; i++){
     c1d:	83 c0 01             	add    $0x1,%eax
     c20:	39 d9                	cmp    %ebx,%ecx
     c22:	75 ec                	jne    c10 <pipe1+0x70>
      cc = cc * 2;
     c24:	01 f6                	add    %esi,%esi
     c26:	b8 00 20 00 00       	mov    $0x2000,%eax
      total += n;
     c2b:	01 7d d4             	add    %edi,-0x2c(%ebp)
     c2e:	39 c6                	cmp    %eax,%esi
     c30:	0f 4f f0             	cmovg  %eax,%esi
     c33:	eb b7                	jmp    bec <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
     c35:	83 ec 08             	sub    $0x8,%esp
     c38:	68 90 43 00 00       	push   $0x4390
     c3d:	6a 01                	push   $0x1
     c3f:	e8 1c 30 00 00       	call   3c60 <printf>
     c44:	83 c4 10             	add    $0x10,%esp
}
     c47:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c4a:	5b                   	pop    %ebx
     c4b:	5e                   	pop    %esi
     c4c:	5f                   	pop    %edi
     c4d:	5d                   	pop    %ebp
     c4e:	c3                   	ret    
    close(fds[0]);
     c4f:	83 ec 0c             	sub    $0xc,%esp
     c52:	ff 75 e0             	push   -0x20(%ebp)
  seq = 0;
     c55:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     c57:	e8 c2 2e 00 00       	call   3b1e <close>
     c5c:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     c5f:	31 c0                	xor    %eax,%eax
     c61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        buf[i] = seq++;
     c68:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
     c6b:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     c6e:	88 90 5f 89 00 00    	mov    %dl,0x895f(%eax)
      for(i = 0; i < 1033; i++)
     c74:	3d 09 04 00 00       	cmp    $0x409,%eax
     c79:	75 ed                	jne    c68 <pipe1+0xc8>
      if(write(fds[1], buf, 1033) != 1033){
     c7b:	83 ec 04             	sub    $0x4,%esp
        buf[i] = seq++;
     c7e:	81 c3 09 04 00 00    	add    $0x409,%ebx
      if(write(fds[1], buf, 1033) != 1033){
     c84:	68 09 04 00 00       	push   $0x409
     c89:	68 60 89 00 00       	push   $0x8960
     c8e:	ff 75 e4             	push   -0x1c(%ebp)
     c91:	e8 80 2e 00 00       	call   3b16 <write>
     c96:	83 c4 10             	add    $0x10,%esp
     c99:	3d 09 04 00 00       	cmp    $0x409,%eax
     c9e:	75 77                	jne    d17 <pipe1+0x177>
    for(n = 0; n < 5; n++){
     ca0:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     ca6:	75 b7                	jne    c5f <pipe1+0xbf>
    exit();
     ca8:	e8 49 2e 00 00       	call   3af6 <exit>
    if(total != 5 * 1033){
     cad:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     cb4:	75 26                	jne    cdc <pipe1+0x13c>
    close(fds[0]);
     cb6:	83 ec 0c             	sub    $0xc,%esp
     cb9:	ff 75 e0             	push   -0x20(%ebp)
     cbc:	e8 5d 2e 00 00       	call   3b1e <close>
    wait();
     cc1:	e8 38 2e 00 00       	call   3afe <wait>
  printf(1, "pipe1 ok\n");
     cc6:	5a                   	pop    %edx
     cc7:	59                   	pop    %ecx
     cc8:	68 b5 43 00 00       	push   $0x43b5
     ccd:	6a 01                	push   $0x1
     ccf:	e8 8c 2f 00 00       	call   3c60 <printf>
     cd4:	83 c4 10             	add    $0x10,%esp
     cd7:	e9 6b ff ff ff       	jmp    c47 <pipe1+0xa7>
      printf(1, "pipe1 oops 3 total %d\n", total);
     cdc:	53                   	push   %ebx
     cdd:	ff 75 d4             	push   -0x2c(%ebp)
     ce0:	68 9e 43 00 00       	push   $0x439e
     ce5:	6a 01                	push   $0x1
     ce7:	e8 74 2f 00 00       	call   3c60 <printf>
      exit();
     cec:	e8 05 2e 00 00       	call   3af6 <exit>
    printf(1, "pipe() failed\n");
     cf1:	57                   	push   %edi
     cf2:	57                   	push   %edi
     cf3:	68 73 43 00 00       	push   $0x4373
     cf8:	6a 01                	push   $0x1
     cfa:	e8 61 2f 00 00       	call   3c60 <printf>
    exit();
     cff:	e8 f2 2d 00 00       	call   3af6 <exit>
    printf(1, "fork() failed\n");
     d04:	50                   	push   %eax
     d05:	50                   	push   %eax
     d06:	68 bf 43 00 00       	push   $0x43bf
     d0b:	6a 01                	push   $0x1
     d0d:	e8 4e 2f 00 00       	call   3c60 <printf>
    exit();
     d12:	e8 df 2d 00 00       	call   3af6 <exit>
        printf(1, "pipe1 oops 1\n");
     d17:	56                   	push   %esi
     d18:	56                   	push   %esi
     d19:	68 82 43 00 00       	push   $0x4382
     d1e:	6a 01                	push   $0x1
     d20:	e8 3b 2f 00 00       	call   3c60 <printf>
        exit();
     d25:	e8 cc 2d 00 00       	call   3af6 <exit>
     d2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d30 <preempt>:
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	57                   	push   %edi
     d34:	56                   	push   %esi
     d35:	53                   	push   %ebx
     d36:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     d39:	68 ce 43 00 00       	push   $0x43ce
     d3e:	6a 01                	push   $0x1
     d40:	e8 1b 2f 00 00       	call   3c60 <printf>
  pid1 = fork();
     d45:	e8 a4 2d 00 00       	call   3aee <fork>
  if(pid1 == 0)
     d4a:	83 c4 10             	add    $0x10,%esp
     d4d:	85 c0                	test   %eax,%eax
     d4f:	75 07                	jne    d58 <preempt+0x28>
    for(;;)
     d51:	eb fe                	jmp    d51 <preempt+0x21>
     d53:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d57:	90                   	nop
     d58:	89 c3                	mov    %eax,%ebx
  pid2 = fork();
     d5a:	e8 8f 2d 00 00       	call   3aee <fork>
     d5f:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     d61:	85 c0                	test   %eax,%eax
     d63:	75 0b                	jne    d70 <preempt+0x40>
    for(;;)
     d65:	eb fe                	jmp    d65 <preempt+0x35>
     d67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d6e:	66 90                	xchg   %ax,%ax
  pipe(pfds);
     d70:	83 ec 0c             	sub    $0xc,%esp
     d73:	8d 45 e0             	lea    -0x20(%ebp),%eax
     d76:	50                   	push   %eax
     d77:	e8 8a 2d 00 00       	call   3b06 <pipe>
  pid3 = fork();
     d7c:	e8 6d 2d 00 00       	call   3aee <fork>
  if(pid3 == 0){
     d81:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     d84:	89 c7                	mov    %eax,%edi
  if(pid3 == 0){
     d86:	85 c0                	test   %eax,%eax
     d88:	75 3e                	jne    dc8 <preempt+0x98>
    close(pfds[0]);
     d8a:	83 ec 0c             	sub    $0xc,%esp
     d8d:	ff 75 e0             	push   -0x20(%ebp)
     d90:	e8 89 2d 00 00       	call   3b1e <close>
    if(write(pfds[1], "x", 1) != 1)
     d95:	83 c4 0c             	add    $0xc,%esp
     d98:	6a 01                	push   $0x1
     d9a:	68 93 49 00 00       	push   $0x4993
     d9f:	ff 75 e4             	push   -0x1c(%ebp)
     da2:	e8 6f 2d 00 00       	call   3b16 <write>
     da7:	83 c4 10             	add    $0x10,%esp
     daa:	83 f8 01             	cmp    $0x1,%eax
     dad:	0f 85 b8 00 00 00    	jne    e6b <preempt+0x13b>
    close(pfds[1]);
     db3:	83 ec 0c             	sub    $0xc,%esp
     db6:	ff 75 e4             	push   -0x1c(%ebp)
     db9:	e8 60 2d 00 00       	call   3b1e <close>
     dbe:	83 c4 10             	add    $0x10,%esp
    for(;;)
     dc1:	eb fe                	jmp    dc1 <preempt+0x91>
     dc3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     dc7:	90                   	nop
  close(pfds[1]);
     dc8:	83 ec 0c             	sub    $0xc,%esp
     dcb:	ff 75 e4             	push   -0x1c(%ebp)
     dce:	e8 4b 2d 00 00       	call   3b1e <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     dd3:	83 c4 0c             	add    $0xc,%esp
     dd6:	68 00 20 00 00       	push   $0x2000
     ddb:	68 60 89 00 00       	push   $0x8960
     de0:	ff 75 e0             	push   -0x20(%ebp)
     de3:	e8 26 2d 00 00       	call   3b0e <read>
     de8:	83 c4 10             	add    $0x10,%esp
     deb:	83 f8 01             	cmp    $0x1,%eax
     dee:	75 67                	jne    e57 <preempt+0x127>
  close(pfds[0]);
     df0:	83 ec 0c             	sub    $0xc,%esp
     df3:	ff 75 e0             	push   -0x20(%ebp)
     df6:	e8 23 2d 00 00       	call   3b1e <close>
  printf(1, "kill... ");
     dfb:	58                   	pop    %eax
     dfc:	5a                   	pop    %edx
     dfd:	68 ff 43 00 00       	push   $0x43ff
     e02:	6a 01                	push   $0x1
     e04:	e8 57 2e 00 00       	call   3c60 <printf>
  kill(pid1);
     e09:	89 1c 24             	mov    %ebx,(%esp)
     e0c:	e8 15 2d 00 00       	call   3b26 <kill>
  kill(pid2);
     e11:	89 34 24             	mov    %esi,(%esp)
     e14:	e8 0d 2d 00 00       	call   3b26 <kill>
  kill(pid3);
     e19:	89 3c 24             	mov    %edi,(%esp)
     e1c:	e8 05 2d 00 00       	call   3b26 <kill>
  printf(1, "wait... ");
     e21:	59                   	pop    %ecx
     e22:	5b                   	pop    %ebx
     e23:	68 08 44 00 00       	push   $0x4408
     e28:	6a 01                	push   $0x1
     e2a:	e8 31 2e 00 00       	call   3c60 <printf>
  wait();
     e2f:	e8 ca 2c 00 00       	call   3afe <wait>
  wait();
     e34:	e8 c5 2c 00 00       	call   3afe <wait>
  wait();
     e39:	e8 c0 2c 00 00       	call   3afe <wait>
  printf(1, "preempt ok\n");
     e3e:	5e                   	pop    %esi
     e3f:	5f                   	pop    %edi
     e40:	68 11 44 00 00       	push   $0x4411
     e45:	6a 01                	push   $0x1
     e47:	e8 14 2e 00 00       	call   3c60 <printf>
     e4c:	83 c4 10             	add    $0x10,%esp
}
     e4f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e52:	5b                   	pop    %ebx
     e53:	5e                   	pop    %esi
     e54:	5f                   	pop    %edi
     e55:	5d                   	pop    %ebp
     e56:	c3                   	ret    
    printf(1, "preempt read error");
     e57:	83 ec 08             	sub    $0x8,%esp
     e5a:	68 ec 43 00 00       	push   $0x43ec
     e5f:	6a 01                	push   $0x1
     e61:	e8 fa 2d 00 00       	call   3c60 <printf>
     e66:	83 c4 10             	add    $0x10,%esp
     e69:	eb e4                	jmp    e4f <preempt+0x11f>
      printf(1, "preempt write error");
     e6b:	83 ec 08             	sub    $0x8,%esp
     e6e:	68 d8 43 00 00       	push   $0x43d8
     e73:	6a 01                	push   $0x1
     e75:	e8 e6 2d 00 00       	call   3c60 <printf>
     e7a:	83 c4 10             	add    $0x10,%esp
     e7d:	e9 31 ff ff ff       	jmp    db3 <preempt+0x83>
     e82:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e90 <exitwait>:
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	56                   	push   %esi
     e94:	be 64 00 00 00       	mov    $0x64,%esi
     e99:	53                   	push   %ebx
     e9a:	eb 14                	jmp    eb0 <exitwait+0x20>
     e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     ea0:	74 68                	je     f0a <exitwait+0x7a>
      if(wait() != pid){
     ea2:	e8 57 2c 00 00       	call   3afe <wait>
     ea7:	39 d8                	cmp    %ebx,%eax
     ea9:	75 2d                	jne    ed8 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     eab:	83 ee 01             	sub    $0x1,%esi
     eae:	74 41                	je     ef1 <exitwait+0x61>
    pid = fork();
     eb0:	e8 39 2c 00 00       	call   3aee <fork>
     eb5:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     eb7:	85 c0                	test   %eax,%eax
     eb9:	79 e5                	jns    ea0 <exitwait+0x10>
      printf(1, "fork failed\n");
     ebb:	83 ec 08             	sub    $0x8,%esp
     ebe:	68 7b 4f 00 00       	push   $0x4f7b
     ec3:	6a 01                	push   $0x1
     ec5:	e8 96 2d 00 00       	call   3c60 <printf>
      return;
     eca:	83 c4 10             	add    $0x10,%esp
}
     ecd:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ed0:	5b                   	pop    %ebx
     ed1:	5e                   	pop    %esi
     ed2:	5d                   	pop    %ebp
     ed3:	c3                   	ret    
     ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     ed8:	83 ec 08             	sub    $0x8,%esp
     edb:	68 1d 44 00 00       	push   $0x441d
     ee0:	6a 01                	push   $0x1
     ee2:	e8 79 2d 00 00       	call   3c60 <printf>
        return;
     ee7:	83 c4 10             	add    $0x10,%esp
}
     eea:	8d 65 f8             	lea    -0x8(%ebp),%esp
     eed:	5b                   	pop    %ebx
     eee:	5e                   	pop    %esi
     eef:	5d                   	pop    %ebp
     ef0:	c3                   	ret    
  printf(1, "exitwait ok\n");
     ef1:	83 ec 08             	sub    $0x8,%esp
     ef4:	68 2d 44 00 00       	push   $0x442d
     ef9:	6a 01                	push   $0x1
     efb:	e8 60 2d 00 00       	call   3c60 <printf>
     f00:	83 c4 10             	add    $0x10,%esp
}
     f03:	8d 65 f8             	lea    -0x8(%ebp),%esp
     f06:	5b                   	pop    %ebx
     f07:	5e                   	pop    %esi
     f08:	5d                   	pop    %ebp
     f09:	c3                   	ret    
      exit();
     f0a:	e8 e7 2b 00 00       	call   3af6 <exit>
     f0f:	90                   	nop

00000f10 <mem>:
{
     f10:	55                   	push   %ebp
     f11:	89 e5                	mov    %esp,%ebp
     f13:	56                   	push   %esi
     f14:	31 f6                	xor    %esi,%esi
     f16:	53                   	push   %ebx
  printf(1, "mem test\n");
     f17:	83 ec 08             	sub    $0x8,%esp
     f1a:	68 3a 44 00 00       	push   $0x443a
     f1f:	6a 01                	push   $0x1
     f21:	e8 3a 2d 00 00       	call   3c60 <printf>
  ppid = getpid();
     f26:	e8 4b 2c 00 00       	call   3b76 <getpid>
     f2b:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
     f2d:	e8 bc 2b 00 00       	call   3aee <fork>
     f32:	83 c4 10             	add    $0x10,%esp
     f35:	85 c0                	test   %eax,%eax
     f37:	74 0b                	je     f44 <mem+0x34>
     f39:	e9 8a 00 00 00       	jmp    fc8 <mem+0xb8>
     f3e:	66 90                	xchg   %ax,%ax
      *(char**)m2 = m1;
     f40:	89 30                	mov    %esi,(%eax)
     f42:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
     f44:	83 ec 0c             	sub    $0xc,%esp
     f47:	68 11 27 00 00       	push   $0x2711
     f4c:	e8 3f 2f 00 00       	call   3e90 <malloc>
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	75 e8                	jne    f40 <mem+0x30>
    while(m1){
     f58:	85 f6                	test   %esi,%esi
     f5a:	74 18                	je     f74 <mem+0x64>
     f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     f60:	89 f0                	mov    %esi,%eax
      free(m1);
     f62:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     f65:	8b 36                	mov    (%esi),%esi
      free(m1);
     f67:	50                   	push   %eax
     f68:	e8 93 2e 00 00       	call   3e00 <free>
    while(m1){
     f6d:	83 c4 10             	add    $0x10,%esp
     f70:	85 f6                	test   %esi,%esi
     f72:	75 ec                	jne    f60 <mem+0x50>
    m1 = malloc(1024*20);
     f74:	83 ec 0c             	sub    $0xc,%esp
     f77:	68 00 50 00 00       	push   $0x5000
     f7c:	e8 0f 2f 00 00       	call   3e90 <malloc>
    if(m1 == 0){
     f81:	83 c4 10             	add    $0x10,%esp
     f84:	85 c0                	test   %eax,%eax
     f86:	74 20                	je     fa8 <mem+0x98>
    free(m1);
     f88:	83 ec 0c             	sub    $0xc,%esp
     f8b:	50                   	push   %eax
     f8c:	e8 6f 2e 00 00       	call   3e00 <free>
    printf(1, "mem ok\n");
     f91:	58                   	pop    %eax
     f92:	5a                   	pop    %edx
     f93:	68 5e 44 00 00       	push   $0x445e
     f98:	6a 01                	push   $0x1
     f9a:	e8 c1 2c 00 00       	call   3c60 <printf>
    exit();
     f9f:	e8 52 2b 00 00       	call   3af6 <exit>
     fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     fa8:	83 ec 08             	sub    $0x8,%esp
     fab:	68 44 44 00 00       	push   $0x4444
     fb0:	6a 01                	push   $0x1
     fb2:	e8 a9 2c 00 00       	call   3c60 <printf>
      kill(ppid);
     fb7:	89 1c 24             	mov    %ebx,(%esp)
     fba:	e8 67 2b 00 00       	call   3b26 <kill>
      exit();
     fbf:	e8 32 2b 00 00       	call   3af6 <exit>
     fc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     fc8:	8d 65 f8             	lea    -0x8(%ebp),%esp
     fcb:	5b                   	pop    %ebx
     fcc:	5e                   	pop    %esi
     fcd:	5d                   	pop    %ebp
    wait();
     fce:	e9 2b 2b 00 00       	jmp    3afe <wait>
     fd3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000fe0 <sharedfd>:
{
     fe0:	55                   	push   %ebp
     fe1:	89 e5                	mov    %esp,%ebp
     fe3:	57                   	push   %edi
     fe4:	56                   	push   %esi
     fe5:	53                   	push   %ebx
     fe6:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     fe9:	68 66 44 00 00       	push   $0x4466
     fee:	6a 01                	push   $0x1
     ff0:	e8 6b 2c 00 00       	call   3c60 <printf>
  unlink("sharedfd");
     ff5:	c7 04 24 75 44 00 00 	movl   $0x4475,(%esp)
     ffc:	e8 45 2b 00 00       	call   3b46 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1001:	5b                   	pop    %ebx
    1002:	5e                   	pop    %esi
    1003:	68 02 02 00 00       	push   $0x202
    1008:	68 75 44 00 00       	push   $0x4475
    100d:	e8 24 2b 00 00       	call   3b36 <open>
  if(fd < 0){
    1012:	83 c4 10             	add    $0x10,%esp
    1015:	85 c0                	test   %eax,%eax
    1017:	0f 88 2a 01 00 00    	js     1147 <sharedfd+0x167>
    101d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    101f:	8d 75 de             	lea    -0x22(%ebp),%esi
    1022:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    1027:	e8 c2 2a 00 00       	call   3aee <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    102c:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    102f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1032:	19 c0                	sbb    %eax,%eax
    1034:	83 ec 04             	sub    $0x4,%esp
    1037:	83 e0 f3             	and    $0xfffffff3,%eax
    103a:	6a 0a                	push   $0xa
    103c:	83 c0 70             	add    $0x70,%eax
    103f:	50                   	push   %eax
    1040:	56                   	push   %esi
    1041:	e8 7a 28 00 00       	call   38c0 <memset>
    1046:	83 c4 10             	add    $0x10,%esp
    1049:	eb 0a                	jmp    1055 <sharedfd+0x75>
    104b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    104f:	90                   	nop
  for(i = 0; i < 1000; i++){
    1050:	83 eb 01             	sub    $0x1,%ebx
    1053:	74 26                	je     107b <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    1055:	83 ec 04             	sub    $0x4,%esp
    1058:	6a 0a                	push   $0xa
    105a:	56                   	push   %esi
    105b:	57                   	push   %edi
    105c:	e8 b5 2a 00 00       	call   3b16 <write>
    1061:	83 c4 10             	add    $0x10,%esp
    1064:	83 f8 0a             	cmp    $0xa,%eax
    1067:	74 e7                	je     1050 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    1069:	83 ec 08             	sub    $0x8,%esp
    106c:	68 64 51 00 00       	push   $0x5164
    1071:	6a 01                	push   $0x1
    1073:	e8 e8 2b 00 00       	call   3c60 <printf>
      break;
    1078:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    107b:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    107e:	85 c9                	test   %ecx,%ecx
    1080:	0f 84 f5 00 00 00    	je     117b <sharedfd+0x19b>
    wait();
    1086:	e8 73 2a 00 00       	call   3afe <wait>
  close(fd);
    108b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    108e:	31 db                	xor    %ebx,%ebx
  close(fd);
    1090:	57                   	push   %edi
    1091:	8d 7d e8             	lea    -0x18(%ebp),%edi
    1094:	e8 85 2a 00 00       	call   3b1e <close>
  fd = open("sharedfd", 0);
    1099:	58                   	pop    %eax
    109a:	5a                   	pop    %edx
    109b:	6a 00                	push   $0x0
    109d:	68 75 44 00 00       	push   $0x4475
    10a2:	e8 8f 2a 00 00       	call   3b36 <open>
  if(fd < 0){
    10a7:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
    10aa:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
    10ac:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    10af:	85 c0                	test   %eax,%eax
    10b1:	0f 88 aa 00 00 00    	js     1161 <sharedfd+0x181>
    10b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10be:	66 90                	xchg   %ax,%ax
  while((n = read(fd, buf, sizeof(buf))) > 0){
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    10c6:	6a 0a                	push   $0xa
    10c8:	56                   	push   %esi
    10c9:	ff 75 d0             	push   -0x30(%ebp)
    10cc:	e8 3d 2a 00 00       	call   3b0e <read>
    10d1:	83 c4 10             	add    $0x10,%esp
    10d4:	85 c0                	test   %eax,%eax
    10d6:	7e 28                	jle    1100 <sharedfd+0x120>
    10d8:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    10db:	89 f0                	mov    %esi,%eax
    10dd:	eb 13                	jmp    10f2 <sharedfd+0x112>
    10df:	90                   	nop
        np++;
    10e0:	80 f9 70             	cmp    $0x70,%cl
    10e3:	0f 94 c1             	sete   %cl
    10e6:	0f b6 c9             	movzbl %cl,%ecx
    10e9:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    10eb:	83 c0 01             	add    $0x1,%eax
    10ee:	39 f8                	cmp    %edi,%eax
    10f0:	74 ce                	je     10c0 <sharedfd+0xe0>
      if(buf[i] == 'c')
    10f2:	0f b6 08             	movzbl (%eax),%ecx
    10f5:	80 f9 63             	cmp    $0x63,%cl
    10f8:	75 e6                	jne    10e0 <sharedfd+0x100>
        nc++;
    10fa:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
    10fd:	eb ec                	jmp    10eb <sharedfd+0x10b>
    10ff:	90                   	nop
  close(fd);
    1100:	83 ec 0c             	sub    $0xc,%esp
    1103:	ff 75 d0             	push   -0x30(%ebp)
    1106:	e8 13 2a 00 00       	call   3b1e <close>
  unlink("sharedfd");
    110b:	c7 04 24 75 44 00 00 	movl   $0x4475,(%esp)
    1112:	e8 2f 2a 00 00       	call   3b46 <unlink>
  if(nc == 10000 && np == 10000){
    1117:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    111a:	83 c4 10             	add    $0x10,%esp
    111d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1123:	75 5b                	jne    1180 <sharedfd+0x1a0>
    1125:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    112b:	75 53                	jne    1180 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
    112d:	83 ec 08             	sub    $0x8,%esp
    1130:	68 7e 44 00 00       	push   $0x447e
    1135:	6a 01                	push   $0x1
    1137:	e8 24 2b 00 00       	call   3c60 <printf>
    113c:	83 c4 10             	add    $0x10,%esp
}
    113f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1142:	5b                   	pop    %ebx
    1143:	5e                   	pop    %esi
    1144:	5f                   	pop    %edi
    1145:	5d                   	pop    %ebp
    1146:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    1147:	83 ec 08             	sub    $0x8,%esp
    114a:	68 38 51 00 00       	push   $0x5138
    114f:	6a 01                	push   $0x1
    1151:	e8 0a 2b 00 00       	call   3c60 <printf>
    return;
    1156:	83 c4 10             	add    $0x10,%esp
}
    1159:	8d 65 f4             	lea    -0xc(%ebp),%esp
    115c:	5b                   	pop    %ebx
    115d:	5e                   	pop    %esi
    115e:	5f                   	pop    %edi
    115f:	5d                   	pop    %ebp
    1160:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    1161:	83 ec 08             	sub    $0x8,%esp
    1164:	68 84 51 00 00       	push   $0x5184
    1169:	6a 01                	push   $0x1
    116b:	e8 f0 2a 00 00       	call   3c60 <printf>
    return;
    1170:	83 c4 10             	add    $0x10,%esp
}
    1173:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1176:	5b                   	pop    %ebx
    1177:	5e                   	pop    %esi
    1178:	5f                   	pop    %edi
    1179:	5d                   	pop    %ebp
    117a:	c3                   	ret    
    exit();
    117b:	e8 76 29 00 00       	call   3af6 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1180:	53                   	push   %ebx
    1181:	52                   	push   %edx
    1182:	68 8b 44 00 00       	push   $0x448b
    1187:	6a 01                	push   $0x1
    1189:	e8 d2 2a 00 00       	call   3c60 <printf>
    exit();
    118e:	e8 63 29 00 00       	call   3af6 <exit>
    1193:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    119a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000011a0 <fourfiles>:
{
    11a0:	55                   	push   %ebp
    11a1:	89 e5                	mov    %esp,%ebp
    11a3:	57                   	push   %edi
    11a4:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    11a5:	be a0 44 00 00       	mov    $0x44a0,%esi
{
    11aa:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    11ab:	31 db                	xor    %ebx,%ebx
{
    11ad:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    11b0:	c7 45 d8 a0 44 00 00 	movl   $0x44a0,-0x28(%ebp)
  printf(1, "fourfiles test\n");
    11b7:	68 a6 44 00 00       	push   $0x44a6
    11bc:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    11be:	c7 45 dc e9 45 00 00 	movl   $0x45e9,-0x24(%ebp)
    11c5:	c7 45 e0 ed 45 00 00 	movl   $0x45ed,-0x20(%ebp)
    11cc:	c7 45 e4 a3 44 00 00 	movl   $0x44a3,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    11d3:	e8 88 2a 00 00       	call   3c60 <printf>
    11d8:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    11db:	83 ec 0c             	sub    $0xc,%esp
    11de:	56                   	push   %esi
    11df:	e8 62 29 00 00       	call   3b46 <unlink>
    pid = fork();
    11e4:	e8 05 29 00 00       	call   3aee <fork>
    if(pid < 0){
    11e9:	83 c4 10             	add    $0x10,%esp
    11ec:	85 c0                	test   %eax,%eax
    11ee:	0f 88 64 01 00 00    	js     1358 <fourfiles+0x1b8>
    if(pid == 0){
    11f4:	0f 84 e9 00 00 00    	je     12e3 <fourfiles+0x143>
  for(pi = 0; pi < 4; pi++){
    11fa:	83 c3 01             	add    $0x1,%ebx
    11fd:	83 fb 04             	cmp    $0x4,%ebx
    1200:	74 06                	je     1208 <fourfiles+0x68>
    fname = names[pi];
    1202:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1206:	eb d3                	jmp    11db <fourfiles+0x3b>
    wait();
    1208:	e8 f1 28 00 00       	call   3afe <wait>
  for(i = 0; i < 2; i++){
    120d:	31 f6                	xor    %esi,%esi
    wait();
    120f:	e8 ea 28 00 00       	call   3afe <wait>
    1214:	e8 e5 28 00 00       	call   3afe <wait>
    1219:	e8 e0 28 00 00       	call   3afe <wait>
    fname = names[i];
    121e:	8b 44 b5 d8          	mov    -0x28(%ebp,%esi,4),%eax
    fd = open(fname, 0);
    1222:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    1225:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    1227:	6a 00                	push   $0x0
    1229:	50                   	push   %eax
    fname = names[i];
    122a:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    122d:	e8 04 29 00 00       	call   3b36 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1232:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    1235:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1238:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    123f:	90                   	nop
    1240:	83 ec 04             	sub    $0x4,%esp
    1243:	68 00 20 00 00       	push   $0x2000
    1248:	68 60 89 00 00       	push   $0x8960
    124d:	ff 75 d4             	push   -0x2c(%ebp)
    1250:	e8 b9 28 00 00       	call   3b0e <read>
    1255:	83 c4 10             	add    $0x10,%esp
    1258:	89 c7                	mov    %eax,%edi
    125a:	85 c0                	test   %eax,%eax
    125c:	7e 20                	jle    127e <fourfiles+0xde>
      for(j = 0; j < n; j++){
    125e:	31 c0                	xor    %eax,%eax
        if(buf[j] != '0'+i){
    1260:	83 fe 01             	cmp    $0x1,%esi
    1263:	0f be 88 60 89 00 00 	movsbl 0x8960(%eax),%ecx
    126a:	19 d2                	sbb    %edx,%edx
    126c:	83 c2 31             	add    $0x31,%edx
    126f:	39 d1                	cmp    %edx,%ecx
    1271:	75 5c                	jne    12cf <fourfiles+0x12f>
      for(j = 0; j < n; j++){
    1273:	83 c0 01             	add    $0x1,%eax
    1276:	39 c7                	cmp    %eax,%edi
    1278:	75 e6                	jne    1260 <fourfiles+0xc0>
      total += n;
    127a:	01 fb                	add    %edi,%ebx
    127c:	eb c2                	jmp    1240 <fourfiles+0xa0>
    close(fd);
    127e:	83 ec 0c             	sub    $0xc,%esp
    1281:	ff 75 d4             	push   -0x2c(%ebp)
    1284:	e8 95 28 00 00       	call   3b1e <close>
    if(total != 12*500){
    1289:	83 c4 10             	add    $0x10,%esp
    128c:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1292:	0f 85 d4 00 00 00    	jne    136c <fourfiles+0x1cc>
    unlink(fname);
    1298:	83 ec 0c             	sub    $0xc,%esp
    129b:	ff 75 d0             	push   -0x30(%ebp)
    129e:	e8 a3 28 00 00       	call   3b46 <unlink>
  for(i = 0; i < 2; i++){
    12a3:	83 c4 10             	add    $0x10,%esp
    12a6:	83 fe 01             	cmp    $0x1,%esi
    12a9:	75 1a                	jne    12c5 <fourfiles+0x125>
  printf(1, "fourfiles ok\n");
    12ab:	83 ec 08             	sub    $0x8,%esp
    12ae:	68 e4 44 00 00       	push   $0x44e4
    12b3:	6a 01                	push   $0x1
    12b5:	e8 a6 29 00 00       	call   3c60 <printf>
}
    12ba:	83 c4 10             	add    $0x10,%esp
    12bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12c0:	5b                   	pop    %ebx
    12c1:	5e                   	pop    %esi
    12c2:	5f                   	pop    %edi
    12c3:	5d                   	pop    %ebp
    12c4:	c3                   	ret    
    12c5:	be 01 00 00 00       	mov    $0x1,%esi
    12ca:	e9 4f ff ff ff       	jmp    121e <fourfiles+0x7e>
          printf(1, "wrong char\n");
    12cf:	83 ec 08             	sub    $0x8,%esp
    12d2:	68 c7 44 00 00       	push   $0x44c7
    12d7:	6a 01                	push   $0x1
    12d9:	e8 82 29 00 00       	call   3c60 <printf>
          exit();
    12de:	e8 13 28 00 00       	call   3af6 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    12e3:	83 ec 08             	sub    $0x8,%esp
    12e6:	68 02 02 00 00       	push   $0x202
    12eb:	56                   	push   %esi
    12ec:	e8 45 28 00 00       	call   3b36 <open>
      if(fd < 0){
    12f1:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    12f4:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    12f6:	85 c0                	test   %eax,%eax
    12f8:	78 45                	js     133f <fourfiles+0x19f>
      memset(buf, '0'+pi, 512);
    12fa:	83 ec 04             	sub    $0x4,%esp
    12fd:	83 c3 30             	add    $0x30,%ebx
    1300:	68 00 02 00 00       	push   $0x200
    1305:	53                   	push   %ebx
    1306:	bb 0c 00 00 00       	mov    $0xc,%ebx
    130b:	68 60 89 00 00       	push   $0x8960
    1310:	e8 ab 25 00 00       	call   38c0 <memset>
    1315:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    1318:	83 ec 04             	sub    $0x4,%esp
    131b:	68 f4 01 00 00       	push   $0x1f4
    1320:	68 60 89 00 00       	push   $0x8960
    1325:	56                   	push   %esi
    1326:	e8 eb 27 00 00       	call   3b16 <write>
    132b:	83 c4 10             	add    $0x10,%esp
    132e:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1333:	75 4a                	jne    137f <fourfiles+0x1df>
      for(i = 0; i < 12; i++){
    1335:	83 eb 01             	sub    $0x1,%ebx
    1338:	75 de                	jne    1318 <fourfiles+0x178>
      exit();
    133a:	e8 b7 27 00 00       	call   3af6 <exit>
        printf(1, "create failed\n");
    133f:	51                   	push   %ecx
    1340:	51                   	push   %ecx
    1341:	68 41 47 00 00       	push   $0x4741
    1346:	6a 01                	push   $0x1
    1348:	e8 13 29 00 00       	call   3c60 <printf>
        exit();
    134d:	e8 a4 27 00 00       	call   3af6 <exit>
    1352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
    1358:	83 ec 08             	sub    $0x8,%esp
    135b:	68 7b 4f 00 00       	push   $0x4f7b
    1360:	6a 01                	push   $0x1
    1362:	e8 f9 28 00 00       	call   3c60 <printf>
      exit();
    1367:	e8 8a 27 00 00       	call   3af6 <exit>
      printf(1, "wrong length %d\n", total);
    136c:	50                   	push   %eax
    136d:	53                   	push   %ebx
    136e:	68 d3 44 00 00       	push   $0x44d3
    1373:	6a 01                	push   $0x1
    1375:	e8 e6 28 00 00       	call   3c60 <printf>
      exit();
    137a:	e8 77 27 00 00       	call   3af6 <exit>
          printf(1, "write failed %d\n", n);
    137f:	52                   	push   %edx
    1380:	50                   	push   %eax
    1381:	68 b6 44 00 00       	push   $0x44b6
    1386:	6a 01                	push   $0x1
    1388:	e8 d3 28 00 00       	call   3c60 <printf>
          exit();
    138d:	e8 64 27 00 00       	call   3af6 <exit>
    1392:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000013a0 <createdelete>:
{
    13a0:	55                   	push   %ebp
    13a1:	89 e5                	mov    %esp,%ebp
    13a3:	57                   	push   %edi
    13a4:	56                   	push   %esi
    13a5:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    13a6:	31 db                	xor    %ebx,%ebx
{
    13a8:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    13ab:	68 f2 44 00 00       	push   $0x44f2
    13b0:	6a 01                	push   $0x1
    13b2:	e8 a9 28 00 00       	call   3c60 <printf>
    13b7:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    13ba:	e8 2f 27 00 00       	call   3aee <fork>
    if(pid < 0){
    13bf:	85 c0                	test   %eax,%eax
    13c1:	0f 88 c3 01 00 00    	js     158a <createdelete+0x1ea>
    if(pid == 0){
    13c7:	0f 84 13 01 00 00    	je     14e0 <createdelete+0x140>
  for(pi = 0; pi < 4; pi++){
    13cd:	83 c3 01             	add    $0x1,%ebx
    13d0:	83 fb 04             	cmp    $0x4,%ebx
    13d3:	75 e5                	jne    13ba <createdelete+0x1a>
    wait();
    13d5:	e8 24 27 00 00       	call   3afe <wait>
  for(i = 0; i < N; i++){
    13da:	31 f6                	xor    %esi,%esi
    13dc:	8d 7d c8             	lea    -0x38(%ebp),%edi
    wait();
    13df:	e8 1a 27 00 00       	call   3afe <wait>
    13e4:	e8 15 27 00 00       	call   3afe <wait>
    13e9:	e8 10 27 00 00       	call   3afe <wait>
  name[0] = name[1] = name[2] = 0;
    13ee:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    13f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if((i == 0 || i >= N/2) && fd < 0){
    13f8:	85 f6                	test   %esi,%esi
    13fa:	8d 46 30             	lea    0x30(%esi),%eax
    13fd:	0f 94 c3             	sete   %bl
    1400:	83 fe 09             	cmp    $0x9,%esi
    1403:	88 45 c7             	mov    %al,-0x39(%ebp)
    1406:	0f 9f c0             	setg   %al
    1409:	09 c3                	or     %eax,%ebx
      } else if((i >= 1 && i < N/2) && fd >= 0){
    140b:	8d 46 ff             	lea    -0x1(%esi),%eax
    140e:	89 45 c0             	mov    %eax,-0x40(%ebp)
      if((i == 0 || i >= N/2) && fd < 0){
    1411:	88 5d c6             	mov    %bl,-0x3a(%ebp)
    1414:	bb 70 00 00 00       	mov    $0x70,%ebx
      fd = open(name, 0);
    1419:	83 ec 08             	sub    $0x8,%esp
      name[1] = '0' + i;
    141c:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      name[0] = 'p' + pi;
    1420:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    1423:	6a 00                	push   $0x0
    1425:	57                   	push   %edi
      name[1] = '0' + i;
    1426:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1429:	e8 08 27 00 00       	call   3b36 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    142e:	83 c4 10             	add    $0x10,%esp
    1431:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    1435:	0f 84 85 00 00 00    	je     14c0 <createdelete+0x120>
    143b:	85 c0                	test   %eax,%eax
    143d:	0f 88 32 01 00 00    	js     1575 <createdelete+0x1d5>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1443:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1447:	76 7b                	jbe    14c4 <createdelete+0x124>
        close(fd);
    1449:	83 ec 0c             	sub    $0xc,%esp
    144c:	50                   	push   %eax
    144d:	e8 cc 26 00 00       	call   3b1e <close>
    1452:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    1455:	83 c3 01             	add    $0x1,%ebx
    1458:	80 fb 74             	cmp    $0x74,%bl
    145b:	75 bc                	jne    1419 <createdelete+0x79>
  for(i = 0; i < N; i++){
    145d:	83 c6 01             	add    $0x1,%esi
    1460:	83 fe 14             	cmp    $0x14,%esi
    1463:	75 93                	jne    13f8 <createdelete+0x58>
    1465:	be 70 00 00 00       	mov    $0x70,%esi
    146a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for(pi = 0; pi < 4; pi++){
    1470:	8d 46 c0             	lea    -0x40(%esi),%eax
      name[0] = 'p' + i;
    1473:	bb 04 00 00 00       	mov    $0x4,%ebx
    1478:	88 45 c7             	mov    %al,-0x39(%ebp)
      unlink(name);
    147b:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    147e:	89 f0                	mov    %esi,%eax
      unlink(name);
    1480:	57                   	push   %edi
      name[0] = 'p' + i;
    1481:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1484:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    1488:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    148b:	e8 b6 26 00 00       	call   3b46 <unlink>
    for(pi = 0; pi < 4; pi++){
    1490:	83 c4 10             	add    $0x10,%esp
    1493:	83 eb 01             	sub    $0x1,%ebx
    1496:	75 e3                	jne    147b <createdelete+0xdb>
  for(i = 0; i < N; i++){
    1498:	83 c6 01             	add    $0x1,%esi
    149b:	89 f0                	mov    %esi,%eax
    149d:	3c 84                	cmp    $0x84,%al
    149f:	75 cf                	jne    1470 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    14a1:	83 ec 08             	sub    $0x8,%esp
    14a4:	68 05 45 00 00       	push   $0x4505
    14a9:	6a 01                	push   $0x1
    14ab:	e8 b0 27 00 00       	call   3c60 <printf>
}
    14b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14b3:	5b                   	pop    %ebx
    14b4:	5e                   	pop    %esi
    14b5:	5f                   	pop    %edi
    14b6:	5d                   	pop    %ebp
    14b7:	c3                   	ret    
    14b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14bf:	90                   	nop
      } else if((i >= 1 && i < N/2) && fd >= 0){
    14c0:	85 c0                	test   %eax,%eax
    14c2:	78 91                	js     1455 <createdelete+0xb5>
        printf(1, "oops createdelete %s did exist\n", name);
    14c4:	50                   	push   %eax
    14c5:	57                   	push   %edi
    14c6:	68 d4 51 00 00       	push   $0x51d4
    14cb:	6a 01                	push   $0x1
    14cd:	e8 8e 27 00 00       	call   3c60 <printf>
        exit();
    14d2:	e8 1f 26 00 00       	call   3af6 <exit>
    14d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14de:	66 90                	xchg   %ax,%ax
      name[0] = 'p' + pi;
    14e0:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    14e3:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    14e7:	be 01 00 00 00       	mov    $0x1,%esi
    14ec:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    14ef:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    14f2:	31 db                	xor    %ebx,%ebx
    14f4:	eb 15                	jmp    150b <createdelete+0x16b>
    14f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14fd:	8d 76 00             	lea    0x0(%esi),%esi
      for(i = 0; i < N; i++){
    1500:	83 fe 14             	cmp    $0x14,%esi
    1503:	74 6b                	je     1570 <createdelete+0x1d0>
    1505:	83 c3 01             	add    $0x1,%ebx
    1508:	83 c6 01             	add    $0x1,%esi
        fd = open(name, O_CREATE | O_RDWR);
    150b:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    150e:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    1511:	68 02 02 00 00       	push   $0x202
    1516:	57                   	push   %edi
        name[1] = '0' + i;
    1517:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    151a:	e8 17 26 00 00       	call   3b36 <open>
        if(fd < 0){
    151f:	83 c4 10             	add    $0x10,%esp
    1522:	85 c0                	test   %eax,%eax
    1524:	78 78                	js     159e <createdelete+0x1fe>
        close(fd);
    1526:	83 ec 0c             	sub    $0xc,%esp
    1529:	50                   	push   %eax
    152a:	e8 ef 25 00 00       	call   3b1e <close>
        if(i > 0 && (i % 2 ) == 0){
    152f:	83 c4 10             	add    $0x10,%esp
    1532:	85 db                	test   %ebx,%ebx
    1534:	74 cf                	je     1505 <createdelete+0x165>
    1536:	f6 c3 01             	test   $0x1,%bl
    1539:	75 c5                	jne    1500 <createdelete+0x160>
          if(unlink(name) < 0){
    153b:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    153e:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    1540:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    1541:	d1 f8                	sar    %eax
    1543:	83 c0 30             	add    $0x30,%eax
    1546:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    1549:	e8 f8 25 00 00       	call   3b46 <unlink>
    154e:	83 c4 10             	add    $0x10,%esp
    1551:	85 c0                	test   %eax,%eax
    1553:	79 ab                	jns    1500 <createdelete+0x160>
            printf(1, "unlink failed\n");
    1555:	52                   	push   %edx
    1556:	52                   	push   %edx
    1557:	68 f3 40 00 00       	push   $0x40f3
    155c:	6a 01                	push   $0x1
    155e:	e8 fd 26 00 00       	call   3c60 <printf>
            exit();
    1563:	e8 8e 25 00 00       	call   3af6 <exit>
    1568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    156f:	90                   	nop
      exit();
    1570:	e8 81 25 00 00       	call   3af6 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    1575:	83 ec 04             	sub    $0x4,%esp
    1578:	57                   	push   %edi
    1579:	68 b0 51 00 00       	push   $0x51b0
    157e:	6a 01                	push   $0x1
    1580:	e8 db 26 00 00       	call   3c60 <printf>
        exit();
    1585:	e8 6c 25 00 00       	call   3af6 <exit>
      printf(1, "fork failed\n");
    158a:	83 ec 08             	sub    $0x8,%esp
    158d:	68 7b 4f 00 00       	push   $0x4f7b
    1592:	6a 01                	push   $0x1
    1594:	e8 c7 26 00 00       	call   3c60 <printf>
      exit();
    1599:	e8 58 25 00 00       	call   3af6 <exit>
          printf(1, "create failed\n");
    159e:	83 ec 08             	sub    $0x8,%esp
    15a1:	68 41 47 00 00       	push   $0x4741
    15a6:	6a 01                	push   $0x1
    15a8:	e8 b3 26 00 00       	call   3c60 <printf>
          exit();
    15ad:	e8 44 25 00 00       	call   3af6 <exit>
    15b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000015c0 <unlinkread>:
{
    15c0:	55                   	push   %ebp
    15c1:	89 e5                	mov    %esp,%ebp
    15c3:	56                   	push   %esi
    15c4:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    15c5:	83 ec 08             	sub    $0x8,%esp
    15c8:	68 16 45 00 00       	push   $0x4516
    15cd:	6a 01                	push   $0x1
    15cf:	e8 8c 26 00 00       	call   3c60 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15d4:	5b                   	pop    %ebx
    15d5:	5e                   	pop    %esi
    15d6:	68 02 02 00 00       	push   $0x202
    15db:	68 27 45 00 00       	push   $0x4527
    15e0:	e8 51 25 00 00       	call   3b36 <open>
  if(fd < 0){
    15e5:	83 c4 10             	add    $0x10,%esp
    15e8:	85 c0                	test   %eax,%eax
    15ea:	0f 88 e6 00 00 00    	js     16d6 <unlinkread+0x116>
  write(fd, "hello", 5);
    15f0:	83 ec 04             	sub    $0x4,%esp
    15f3:	89 c3                	mov    %eax,%ebx
    15f5:	6a 05                	push   $0x5
    15f7:	68 4c 45 00 00       	push   $0x454c
    15fc:	50                   	push   %eax
    15fd:	e8 14 25 00 00       	call   3b16 <write>
  close(fd);
    1602:	89 1c 24             	mov    %ebx,(%esp)
    1605:	e8 14 25 00 00       	call   3b1e <close>
  fd = open("unlinkread", O_RDWR);
    160a:	58                   	pop    %eax
    160b:	5a                   	pop    %edx
    160c:	6a 02                	push   $0x2
    160e:	68 27 45 00 00       	push   $0x4527
    1613:	e8 1e 25 00 00       	call   3b36 <open>
  if(fd < 0){
    1618:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    161b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    161d:	85 c0                	test   %eax,%eax
    161f:	0f 88 10 01 00 00    	js     1735 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    1625:	83 ec 0c             	sub    $0xc,%esp
    1628:	68 27 45 00 00       	push   $0x4527
    162d:	e8 14 25 00 00       	call   3b46 <unlink>
    1632:	83 c4 10             	add    $0x10,%esp
    1635:	85 c0                	test   %eax,%eax
    1637:	0f 85 e5 00 00 00    	jne    1722 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    163d:	83 ec 08             	sub    $0x8,%esp
    1640:	68 02 02 00 00       	push   $0x202
    1645:	68 27 45 00 00       	push   $0x4527
    164a:	e8 e7 24 00 00       	call   3b36 <open>
  write(fd1, "yyy", 3);
    164f:	83 c4 0c             	add    $0xc,%esp
    1652:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1654:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1656:	68 84 45 00 00       	push   $0x4584
    165b:	50                   	push   %eax
    165c:	e8 b5 24 00 00       	call   3b16 <write>
  close(fd1);
    1661:	89 34 24             	mov    %esi,(%esp)
    1664:	e8 b5 24 00 00       	call   3b1e <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1669:	83 c4 0c             	add    $0xc,%esp
    166c:	68 00 20 00 00       	push   $0x2000
    1671:	68 60 89 00 00       	push   $0x8960
    1676:	53                   	push   %ebx
    1677:	e8 92 24 00 00       	call   3b0e <read>
    167c:	83 c4 10             	add    $0x10,%esp
    167f:	83 f8 05             	cmp    $0x5,%eax
    1682:	0f 85 87 00 00 00    	jne    170f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    1688:	80 3d 60 89 00 00 68 	cmpb   $0x68,0x8960
    168f:	75 6b                	jne    16fc <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    1691:	83 ec 04             	sub    $0x4,%esp
    1694:	6a 0a                	push   $0xa
    1696:	68 60 89 00 00       	push   $0x8960
    169b:	53                   	push   %ebx
    169c:	e8 75 24 00 00       	call   3b16 <write>
    16a1:	83 c4 10             	add    $0x10,%esp
    16a4:	83 f8 0a             	cmp    $0xa,%eax
    16a7:	75 40                	jne    16e9 <unlinkread+0x129>
  close(fd);
    16a9:	83 ec 0c             	sub    $0xc,%esp
    16ac:	53                   	push   %ebx
    16ad:	e8 6c 24 00 00       	call   3b1e <close>
  unlink("unlinkread");
    16b2:	c7 04 24 27 45 00 00 	movl   $0x4527,(%esp)
    16b9:	e8 88 24 00 00       	call   3b46 <unlink>
  printf(1, "unlinkread ok\n");
    16be:	58                   	pop    %eax
    16bf:	5a                   	pop    %edx
    16c0:	68 cf 45 00 00       	push   $0x45cf
    16c5:	6a 01                	push   $0x1
    16c7:	e8 94 25 00 00       	call   3c60 <printf>
}
    16cc:	83 c4 10             	add    $0x10,%esp
    16cf:	8d 65 f8             	lea    -0x8(%ebp),%esp
    16d2:	5b                   	pop    %ebx
    16d3:	5e                   	pop    %esi
    16d4:	5d                   	pop    %ebp
    16d5:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    16d6:	51                   	push   %ecx
    16d7:	51                   	push   %ecx
    16d8:	68 32 45 00 00       	push   $0x4532
    16dd:	6a 01                	push   $0x1
    16df:	e8 7c 25 00 00       	call   3c60 <printf>
    exit();
    16e4:	e8 0d 24 00 00       	call   3af6 <exit>
    printf(1, "unlinkread write failed\n");
    16e9:	51                   	push   %ecx
    16ea:	51                   	push   %ecx
    16eb:	68 b6 45 00 00       	push   $0x45b6
    16f0:	6a 01                	push   $0x1
    16f2:	e8 69 25 00 00       	call   3c60 <printf>
    exit();
    16f7:	e8 fa 23 00 00       	call   3af6 <exit>
    printf(1, "unlinkread wrong data\n");
    16fc:	53                   	push   %ebx
    16fd:	53                   	push   %ebx
    16fe:	68 9f 45 00 00       	push   $0x459f
    1703:	6a 01                	push   $0x1
    1705:	e8 56 25 00 00       	call   3c60 <printf>
    exit();
    170a:	e8 e7 23 00 00       	call   3af6 <exit>
    printf(1, "unlinkread read failed");
    170f:	56                   	push   %esi
    1710:	56                   	push   %esi
    1711:	68 88 45 00 00       	push   $0x4588
    1716:	6a 01                	push   $0x1
    1718:	e8 43 25 00 00       	call   3c60 <printf>
    exit();
    171d:	e8 d4 23 00 00       	call   3af6 <exit>
    printf(1, "unlink unlinkread failed\n");
    1722:	50                   	push   %eax
    1723:	50                   	push   %eax
    1724:	68 6a 45 00 00       	push   $0x456a
    1729:	6a 01                	push   $0x1
    172b:	e8 30 25 00 00       	call   3c60 <printf>
    exit();
    1730:	e8 c1 23 00 00       	call   3af6 <exit>
    printf(1, "open unlinkread failed\n");
    1735:	50                   	push   %eax
    1736:	50                   	push   %eax
    1737:	68 52 45 00 00       	push   $0x4552
    173c:	6a 01                	push   $0x1
    173e:	e8 1d 25 00 00       	call   3c60 <printf>
    exit();
    1743:	e8 ae 23 00 00       	call   3af6 <exit>
    1748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    174f:	90                   	nop

00001750 <linktest>:
{
    1750:	55                   	push   %ebp
    1751:	89 e5                	mov    %esp,%ebp
    1753:	53                   	push   %ebx
    1754:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    1757:	68 de 45 00 00       	push   $0x45de
    175c:	6a 01                	push   $0x1
    175e:	e8 fd 24 00 00       	call   3c60 <printf>
  unlink("lf1");
    1763:	c7 04 24 e8 45 00 00 	movl   $0x45e8,(%esp)
    176a:	e8 d7 23 00 00       	call   3b46 <unlink>
  unlink("lf2");
    176f:	c7 04 24 ec 45 00 00 	movl   $0x45ec,(%esp)
    1776:	e8 cb 23 00 00       	call   3b46 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    177b:	58                   	pop    %eax
    177c:	5a                   	pop    %edx
    177d:	68 02 02 00 00       	push   $0x202
    1782:	68 e8 45 00 00       	push   $0x45e8
    1787:	e8 aa 23 00 00       	call   3b36 <open>
  if(fd < 0){
    178c:	83 c4 10             	add    $0x10,%esp
    178f:	85 c0                	test   %eax,%eax
    1791:	0f 88 1e 01 00 00    	js     18b5 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    1797:	83 ec 04             	sub    $0x4,%esp
    179a:	89 c3                	mov    %eax,%ebx
    179c:	6a 05                	push   $0x5
    179e:	68 4c 45 00 00       	push   $0x454c
    17a3:	50                   	push   %eax
    17a4:	e8 6d 23 00 00       	call   3b16 <write>
    17a9:	83 c4 10             	add    $0x10,%esp
    17ac:	83 f8 05             	cmp    $0x5,%eax
    17af:	0f 85 98 01 00 00    	jne    194d <linktest+0x1fd>
  close(fd);
    17b5:	83 ec 0c             	sub    $0xc,%esp
    17b8:	53                   	push   %ebx
    17b9:	e8 60 23 00 00       	call   3b1e <close>
  if(link("lf1", "lf2") < 0){
    17be:	5b                   	pop    %ebx
    17bf:	58                   	pop    %eax
    17c0:	68 ec 45 00 00       	push   $0x45ec
    17c5:	68 e8 45 00 00       	push   $0x45e8
    17ca:	e8 87 23 00 00       	call   3b56 <link>
    17cf:	83 c4 10             	add    $0x10,%esp
    17d2:	85 c0                	test   %eax,%eax
    17d4:	0f 88 60 01 00 00    	js     193a <linktest+0x1ea>
  unlink("lf1");
    17da:	83 ec 0c             	sub    $0xc,%esp
    17dd:	68 e8 45 00 00       	push   $0x45e8
    17e2:	e8 5f 23 00 00       	call   3b46 <unlink>
  if(open("lf1", 0) >= 0){
    17e7:	58                   	pop    %eax
    17e8:	5a                   	pop    %edx
    17e9:	6a 00                	push   $0x0
    17eb:	68 e8 45 00 00       	push   $0x45e8
    17f0:	e8 41 23 00 00       	call   3b36 <open>
    17f5:	83 c4 10             	add    $0x10,%esp
    17f8:	85 c0                	test   %eax,%eax
    17fa:	0f 89 27 01 00 00    	jns    1927 <linktest+0x1d7>
  fd = open("lf2", 0);
    1800:	83 ec 08             	sub    $0x8,%esp
    1803:	6a 00                	push   $0x0
    1805:	68 ec 45 00 00       	push   $0x45ec
    180a:	e8 27 23 00 00       	call   3b36 <open>
  if(fd < 0){
    180f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1812:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1814:	85 c0                	test   %eax,%eax
    1816:	0f 88 f8 00 00 00    	js     1914 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    181c:	83 ec 04             	sub    $0x4,%esp
    181f:	68 00 20 00 00       	push   $0x2000
    1824:	68 60 89 00 00       	push   $0x8960
    1829:	50                   	push   %eax
    182a:	e8 df 22 00 00       	call   3b0e <read>
    182f:	83 c4 10             	add    $0x10,%esp
    1832:	83 f8 05             	cmp    $0x5,%eax
    1835:	0f 85 c6 00 00 00    	jne    1901 <linktest+0x1b1>
  close(fd);
    183b:	83 ec 0c             	sub    $0xc,%esp
    183e:	53                   	push   %ebx
    183f:	e8 da 22 00 00       	call   3b1e <close>
  if(link("lf2", "lf2") >= 0){
    1844:	58                   	pop    %eax
    1845:	5a                   	pop    %edx
    1846:	68 ec 45 00 00       	push   $0x45ec
    184b:	68 ec 45 00 00       	push   $0x45ec
    1850:	e8 01 23 00 00       	call   3b56 <link>
    1855:	83 c4 10             	add    $0x10,%esp
    1858:	85 c0                	test   %eax,%eax
    185a:	0f 89 8e 00 00 00    	jns    18ee <linktest+0x19e>
  unlink("lf2");
    1860:	83 ec 0c             	sub    $0xc,%esp
    1863:	68 ec 45 00 00       	push   $0x45ec
    1868:	e8 d9 22 00 00       	call   3b46 <unlink>
  if(link("lf2", "lf1") >= 0){
    186d:	59                   	pop    %ecx
    186e:	5b                   	pop    %ebx
    186f:	68 e8 45 00 00       	push   $0x45e8
    1874:	68 ec 45 00 00       	push   $0x45ec
    1879:	e8 d8 22 00 00       	call   3b56 <link>
    187e:	83 c4 10             	add    $0x10,%esp
    1881:	85 c0                	test   %eax,%eax
    1883:	79 56                	jns    18db <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    1885:	83 ec 08             	sub    $0x8,%esp
    1888:	68 e8 45 00 00       	push   $0x45e8
    188d:	68 b0 48 00 00       	push   $0x48b0
    1892:	e8 bf 22 00 00       	call   3b56 <link>
    1897:	83 c4 10             	add    $0x10,%esp
    189a:	85 c0                	test   %eax,%eax
    189c:	79 2a                	jns    18c8 <linktest+0x178>
  printf(1, "linktest ok\n");
    189e:	83 ec 08             	sub    $0x8,%esp
    18a1:	68 86 46 00 00       	push   $0x4686
    18a6:	6a 01                	push   $0x1
    18a8:	e8 b3 23 00 00       	call   3c60 <printf>
}
    18ad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    18b0:	83 c4 10             	add    $0x10,%esp
    18b3:	c9                   	leave  
    18b4:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    18b5:	50                   	push   %eax
    18b6:	50                   	push   %eax
    18b7:	68 f0 45 00 00       	push   $0x45f0
    18bc:	6a 01                	push   $0x1
    18be:	e8 9d 23 00 00       	call   3c60 <printf>
    exit();
    18c3:	e8 2e 22 00 00       	call   3af6 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    18c8:	50                   	push   %eax
    18c9:	50                   	push   %eax
    18ca:	68 6a 46 00 00       	push   $0x466a
    18cf:	6a 01                	push   $0x1
    18d1:	e8 8a 23 00 00       	call   3c60 <printf>
    exit();
    18d6:	e8 1b 22 00 00       	call   3af6 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    18db:	52                   	push   %edx
    18dc:	52                   	push   %edx
    18dd:	68 1c 52 00 00       	push   $0x521c
    18e2:	6a 01                	push   $0x1
    18e4:	e8 77 23 00 00       	call   3c60 <printf>
    exit();
    18e9:	e8 08 22 00 00       	call   3af6 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    18ee:	50                   	push   %eax
    18ef:	50                   	push   %eax
    18f0:	68 4c 46 00 00       	push   $0x464c
    18f5:	6a 01                	push   $0x1
    18f7:	e8 64 23 00 00       	call   3c60 <printf>
    exit();
    18fc:	e8 f5 21 00 00       	call   3af6 <exit>
    printf(1, "read lf2 failed\n");
    1901:	51                   	push   %ecx
    1902:	51                   	push   %ecx
    1903:	68 3b 46 00 00       	push   $0x463b
    1908:	6a 01                	push   $0x1
    190a:	e8 51 23 00 00       	call   3c60 <printf>
    exit();
    190f:	e8 e2 21 00 00       	call   3af6 <exit>
    printf(1, "open lf2 failed\n");
    1914:	53                   	push   %ebx
    1915:	53                   	push   %ebx
    1916:	68 2a 46 00 00       	push   $0x462a
    191b:	6a 01                	push   $0x1
    191d:	e8 3e 23 00 00       	call   3c60 <printf>
    exit();
    1922:	e8 cf 21 00 00       	call   3af6 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1927:	50                   	push   %eax
    1928:	50                   	push   %eax
    1929:	68 f4 51 00 00       	push   $0x51f4
    192e:	6a 01                	push   $0x1
    1930:	e8 2b 23 00 00       	call   3c60 <printf>
    exit();
    1935:	e8 bc 21 00 00       	call   3af6 <exit>
    printf(1, "link lf1 lf2 failed\n");
    193a:	51                   	push   %ecx
    193b:	51                   	push   %ecx
    193c:	68 15 46 00 00       	push   $0x4615
    1941:	6a 01                	push   $0x1
    1943:	e8 18 23 00 00       	call   3c60 <printf>
    exit();
    1948:	e8 a9 21 00 00       	call   3af6 <exit>
    printf(1, "write lf1 failed\n");
    194d:	50                   	push   %eax
    194e:	50                   	push   %eax
    194f:	68 03 46 00 00       	push   $0x4603
    1954:	6a 01                	push   $0x1
    1956:	e8 05 23 00 00       	call   3c60 <printf>
    exit();
    195b:	e8 96 21 00 00       	call   3af6 <exit>

00001960 <concreate>:
{
    1960:	55                   	push   %ebp
    1961:	89 e5                	mov    %esp,%ebp
    1963:	57                   	push   %edi
    1964:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    1965:	31 f6                	xor    %esi,%esi
{
    1967:	53                   	push   %ebx
    1968:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    196b:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    196e:	68 93 46 00 00       	push   $0x4693
    1973:	6a 01                	push   $0x1
    1975:	e8 e6 22 00 00       	call   3c60 <printf>
  file[0] = 'C';
    197a:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    197e:	83 c4 10             	add    $0x10,%esp
    1981:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    1985:	eb 4c                	jmp    19d3 <concreate+0x73>
    1987:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    198e:	66 90                	xchg   %ax,%ax
    1990:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    1996:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    199b:	0f 83 af 00 00 00    	jae    1a50 <concreate+0xf0>
      fd = open(file, O_CREATE | O_RDWR);
    19a1:	83 ec 08             	sub    $0x8,%esp
    19a4:	68 02 02 00 00       	push   $0x202
    19a9:	53                   	push   %ebx
    19aa:	e8 87 21 00 00       	call   3b36 <open>
      if(fd < 0){
    19af:	83 c4 10             	add    $0x10,%esp
    19b2:	85 c0                	test   %eax,%eax
    19b4:	78 5f                	js     1a15 <concreate+0xb5>
      close(fd);
    19b6:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    19b9:	83 c6 01             	add    $0x1,%esi
      close(fd);
    19bc:	50                   	push   %eax
    19bd:	e8 5c 21 00 00       	call   3b1e <close>
    19c2:	83 c4 10             	add    $0x10,%esp
      wait();
    19c5:	e8 34 21 00 00       	call   3afe <wait>
  for(i = 0; i < 40; i++){
    19ca:	83 fe 28             	cmp    $0x28,%esi
    19cd:	0f 84 9f 00 00 00    	je     1a72 <concreate+0x112>
    unlink(file);
    19d3:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    19d6:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    19d9:	53                   	push   %ebx
    file[1] = '0' + i;
    19da:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    19dd:	e8 64 21 00 00       	call   3b46 <unlink>
    pid = fork();
    19e2:	e8 07 21 00 00       	call   3aee <fork>
    if(pid && (i % 3) == 1){
    19e7:	83 c4 10             	add    $0x10,%esp
    19ea:	85 c0                	test   %eax,%eax
    19ec:	75 a2                	jne    1990 <concreate+0x30>
      link("C0", file);
    19ee:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    19f4:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    19fa:	73 34                	jae    1a30 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    19fc:	83 ec 08             	sub    $0x8,%esp
    19ff:	68 02 02 00 00       	push   $0x202
    1a04:	53                   	push   %ebx
    1a05:	e8 2c 21 00 00       	call   3b36 <open>
      if(fd < 0){
    1a0a:	83 c4 10             	add    $0x10,%esp
    1a0d:	85 c0                	test   %eax,%eax
    1a0f:	0f 89 39 02 00 00    	jns    1c4e <concreate+0x2ee>
        printf(1, "concreate create %s failed\n", file);
    1a15:	83 ec 04             	sub    $0x4,%esp
    1a18:	53                   	push   %ebx
    1a19:	68 a6 46 00 00       	push   $0x46a6
    1a1e:	6a 01                	push   $0x1
    1a20:	e8 3b 22 00 00       	call   3c60 <printf>
        exit();
    1a25:	e8 cc 20 00 00       	call   3af6 <exit>
    1a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("C0", file);
    1a30:	83 ec 08             	sub    $0x8,%esp
    1a33:	53                   	push   %ebx
    1a34:	68 a3 46 00 00       	push   $0x46a3
    1a39:	e8 18 21 00 00       	call   3b56 <link>
    1a3e:	83 c4 10             	add    $0x10,%esp
      exit();
    1a41:	e8 b0 20 00 00       	call   3af6 <exit>
    1a46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1a4d:	8d 76 00             	lea    0x0(%esi),%esi
      link("C0", file);
    1a50:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    1a53:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    1a56:	53                   	push   %ebx
    1a57:	68 a3 46 00 00       	push   $0x46a3
    1a5c:	e8 f5 20 00 00       	call   3b56 <link>
    1a61:	83 c4 10             	add    $0x10,%esp
      wait();
    1a64:	e8 95 20 00 00       	call   3afe <wait>
  for(i = 0; i < 40; i++){
    1a69:	83 fe 28             	cmp    $0x28,%esi
    1a6c:	0f 85 61 ff ff ff    	jne    19d3 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    1a72:	83 ec 04             	sub    $0x4,%esp
    1a75:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1a78:	6a 28                	push   $0x28
    1a7a:	6a 00                	push   $0x0
    1a7c:	50                   	push   %eax
    1a7d:	e8 3e 1e 00 00       	call   38c0 <memset>
  fd = open(".", 0);
    1a82:	5e                   	pop    %esi
    1a83:	5f                   	pop    %edi
    1a84:	6a 00                	push   $0x0
    1a86:	68 b0 48 00 00       	push   $0x48b0
    1a8b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1a8e:	e8 a3 20 00 00       	call   3b36 <open>
  n = 0;
    1a93:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  while(read(fd, &de, sizeof(de)) > 0){
    1a9a:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1a9d:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1a9f:	90                   	nop
    1aa0:	83 ec 04             	sub    $0x4,%esp
    1aa3:	6a 10                	push   $0x10
    1aa5:	57                   	push   %edi
    1aa6:	56                   	push   %esi
    1aa7:	e8 62 20 00 00       	call   3b0e <read>
    1aac:	83 c4 10             	add    $0x10,%esp
    1aaf:	85 c0                	test   %eax,%eax
    1ab1:	7e 3d                	jle    1af0 <concreate+0x190>
    if(de.inum == 0)
    1ab3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1ab8:	74 e6                	je     1aa0 <concreate+0x140>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1aba:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1abe:	75 e0                	jne    1aa0 <concreate+0x140>
    1ac0:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1ac4:	75 da                	jne    1aa0 <concreate+0x140>
      i = de.name[1] - '0';
    1ac6:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1aca:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1acd:	83 f8 27             	cmp    $0x27,%eax
    1ad0:	0f 87 60 01 00 00    	ja     1c36 <concreate+0x2d6>
      if(fa[i]){
    1ad6:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1adb:	0f 85 3d 01 00 00    	jne    1c1e <concreate+0x2be>
      n++;
    1ae1:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    1ae5:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1aea:	eb b4                	jmp    1aa0 <concreate+0x140>
    1aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1af0:	83 ec 0c             	sub    $0xc,%esp
    1af3:	56                   	push   %esi
    1af4:	e8 25 20 00 00       	call   3b1e <close>
  if(n != 40){
    1af9:	83 c4 10             	add    $0x10,%esp
    1afc:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1b00:	0f 85 05 01 00 00    	jne    1c0b <concreate+0x2ab>
  for(i = 0; i < 40; i++){
    1b06:	31 f6                	xor    %esi,%esi
    1b08:	eb 4c                	jmp    1b56 <concreate+0x1f6>
    1b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1b10:	85 ff                	test   %edi,%edi
    1b12:	74 05                	je     1b19 <concreate+0x1b9>
    1b14:	83 f8 01             	cmp    $0x1,%eax
    1b17:	74 6c                	je     1b85 <concreate+0x225>
      unlink(file);
    1b19:	83 ec 0c             	sub    $0xc,%esp
    1b1c:	53                   	push   %ebx
    1b1d:	e8 24 20 00 00       	call   3b46 <unlink>
      unlink(file);
    1b22:	89 1c 24             	mov    %ebx,(%esp)
    1b25:	e8 1c 20 00 00       	call   3b46 <unlink>
      unlink(file);
    1b2a:	89 1c 24             	mov    %ebx,(%esp)
    1b2d:	e8 14 20 00 00       	call   3b46 <unlink>
      unlink(file);
    1b32:	89 1c 24             	mov    %ebx,(%esp)
    1b35:	e8 0c 20 00 00       	call   3b46 <unlink>
    1b3a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    1b3d:	85 ff                	test   %edi,%edi
    1b3f:	0f 84 fc fe ff ff    	je     1a41 <concreate+0xe1>
      wait();
    1b45:	e8 b4 1f 00 00       	call   3afe <wait>
  for(i = 0; i < 40; i++){
    1b4a:	83 c6 01             	add    $0x1,%esi
    1b4d:	83 fe 28             	cmp    $0x28,%esi
    1b50:	0f 84 8a 00 00 00    	je     1be0 <concreate+0x280>
    file[1] = '0' + i;
    1b56:	8d 46 30             	lea    0x30(%esi),%eax
    1b59:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1b5c:	e8 8d 1f 00 00       	call   3aee <fork>
    1b61:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1b63:	85 c0                	test   %eax,%eax
    1b65:	0f 88 8c 00 00 00    	js     1bf7 <concreate+0x297>
    if(((i % 3) == 0 && pid == 0) ||
    1b6b:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1b70:	f7 e6                	mul    %esi
    1b72:	89 d0                	mov    %edx,%eax
    1b74:	83 e2 fe             	and    $0xfffffffe,%edx
    1b77:	d1 e8                	shr    %eax
    1b79:	01 c2                	add    %eax,%edx
    1b7b:	89 f0                	mov    %esi,%eax
    1b7d:	29 d0                	sub    %edx,%eax
    1b7f:	89 c1                	mov    %eax,%ecx
    1b81:	09 f9                	or     %edi,%ecx
    1b83:	75 8b                	jne    1b10 <concreate+0x1b0>
      close(open(file, 0));
    1b85:	83 ec 08             	sub    $0x8,%esp
    1b88:	6a 00                	push   $0x0
    1b8a:	53                   	push   %ebx
    1b8b:	e8 a6 1f 00 00       	call   3b36 <open>
    1b90:	89 04 24             	mov    %eax,(%esp)
    1b93:	e8 86 1f 00 00       	call   3b1e <close>
      close(open(file, 0));
    1b98:	58                   	pop    %eax
    1b99:	5a                   	pop    %edx
    1b9a:	6a 00                	push   $0x0
    1b9c:	53                   	push   %ebx
    1b9d:	e8 94 1f 00 00       	call   3b36 <open>
    1ba2:	89 04 24             	mov    %eax,(%esp)
    1ba5:	e8 74 1f 00 00       	call   3b1e <close>
      close(open(file, 0));
    1baa:	59                   	pop    %ecx
    1bab:	58                   	pop    %eax
    1bac:	6a 00                	push   $0x0
    1bae:	53                   	push   %ebx
    1baf:	e8 82 1f 00 00       	call   3b36 <open>
    1bb4:	89 04 24             	mov    %eax,(%esp)
    1bb7:	e8 62 1f 00 00       	call   3b1e <close>
      close(open(file, 0));
    1bbc:	58                   	pop    %eax
    1bbd:	5a                   	pop    %edx
    1bbe:	6a 00                	push   $0x0
    1bc0:	53                   	push   %ebx
    1bc1:	e8 70 1f 00 00       	call   3b36 <open>
    1bc6:	89 04 24             	mov    %eax,(%esp)
    1bc9:	e8 50 1f 00 00       	call   3b1e <close>
    1bce:	83 c4 10             	add    $0x10,%esp
    1bd1:	e9 67 ff ff ff       	jmp    1b3d <concreate+0x1dd>
    1bd6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bdd:	8d 76 00             	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1be0:	83 ec 08             	sub    $0x8,%esp
    1be3:	68 f8 46 00 00       	push   $0x46f8
    1be8:	6a 01                	push   $0x1
    1bea:	e8 71 20 00 00       	call   3c60 <printf>
}
    1bef:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1bf2:	5b                   	pop    %ebx
    1bf3:	5e                   	pop    %esi
    1bf4:	5f                   	pop    %edi
    1bf5:	5d                   	pop    %ebp
    1bf6:	c3                   	ret    
      printf(1, "fork failed\n");
    1bf7:	83 ec 08             	sub    $0x8,%esp
    1bfa:	68 7b 4f 00 00       	push   $0x4f7b
    1bff:	6a 01                	push   $0x1
    1c01:	e8 5a 20 00 00       	call   3c60 <printf>
      exit();
    1c06:	e8 eb 1e 00 00       	call   3af6 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1c0b:	51                   	push   %ecx
    1c0c:	51                   	push   %ecx
    1c0d:	68 40 52 00 00       	push   $0x5240
    1c12:	6a 01                	push   $0x1
    1c14:	e8 47 20 00 00       	call   3c60 <printf>
    exit();
    1c19:	e8 d8 1e 00 00       	call   3af6 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1c1e:	83 ec 04             	sub    $0x4,%esp
    1c21:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1c24:	50                   	push   %eax
    1c25:	68 db 46 00 00       	push   $0x46db
    1c2a:	6a 01                	push   $0x1
    1c2c:	e8 2f 20 00 00       	call   3c60 <printf>
        exit();
    1c31:	e8 c0 1e 00 00       	call   3af6 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1c36:	83 ec 04             	sub    $0x4,%esp
    1c39:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1c3c:	50                   	push   %eax
    1c3d:	68 c2 46 00 00       	push   $0x46c2
    1c42:	6a 01                	push   $0x1
    1c44:	e8 17 20 00 00       	call   3c60 <printf>
        exit();
    1c49:	e8 a8 1e 00 00       	call   3af6 <exit>
      close(fd);
    1c4e:	83 ec 0c             	sub    $0xc,%esp
    1c51:	50                   	push   %eax
    1c52:	e8 c7 1e 00 00       	call   3b1e <close>
    1c57:	83 c4 10             	add    $0x10,%esp
    1c5a:	e9 e2 fd ff ff       	jmp    1a41 <concreate+0xe1>
    1c5f:	90                   	nop

00001c60 <linkunlink>:
{
    1c60:	55                   	push   %ebp
    1c61:	89 e5                	mov    %esp,%ebp
    1c63:	57                   	push   %edi
    1c64:	56                   	push   %esi
    1c65:	53                   	push   %ebx
    1c66:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1c69:	68 06 47 00 00       	push   $0x4706
    1c6e:	6a 01                	push   $0x1
    1c70:	e8 eb 1f 00 00       	call   3c60 <printf>
  unlink("x");
    1c75:	c7 04 24 93 49 00 00 	movl   $0x4993,(%esp)
    1c7c:	e8 c5 1e 00 00       	call   3b46 <unlink>
  pid = fork();
    1c81:	e8 68 1e 00 00       	call   3aee <fork>
  if(pid < 0){
    1c86:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1c89:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1c8c:	85 c0                	test   %eax,%eax
    1c8e:	0f 88 b6 00 00 00    	js     1d4a <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1c94:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1c98:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1c9d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1ca2:	19 ff                	sbb    %edi,%edi
    1ca4:	83 e7 60             	and    $0x60,%edi
    1ca7:	83 c7 01             	add    $0x1,%edi
    1caa:	eb 1e                	jmp    1cca <linkunlink+0x6a>
    1cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1cb0:	83 f8 01             	cmp    $0x1,%eax
    1cb3:	74 7b                	je     1d30 <linkunlink+0xd0>
      unlink("x");
    1cb5:	83 ec 0c             	sub    $0xc,%esp
    1cb8:	68 93 49 00 00       	push   $0x4993
    1cbd:	e8 84 1e 00 00       	call   3b46 <unlink>
    1cc2:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1cc5:	83 eb 01             	sub    $0x1,%ebx
    1cc8:	74 41                	je     1d0b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    1cca:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1cd0:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1cd6:	89 f8                	mov    %edi,%eax
    1cd8:	f7 e6                	mul    %esi
    1cda:	89 d0                	mov    %edx,%eax
    1cdc:	83 e2 fe             	and    $0xfffffffe,%edx
    1cdf:	d1 e8                	shr    %eax
    1ce1:	01 c2                	add    %eax,%edx
    1ce3:	89 f8                	mov    %edi,%eax
    1ce5:	29 d0                	sub    %edx,%eax
    1ce7:	75 c7                	jne    1cb0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1ce9:	83 ec 08             	sub    $0x8,%esp
    1cec:	68 02 02 00 00       	push   $0x202
    1cf1:	68 93 49 00 00       	push   $0x4993
    1cf6:	e8 3b 1e 00 00       	call   3b36 <open>
    1cfb:	89 04 24             	mov    %eax,(%esp)
    1cfe:	e8 1b 1e 00 00       	call   3b1e <close>
    1d03:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1d06:	83 eb 01             	sub    $0x1,%ebx
    1d09:	75 bf                	jne    1cca <linkunlink+0x6a>
  if(pid)
    1d0b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1d0e:	85 c0                	test   %eax,%eax
    1d10:	74 4b                	je     1d5d <linkunlink+0xfd>
    wait();
    1d12:	e8 e7 1d 00 00       	call   3afe <wait>
  printf(1, "linkunlink ok\n");
    1d17:	83 ec 08             	sub    $0x8,%esp
    1d1a:	68 1b 47 00 00       	push   $0x471b
    1d1f:	6a 01                	push   $0x1
    1d21:	e8 3a 1f 00 00       	call   3c60 <printf>
}
    1d26:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1d29:	5b                   	pop    %ebx
    1d2a:	5e                   	pop    %esi
    1d2b:	5f                   	pop    %edi
    1d2c:	5d                   	pop    %ebp
    1d2d:	c3                   	ret    
    1d2e:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    1d30:	83 ec 08             	sub    $0x8,%esp
    1d33:	68 93 49 00 00       	push   $0x4993
    1d38:	68 17 47 00 00       	push   $0x4717
    1d3d:	e8 14 1e 00 00       	call   3b56 <link>
    1d42:	83 c4 10             	add    $0x10,%esp
    1d45:	e9 7b ff ff ff       	jmp    1cc5 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1d4a:	52                   	push   %edx
    1d4b:	52                   	push   %edx
    1d4c:	68 7b 4f 00 00       	push   $0x4f7b
    1d51:	6a 01                	push   $0x1
    1d53:	e8 08 1f 00 00       	call   3c60 <printf>
    exit();
    1d58:	e8 99 1d 00 00       	call   3af6 <exit>
    exit();
    1d5d:	e8 94 1d 00 00       	call   3af6 <exit>
    1d62:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001d70 <bigdir>:
{
    1d70:	55                   	push   %ebp
    1d71:	89 e5                	mov    %esp,%ebp
    1d73:	57                   	push   %edi
    1d74:	56                   	push   %esi
    1d75:	53                   	push   %ebx
    1d76:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1d79:	68 2a 47 00 00       	push   $0x472a
    1d7e:	6a 01                	push   $0x1
    1d80:	e8 db 1e 00 00       	call   3c60 <printf>
  unlink("bd");
    1d85:	c7 04 24 37 47 00 00 	movl   $0x4737,(%esp)
    1d8c:	e8 b5 1d 00 00       	call   3b46 <unlink>
  fd = open("bd", O_CREATE);
    1d91:	5a                   	pop    %edx
    1d92:	59                   	pop    %ecx
    1d93:	68 00 02 00 00       	push   $0x200
    1d98:	68 37 47 00 00       	push   $0x4737
    1d9d:	e8 94 1d 00 00       	call   3b36 <open>
  if(fd < 0){
    1da2:	83 c4 10             	add    $0x10,%esp
    1da5:	85 c0                	test   %eax,%eax
    1da7:	0f 88 de 00 00 00    	js     1e8b <bigdir+0x11b>
  close(fd);
    1dad:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1db0:	31 f6                	xor    %esi,%esi
    1db2:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1db5:	50                   	push   %eax
    1db6:	e8 63 1d 00 00       	call   3b1e <close>
    1dbb:	83 c4 10             	add    $0x10,%esp
    1dbe:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1dc0:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1dc2:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1dc5:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1dc9:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    1dcc:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    1dcd:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1dd0:	68 37 47 00 00       	push   $0x4737
    name[1] = '0' + (i / 64);
    1dd5:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1dd8:	89 f0                	mov    %esi,%eax
    1dda:	83 e0 3f             	and    $0x3f,%eax
    name[3] = '\0';
    1ddd:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[2] = '0' + (i % 64);
    1de1:	83 c0 30             	add    $0x30,%eax
    1de4:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1de7:	e8 6a 1d 00 00       	call   3b56 <link>
    1dec:	83 c4 10             	add    $0x10,%esp
    1def:	89 c3                	mov    %eax,%ebx
    1df1:	85 c0                	test   %eax,%eax
    1df3:	75 6e                	jne    1e63 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1df5:	83 c6 01             	add    $0x1,%esi
    1df8:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1dfe:	75 c0                	jne    1dc0 <bigdir+0x50>
  unlink("bd");
    1e00:	83 ec 0c             	sub    $0xc,%esp
    1e03:	68 37 47 00 00       	push   $0x4737
    1e08:	e8 39 1d 00 00       	call   3b46 <unlink>
    1e0d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1e10:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1e12:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1e15:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1e19:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    1e1c:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    1e1d:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    1e20:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1e24:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1e27:	89 d8                	mov    %ebx,%eax
    1e29:	83 e0 3f             	and    $0x3f,%eax
    1e2c:	83 c0 30             	add    $0x30,%eax
    1e2f:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1e32:	e8 0f 1d 00 00       	call   3b46 <unlink>
    1e37:	83 c4 10             	add    $0x10,%esp
    1e3a:	85 c0                	test   %eax,%eax
    1e3c:	75 39                	jne    1e77 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1e3e:	83 c3 01             	add    $0x1,%ebx
    1e41:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1e47:	75 c7                	jne    1e10 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1e49:	83 ec 08             	sub    $0x8,%esp
    1e4c:	68 79 47 00 00       	push   $0x4779
    1e51:	6a 01                	push   $0x1
    1e53:	e8 08 1e 00 00       	call   3c60 <printf>
    1e58:	83 c4 10             	add    $0x10,%esp
}
    1e5b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1e5e:	5b                   	pop    %ebx
    1e5f:	5e                   	pop    %esi
    1e60:	5f                   	pop    %edi
    1e61:	5d                   	pop    %ebp
    1e62:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1e63:	83 ec 08             	sub    $0x8,%esp
    1e66:	68 50 47 00 00       	push   $0x4750
    1e6b:	6a 01                	push   $0x1
    1e6d:	e8 ee 1d 00 00       	call   3c60 <printf>
      exit();
    1e72:	e8 7f 1c 00 00       	call   3af6 <exit>
      printf(1, "bigdir unlink failed");
    1e77:	83 ec 08             	sub    $0x8,%esp
    1e7a:	68 64 47 00 00       	push   $0x4764
    1e7f:	6a 01                	push   $0x1
    1e81:	e8 da 1d 00 00       	call   3c60 <printf>
      exit();
    1e86:	e8 6b 1c 00 00       	call   3af6 <exit>
    printf(1, "bigdir create failed\n");
    1e8b:	50                   	push   %eax
    1e8c:	50                   	push   %eax
    1e8d:	68 3a 47 00 00       	push   $0x473a
    1e92:	6a 01                	push   $0x1
    1e94:	e8 c7 1d 00 00       	call   3c60 <printf>
    exit();
    1e99:	e8 58 1c 00 00       	call   3af6 <exit>
    1e9e:	66 90                	xchg   %ax,%ax

00001ea0 <subdir>:
{
    1ea0:	55                   	push   %ebp
    1ea1:	89 e5                	mov    %esp,%ebp
    1ea3:	53                   	push   %ebx
    1ea4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1ea7:	68 84 47 00 00       	push   $0x4784
    1eac:	6a 01                	push   $0x1
    1eae:	e8 ad 1d 00 00       	call   3c60 <printf>
  unlink("ff");
    1eb3:	c7 04 24 0d 48 00 00 	movl   $0x480d,(%esp)
    1eba:	e8 87 1c 00 00       	call   3b46 <unlink>
  if(mkdir("dd") != 0){
    1ebf:	c7 04 24 aa 48 00 00 	movl   $0x48aa,(%esp)
    1ec6:	e8 93 1c 00 00       	call   3b5e <mkdir>
    1ecb:	83 c4 10             	add    $0x10,%esp
    1ece:	85 c0                	test   %eax,%eax
    1ed0:	0f 85 b3 05 00 00    	jne    2489 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1ed6:	83 ec 08             	sub    $0x8,%esp
    1ed9:	68 02 02 00 00       	push   $0x202
    1ede:	68 e3 47 00 00       	push   $0x47e3
    1ee3:	e8 4e 1c 00 00       	call   3b36 <open>
  if(fd < 0){
    1ee8:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1eeb:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1eed:	85 c0                	test   %eax,%eax
    1eef:	0f 88 81 05 00 00    	js     2476 <subdir+0x5d6>
  write(fd, "ff", 2);
    1ef5:	83 ec 04             	sub    $0x4,%esp
    1ef8:	6a 02                	push   $0x2
    1efa:	68 0d 48 00 00       	push   $0x480d
    1eff:	50                   	push   %eax
    1f00:	e8 11 1c 00 00       	call   3b16 <write>
  close(fd);
    1f05:	89 1c 24             	mov    %ebx,(%esp)
    1f08:	e8 11 1c 00 00       	call   3b1e <close>
  if(unlink("dd") >= 0){
    1f0d:	c7 04 24 aa 48 00 00 	movl   $0x48aa,(%esp)
    1f14:	e8 2d 1c 00 00       	call   3b46 <unlink>
    1f19:	83 c4 10             	add    $0x10,%esp
    1f1c:	85 c0                	test   %eax,%eax
    1f1e:	0f 89 3f 05 00 00    	jns    2463 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1f24:	83 ec 0c             	sub    $0xc,%esp
    1f27:	68 be 47 00 00       	push   $0x47be
    1f2c:	e8 2d 1c 00 00       	call   3b5e <mkdir>
    1f31:	83 c4 10             	add    $0x10,%esp
    1f34:	85 c0                	test   %eax,%eax
    1f36:	0f 85 14 05 00 00    	jne    2450 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1f3c:	83 ec 08             	sub    $0x8,%esp
    1f3f:	68 02 02 00 00       	push   $0x202
    1f44:	68 e0 47 00 00       	push   $0x47e0
    1f49:	e8 e8 1b 00 00       	call   3b36 <open>
  if(fd < 0){
    1f4e:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1f51:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f53:	85 c0                	test   %eax,%eax
    1f55:	0f 88 24 04 00 00    	js     237f <subdir+0x4df>
  write(fd, "FF", 2);
    1f5b:	83 ec 04             	sub    $0x4,%esp
    1f5e:	6a 02                	push   $0x2
    1f60:	68 01 48 00 00       	push   $0x4801
    1f65:	50                   	push   %eax
    1f66:	e8 ab 1b 00 00       	call   3b16 <write>
  close(fd);
    1f6b:	89 1c 24             	mov    %ebx,(%esp)
    1f6e:	e8 ab 1b 00 00       	call   3b1e <close>
  fd = open("dd/dd/../ff", 0);
    1f73:	58                   	pop    %eax
    1f74:	5a                   	pop    %edx
    1f75:	6a 00                	push   $0x0
    1f77:	68 04 48 00 00       	push   $0x4804
    1f7c:	e8 b5 1b 00 00       	call   3b36 <open>
  if(fd < 0){
    1f81:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    1f84:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f86:	85 c0                	test   %eax,%eax
    1f88:	0f 88 de 03 00 00    	js     236c <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1f8e:	83 ec 04             	sub    $0x4,%esp
    1f91:	68 00 20 00 00       	push   $0x2000
    1f96:	68 60 89 00 00       	push   $0x8960
    1f9b:	50                   	push   %eax
    1f9c:	e8 6d 1b 00 00       	call   3b0e <read>
  if(cc != 2 || buf[0] != 'f'){
    1fa1:	83 c4 10             	add    $0x10,%esp
    1fa4:	83 f8 02             	cmp    $0x2,%eax
    1fa7:	0f 85 3a 03 00 00    	jne    22e7 <subdir+0x447>
    1fad:	80 3d 60 89 00 00 66 	cmpb   $0x66,0x8960
    1fb4:	0f 85 2d 03 00 00    	jne    22e7 <subdir+0x447>
  close(fd);
    1fba:	83 ec 0c             	sub    $0xc,%esp
    1fbd:	53                   	push   %ebx
    1fbe:	e8 5b 1b 00 00       	call   3b1e <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1fc3:	59                   	pop    %ecx
    1fc4:	5b                   	pop    %ebx
    1fc5:	68 44 48 00 00       	push   $0x4844
    1fca:	68 e0 47 00 00       	push   $0x47e0
    1fcf:	e8 82 1b 00 00       	call   3b56 <link>
    1fd4:	83 c4 10             	add    $0x10,%esp
    1fd7:	85 c0                	test   %eax,%eax
    1fd9:	0f 85 c6 03 00 00    	jne    23a5 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1fdf:	83 ec 0c             	sub    $0xc,%esp
    1fe2:	68 e0 47 00 00       	push   $0x47e0
    1fe7:	e8 5a 1b 00 00       	call   3b46 <unlink>
    1fec:	83 c4 10             	add    $0x10,%esp
    1fef:	85 c0                	test   %eax,%eax
    1ff1:	0f 85 16 03 00 00    	jne    230d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1ff7:	83 ec 08             	sub    $0x8,%esp
    1ffa:	6a 00                	push   $0x0
    1ffc:	68 e0 47 00 00       	push   $0x47e0
    2001:	e8 30 1b 00 00       	call   3b36 <open>
    2006:	83 c4 10             	add    $0x10,%esp
    2009:	85 c0                	test   %eax,%eax
    200b:	0f 89 2c 04 00 00    	jns    243d <subdir+0x59d>
  if(chdir("dd") != 0){
    2011:	83 ec 0c             	sub    $0xc,%esp
    2014:	68 aa 48 00 00       	push   $0x48aa
    2019:	e8 48 1b 00 00       	call   3b66 <chdir>
    201e:	83 c4 10             	add    $0x10,%esp
    2021:	85 c0                	test   %eax,%eax
    2023:	0f 85 01 04 00 00    	jne    242a <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    2029:	83 ec 0c             	sub    $0xc,%esp
    202c:	68 78 48 00 00       	push   $0x4878
    2031:	e8 30 1b 00 00       	call   3b66 <chdir>
    2036:	83 c4 10             	add    $0x10,%esp
    2039:	85 c0                	test   %eax,%eax
    203b:	0f 85 b9 02 00 00    	jne    22fa <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    2041:	83 ec 0c             	sub    $0xc,%esp
    2044:	68 9e 48 00 00       	push   $0x489e
    2049:	e8 18 1b 00 00       	call   3b66 <chdir>
    204e:	83 c4 10             	add    $0x10,%esp
    2051:	85 c0                	test   %eax,%eax
    2053:	0f 85 a1 02 00 00    	jne    22fa <subdir+0x45a>
  if(chdir("./..") != 0){
    2059:	83 ec 0c             	sub    $0xc,%esp
    205c:	68 ad 48 00 00       	push   $0x48ad
    2061:	e8 00 1b 00 00       	call   3b66 <chdir>
    2066:	83 c4 10             	add    $0x10,%esp
    2069:	85 c0                	test   %eax,%eax
    206b:	0f 85 21 03 00 00    	jne    2392 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    2071:	83 ec 08             	sub    $0x8,%esp
    2074:	6a 00                	push   $0x0
    2076:	68 44 48 00 00       	push   $0x4844
    207b:	e8 b6 1a 00 00       	call   3b36 <open>
  if(fd < 0){
    2080:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    2083:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2085:	85 c0                	test   %eax,%eax
    2087:	0f 88 e0 04 00 00    	js     256d <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    208d:	83 ec 04             	sub    $0x4,%esp
    2090:	68 00 20 00 00       	push   $0x2000
    2095:	68 60 89 00 00       	push   $0x8960
    209a:	50                   	push   %eax
    209b:	e8 6e 1a 00 00       	call   3b0e <read>
    20a0:	83 c4 10             	add    $0x10,%esp
    20a3:	83 f8 02             	cmp    $0x2,%eax
    20a6:	0f 85 ae 04 00 00    	jne    255a <subdir+0x6ba>
  close(fd);
    20ac:	83 ec 0c             	sub    $0xc,%esp
    20af:	53                   	push   %ebx
    20b0:	e8 69 1a 00 00       	call   3b1e <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    20b5:	58                   	pop    %eax
    20b6:	5a                   	pop    %edx
    20b7:	6a 00                	push   $0x0
    20b9:	68 e0 47 00 00       	push   $0x47e0
    20be:	e8 73 1a 00 00       	call   3b36 <open>
    20c3:	83 c4 10             	add    $0x10,%esp
    20c6:	85 c0                	test   %eax,%eax
    20c8:	0f 89 65 02 00 00    	jns    2333 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    20ce:	83 ec 08             	sub    $0x8,%esp
    20d1:	68 02 02 00 00       	push   $0x202
    20d6:	68 f8 48 00 00       	push   $0x48f8
    20db:	e8 56 1a 00 00       	call   3b36 <open>
    20e0:	83 c4 10             	add    $0x10,%esp
    20e3:	85 c0                	test   %eax,%eax
    20e5:	0f 89 35 02 00 00    	jns    2320 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    20eb:	83 ec 08             	sub    $0x8,%esp
    20ee:	68 02 02 00 00       	push   $0x202
    20f3:	68 1d 49 00 00       	push   $0x491d
    20f8:	e8 39 1a 00 00       	call   3b36 <open>
    20fd:	83 c4 10             	add    $0x10,%esp
    2100:	85 c0                	test   %eax,%eax
    2102:	0f 89 0f 03 00 00    	jns    2417 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    2108:	83 ec 08             	sub    $0x8,%esp
    210b:	68 00 02 00 00       	push   $0x200
    2110:	68 aa 48 00 00       	push   $0x48aa
    2115:	e8 1c 1a 00 00       	call   3b36 <open>
    211a:	83 c4 10             	add    $0x10,%esp
    211d:	85 c0                	test   %eax,%eax
    211f:	0f 89 df 02 00 00    	jns    2404 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    2125:	83 ec 08             	sub    $0x8,%esp
    2128:	6a 02                	push   $0x2
    212a:	68 aa 48 00 00       	push   $0x48aa
    212f:	e8 02 1a 00 00       	call   3b36 <open>
    2134:	83 c4 10             	add    $0x10,%esp
    2137:	85 c0                	test   %eax,%eax
    2139:	0f 89 b2 02 00 00    	jns    23f1 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    213f:	83 ec 08             	sub    $0x8,%esp
    2142:	6a 01                	push   $0x1
    2144:	68 aa 48 00 00       	push   $0x48aa
    2149:	e8 e8 19 00 00       	call   3b36 <open>
    214e:	83 c4 10             	add    $0x10,%esp
    2151:	85 c0                	test   %eax,%eax
    2153:	0f 89 85 02 00 00    	jns    23de <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2159:	83 ec 08             	sub    $0x8,%esp
    215c:	68 8c 49 00 00       	push   $0x498c
    2161:	68 f8 48 00 00       	push   $0x48f8
    2166:	e8 eb 19 00 00       	call   3b56 <link>
    216b:	83 c4 10             	add    $0x10,%esp
    216e:	85 c0                	test   %eax,%eax
    2170:	0f 84 55 02 00 00    	je     23cb <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2176:	83 ec 08             	sub    $0x8,%esp
    2179:	68 8c 49 00 00       	push   $0x498c
    217e:	68 1d 49 00 00       	push   $0x491d
    2183:	e8 ce 19 00 00       	call   3b56 <link>
    2188:	83 c4 10             	add    $0x10,%esp
    218b:	85 c0                	test   %eax,%eax
    218d:	0f 84 25 02 00 00    	je     23b8 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2193:	83 ec 08             	sub    $0x8,%esp
    2196:	68 44 48 00 00       	push   $0x4844
    219b:	68 e3 47 00 00       	push   $0x47e3
    21a0:	e8 b1 19 00 00       	call   3b56 <link>
    21a5:	83 c4 10             	add    $0x10,%esp
    21a8:	85 c0                	test   %eax,%eax
    21aa:	0f 84 a9 01 00 00    	je     2359 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    21b0:	83 ec 0c             	sub    $0xc,%esp
    21b3:	68 f8 48 00 00       	push   $0x48f8
    21b8:	e8 a1 19 00 00       	call   3b5e <mkdir>
    21bd:	83 c4 10             	add    $0x10,%esp
    21c0:	85 c0                	test   %eax,%eax
    21c2:	0f 84 7e 01 00 00    	je     2346 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    21c8:	83 ec 0c             	sub    $0xc,%esp
    21cb:	68 1d 49 00 00       	push   $0x491d
    21d0:	e8 89 19 00 00       	call   3b5e <mkdir>
    21d5:	83 c4 10             	add    $0x10,%esp
    21d8:	85 c0                	test   %eax,%eax
    21da:	0f 84 67 03 00 00    	je     2547 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    21e0:	83 ec 0c             	sub    $0xc,%esp
    21e3:	68 44 48 00 00       	push   $0x4844
    21e8:	e8 71 19 00 00       	call   3b5e <mkdir>
    21ed:	83 c4 10             	add    $0x10,%esp
    21f0:	85 c0                	test   %eax,%eax
    21f2:	0f 84 3c 03 00 00    	je     2534 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    21f8:	83 ec 0c             	sub    $0xc,%esp
    21fb:	68 1d 49 00 00       	push   $0x491d
    2200:	e8 41 19 00 00       	call   3b46 <unlink>
    2205:	83 c4 10             	add    $0x10,%esp
    2208:	85 c0                	test   %eax,%eax
    220a:	0f 84 11 03 00 00    	je     2521 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2210:	83 ec 0c             	sub    $0xc,%esp
    2213:	68 f8 48 00 00       	push   $0x48f8
    2218:	e8 29 19 00 00       	call   3b46 <unlink>
    221d:	83 c4 10             	add    $0x10,%esp
    2220:	85 c0                	test   %eax,%eax
    2222:	0f 84 e6 02 00 00    	je     250e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    2228:	83 ec 0c             	sub    $0xc,%esp
    222b:	68 e3 47 00 00       	push   $0x47e3
    2230:	e8 31 19 00 00       	call   3b66 <chdir>
    2235:	83 c4 10             	add    $0x10,%esp
    2238:	85 c0                	test   %eax,%eax
    223a:	0f 84 bb 02 00 00    	je     24fb <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    2240:	83 ec 0c             	sub    $0xc,%esp
    2243:	68 8f 49 00 00       	push   $0x498f
    2248:	e8 19 19 00 00       	call   3b66 <chdir>
    224d:	83 c4 10             	add    $0x10,%esp
    2250:	85 c0                	test   %eax,%eax
    2252:	0f 84 90 02 00 00    	je     24e8 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    2258:	83 ec 0c             	sub    $0xc,%esp
    225b:	68 44 48 00 00       	push   $0x4844
    2260:	e8 e1 18 00 00       	call   3b46 <unlink>
    2265:	83 c4 10             	add    $0x10,%esp
    2268:	85 c0                	test   %eax,%eax
    226a:	0f 85 9d 00 00 00    	jne    230d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    2270:	83 ec 0c             	sub    $0xc,%esp
    2273:	68 e3 47 00 00       	push   $0x47e3
    2278:	e8 c9 18 00 00       	call   3b46 <unlink>
    227d:	83 c4 10             	add    $0x10,%esp
    2280:	85 c0                	test   %eax,%eax
    2282:	0f 85 4d 02 00 00    	jne    24d5 <subdir+0x635>
  if(unlink("dd") == 0){
    2288:	83 ec 0c             	sub    $0xc,%esp
    228b:	68 aa 48 00 00       	push   $0x48aa
    2290:	e8 b1 18 00 00       	call   3b46 <unlink>
    2295:	83 c4 10             	add    $0x10,%esp
    2298:	85 c0                	test   %eax,%eax
    229a:	0f 84 22 02 00 00    	je     24c2 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    22a0:	83 ec 0c             	sub    $0xc,%esp
    22a3:	68 bf 47 00 00       	push   $0x47bf
    22a8:	e8 99 18 00 00       	call   3b46 <unlink>
    22ad:	83 c4 10             	add    $0x10,%esp
    22b0:	85 c0                	test   %eax,%eax
    22b2:	0f 88 f7 01 00 00    	js     24af <subdir+0x60f>
  if(unlink("dd") < 0){
    22b8:	83 ec 0c             	sub    $0xc,%esp
    22bb:	68 aa 48 00 00       	push   $0x48aa
    22c0:	e8 81 18 00 00       	call   3b46 <unlink>
    22c5:	83 c4 10             	add    $0x10,%esp
    22c8:	85 c0                	test   %eax,%eax
    22ca:	0f 88 cc 01 00 00    	js     249c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    22d0:	83 ec 08             	sub    $0x8,%esp
    22d3:	68 8c 4a 00 00       	push   $0x4a8c
    22d8:	6a 01                	push   $0x1
    22da:	e8 81 19 00 00       	call   3c60 <printf>
}
    22df:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    22e2:	83 c4 10             	add    $0x10,%esp
    22e5:	c9                   	leave  
    22e6:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    22e7:	50                   	push   %eax
    22e8:	50                   	push   %eax
    22e9:	68 29 48 00 00       	push   $0x4829
    22ee:	6a 01                	push   $0x1
    22f0:	e8 6b 19 00 00       	call   3c60 <printf>
    exit();
    22f5:	e8 fc 17 00 00       	call   3af6 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    22fa:	50                   	push   %eax
    22fb:	50                   	push   %eax
    22fc:	68 84 48 00 00       	push   $0x4884
    2301:	6a 01                	push   $0x1
    2303:	e8 58 19 00 00       	call   3c60 <printf>
    exit();
    2308:	e8 e9 17 00 00       	call   3af6 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    230d:	50                   	push   %eax
    230e:	50                   	push   %eax
    230f:	68 4f 48 00 00       	push   $0x484f
    2314:	6a 01                	push   $0x1
    2316:	e8 45 19 00 00       	call   3c60 <printf>
    exit();
    231b:	e8 d6 17 00 00       	call   3af6 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    2320:	51                   	push   %ecx
    2321:	51                   	push   %ecx
    2322:	68 01 49 00 00       	push   $0x4901
    2327:	6a 01                	push   $0x1
    2329:	e8 32 19 00 00       	call   3c60 <printf>
    exit();
    232e:	e8 c3 17 00 00       	call   3af6 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2333:	53                   	push   %ebx
    2334:	53                   	push   %ebx
    2335:	68 e4 52 00 00       	push   $0x52e4
    233a:	6a 01                	push   $0x1
    233c:	e8 1f 19 00 00       	call   3c60 <printf>
    exit();
    2341:	e8 b0 17 00 00       	call   3af6 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2346:	51                   	push   %ecx
    2347:	51                   	push   %ecx
    2348:	68 95 49 00 00       	push   $0x4995
    234d:	6a 01                	push   $0x1
    234f:	e8 0c 19 00 00       	call   3c60 <printf>
    exit();
    2354:	e8 9d 17 00 00       	call   3af6 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2359:	53                   	push   %ebx
    235a:	53                   	push   %ebx
    235b:	68 54 53 00 00       	push   $0x5354
    2360:	6a 01                	push   $0x1
    2362:	e8 f9 18 00 00       	call   3c60 <printf>
    exit();
    2367:	e8 8a 17 00 00       	call   3af6 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    236c:	50                   	push   %eax
    236d:	50                   	push   %eax
    236e:	68 10 48 00 00       	push   $0x4810
    2373:	6a 01                	push   $0x1
    2375:	e8 e6 18 00 00       	call   3c60 <printf>
    exit();
    237a:	e8 77 17 00 00       	call   3af6 <exit>
    printf(1, "create dd/dd/ff failed\n");
    237f:	51                   	push   %ecx
    2380:	51                   	push   %ecx
    2381:	68 e9 47 00 00       	push   $0x47e9
    2386:	6a 01                	push   $0x1
    2388:	e8 d3 18 00 00       	call   3c60 <printf>
    exit();
    238d:	e8 64 17 00 00       	call   3af6 <exit>
    printf(1, "chdir ./.. failed\n");
    2392:	50                   	push   %eax
    2393:	50                   	push   %eax
    2394:	68 b2 48 00 00       	push   $0x48b2
    2399:	6a 01                	push   $0x1
    239b:	e8 c0 18 00 00       	call   3c60 <printf>
    exit();
    23a0:	e8 51 17 00 00       	call   3af6 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    23a5:	52                   	push   %edx
    23a6:	52                   	push   %edx
    23a7:	68 9c 52 00 00       	push   $0x529c
    23ac:	6a 01                	push   $0x1
    23ae:	e8 ad 18 00 00       	call   3c60 <printf>
    exit();
    23b3:	e8 3e 17 00 00       	call   3af6 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    23b8:	50                   	push   %eax
    23b9:	50                   	push   %eax
    23ba:	68 30 53 00 00       	push   $0x5330
    23bf:	6a 01                	push   $0x1
    23c1:	e8 9a 18 00 00       	call   3c60 <printf>
    exit();
    23c6:	e8 2b 17 00 00       	call   3af6 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    23cb:	50                   	push   %eax
    23cc:	50                   	push   %eax
    23cd:	68 0c 53 00 00       	push   $0x530c
    23d2:	6a 01                	push   $0x1
    23d4:	e8 87 18 00 00       	call   3c60 <printf>
    exit();
    23d9:	e8 18 17 00 00       	call   3af6 <exit>
    printf(1, "open dd wronly succeeded!\n");
    23de:	50                   	push   %eax
    23df:	50                   	push   %eax
    23e0:	68 71 49 00 00       	push   $0x4971
    23e5:	6a 01                	push   $0x1
    23e7:	e8 74 18 00 00       	call   3c60 <printf>
    exit();
    23ec:	e8 05 17 00 00       	call   3af6 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    23f1:	50                   	push   %eax
    23f2:	50                   	push   %eax
    23f3:	68 58 49 00 00       	push   $0x4958
    23f8:	6a 01                	push   $0x1
    23fa:	e8 61 18 00 00       	call   3c60 <printf>
    exit();
    23ff:	e8 f2 16 00 00       	call   3af6 <exit>
    printf(1, "create dd succeeded!\n");
    2404:	50                   	push   %eax
    2405:	50                   	push   %eax
    2406:	68 42 49 00 00       	push   $0x4942
    240b:	6a 01                	push   $0x1
    240d:	e8 4e 18 00 00       	call   3c60 <printf>
    exit();
    2412:	e8 df 16 00 00       	call   3af6 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2417:	52                   	push   %edx
    2418:	52                   	push   %edx
    2419:	68 26 49 00 00       	push   $0x4926
    241e:	6a 01                	push   $0x1
    2420:	e8 3b 18 00 00       	call   3c60 <printf>
    exit();
    2425:	e8 cc 16 00 00       	call   3af6 <exit>
    printf(1, "chdir dd failed\n");
    242a:	50                   	push   %eax
    242b:	50                   	push   %eax
    242c:	68 67 48 00 00       	push   $0x4867
    2431:	6a 01                	push   $0x1
    2433:	e8 28 18 00 00       	call   3c60 <printf>
    exit();
    2438:	e8 b9 16 00 00       	call   3af6 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    243d:	50                   	push   %eax
    243e:	50                   	push   %eax
    243f:	68 c0 52 00 00       	push   $0x52c0
    2444:	6a 01                	push   $0x1
    2446:	e8 15 18 00 00       	call   3c60 <printf>
    exit();
    244b:	e8 a6 16 00 00       	call   3af6 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    2450:	53                   	push   %ebx
    2451:	53                   	push   %ebx
    2452:	68 c5 47 00 00       	push   $0x47c5
    2457:	6a 01                	push   $0x1
    2459:	e8 02 18 00 00       	call   3c60 <printf>
    exit();
    245e:	e8 93 16 00 00       	call   3af6 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2463:	50                   	push   %eax
    2464:	50                   	push   %eax
    2465:	68 74 52 00 00       	push   $0x5274
    246a:	6a 01                	push   $0x1
    246c:	e8 ef 17 00 00       	call   3c60 <printf>
    exit();
    2471:	e8 80 16 00 00       	call   3af6 <exit>
    printf(1, "create dd/ff failed\n");
    2476:	50                   	push   %eax
    2477:	50                   	push   %eax
    2478:	68 a9 47 00 00       	push   $0x47a9
    247d:	6a 01                	push   $0x1
    247f:	e8 dc 17 00 00       	call   3c60 <printf>
    exit();
    2484:	e8 6d 16 00 00       	call   3af6 <exit>
    printf(1, "subdir mkdir dd failed\n");
    2489:	50                   	push   %eax
    248a:	50                   	push   %eax
    248b:	68 91 47 00 00       	push   $0x4791
    2490:	6a 01                	push   $0x1
    2492:	e8 c9 17 00 00       	call   3c60 <printf>
    exit();
    2497:	e8 5a 16 00 00       	call   3af6 <exit>
    printf(1, "unlink dd failed\n");
    249c:	50                   	push   %eax
    249d:	50                   	push   %eax
    249e:	68 7a 4a 00 00       	push   $0x4a7a
    24a3:	6a 01                	push   $0x1
    24a5:	e8 b6 17 00 00       	call   3c60 <printf>
    exit();
    24aa:	e8 47 16 00 00       	call   3af6 <exit>
    printf(1, "unlink dd/dd failed\n");
    24af:	52                   	push   %edx
    24b0:	52                   	push   %edx
    24b1:	68 65 4a 00 00       	push   $0x4a65
    24b6:	6a 01                	push   $0x1
    24b8:	e8 a3 17 00 00       	call   3c60 <printf>
    exit();
    24bd:	e8 34 16 00 00       	call   3af6 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    24c2:	51                   	push   %ecx
    24c3:	51                   	push   %ecx
    24c4:	68 78 53 00 00       	push   $0x5378
    24c9:	6a 01                	push   $0x1
    24cb:	e8 90 17 00 00       	call   3c60 <printf>
    exit();
    24d0:	e8 21 16 00 00       	call   3af6 <exit>
    printf(1, "unlink dd/ff failed\n");
    24d5:	53                   	push   %ebx
    24d6:	53                   	push   %ebx
    24d7:	68 50 4a 00 00       	push   $0x4a50
    24dc:	6a 01                	push   $0x1
    24de:	e8 7d 17 00 00       	call   3c60 <printf>
    exit();
    24e3:	e8 0e 16 00 00       	call   3af6 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    24e8:	50                   	push   %eax
    24e9:	50                   	push   %eax
    24ea:	68 38 4a 00 00       	push   $0x4a38
    24ef:	6a 01                	push   $0x1
    24f1:	e8 6a 17 00 00       	call   3c60 <printf>
    exit();
    24f6:	e8 fb 15 00 00       	call   3af6 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    24fb:	50                   	push   %eax
    24fc:	50                   	push   %eax
    24fd:	68 20 4a 00 00       	push   $0x4a20
    2502:	6a 01                	push   $0x1
    2504:	e8 57 17 00 00       	call   3c60 <printf>
    exit();
    2509:	e8 e8 15 00 00       	call   3af6 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    250e:	50                   	push   %eax
    250f:	50                   	push   %eax
    2510:	68 04 4a 00 00       	push   $0x4a04
    2515:	6a 01                	push   $0x1
    2517:	e8 44 17 00 00       	call   3c60 <printf>
    exit();
    251c:	e8 d5 15 00 00       	call   3af6 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2521:	50                   	push   %eax
    2522:	50                   	push   %eax
    2523:	68 e8 49 00 00       	push   $0x49e8
    2528:	6a 01                	push   $0x1
    252a:	e8 31 17 00 00       	call   3c60 <printf>
    exit();
    252f:	e8 c2 15 00 00       	call   3af6 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2534:	50                   	push   %eax
    2535:	50                   	push   %eax
    2536:	68 cb 49 00 00       	push   $0x49cb
    253b:	6a 01                	push   $0x1
    253d:	e8 1e 17 00 00       	call   3c60 <printf>
    exit();
    2542:	e8 af 15 00 00       	call   3af6 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2547:	52                   	push   %edx
    2548:	52                   	push   %edx
    2549:	68 b0 49 00 00       	push   $0x49b0
    254e:	6a 01                	push   $0x1
    2550:	e8 0b 17 00 00       	call   3c60 <printf>
    exit();
    2555:	e8 9c 15 00 00       	call   3af6 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    255a:	51                   	push   %ecx
    255b:	51                   	push   %ecx
    255c:	68 dd 48 00 00       	push   $0x48dd
    2561:	6a 01                	push   $0x1
    2563:	e8 f8 16 00 00       	call   3c60 <printf>
    exit();
    2568:	e8 89 15 00 00       	call   3af6 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    256d:	53                   	push   %ebx
    256e:	53                   	push   %ebx
    256f:	68 c5 48 00 00       	push   $0x48c5
    2574:	6a 01                	push   $0x1
    2576:	e8 e5 16 00 00       	call   3c60 <printf>
    exit();
    257b:	e8 76 15 00 00       	call   3af6 <exit>

00002580 <bigwrite>:
{
    2580:	55                   	push   %ebp
    2581:	89 e5                	mov    %esp,%ebp
    2583:	56                   	push   %esi
    2584:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2585:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    258a:	83 ec 08             	sub    $0x8,%esp
    258d:	68 97 4a 00 00       	push   $0x4a97
    2592:	6a 01                	push   $0x1
    2594:	e8 c7 16 00 00       	call   3c60 <printf>
  unlink("bigwrite");
    2599:	c7 04 24 a6 4a 00 00 	movl   $0x4aa6,(%esp)
    25a0:	e8 a1 15 00 00       	call   3b46 <unlink>
    25a5:	83 c4 10             	add    $0x10,%esp
    25a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    25af:	90                   	nop
    fd = open("bigwrite", O_CREATE | O_RDWR);
    25b0:	83 ec 08             	sub    $0x8,%esp
    25b3:	68 02 02 00 00       	push   $0x202
    25b8:	68 a6 4a 00 00       	push   $0x4aa6
    25bd:	e8 74 15 00 00       	call   3b36 <open>
    if(fd < 0){
    25c2:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    25c5:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    25c7:	85 c0                	test   %eax,%eax
    25c9:	78 7e                	js     2649 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    25cb:	83 ec 04             	sub    $0x4,%esp
    25ce:	53                   	push   %ebx
    25cf:	68 60 89 00 00       	push   $0x8960
    25d4:	50                   	push   %eax
    25d5:	e8 3c 15 00 00       	call   3b16 <write>
      if(cc != sz){
    25da:	83 c4 10             	add    $0x10,%esp
    25dd:	39 d8                	cmp    %ebx,%eax
    25df:	75 55                	jne    2636 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    25e1:	83 ec 04             	sub    $0x4,%esp
    25e4:	53                   	push   %ebx
    25e5:	68 60 89 00 00       	push   $0x8960
    25ea:	56                   	push   %esi
    25eb:	e8 26 15 00 00       	call   3b16 <write>
      if(cc != sz){
    25f0:	83 c4 10             	add    $0x10,%esp
    25f3:	39 d8                	cmp    %ebx,%eax
    25f5:	75 3f                	jne    2636 <bigwrite+0xb6>
    close(fd);
    25f7:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    25fa:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2600:	56                   	push   %esi
    2601:	e8 18 15 00 00       	call   3b1e <close>
    unlink("bigwrite");
    2606:	c7 04 24 a6 4a 00 00 	movl   $0x4aa6,(%esp)
    260d:	e8 34 15 00 00       	call   3b46 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2612:	83 c4 10             	add    $0x10,%esp
    2615:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    261b:	75 93                	jne    25b0 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    261d:	83 ec 08             	sub    $0x8,%esp
    2620:	68 d9 4a 00 00       	push   $0x4ad9
    2625:	6a 01                	push   $0x1
    2627:	e8 34 16 00 00       	call   3c60 <printf>
}
    262c:	83 c4 10             	add    $0x10,%esp
    262f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2632:	5b                   	pop    %ebx
    2633:	5e                   	pop    %esi
    2634:	5d                   	pop    %ebp
    2635:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    2636:	50                   	push   %eax
    2637:	53                   	push   %ebx
    2638:	68 c7 4a 00 00       	push   $0x4ac7
    263d:	6a 01                	push   $0x1
    263f:	e8 1c 16 00 00       	call   3c60 <printf>
        exit();
    2644:	e8 ad 14 00 00       	call   3af6 <exit>
      printf(1, "cannot create bigwrite\n");
    2649:	83 ec 08             	sub    $0x8,%esp
    264c:	68 af 4a 00 00       	push   $0x4aaf
    2651:	6a 01                	push   $0x1
    2653:	e8 08 16 00 00       	call   3c60 <printf>
      exit();
    2658:	e8 99 14 00 00       	call   3af6 <exit>
    265d:	8d 76 00             	lea    0x0(%esi),%esi

00002660 <bigfile>:
{
    2660:	55                   	push   %ebp
    2661:	89 e5                	mov    %esp,%ebp
    2663:	57                   	push   %edi
    2664:	56                   	push   %esi
    2665:	53                   	push   %ebx
    2666:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    2669:	68 e6 4a 00 00       	push   $0x4ae6
    266e:	6a 01                	push   $0x1
    2670:	e8 eb 15 00 00       	call   3c60 <printf>
  unlink("bigfile");
    2675:	c7 04 24 02 4b 00 00 	movl   $0x4b02,(%esp)
    267c:	e8 c5 14 00 00       	call   3b46 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2681:	58                   	pop    %eax
    2682:	5a                   	pop    %edx
    2683:	68 02 02 00 00       	push   $0x202
    2688:	68 02 4b 00 00       	push   $0x4b02
    268d:	e8 a4 14 00 00       	call   3b36 <open>
  if(fd < 0){
    2692:	83 c4 10             	add    $0x10,%esp
    2695:	85 c0                	test   %eax,%eax
    2697:	0f 88 5e 01 00 00    	js     27fb <bigfile+0x19b>
    269d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    269f:	31 db                	xor    %ebx,%ebx
    26a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    26a8:	83 ec 04             	sub    $0x4,%esp
    26ab:	68 58 02 00 00       	push   $0x258
    26b0:	53                   	push   %ebx
    26b1:	68 60 89 00 00       	push   $0x8960
    26b6:	e8 05 12 00 00       	call   38c0 <memset>
    if(write(fd, buf, 600) != 600){
    26bb:	83 c4 0c             	add    $0xc,%esp
    26be:	68 58 02 00 00       	push   $0x258
    26c3:	68 60 89 00 00       	push   $0x8960
    26c8:	56                   	push   %esi
    26c9:	e8 48 14 00 00       	call   3b16 <write>
    26ce:	83 c4 10             	add    $0x10,%esp
    26d1:	3d 58 02 00 00       	cmp    $0x258,%eax
    26d6:	0f 85 f8 00 00 00    	jne    27d4 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    26dc:	83 c3 01             	add    $0x1,%ebx
    26df:	83 fb 14             	cmp    $0x14,%ebx
    26e2:	75 c4                	jne    26a8 <bigfile+0x48>
  close(fd);
    26e4:	83 ec 0c             	sub    $0xc,%esp
    26e7:	56                   	push   %esi
    26e8:	e8 31 14 00 00       	call   3b1e <close>
  fd = open("bigfile", 0);
    26ed:	5e                   	pop    %esi
    26ee:	5f                   	pop    %edi
    26ef:	6a 00                	push   $0x0
    26f1:	68 02 4b 00 00       	push   $0x4b02
    26f6:	e8 3b 14 00 00       	call   3b36 <open>
  if(fd < 0){
    26fb:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    26fe:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2700:	85 c0                	test   %eax,%eax
    2702:	0f 88 e0 00 00 00    	js     27e8 <bigfile+0x188>
  total = 0;
    2708:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    270a:	31 ff                	xor    %edi,%edi
    270c:	eb 30                	jmp    273e <bigfile+0xde>
    270e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2710:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2715:	0f 85 91 00 00 00    	jne    27ac <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    271b:	89 fa                	mov    %edi,%edx
    271d:	0f be 05 60 89 00 00 	movsbl 0x8960,%eax
    2724:	d1 fa                	sar    %edx
    2726:	39 d0                	cmp    %edx,%eax
    2728:	75 6e                	jne    2798 <bigfile+0x138>
    272a:	0f be 15 8b 8a 00 00 	movsbl 0x8a8b,%edx
    2731:	39 d0                	cmp    %edx,%eax
    2733:	75 63                	jne    2798 <bigfile+0x138>
    total += cc;
    2735:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    273b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    273e:	83 ec 04             	sub    $0x4,%esp
    2741:	68 2c 01 00 00       	push   $0x12c
    2746:	68 60 89 00 00       	push   $0x8960
    274b:	56                   	push   %esi
    274c:	e8 bd 13 00 00       	call   3b0e <read>
    if(cc < 0){
    2751:	83 c4 10             	add    $0x10,%esp
    2754:	85 c0                	test   %eax,%eax
    2756:	78 68                	js     27c0 <bigfile+0x160>
    if(cc == 0)
    2758:	75 b6                	jne    2710 <bigfile+0xb0>
  close(fd);
    275a:	83 ec 0c             	sub    $0xc,%esp
    275d:	56                   	push   %esi
    275e:	e8 bb 13 00 00       	call   3b1e <close>
  if(total != 20*600){
    2763:	83 c4 10             	add    $0x10,%esp
    2766:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    276c:	0f 85 9c 00 00 00    	jne    280e <bigfile+0x1ae>
  unlink("bigfile");
    2772:	83 ec 0c             	sub    $0xc,%esp
    2775:	68 02 4b 00 00       	push   $0x4b02
    277a:	e8 c7 13 00 00       	call   3b46 <unlink>
  printf(1, "bigfile test ok\n");
    277f:	58                   	pop    %eax
    2780:	5a                   	pop    %edx
    2781:	68 91 4b 00 00       	push   $0x4b91
    2786:	6a 01                	push   $0x1
    2788:	e8 d3 14 00 00       	call   3c60 <printf>
}
    278d:	83 c4 10             	add    $0x10,%esp
    2790:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2793:	5b                   	pop    %ebx
    2794:	5e                   	pop    %esi
    2795:	5f                   	pop    %edi
    2796:	5d                   	pop    %ebp
    2797:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2798:	83 ec 08             	sub    $0x8,%esp
    279b:	68 5e 4b 00 00       	push   $0x4b5e
    27a0:	6a 01                	push   $0x1
    27a2:	e8 b9 14 00 00       	call   3c60 <printf>
      exit();
    27a7:	e8 4a 13 00 00       	call   3af6 <exit>
      printf(1, "short read bigfile\n");
    27ac:	83 ec 08             	sub    $0x8,%esp
    27af:	68 4a 4b 00 00       	push   $0x4b4a
    27b4:	6a 01                	push   $0x1
    27b6:	e8 a5 14 00 00       	call   3c60 <printf>
      exit();
    27bb:	e8 36 13 00 00       	call   3af6 <exit>
      printf(1, "read bigfile failed\n");
    27c0:	83 ec 08             	sub    $0x8,%esp
    27c3:	68 35 4b 00 00       	push   $0x4b35
    27c8:	6a 01                	push   $0x1
    27ca:	e8 91 14 00 00       	call   3c60 <printf>
      exit();
    27cf:	e8 22 13 00 00       	call   3af6 <exit>
      printf(1, "write bigfile failed\n");
    27d4:	83 ec 08             	sub    $0x8,%esp
    27d7:	68 0a 4b 00 00       	push   $0x4b0a
    27dc:	6a 01                	push   $0x1
    27de:	e8 7d 14 00 00       	call   3c60 <printf>
      exit();
    27e3:	e8 0e 13 00 00       	call   3af6 <exit>
    printf(1, "cannot open bigfile\n");
    27e8:	53                   	push   %ebx
    27e9:	53                   	push   %ebx
    27ea:	68 20 4b 00 00       	push   $0x4b20
    27ef:	6a 01                	push   $0x1
    27f1:	e8 6a 14 00 00       	call   3c60 <printf>
    exit();
    27f6:	e8 fb 12 00 00       	call   3af6 <exit>
    printf(1, "cannot create bigfile");
    27fb:	50                   	push   %eax
    27fc:	50                   	push   %eax
    27fd:	68 f4 4a 00 00       	push   $0x4af4
    2802:	6a 01                	push   $0x1
    2804:	e8 57 14 00 00       	call   3c60 <printf>
    exit();
    2809:	e8 e8 12 00 00       	call   3af6 <exit>
    printf(1, "read bigfile wrong total\n");
    280e:	51                   	push   %ecx
    280f:	51                   	push   %ecx
    2810:	68 77 4b 00 00       	push   $0x4b77
    2815:	6a 01                	push   $0x1
    2817:	e8 44 14 00 00       	call   3c60 <printf>
    exit();
    281c:	e8 d5 12 00 00       	call   3af6 <exit>
    2821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    282f:	90                   	nop

00002830 <fourteen>:
{
    2830:	55                   	push   %ebp
    2831:	89 e5                	mov    %esp,%ebp
    2833:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    2836:	68 a2 4b 00 00       	push   $0x4ba2
    283b:	6a 01                	push   $0x1
    283d:	e8 1e 14 00 00       	call   3c60 <printf>
  if(mkdir("12345678901234") != 0){
    2842:	c7 04 24 dd 4b 00 00 	movl   $0x4bdd,(%esp)
    2849:	e8 10 13 00 00       	call   3b5e <mkdir>
    284e:	83 c4 10             	add    $0x10,%esp
    2851:	85 c0                	test   %eax,%eax
    2853:	0f 85 97 00 00 00    	jne    28f0 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2859:	83 ec 0c             	sub    $0xc,%esp
    285c:	68 98 53 00 00       	push   $0x5398
    2861:	e8 f8 12 00 00       	call   3b5e <mkdir>
    2866:	83 c4 10             	add    $0x10,%esp
    2869:	85 c0                	test   %eax,%eax
    286b:	0f 85 de 00 00 00    	jne    294f <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2871:	83 ec 08             	sub    $0x8,%esp
    2874:	68 00 02 00 00       	push   $0x200
    2879:	68 e8 53 00 00       	push   $0x53e8
    287e:	e8 b3 12 00 00       	call   3b36 <open>
  if(fd < 0){
    2883:	83 c4 10             	add    $0x10,%esp
    2886:	85 c0                	test   %eax,%eax
    2888:	0f 88 ae 00 00 00    	js     293c <fourteen+0x10c>
  close(fd);
    288e:	83 ec 0c             	sub    $0xc,%esp
    2891:	50                   	push   %eax
    2892:	e8 87 12 00 00       	call   3b1e <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2897:	58                   	pop    %eax
    2898:	5a                   	pop    %edx
    2899:	6a 00                	push   $0x0
    289b:	68 58 54 00 00       	push   $0x5458
    28a0:	e8 91 12 00 00       	call   3b36 <open>
  if(fd < 0){
    28a5:	83 c4 10             	add    $0x10,%esp
    28a8:	85 c0                	test   %eax,%eax
    28aa:	78 7d                	js     2929 <fourteen+0xf9>
  close(fd);
    28ac:	83 ec 0c             	sub    $0xc,%esp
    28af:	50                   	push   %eax
    28b0:	e8 69 12 00 00       	call   3b1e <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    28b5:	c7 04 24 ce 4b 00 00 	movl   $0x4bce,(%esp)
    28bc:	e8 9d 12 00 00       	call   3b5e <mkdir>
    28c1:	83 c4 10             	add    $0x10,%esp
    28c4:	85 c0                	test   %eax,%eax
    28c6:	74 4e                	je     2916 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    28c8:	83 ec 0c             	sub    $0xc,%esp
    28cb:	68 f4 54 00 00       	push   $0x54f4
    28d0:	e8 89 12 00 00       	call   3b5e <mkdir>
    28d5:	83 c4 10             	add    $0x10,%esp
    28d8:	85 c0                	test   %eax,%eax
    28da:	74 27                	je     2903 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    28dc:	83 ec 08             	sub    $0x8,%esp
    28df:	68 ec 4b 00 00       	push   $0x4bec
    28e4:	6a 01                	push   $0x1
    28e6:	e8 75 13 00 00       	call   3c60 <printf>
}
    28eb:	83 c4 10             	add    $0x10,%esp
    28ee:	c9                   	leave  
    28ef:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    28f0:	50                   	push   %eax
    28f1:	50                   	push   %eax
    28f2:	68 b1 4b 00 00       	push   $0x4bb1
    28f7:	6a 01                	push   $0x1
    28f9:	e8 62 13 00 00       	call   3c60 <printf>
    exit();
    28fe:	e8 f3 11 00 00       	call   3af6 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2903:	50                   	push   %eax
    2904:	50                   	push   %eax
    2905:	68 14 55 00 00       	push   $0x5514
    290a:	6a 01                	push   $0x1
    290c:	e8 4f 13 00 00       	call   3c60 <printf>
    exit();
    2911:	e8 e0 11 00 00       	call   3af6 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2916:	52                   	push   %edx
    2917:	52                   	push   %edx
    2918:	68 c4 54 00 00       	push   $0x54c4
    291d:	6a 01                	push   $0x1
    291f:	e8 3c 13 00 00       	call   3c60 <printf>
    exit();
    2924:	e8 cd 11 00 00       	call   3af6 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2929:	51                   	push   %ecx
    292a:	51                   	push   %ecx
    292b:	68 88 54 00 00       	push   $0x5488
    2930:	6a 01                	push   $0x1
    2932:	e8 29 13 00 00       	call   3c60 <printf>
    exit();
    2937:	e8 ba 11 00 00       	call   3af6 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    293c:	51                   	push   %ecx
    293d:	51                   	push   %ecx
    293e:	68 18 54 00 00       	push   $0x5418
    2943:	6a 01                	push   $0x1
    2945:	e8 16 13 00 00       	call   3c60 <printf>
    exit();
    294a:	e8 a7 11 00 00       	call   3af6 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    294f:	50                   	push   %eax
    2950:	50                   	push   %eax
    2951:	68 b8 53 00 00       	push   $0x53b8
    2956:	6a 01                	push   $0x1
    2958:	e8 03 13 00 00       	call   3c60 <printf>
    exit();
    295d:	e8 94 11 00 00       	call   3af6 <exit>
    2962:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002970 <rmdot>:
{
    2970:	55                   	push   %ebp
    2971:	89 e5                	mov    %esp,%ebp
    2973:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2976:	68 f9 4b 00 00       	push   $0x4bf9
    297b:	6a 01                	push   $0x1
    297d:	e8 de 12 00 00       	call   3c60 <printf>
  if(mkdir("dots") != 0){
    2982:	c7 04 24 05 4c 00 00 	movl   $0x4c05,(%esp)
    2989:	e8 d0 11 00 00       	call   3b5e <mkdir>
    298e:	83 c4 10             	add    $0x10,%esp
    2991:	85 c0                	test   %eax,%eax
    2993:	0f 85 b0 00 00 00    	jne    2a49 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2999:	83 ec 0c             	sub    $0xc,%esp
    299c:	68 05 4c 00 00       	push   $0x4c05
    29a1:	e8 c0 11 00 00       	call   3b66 <chdir>
    29a6:	83 c4 10             	add    $0x10,%esp
    29a9:	85 c0                	test   %eax,%eax
    29ab:	0f 85 1d 01 00 00    	jne    2ace <rmdot+0x15e>
  if(unlink(".") == 0){
    29b1:	83 ec 0c             	sub    $0xc,%esp
    29b4:	68 b0 48 00 00       	push   $0x48b0
    29b9:	e8 88 11 00 00       	call   3b46 <unlink>
    29be:	83 c4 10             	add    $0x10,%esp
    29c1:	85 c0                	test   %eax,%eax
    29c3:	0f 84 f2 00 00 00    	je     2abb <rmdot+0x14b>
  if(unlink("..") == 0){
    29c9:	83 ec 0c             	sub    $0xc,%esp
    29cc:	68 af 48 00 00       	push   $0x48af
    29d1:	e8 70 11 00 00       	call   3b46 <unlink>
    29d6:	83 c4 10             	add    $0x10,%esp
    29d9:	85 c0                	test   %eax,%eax
    29db:	0f 84 c7 00 00 00    	je     2aa8 <rmdot+0x138>
  if(chdir("/") != 0){
    29e1:	83 ec 0c             	sub    $0xc,%esp
    29e4:	68 83 40 00 00       	push   $0x4083
    29e9:	e8 78 11 00 00       	call   3b66 <chdir>
    29ee:	83 c4 10             	add    $0x10,%esp
    29f1:	85 c0                	test   %eax,%eax
    29f3:	0f 85 9c 00 00 00    	jne    2a95 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    29f9:	83 ec 0c             	sub    $0xc,%esp
    29fc:	68 4d 4c 00 00       	push   $0x4c4d
    2a01:	e8 40 11 00 00       	call   3b46 <unlink>
    2a06:	83 c4 10             	add    $0x10,%esp
    2a09:	85 c0                	test   %eax,%eax
    2a0b:	74 75                	je     2a82 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    2a0d:	83 ec 0c             	sub    $0xc,%esp
    2a10:	68 6b 4c 00 00       	push   $0x4c6b
    2a15:	e8 2c 11 00 00       	call   3b46 <unlink>
    2a1a:	83 c4 10             	add    $0x10,%esp
    2a1d:	85 c0                	test   %eax,%eax
    2a1f:	74 4e                	je     2a6f <rmdot+0xff>
  if(unlink("dots") != 0){
    2a21:	83 ec 0c             	sub    $0xc,%esp
    2a24:	68 05 4c 00 00       	push   $0x4c05
    2a29:	e8 18 11 00 00       	call   3b46 <unlink>
    2a2e:	83 c4 10             	add    $0x10,%esp
    2a31:	85 c0                	test   %eax,%eax
    2a33:	75 27                	jne    2a5c <rmdot+0xec>
  printf(1, "rmdot ok\n");
    2a35:	83 ec 08             	sub    $0x8,%esp
    2a38:	68 a0 4c 00 00       	push   $0x4ca0
    2a3d:	6a 01                	push   $0x1
    2a3f:	e8 1c 12 00 00       	call   3c60 <printf>
}
    2a44:	83 c4 10             	add    $0x10,%esp
    2a47:	c9                   	leave  
    2a48:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2a49:	50                   	push   %eax
    2a4a:	50                   	push   %eax
    2a4b:	68 0a 4c 00 00       	push   $0x4c0a
    2a50:	6a 01                	push   $0x1
    2a52:	e8 09 12 00 00       	call   3c60 <printf>
    exit();
    2a57:	e8 9a 10 00 00       	call   3af6 <exit>
    printf(1, "unlink dots failed!\n");
    2a5c:	50                   	push   %eax
    2a5d:	50                   	push   %eax
    2a5e:	68 8b 4c 00 00       	push   $0x4c8b
    2a63:	6a 01                	push   $0x1
    2a65:	e8 f6 11 00 00       	call   3c60 <printf>
    exit();
    2a6a:	e8 87 10 00 00       	call   3af6 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2a6f:	52                   	push   %edx
    2a70:	52                   	push   %edx
    2a71:	68 73 4c 00 00       	push   $0x4c73
    2a76:	6a 01                	push   $0x1
    2a78:	e8 e3 11 00 00       	call   3c60 <printf>
    exit();
    2a7d:	e8 74 10 00 00       	call   3af6 <exit>
    printf(1, "unlink dots/. worked!\n");
    2a82:	51                   	push   %ecx
    2a83:	51                   	push   %ecx
    2a84:	68 54 4c 00 00       	push   $0x4c54
    2a89:	6a 01                	push   $0x1
    2a8b:	e8 d0 11 00 00       	call   3c60 <printf>
    exit();
    2a90:	e8 61 10 00 00       	call   3af6 <exit>
    printf(1, "chdir / failed\n");
    2a95:	50                   	push   %eax
    2a96:	50                   	push   %eax
    2a97:	68 85 40 00 00       	push   $0x4085
    2a9c:	6a 01                	push   $0x1
    2a9e:	e8 bd 11 00 00       	call   3c60 <printf>
    exit();
    2aa3:	e8 4e 10 00 00       	call   3af6 <exit>
    printf(1, "rm .. worked!\n");
    2aa8:	50                   	push   %eax
    2aa9:	50                   	push   %eax
    2aaa:	68 3e 4c 00 00       	push   $0x4c3e
    2aaf:	6a 01                	push   $0x1
    2ab1:	e8 aa 11 00 00       	call   3c60 <printf>
    exit();
    2ab6:	e8 3b 10 00 00       	call   3af6 <exit>
    printf(1, "rm . worked!\n");
    2abb:	50                   	push   %eax
    2abc:	50                   	push   %eax
    2abd:	68 30 4c 00 00       	push   $0x4c30
    2ac2:	6a 01                	push   $0x1
    2ac4:	e8 97 11 00 00       	call   3c60 <printf>
    exit();
    2ac9:	e8 28 10 00 00       	call   3af6 <exit>
    printf(1, "chdir dots failed\n");
    2ace:	50                   	push   %eax
    2acf:	50                   	push   %eax
    2ad0:	68 1d 4c 00 00       	push   $0x4c1d
    2ad5:	6a 01                	push   $0x1
    2ad7:	e8 84 11 00 00       	call   3c60 <printf>
    exit();
    2adc:	e8 15 10 00 00       	call   3af6 <exit>
    2ae1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2ae8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2aef:	90                   	nop

00002af0 <dirfile>:
{
    2af0:	55                   	push   %ebp
    2af1:	89 e5                	mov    %esp,%ebp
    2af3:	53                   	push   %ebx
    2af4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2af7:	68 aa 4c 00 00       	push   $0x4caa
    2afc:	6a 01                	push   $0x1
    2afe:	e8 5d 11 00 00       	call   3c60 <printf>
  fd = open("dirfile", O_CREATE);
    2b03:	5b                   	pop    %ebx
    2b04:	58                   	pop    %eax
    2b05:	68 00 02 00 00       	push   $0x200
    2b0a:	68 b7 4c 00 00       	push   $0x4cb7
    2b0f:	e8 22 10 00 00       	call   3b36 <open>
  if(fd < 0){
    2b14:	83 c4 10             	add    $0x10,%esp
    2b17:	85 c0                	test   %eax,%eax
    2b19:	0f 88 43 01 00 00    	js     2c62 <dirfile+0x172>
  close(fd);
    2b1f:	83 ec 0c             	sub    $0xc,%esp
    2b22:	50                   	push   %eax
    2b23:	e8 f6 0f 00 00       	call   3b1e <close>
  if(chdir("dirfile") == 0){
    2b28:	c7 04 24 b7 4c 00 00 	movl   $0x4cb7,(%esp)
    2b2f:	e8 32 10 00 00       	call   3b66 <chdir>
    2b34:	83 c4 10             	add    $0x10,%esp
    2b37:	85 c0                	test   %eax,%eax
    2b39:	0f 84 10 01 00 00    	je     2c4f <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    2b3f:	83 ec 08             	sub    $0x8,%esp
    2b42:	6a 00                	push   $0x0
    2b44:	68 f0 4c 00 00       	push   $0x4cf0
    2b49:	e8 e8 0f 00 00       	call   3b36 <open>
  if(fd >= 0){
    2b4e:	83 c4 10             	add    $0x10,%esp
    2b51:	85 c0                	test   %eax,%eax
    2b53:	0f 89 e3 00 00 00    	jns    2c3c <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    2b59:	83 ec 08             	sub    $0x8,%esp
    2b5c:	68 00 02 00 00       	push   $0x200
    2b61:	68 f0 4c 00 00       	push   $0x4cf0
    2b66:	e8 cb 0f 00 00       	call   3b36 <open>
  if(fd >= 0){
    2b6b:	83 c4 10             	add    $0x10,%esp
    2b6e:	85 c0                	test   %eax,%eax
    2b70:	0f 89 c6 00 00 00    	jns    2c3c <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    2b76:	83 ec 0c             	sub    $0xc,%esp
    2b79:	68 f0 4c 00 00       	push   $0x4cf0
    2b7e:	e8 db 0f 00 00       	call   3b5e <mkdir>
    2b83:	83 c4 10             	add    $0x10,%esp
    2b86:	85 c0                	test   %eax,%eax
    2b88:	0f 84 46 01 00 00    	je     2cd4 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    2b8e:	83 ec 0c             	sub    $0xc,%esp
    2b91:	68 f0 4c 00 00       	push   $0x4cf0
    2b96:	e8 ab 0f 00 00       	call   3b46 <unlink>
    2b9b:	83 c4 10             	add    $0x10,%esp
    2b9e:	85 c0                	test   %eax,%eax
    2ba0:	0f 84 1b 01 00 00    	je     2cc1 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2ba6:	83 ec 08             	sub    $0x8,%esp
    2ba9:	68 f0 4c 00 00       	push   $0x4cf0
    2bae:	68 54 4d 00 00       	push   $0x4d54
    2bb3:	e8 9e 0f 00 00       	call   3b56 <link>
    2bb8:	83 c4 10             	add    $0x10,%esp
    2bbb:	85 c0                	test   %eax,%eax
    2bbd:	0f 84 eb 00 00 00    	je     2cae <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2bc3:	83 ec 0c             	sub    $0xc,%esp
    2bc6:	68 b7 4c 00 00       	push   $0x4cb7
    2bcb:	e8 76 0f 00 00       	call   3b46 <unlink>
    2bd0:	83 c4 10             	add    $0x10,%esp
    2bd3:	85 c0                	test   %eax,%eax
    2bd5:	0f 85 c0 00 00 00    	jne    2c9b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2bdb:	83 ec 08             	sub    $0x8,%esp
    2bde:	6a 02                	push   $0x2
    2be0:	68 b0 48 00 00       	push   $0x48b0
    2be5:	e8 4c 0f 00 00       	call   3b36 <open>
  if(fd >= 0){
    2bea:	83 c4 10             	add    $0x10,%esp
    2bed:	85 c0                	test   %eax,%eax
    2bef:	0f 89 93 00 00 00    	jns    2c88 <dirfile+0x198>
  fd = open(".", 0);
    2bf5:	83 ec 08             	sub    $0x8,%esp
    2bf8:	6a 00                	push   $0x0
    2bfa:	68 b0 48 00 00       	push   $0x48b0
    2bff:	e8 32 0f 00 00       	call   3b36 <open>
  if(write(fd, "x", 1) > 0){
    2c04:	83 c4 0c             	add    $0xc,%esp
    2c07:	6a 01                	push   $0x1
  fd = open(".", 0);
    2c09:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2c0b:	68 93 49 00 00       	push   $0x4993
    2c10:	50                   	push   %eax
    2c11:	e8 00 0f 00 00       	call   3b16 <write>
    2c16:	83 c4 10             	add    $0x10,%esp
    2c19:	85 c0                	test   %eax,%eax
    2c1b:	7f 58                	jg     2c75 <dirfile+0x185>
  close(fd);
    2c1d:	83 ec 0c             	sub    $0xc,%esp
    2c20:	53                   	push   %ebx
    2c21:	e8 f8 0e 00 00       	call   3b1e <close>
  printf(1, "dir vs file OK\n");
    2c26:	58                   	pop    %eax
    2c27:	5a                   	pop    %edx
    2c28:	68 87 4d 00 00       	push   $0x4d87
    2c2d:	6a 01                	push   $0x1
    2c2f:	e8 2c 10 00 00       	call   3c60 <printf>
}
    2c34:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c37:	83 c4 10             	add    $0x10,%esp
    2c3a:	c9                   	leave  
    2c3b:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2c3c:	50                   	push   %eax
    2c3d:	50                   	push   %eax
    2c3e:	68 fb 4c 00 00       	push   $0x4cfb
    2c43:	6a 01                	push   $0x1
    2c45:	e8 16 10 00 00       	call   3c60 <printf>
    exit();
    2c4a:	e8 a7 0e 00 00       	call   3af6 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2c4f:	52                   	push   %edx
    2c50:	52                   	push   %edx
    2c51:	68 d6 4c 00 00       	push   $0x4cd6
    2c56:	6a 01                	push   $0x1
    2c58:	e8 03 10 00 00       	call   3c60 <printf>
    exit();
    2c5d:	e8 94 0e 00 00       	call   3af6 <exit>
    printf(1, "create dirfile failed\n");
    2c62:	51                   	push   %ecx
    2c63:	51                   	push   %ecx
    2c64:	68 bf 4c 00 00       	push   $0x4cbf
    2c69:	6a 01                	push   $0x1
    2c6b:	e8 f0 0f 00 00       	call   3c60 <printf>
    exit();
    2c70:	e8 81 0e 00 00       	call   3af6 <exit>
    printf(1, "write . succeeded!\n");
    2c75:	51                   	push   %ecx
    2c76:	51                   	push   %ecx
    2c77:	68 73 4d 00 00       	push   $0x4d73
    2c7c:	6a 01                	push   $0x1
    2c7e:	e8 dd 0f 00 00       	call   3c60 <printf>
    exit();
    2c83:	e8 6e 0e 00 00       	call   3af6 <exit>
    printf(1, "open . for writing succeeded!\n");
    2c88:	53                   	push   %ebx
    2c89:	53                   	push   %ebx
    2c8a:	68 68 55 00 00       	push   $0x5568
    2c8f:	6a 01                	push   $0x1
    2c91:	e8 ca 0f 00 00       	call   3c60 <printf>
    exit();
    2c96:	e8 5b 0e 00 00       	call   3af6 <exit>
    printf(1, "unlink dirfile failed!\n");
    2c9b:	50                   	push   %eax
    2c9c:	50                   	push   %eax
    2c9d:	68 5b 4d 00 00       	push   $0x4d5b
    2ca2:	6a 01                	push   $0x1
    2ca4:	e8 b7 0f 00 00       	call   3c60 <printf>
    exit();
    2ca9:	e8 48 0e 00 00       	call   3af6 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2cae:	50                   	push   %eax
    2caf:	50                   	push   %eax
    2cb0:	68 48 55 00 00       	push   $0x5548
    2cb5:	6a 01                	push   $0x1
    2cb7:	e8 a4 0f 00 00       	call   3c60 <printf>
    exit();
    2cbc:	e8 35 0e 00 00       	call   3af6 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2cc1:	50                   	push   %eax
    2cc2:	50                   	push   %eax
    2cc3:	68 36 4d 00 00       	push   $0x4d36
    2cc8:	6a 01                	push   $0x1
    2cca:	e8 91 0f 00 00       	call   3c60 <printf>
    exit();
    2ccf:	e8 22 0e 00 00       	call   3af6 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2cd4:	50                   	push   %eax
    2cd5:	50                   	push   %eax
    2cd6:	68 19 4d 00 00       	push   $0x4d19
    2cdb:	6a 01                	push   $0x1
    2cdd:	e8 7e 0f 00 00       	call   3c60 <printf>
    exit();
    2ce2:	e8 0f 0e 00 00       	call   3af6 <exit>
    2ce7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2cee:	66 90                	xchg   %ax,%ax

00002cf0 <iref>:
{
    2cf0:	55                   	push   %ebp
    2cf1:	89 e5                	mov    %esp,%ebp
    2cf3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2cf4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2cf9:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2cfc:	68 97 4d 00 00       	push   $0x4d97
    2d01:	6a 01                	push   $0x1
    2d03:	e8 58 0f 00 00       	call   3c60 <printf>
    2d08:	83 c4 10             	add    $0x10,%esp
    2d0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2d0f:	90                   	nop
    if(mkdir("irefd") != 0){
    2d10:	83 ec 0c             	sub    $0xc,%esp
    2d13:	68 a8 4d 00 00       	push   $0x4da8
    2d18:	e8 41 0e 00 00       	call   3b5e <mkdir>
    2d1d:	83 c4 10             	add    $0x10,%esp
    2d20:	85 c0                	test   %eax,%eax
    2d22:	0f 85 bb 00 00 00    	jne    2de3 <iref+0xf3>
    if(chdir("irefd") != 0){
    2d28:	83 ec 0c             	sub    $0xc,%esp
    2d2b:	68 a8 4d 00 00       	push   $0x4da8
    2d30:	e8 31 0e 00 00       	call   3b66 <chdir>
    2d35:	83 c4 10             	add    $0x10,%esp
    2d38:	85 c0                	test   %eax,%eax
    2d3a:	0f 85 b7 00 00 00    	jne    2df7 <iref+0x107>
    mkdir("");
    2d40:	83 ec 0c             	sub    $0xc,%esp
    2d43:	68 5d 44 00 00       	push   $0x445d
    2d48:	e8 11 0e 00 00       	call   3b5e <mkdir>
    link("README", "");
    2d4d:	59                   	pop    %ecx
    2d4e:	58                   	pop    %eax
    2d4f:	68 5d 44 00 00       	push   $0x445d
    2d54:	68 54 4d 00 00       	push   $0x4d54
    2d59:	e8 f8 0d 00 00       	call   3b56 <link>
    fd = open("", O_CREATE);
    2d5e:	58                   	pop    %eax
    2d5f:	5a                   	pop    %edx
    2d60:	68 00 02 00 00       	push   $0x200
    2d65:	68 5d 44 00 00       	push   $0x445d
    2d6a:	e8 c7 0d 00 00       	call   3b36 <open>
    if(fd >= 0)
    2d6f:	83 c4 10             	add    $0x10,%esp
    2d72:	85 c0                	test   %eax,%eax
    2d74:	78 0c                	js     2d82 <iref+0x92>
      close(fd);
    2d76:	83 ec 0c             	sub    $0xc,%esp
    2d79:	50                   	push   %eax
    2d7a:	e8 9f 0d 00 00       	call   3b1e <close>
    2d7f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2d82:	83 ec 08             	sub    $0x8,%esp
    2d85:	68 00 02 00 00       	push   $0x200
    2d8a:	68 92 49 00 00       	push   $0x4992
    2d8f:	e8 a2 0d 00 00       	call   3b36 <open>
    if(fd >= 0)
    2d94:	83 c4 10             	add    $0x10,%esp
    2d97:	85 c0                	test   %eax,%eax
    2d99:	78 0c                	js     2da7 <iref+0xb7>
      close(fd);
    2d9b:	83 ec 0c             	sub    $0xc,%esp
    2d9e:	50                   	push   %eax
    2d9f:	e8 7a 0d 00 00       	call   3b1e <close>
    2da4:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2da7:	83 ec 0c             	sub    $0xc,%esp
    2daa:	68 92 49 00 00       	push   $0x4992
    2daf:	e8 92 0d 00 00       	call   3b46 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2db4:	83 c4 10             	add    $0x10,%esp
    2db7:	83 eb 01             	sub    $0x1,%ebx
    2dba:	0f 85 50 ff ff ff    	jne    2d10 <iref+0x20>
  chdir("/");
    2dc0:	83 ec 0c             	sub    $0xc,%esp
    2dc3:	68 83 40 00 00       	push   $0x4083
    2dc8:	e8 99 0d 00 00       	call   3b66 <chdir>
  printf(1, "empty file name OK\n");
    2dcd:	58                   	pop    %eax
    2dce:	5a                   	pop    %edx
    2dcf:	68 d6 4d 00 00       	push   $0x4dd6
    2dd4:	6a 01                	push   $0x1
    2dd6:	e8 85 0e 00 00       	call   3c60 <printf>
}
    2ddb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2dde:	83 c4 10             	add    $0x10,%esp
    2de1:	c9                   	leave  
    2de2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    2de3:	83 ec 08             	sub    $0x8,%esp
    2de6:	68 ae 4d 00 00       	push   $0x4dae
    2deb:	6a 01                	push   $0x1
    2ded:	e8 6e 0e 00 00       	call   3c60 <printf>
      exit();
    2df2:	e8 ff 0c 00 00       	call   3af6 <exit>
      printf(1, "chdir irefd failed\n");
    2df7:	83 ec 08             	sub    $0x8,%esp
    2dfa:	68 c2 4d 00 00       	push   $0x4dc2
    2dff:	6a 01                	push   $0x1
    2e01:	e8 5a 0e 00 00       	call   3c60 <printf>
      exit();
    2e06:	e8 eb 0c 00 00       	call   3af6 <exit>
    2e0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2e0f:	90                   	nop

00002e10 <forktest>:
{
    2e10:	55                   	push   %ebp
    2e11:	89 e5                	mov    %esp,%ebp
    2e13:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2e14:	31 db                	xor    %ebx,%ebx
{
    2e16:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2e19:	68 ea 4d 00 00       	push   $0x4dea
    2e1e:	6a 01                	push   $0x1
    2e20:	e8 3b 0e 00 00       	call   3c60 <printf>
    2e25:	83 c4 10             	add    $0x10,%esp
    2e28:	eb 13                	jmp    2e3d <forktest+0x2d>
    2e2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2e30:	74 4a                	je     2e7c <forktest+0x6c>
  for(n=0; n<1000; n++){
    2e32:	83 c3 01             	add    $0x1,%ebx
    2e35:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2e3b:	74 6b                	je     2ea8 <forktest+0x98>
    pid = fork();
    2e3d:	e8 ac 0c 00 00       	call   3aee <fork>
    if(pid < 0)
    2e42:	85 c0                	test   %eax,%eax
    2e44:	79 ea                	jns    2e30 <forktest+0x20>
  for(; n > 0; n--){
    2e46:	85 db                	test   %ebx,%ebx
    2e48:	74 14                	je     2e5e <forktest+0x4e>
    2e4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2e50:	e8 a9 0c 00 00       	call   3afe <wait>
    2e55:	85 c0                	test   %eax,%eax
    2e57:	78 28                	js     2e81 <forktest+0x71>
  for(; n > 0; n--){
    2e59:	83 eb 01             	sub    $0x1,%ebx
    2e5c:	75 f2                	jne    2e50 <forktest+0x40>
  if(wait() != -1){
    2e5e:	e8 9b 0c 00 00       	call   3afe <wait>
    2e63:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e66:	75 2d                	jne    2e95 <forktest+0x85>
  printf(1, "fork test OK\n");
    2e68:	83 ec 08             	sub    $0x8,%esp
    2e6b:	68 1c 4e 00 00       	push   $0x4e1c
    2e70:	6a 01                	push   $0x1
    2e72:	e8 e9 0d 00 00       	call   3c60 <printf>
}
    2e77:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2e7a:	c9                   	leave  
    2e7b:	c3                   	ret    
      exit();
    2e7c:	e8 75 0c 00 00       	call   3af6 <exit>
      printf(1, "wait stopped early\n");
    2e81:	83 ec 08             	sub    $0x8,%esp
    2e84:	68 f5 4d 00 00       	push   $0x4df5
    2e89:	6a 01                	push   $0x1
    2e8b:	e8 d0 0d 00 00       	call   3c60 <printf>
      exit();
    2e90:	e8 61 0c 00 00       	call   3af6 <exit>
    printf(1, "wait got too many\n");
    2e95:	52                   	push   %edx
    2e96:	52                   	push   %edx
    2e97:	68 09 4e 00 00       	push   $0x4e09
    2e9c:	6a 01                	push   $0x1
    2e9e:	e8 bd 0d 00 00       	call   3c60 <printf>
    exit();
    2ea3:	e8 4e 0c 00 00       	call   3af6 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    2ea8:	50                   	push   %eax
    2ea9:	50                   	push   %eax
    2eaa:	68 88 55 00 00       	push   $0x5588
    2eaf:	6a 01                	push   $0x1
    2eb1:	e8 aa 0d 00 00       	call   3c60 <printf>
    exit();
    2eb6:	e8 3b 0c 00 00       	call   3af6 <exit>
    2ebb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2ebf:	90                   	nop

00002ec0 <sbrktest>:
{
    2ec0:	55                   	push   %ebp
    2ec1:	89 e5                	mov    %esp,%ebp
    2ec3:	57                   	push   %edi
    2ec4:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    2ec5:	31 f6                	xor    %esi,%esi
{
    2ec7:	53                   	push   %ebx
    2ec8:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2ecb:	68 2a 4e 00 00       	push   $0x4e2a
    2ed0:	ff 35 1c 62 00 00    	push   0x621c
    2ed6:	e8 85 0d 00 00       	call   3c60 <printf>
  oldbrk = sbrk(0);
    2edb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ee2:	e8 97 0c 00 00       	call   3b7e <sbrk>
  a = sbrk(0);
    2ee7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    2eee:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    2ef1:	e8 88 0c 00 00       	call   3b7e <sbrk>
    2ef6:	83 c4 10             	add    $0x10,%esp
    2ef9:	89 c3                	mov    %eax,%ebx
  for(i = 0; i < 5000; i++){
    2efb:	eb 05                	jmp    2f02 <sbrktest+0x42>
    2efd:	8d 76 00             	lea    0x0(%esi),%esi
    a = b + 1;
    2f00:	89 c3                	mov    %eax,%ebx
    b = sbrk(1);
    2f02:	83 ec 0c             	sub    $0xc,%esp
    2f05:	6a 01                	push   $0x1
    2f07:	e8 72 0c 00 00       	call   3b7e <sbrk>
    if(b != a){
    2f0c:	83 c4 10             	add    $0x10,%esp
    2f0f:	39 d8                	cmp    %ebx,%eax
    2f11:	0f 85 9c 02 00 00    	jne    31b3 <sbrktest+0x2f3>
  for(i = 0; i < 5000; i++){
    2f17:	83 c6 01             	add    $0x1,%esi
    *b = 1;
    2f1a:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    2f1d:	8d 43 01             	lea    0x1(%ebx),%eax
  for(i = 0; i < 5000; i++){
    2f20:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    2f26:	75 d8                	jne    2f00 <sbrktest+0x40>
  pid = fork();
    2f28:	e8 c1 0b 00 00       	call   3aee <fork>
    2f2d:	89 c6                	mov    %eax,%esi
  if(pid < 0){
    2f2f:	85 c0                	test   %eax,%eax
    2f31:	0f 88 02 03 00 00    	js     3239 <sbrktest+0x379>
  c = sbrk(1);
    2f37:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2f3a:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    2f3d:	6a 01                	push   $0x1
    2f3f:	e8 3a 0c 00 00       	call   3b7e <sbrk>
  c = sbrk(1);
    2f44:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f4b:	e8 2e 0c 00 00       	call   3b7e <sbrk>
  if(c != a + 1){
    2f50:	83 c4 10             	add    $0x10,%esp
    2f53:	39 c3                	cmp    %eax,%ebx
    2f55:	0f 85 3b 03 00 00    	jne    3296 <sbrktest+0x3d6>
  if(pid == 0)
    2f5b:	85 f6                	test   %esi,%esi
    2f5d:	0f 84 2e 03 00 00    	je     3291 <sbrktest+0x3d1>
  wait();
    2f63:	e8 96 0b 00 00       	call   3afe <wait>
  a = sbrk(0);
    2f68:	83 ec 0c             	sub    $0xc,%esp
    2f6b:	6a 00                	push   $0x0
    2f6d:	e8 0c 0c 00 00       	call   3b7e <sbrk>
    2f72:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
    2f74:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2f79:	29 d8                	sub    %ebx,%eax
  p = sbrk(amt);
    2f7b:	89 04 24             	mov    %eax,(%esp)
    2f7e:	e8 fb 0b 00 00       	call   3b7e <sbrk>
  if (p != a) {
    2f83:	83 c4 10             	add    $0x10,%esp
    2f86:	39 c3                	cmp    %eax,%ebx
    2f88:	0f 85 94 02 00 00    	jne    3222 <sbrktest+0x362>
  a = sbrk(0);
    2f8e:	83 ec 0c             	sub    $0xc,%esp
    2f91:	6a 00                	push   $0x0
    2f93:	e8 e6 0b 00 00       	call   3b7e <sbrk>
  c = sbrk(-4096);
    2f98:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2f9f:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    2fa1:	e8 d8 0b 00 00       	call   3b7e <sbrk>
  if(c == (char*)0xffffffff){
    2fa6:	83 c4 10             	add    $0x10,%esp
    2fa9:	83 f8 ff             	cmp    $0xffffffff,%eax
    2fac:	0f 84 29 03 00 00    	je     32db <sbrktest+0x41b>
  c = sbrk(0);
    2fb2:	83 ec 0c             	sub    $0xc,%esp
    2fb5:	6a 00                	push   $0x0
    2fb7:	e8 c2 0b 00 00       	call   3b7e <sbrk>
  if(c != a - 4096){
    2fbc:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2fc2:	83 c4 10             	add    $0x10,%esp
    2fc5:	39 d0                	cmp    %edx,%eax
    2fc7:	0f 85 f7 02 00 00    	jne    32c4 <sbrktest+0x404>
  a = sbrk(0);
    2fcd:	83 ec 0c             	sub    $0xc,%esp
    2fd0:	6a 00                	push   $0x0
    2fd2:	e8 a7 0b 00 00       	call   3b7e <sbrk>
  c = sbrk(4096);
    2fd7:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    2fde:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    2fe0:	e8 99 0b 00 00       	call   3b7e <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2fe5:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    2fe8:	89 c6                	mov    %eax,%esi
  if(c != a || sbrk(0) != a + 4096){
    2fea:	39 c3                	cmp    %eax,%ebx
    2fec:	0f 85 bb 02 00 00    	jne    32ad <sbrktest+0x3ed>
    2ff2:	83 ec 0c             	sub    $0xc,%esp
    2ff5:	6a 00                	push   $0x0
    2ff7:	e8 82 0b 00 00       	call   3b7e <sbrk>
    2ffc:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    3002:	83 c4 10             	add    $0x10,%esp
    3005:	39 c2                	cmp    %eax,%edx
    3007:	0f 85 a0 02 00 00    	jne    32ad <sbrktest+0x3ed>
  if(*lastaddr == 99){
    300d:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3014:	0f 84 36 02 00 00    	je     3250 <sbrktest+0x390>
  a = sbrk(0);
    301a:	83 ec 0c             	sub    $0xc,%esp
    301d:	6a 00                	push   $0x0
    301f:	e8 5a 0b 00 00       	call   3b7e <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3024:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    302b:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    302d:	e8 4c 0b 00 00       	call   3b7e <sbrk>
    3032:	89 c2                	mov    %eax,%edx
    3034:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    3037:	29 d0                	sub    %edx,%eax
    3039:	89 04 24             	mov    %eax,(%esp)
    303c:	e8 3d 0b 00 00       	call   3b7e <sbrk>
  if(c != a){
    3041:	83 c4 10             	add    $0x10,%esp
    3044:	39 c3                	cmp    %eax,%ebx
    3046:	0f 85 bf 01 00 00    	jne    320b <sbrktest+0x34b>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    304c:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3051:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ppid = getpid();
    3058:	e8 19 0b 00 00       	call   3b76 <getpid>
    305d:	89 c6                	mov    %eax,%esi
    pid = fork();
    305f:	e8 8a 0a 00 00       	call   3aee <fork>
    if(pid < 0){
    3064:	85 c0                	test   %eax,%eax
    3066:	0f 88 65 01 00 00    	js     31d1 <sbrktest+0x311>
    if(pid == 0){
    306c:	0f 84 77 01 00 00    	je     31e9 <sbrktest+0x329>
    wait();
    3072:	e8 87 0a 00 00       	call   3afe <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3077:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    307d:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    3083:	75 d3                	jne    3058 <sbrktest+0x198>
  if(pipe(fds) != 0){
    3085:	83 ec 0c             	sub    $0xc,%esp
    3088:	8d 45 b8             	lea    -0x48(%ebp),%eax
    308b:	50                   	push   %eax
    308c:	e8 75 0a 00 00       	call   3b06 <pipe>
    3091:	83 c4 10             	add    $0x10,%esp
    3094:	85 c0                	test   %eax,%eax
    3096:	0f 85 e2 01 00 00    	jne    327e <sbrktest+0x3be>
    309c:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    309f:	8d 75 e8             	lea    -0x18(%ebp),%esi
    30a2:	89 df                	mov    %ebx,%edi
    30a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pids[i] = fork()) == 0){
    30a8:	e8 41 0a 00 00       	call   3aee <fork>
    30ad:	89 07                	mov    %eax,(%edi)
    30af:	85 c0                	test   %eax,%eax
    30b1:	0f 84 91 00 00 00    	je     3148 <sbrktest+0x288>
    if(pids[i] != -1)
    30b7:	83 f8 ff             	cmp    $0xffffffff,%eax
    30ba:	74 14                	je     30d0 <sbrktest+0x210>
      read(fds[0], &scratch, 1);
    30bc:	83 ec 04             	sub    $0x4,%esp
    30bf:	8d 45 b7             	lea    -0x49(%ebp),%eax
    30c2:	6a 01                	push   $0x1
    30c4:	50                   	push   %eax
    30c5:	ff 75 b8             	push   -0x48(%ebp)
    30c8:	e8 41 0a 00 00       	call   3b0e <read>
    30cd:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    30d0:	83 c7 04             	add    $0x4,%edi
    30d3:	39 f7                	cmp    %esi,%edi
    30d5:	75 d1                	jne    30a8 <sbrktest+0x1e8>
  c = sbrk(4096);
    30d7:	83 ec 0c             	sub    $0xc,%esp
    30da:	68 00 10 00 00       	push   $0x1000
    30df:	e8 9a 0a 00 00       	call   3b7e <sbrk>
    30e4:	83 c4 10             	add    $0x10,%esp
    30e7:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    30e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pids[i] == -1)
    30f0:	8b 03                	mov    (%ebx),%eax
    30f2:	83 f8 ff             	cmp    $0xffffffff,%eax
    30f5:	74 11                	je     3108 <sbrktest+0x248>
    kill(pids[i]);
    30f7:	83 ec 0c             	sub    $0xc,%esp
    30fa:	50                   	push   %eax
    30fb:	e8 26 0a 00 00       	call   3b26 <kill>
    wait();
    3100:	e8 f9 09 00 00       	call   3afe <wait>
    3105:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3108:	83 c3 04             	add    $0x4,%ebx
    310b:	39 de                	cmp    %ebx,%esi
    310d:	75 e1                	jne    30f0 <sbrktest+0x230>
  if(c == (char*)0xffffffff){
    310f:	83 ff ff             	cmp    $0xffffffff,%edi
    3112:	0f 84 4f 01 00 00    	je     3267 <sbrktest+0x3a7>
  if(sbrk(0) > oldbrk)
    3118:	83 ec 0c             	sub    $0xc,%esp
    311b:	6a 00                	push   $0x0
    311d:	e8 5c 0a 00 00       	call   3b7e <sbrk>
    3122:	83 c4 10             	add    $0x10,%esp
    3125:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3128:	72 68                	jb     3192 <sbrktest+0x2d2>
  printf(stdout, "sbrk test OK\n");
    312a:	83 ec 08             	sub    $0x8,%esp
    312d:	68 d2 4e 00 00       	push   $0x4ed2
    3132:	ff 35 1c 62 00 00    	push   0x621c
    3138:	e8 23 0b 00 00       	call   3c60 <printf>
}
    313d:	83 c4 10             	add    $0x10,%esp
    3140:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3143:	5b                   	pop    %ebx
    3144:	5e                   	pop    %esi
    3145:	5f                   	pop    %edi
    3146:	5d                   	pop    %ebp
    3147:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3148:	83 ec 0c             	sub    $0xc,%esp
    314b:	6a 00                	push   $0x0
    314d:	e8 2c 0a 00 00       	call   3b7e <sbrk>
    3152:	89 c2                	mov    %eax,%edx
    3154:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3159:	29 d0                	sub    %edx,%eax
    315b:	89 04 24             	mov    %eax,(%esp)
    315e:	e8 1b 0a 00 00       	call   3b7e <sbrk>
      write(fds[1], "x", 1);
    3163:	83 c4 0c             	add    $0xc,%esp
    3166:	6a 01                	push   $0x1
    3168:	68 93 49 00 00       	push   $0x4993
    316d:	ff 75 bc             	push   -0x44(%ebp)
    3170:	e8 a1 09 00 00       	call   3b16 <write>
    3175:	83 c4 10             	add    $0x10,%esp
    3178:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    317f:	90                   	nop
      for(;;) sleep(1000);
    3180:	83 ec 0c             	sub    $0xc,%esp
    3183:	68 e8 03 00 00       	push   $0x3e8
    3188:	e8 f9 09 00 00       	call   3b86 <sleep>
    318d:	83 c4 10             	add    $0x10,%esp
    3190:	eb ee                	jmp    3180 <sbrktest+0x2c0>
    sbrk(-(sbrk(0) - oldbrk));
    3192:	83 ec 0c             	sub    $0xc,%esp
    3195:	6a 00                	push   $0x0
    3197:	e8 e2 09 00 00       	call   3b7e <sbrk>
    319c:	89 c2                	mov    %eax,%edx
    319e:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    31a1:	29 d0                	sub    %edx,%eax
    31a3:	89 04 24             	mov    %eax,(%esp)
    31a6:	e8 d3 09 00 00       	call   3b7e <sbrk>
    31ab:	83 c4 10             	add    $0x10,%esp
    31ae:	e9 77 ff ff ff       	jmp    312a <sbrktest+0x26a>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    31b3:	83 ec 0c             	sub    $0xc,%esp
    31b6:	50                   	push   %eax
    31b7:	53                   	push   %ebx
    31b8:	56                   	push   %esi
    31b9:	68 35 4e 00 00       	push   $0x4e35
    31be:	ff 35 1c 62 00 00    	push   0x621c
    31c4:	e8 97 0a 00 00       	call   3c60 <printf>
      exit();
    31c9:	83 c4 20             	add    $0x20,%esp
    31cc:	e8 25 09 00 00       	call   3af6 <exit>
      printf(stdout, "fork failed\n");
    31d1:	83 ec 08             	sub    $0x8,%esp
    31d4:	68 7b 4f 00 00       	push   $0x4f7b
    31d9:	ff 35 1c 62 00 00    	push   0x621c
    31df:	e8 7c 0a 00 00       	call   3c60 <printf>
      exit();
    31e4:	e8 0d 09 00 00       	call   3af6 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    31e9:	0f be 03             	movsbl (%ebx),%eax
    31ec:	50                   	push   %eax
    31ed:	53                   	push   %ebx
    31ee:	68 9e 4e 00 00       	push   $0x4e9e
    31f3:	ff 35 1c 62 00 00    	push   0x621c
    31f9:	e8 62 0a 00 00       	call   3c60 <printf>
      kill(ppid);
    31fe:	89 34 24             	mov    %esi,(%esp)
    3201:	e8 20 09 00 00       	call   3b26 <kill>
      exit();
    3206:	e8 eb 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    320b:	50                   	push   %eax
    320c:	53                   	push   %ebx
    320d:	68 7c 56 00 00       	push   $0x567c
    3212:	ff 35 1c 62 00 00    	push   0x621c
    3218:	e8 43 0a 00 00       	call   3c60 <printf>
    exit();
    321d:	e8 d4 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3222:	56                   	push   %esi
    3223:	56                   	push   %esi
    3224:	68 ac 55 00 00       	push   $0x55ac
    3229:	ff 35 1c 62 00 00    	push   0x621c
    322f:	e8 2c 0a 00 00       	call   3c60 <printf>
    exit();
    3234:	e8 bd 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk test fork failed\n");
    3239:	50                   	push   %eax
    323a:	50                   	push   %eax
    323b:	68 50 4e 00 00       	push   $0x4e50
    3240:	ff 35 1c 62 00 00    	push   0x621c
    3246:	e8 15 0a 00 00       	call   3c60 <printf>
    exit();
    324b:	e8 a6 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3250:	51                   	push   %ecx
    3251:	51                   	push   %ecx
    3252:	68 4c 56 00 00       	push   $0x564c
    3257:	ff 35 1c 62 00 00    	push   0x621c
    325d:	e8 fe 09 00 00       	call   3c60 <printf>
    exit();
    3262:	e8 8f 08 00 00       	call   3af6 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    3267:	50                   	push   %eax
    3268:	50                   	push   %eax
    3269:	68 b7 4e 00 00       	push   $0x4eb7
    326e:	ff 35 1c 62 00 00    	push   0x621c
    3274:	e8 e7 09 00 00       	call   3c60 <printf>
    exit();
    3279:	e8 78 08 00 00       	call   3af6 <exit>
    printf(1, "pipe() failed\n");
    327e:	52                   	push   %edx
    327f:	52                   	push   %edx
    3280:	68 73 43 00 00       	push   $0x4373
    3285:	6a 01                	push   $0x1
    3287:	e8 d4 09 00 00       	call   3c60 <printf>
    exit();
    328c:	e8 65 08 00 00       	call   3af6 <exit>
    exit();
    3291:	e8 60 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3296:	57                   	push   %edi
    3297:	57                   	push   %edi
    3298:	68 67 4e 00 00       	push   $0x4e67
    329d:	ff 35 1c 62 00 00    	push   0x621c
    32a3:	e8 b8 09 00 00       	call   3c60 <printf>
    exit();
    32a8:	e8 49 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    32ad:	56                   	push   %esi
    32ae:	53                   	push   %ebx
    32af:	68 24 56 00 00       	push   $0x5624
    32b4:	ff 35 1c 62 00 00    	push   0x621c
    32ba:	e8 a1 09 00 00       	call   3c60 <printf>
    exit();
    32bf:	e8 32 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    32c4:	50                   	push   %eax
    32c5:	53                   	push   %ebx
    32c6:	68 ec 55 00 00       	push   $0x55ec
    32cb:	ff 35 1c 62 00 00    	push   0x621c
    32d1:	e8 8a 09 00 00       	call   3c60 <printf>
    exit();
    32d6:	e8 1b 08 00 00       	call   3af6 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    32db:	53                   	push   %ebx
    32dc:	53                   	push   %ebx
    32dd:	68 83 4e 00 00       	push   $0x4e83
    32e2:	ff 35 1c 62 00 00    	push   0x621c
    32e8:	e8 73 09 00 00       	call   3c60 <printf>
    exit();
    32ed:	e8 04 08 00 00       	call   3af6 <exit>
    32f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003300 <validateint>:
}
    3300:	c3                   	ret    
    3301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    330f:	90                   	nop

00003310 <validatetest>:
{
    3310:	55                   	push   %ebp
    3311:	89 e5                	mov    %esp,%ebp
    3313:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    3314:	31 f6                	xor    %esi,%esi
{
    3316:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    3317:	83 ec 08             	sub    $0x8,%esp
    331a:	68 e0 4e 00 00       	push   $0x4ee0
    331f:	ff 35 1c 62 00 00    	push   0x621c
    3325:	e8 36 09 00 00       	call   3c60 <printf>
    332a:	83 c4 10             	add    $0x10,%esp
    332d:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    3330:	e8 b9 07 00 00       	call   3aee <fork>
    3335:	89 c3                	mov    %eax,%ebx
    3337:	85 c0                	test   %eax,%eax
    3339:	74 63                	je     339e <validatetest+0x8e>
    sleep(0);
    333b:	83 ec 0c             	sub    $0xc,%esp
    333e:	6a 00                	push   $0x0
    3340:	e8 41 08 00 00       	call   3b86 <sleep>
    sleep(0);
    3345:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    334c:	e8 35 08 00 00       	call   3b86 <sleep>
    kill(pid);
    3351:	89 1c 24             	mov    %ebx,(%esp)
    3354:	e8 cd 07 00 00       	call   3b26 <kill>
    wait();
    3359:	e8 a0 07 00 00       	call   3afe <wait>
    if(link("nosuchfile", (char*)p) != -1){
    335e:	58                   	pop    %eax
    335f:	5a                   	pop    %edx
    3360:	56                   	push   %esi
    3361:	68 ef 4e 00 00       	push   $0x4eef
    3366:	e8 eb 07 00 00       	call   3b56 <link>
    336b:	83 c4 10             	add    $0x10,%esp
    336e:	83 f8 ff             	cmp    $0xffffffff,%eax
    3371:	75 30                	jne    33a3 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    3373:	81 c6 00 10 00 00    	add    $0x1000,%esi
    3379:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    337f:	75 af                	jne    3330 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    3381:	83 ec 08             	sub    $0x8,%esp
    3384:	68 13 4f 00 00       	push   $0x4f13
    3389:	ff 35 1c 62 00 00    	push   0x621c
    338f:	e8 cc 08 00 00       	call   3c60 <printf>
}
    3394:	83 c4 10             	add    $0x10,%esp
    3397:	8d 65 f8             	lea    -0x8(%ebp),%esp
    339a:	5b                   	pop    %ebx
    339b:	5e                   	pop    %esi
    339c:	5d                   	pop    %ebp
    339d:	c3                   	ret    
      exit();
    339e:	e8 53 07 00 00       	call   3af6 <exit>
      printf(stdout, "link should not succeed\n");
    33a3:	83 ec 08             	sub    $0x8,%esp
    33a6:	68 fa 4e 00 00       	push   $0x4efa
    33ab:	ff 35 1c 62 00 00    	push   0x621c
    33b1:	e8 aa 08 00 00       	call   3c60 <printf>
      exit();
    33b6:	e8 3b 07 00 00       	call   3af6 <exit>
    33bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    33bf:	90                   	nop

000033c0 <bsstest>:
{
    33c0:	55                   	push   %ebp
    33c1:	89 e5                	mov    %esp,%ebp
    33c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    33c6:	68 20 4f 00 00       	push   $0x4f20
    33cb:	ff 35 1c 62 00 00    	push   0x621c
    33d1:	e8 8a 08 00 00       	call   3c60 <printf>
    33d6:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    33d9:	31 c0                	xor    %eax,%eax
    33db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    33df:	90                   	nop
    if(uninit[i] != '\0'){
    33e0:	80 b8 40 62 00 00 00 	cmpb   $0x0,0x6240(%eax)
    33e7:	75 22                	jne    340b <bsstest+0x4b>
  for(i = 0; i < sizeof(uninit); i++){
    33e9:	83 c0 01             	add    $0x1,%eax
    33ec:	3d 10 27 00 00       	cmp    $0x2710,%eax
    33f1:	75 ed                	jne    33e0 <bsstest+0x20>
  printf(stdout, "bss test ok\n");
    33f3:	83 ec 08             	sub    $0x8,%esp
    33f6:	68 3b 4f 00 00       	push   $0x4f3b
    33fb:	ff 35 1c 62 00 00    	push   0x621c
    3401:	e8 5a 08 00 00       	call   3c60 <printf>
}
    3406:	83 c4 10             	add    $0x10,%esp
    3409:	c9                   	leave  
    340a:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    340b:	83 ec 08             	sub    $0x8,%esp
    340e:	68 2a 4f 00 00       	push   $0x4f2a
    3413:	ff 35 1c 62 00 00    	push   0x621c
    3419:	e8 42 08 00 00       	call   3c60 <printf>
      exit();
    341e:	e8 d3 06 00 00       	call   3af6 <exit>
    3423:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    342a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003430 <bigargtest>:
{
    3430:	55                   	push   %ebp
    3431:	89 e5                	mov    %esp,%ebp
    3433:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    3436:	68 48 4f 00 00       	push   $0x4f48
    343b:	e8 06 07 00 00       	call   3b46 <unlink>
  pid = fork();
    3440:	e8 a9 06 00 00       	call   3aee <fork>
  if(pid == 0){
    3445:	83 c4 10             	add    $0x10,%esp
    3448:	85 c0                	test   %eax,%eax
    344a:	74 44                	je     3490 <bigargtest+0x60>
  } else if(pid < 0){
    344c:	0f 88 c5 00 00 00    	js     3517 <bigargtest+0xe7>
  wait();
    3452:	e8 a7 06 00 00       	call   3afe <wait>
  fd = open("bigarg-ok", 0);
    3457:	83 ec 08             	sub    $0x8,%esp
    345a:	6a 00                	push   $0x0
    345c:	68 48 4f 00 00       	push   $0x4f48
    3461:	e8 d0 06 00 00       	call   3b36 <open>
  if(fd < 0){
    3466:	83 c4 10             	add    $0x10,%esp
    3469:	85 c0                	test   %eax,%eax
    346b:	0f 88 8f 00 00 00    	js     3500 <bigargtest+0xd0>
  close(fd);
    3471:	83 ec 0c             	sub    $0xc,%esp
    3474:	50                   	push   %eax
    3475:	e8 a4 06 00 00       	call   3b1e <close>
  unlink("bigarg-ok");
    347a:	c7 04 24 48 4f 00 00 	movl   $0x4f48,(%esp)
    3481:	e8 c0 06 00 00       	call   3b46 <unlink>
}
    3486:	83 c4 10             	add    $0x10,%esp
    3489:	c9                   	leave  
    348a:	c3                   	ret    
    348b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    348f:	90                   	nop
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3490:	c7 04 85 80 a9 00 00 	movl   $0x56a0,0xa980(,%eax,4)
    3497:	a0 56 00 00 
    for(i = 0; i < MAXARG-1; i++)
    349b:	83 c0 01             	add    $0x1,%eax
    349e:	83 f8 1f             	cmp    $0x1f,%eax
    34a1:	75 ed                	jne    3490 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    34a3:	51                   	push   %ecx
    34a4:	51                   	push   %ecx
    34a5:	68 52 4f 00 00       	push   $0x4f52
    34aa:	ff 35 1c 62 00 00    	push   0x621c
    args[MAXARG-1] = 0;
    34b0:	c7 05 fc a9 00 00 00 	movl   $0x0,0xa9fc
    34b7:	00 00 00 
    printf(stdout, "bigarg test\n");
    34ba:	e8 a1 07 00 00       	call   3c60 <printf>
    exec("echo", args);
    34bf:	58                   	pop    %eax
    34c0:	5a                   	pop    %edx
    34c1:	68 80 a9 00 00       	push   $0xa980
    34c6:	68 1f 41 00 00       	push   $0x411f
    34cb:	e8 5e 06 00 00       	call   3b2e <exec>
    printf(stdout, "bigarg test ok\n");
    34d0:	59                   	pop    %ecx
    34d1:	58                   	pop    %eax
    34d2:	68 5f 4f 00 00       	push   $0x4f5f
    34d7:	ff 35 1c 62 00 00    	push   0x621c
    34dd:	e8 7e 07 00 00       	call   3c60 <printf>
    fd = open("bigarg-ok", O_CREATE);
    34e2:	58                   	pop    %eax
    34e3:	5a                   	pop    %edx
    34e4:	68 00 02 00 00       	push   $0x200
    34e9:	68 48 4f 00 00       	push   $0x4f48
    34ee:	e8 43 06 00 00       	call   3b36 <open>
    close(fd);
    34f3:	89 04 24             	mov    %eax,(%esp)
    34f6:	e8 23 06 00 00       	call   3b1e <close>
    exit();
    34fb:	e8 f6 05 00 00       	call   3af6 <exit>
    printf(stdout, "bigarg test failed!\n");
    3500:	50                   	push   %eax
    3501:	50                   	push   %eax
    3502:	68 88 4f 00 00       	push   $0x4f88
    3507:	ff 35 1c 62 00 00    	push   0x621c
    350d:	e8 4e 07 00 00       	call   3c60 <printf>
    exit();
    3512:	e8 df 05 00 00       	call   3af6 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3517:	52                   	push   %edx
    3518:	52                   	push   %edx
    3519:	68 6f 4f 00 00       	push   $0x4f6f
    351e:	ff 35 1c 62 00 00    	push   0x621c
    3524:	e8 37 07 00 00       	call   3c60 <printf>
    exit();
    3529:	e8 c8 05 00 00       	call   3af6 <exit>
    352e:	66 90                	xchg   %ax,%ax

00003530 <fsfull>:
{
    3530:	55                   	push   %ebp
    3531:	89 e5                	mov    %esp,%ebp
    3533:	57                   	push   %edi
    3534:	56                   	push   %esi
  for(nfiles = 0; ; nfiles++){
    3535:	31 f6                	xor    %esi,%esi
{
    3537:	53                   	push   %ebx
    3538:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    353b:	68 9d 4f 00 00       	push   $0x4f9d
    3540:	6a 01                	push   $0x1
    3542:	e8 19 07 00 00       	call   3c60 <printf>
    3547:	83 c4 10             	add    $0x10,%esp
    354a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    3550:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3555:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    355a:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    355d:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    3561:	f7 e6                	mul    %esi
    name[5] = '\0';
    3563:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3567:	c1 ea 06             	shr    $0x6,%edx
    356a:	8d 42 30             	lea    0x30(%edx),%eax
    356d:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3570:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    3576:	89 f2                	mov    %esi,%edx
    3578:	29 c2                	sub    %eax,%edx
    357a:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    357f:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    3581:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3586:	c1 ea 05             	shr    $0x5,%edx
    3589:	83 c2 30             	add    $0x30,%edx
    358c:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    358f:	f7 e6                	mul    %esi
    3591:	c1 ea 05             	shr    $0x5,%edx
    3594:	6b c2 64             	imul   $0x64,%edx,%eax
    3597:	89 f2                	mov    %esi,%edx
    3599:	29 c2                	sub    %eax,%edx
    359b:	89 d0                	mov    %edx,%eax
    359d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    359f:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    35a1:	c1 ea 03             	shr    $0x3,%edx
    35a4:	83 c2 30             	add    $0x30,%edx
    35a7:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    35aa:	f7 e1                	mul    %ecx
    35ac:	89 f0                	mov    %esi,%eax
    35ae:	c1 ea 03             	shr    $0x3,%edx
    35b1:	8d 14 92             	lea    (%edx,%edx,4),%edx
    35b4:	01 d2                	add    %edx,%edx
    35b6:	29 d0                	sub    %edx,%eax
    35b8:	83 c0 30             	add    $0x30,%eax
    35bb:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    35be:	8d 45 a8             	lea    -0x58(%ebp),%eax
    35c1:	50                   	push   %eax
    35c2:	68 aa 4f 00 00       	push   $0x4faa
    35c7:	6a 01                	push   $0x1
    35c9:	e8 92 06 00 00       	call   3c60 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    35ce:	58                   	pop    %eax
    35cf:	8d 45 a8             	lea    -0x58(%ebp),%eax
    35d2:	5a                   	pop    %edx
    35d3:	68 02 02 00 00       	push   $0x202
    35d8:	50                   	push   %eax
    35d9:	e8 58 05 00 00       	call   3b36 <open>
    if(fd < 0){
    35de:	83 c4 10             	add    $0x10,%esp
    int fd = open(name, O_CREATE|O_RDWR);
    35e1:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    35e3:	85 c0                	test   %eax,%eax
    35e5:	78 4f                	js     3636 <fsfull+0x106>
    int total = 0;
    35e7:	31 db                	xor    %ebx,%ebx
    35e9:	eb 07                	jmp    35f2 <fsfull+0xc2>
    35eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    35ef:	90                   	nop
      total += cc;
    35f0:	01 c3                	add    %eax,%ebx
      int cc = write(fd, buf, 512);
    35f2:	83 ec 04             	sub    $0x4,%esp
    35f5:	68 00 02 00 00       	push   $0x200
    35fa:	68 60 89 00 00       	push   $0x8960
    35ff:	57                   	push   %edi
    3600:	e8 11 05 00 00       	call   3b16 <write>
      if(cc < 512)
    3605:	83 c4 10             	add    $0x10,%esp
    3608:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    360d:	7f e1                	jg     35f0 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    360f:	83 ec 04             	sub    $0x4,%esp
    3612:	53                   	push   %ebx
    3613:	68 c6 4f 00 00       	push   $0x4fc6
    3618:	6a 01                	push   $0x1
    361a:	e8 41 06 00 00       	call   3c60 <printf>
    close(fd);
    361f:	89 3c 24             	mov    %edi,(%esp)
    3622:	e8 f7 04 00 00       	call   3b1e <close>
    if(total == 0)
    3627:	83 c4 10             	add    $0x10,%esp
    362a:	85 db                	test   %ebx,%ebx
    362c:	74 1e                	je     364c <fsfull+0x11c>
  for(nfiles = 0; ; nfiles++){
    362e:	83 c6 01             	add    $0x1,%esi
    3631:	e9 1a ff ff ff       	jmp    3550 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3636:	83 ec 04             	sub    $0x4,%esp
    3639:	8d 45 a8             	lea    -0x58(%ebp),%eax
    363c:	50                   	push   %eax
    363d:	68 b6 4f 00 00       	push   $0x4fb6
    3642:	6a 01                	push   $0x1
    3644:	e8 17 06 00 00       	call   3c60 <printf>
      break;
    3649:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    364c:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    3651:	bb 1f 85 eb 51       	mov    $0x51eb851f,%ebx
    3656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    365d:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    3660:	89 f0                	mov    %esi,%eax
    unlink(name);
    3662:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    3665:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    3669:	f7 e7                	mul    %edi
    name[5] = '\0';
    366b:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    366f:	c1 ea 06             	shr    $0x6,%edx
    3672:	8d 42 30             	lea    0x30(%edx),%eax
    3675:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3678:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    367e:	89 f2                	mov    %esi,%edx
    3680:	29 c2                	sub    %eax,%edx
    3682:	89 d0                	mov    %edx,%eax
    3684:	f7 e3                	mul    %ebx
    name[3] = '0' + (nfiles % 100) / 10;
    3686:	89 f0                	mov    %esi,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3688:	c1 ea 05             	shr    $0x5,%edx
    368b:	83 c2 30             	add    $0x30,%edx
    368e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3691:	f7 e3                	mul    %ebx
    3693:	c1 ea 05             	shr    $0x5,%edx
    3696:	6b ca 64             	imul   $0x64,%edx,%ecx
    3699:	89 f2                	mov    %esi,%edx
    369b:	29 ca                	sub    %ecx,%edx
    369d:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    36a2:	89 d0                	mov    %edx,%eax
    36a4:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    36a6:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    36a8:	c1 ea 03             	shr    $0x3,%edx
    36ab:	83 c2 30             	add    $0x30,%edx
    36ae:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    36b1:	f7 e1                	mul    %ecx
    36b3:	89 f0                	mov    %esi,%eax
    nfiles--;
    36b5:	83 ee 01             	sub    $0x1,%esi
    name[4] = '0' + (nfiles % 10);
    36b8:	c1 ea 03             	shr    $0x3,%edx
    36bb:	8d 14 92             	lea    (%edx,%edx,4),%edx
    36be:	01 d2                	add    %edx,%edx
    36c0:	29 d0                	sub    %edx,%eax
    36c2:	83 c0 30             	add    $0x30,%eax
    36c5:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    36c8:	8d 45 a8             	lea    -0x58(%ebp),%eax
    36cb:	50                   	push   %eax
    36cc:	e8 75 04 00 00       	call   3b46 <unlink>
  while(nfiles >= 0){
    36d1:	83 c4 10             	add    $0x10,%esp
    36d4:	83 fe ff             	cmp    $0xffffffff,%esi
    36d7:	75 87                	jne    3660 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    36d9:	83 ec 08             	sub    $0x8,%esp
    36dc:	68 d6 4f 00 00       	push   $0x4fd6
    36e1:	6a 01                	push   $0x1
    36e3:	e8 78 05 00 00       	call   3c60 <printf>
}
    36e8:	83 c4 10             	add    $0x10,%esp
    36eb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    36ee:	5b                   	pop    %ebx
    36ef:	5e                   	pop    %esi
    36f0:	5f                   	pop    %edi
    36f1:	5d                   	pop    %ebp
    36f2:	c3                   	ret    
    36f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003700 <uio>:
{
    3700:	55                   	push   %ebp
    3701:	89 e5                	mov    %esp,%ebp
    3703:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    3706:	68 ec 4f 00 00       	push   $0x4fec
    370b:	6a 01                	push   $0x1
    370d:	e8 4e 05 00 00       	call   3c60 <printf>
  pid = fork();
    3712:	e8 d7 03 00 00       	call   3aee <fork>
  if(pid == 0){
    3717:	83 c4 10             	add    $0x10,%esp
    371a:	85 c0                	test   %eax,%eax
    371c:	74 1b                	je     3739 <uio+0x39>
  } else if(pid < 0){
    371e:	78 3d                	js     375d <uio+0x5d>
  wait();
    3720:	e8 d9 03 00 00       	call   3afe <wait>
  printf(1, "uio test done\n");
    3725:	83 ec 08             	sub    $0x8,%esp
    3728:	68 f6 4f 00 00       	push   $0x4ff6
    372d:	6a 01                	push   $0x1
    372f:	e8 2c 05 00 00       	call   3c60 <printf>
}
    3734:	83 c4 10             	add    $0x10,%esp
    3737:	c9                   	leave  
    3738:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3739:	b8 09 00 00 00       	mov    $0x9,%eax
    373e:	ba 70 00 00 00       	mov    $0x70,%edx
    3743:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3744:	ba 71 00 00 00       	mov    $0x71,%edx
    3749:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    374a:	52                   	push   %edx
    374b:	52                   	push   %edx
    374c:	68 80 57 00 00       	push   $0x5780
    3751:	6a 01                	push   $0x1
    3753:	e8 08 05 00 00       	call   3c60 <printf>
    exit();
    3758:	e8 99 03 00 00       	call   3af6 <exit>
    printf (1, "fork failed\n");
    375d:	50                   	push   %eax
    375e:	50                   	push   %eax
    375f:	68 7b 4f 00 00       	push   $0x4f7b
    3764:	6a 01                	push   $0x1
    3766:	e8 f5 04 00 00       	call   3c60 <printf>
    exit();
    376b:	e8 86 03 00 00       	call   3af6 <exit>

00003770 <argptest>:
{
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	53                   	push   %ebx
    3774:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3777:	6a 00                	push   $0x0
    3779:	68 05 50 00 00       	push   $0x5005
    377e:	e8 b3 03 00 00       	call   3b36 <open>
  if (fd < 0) {
    3783:	83 c4 10             	add    $0x10,%esp
    3786:	85 c0                	test   %eax,%eax
    3788:	78 39                	js     37c3 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    378a:	83 ec 0c             	sub    $0xc,%esp
    378d:	89 c3                	mov    %eax,%ebx
    378f:	6a 00                	push   $0x0
    3791:	e8 e8 03 00 00       	call   3b7e <sbrk>
    3796:	83 c4 0c             	add    $0xc,%esp
    3799:	83 e8 01             	sub    $0x1,%eax
    379c:	6a ff                	push   $0xffffffff
    379e:	50                   	push   %eax
    379f:	53                   	push   %ebx
    37a0:	e8 69 03 00 00       	call   3b0e <read>
  close(fd);
    37a5:	89 1c 24             	mov    %ebx,(%esp)
    37a8:	e8 71 03 00 00       	call   3b1e <close>
  printf(1, "arg test passed\n");
    37ad:	58                   	pop    %eax
    37ae:	5a                   	pop    %edx
    37af:	68 17 50 00 00       	push   $0x5017
    37b4:	6a 01                	push   $0x1
    37b6:	e8 a5 04 00 00       	call   3c60 <printf>
}
    37bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    37be:	83 c4 10             	add    $0x10,%esp
    37c1:	c9                   	leave  
    37c2:	c3                   	ret    
    printf(2, "open failed\n");
    37c3:	51                   	push   %ecx
    37c4:	51                   	push   %ecx
    37c5:	68 0a 50 00 00       	push   $0x500a
    37ca:	6a 02                	push   $0x2
    37cc:	e8 8f 04 00 00       	call   3c60 <printf>
    exit();
    37d1:	e8 20 03 00 00       	call   3af6 <exit>
    37d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    37dd:	8d 76 00             	lea    0x0(%esi),%esi

000037e0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    37e0:	69 05 14 62 00 00 0d 	imul   $0x19660d,0x6214,%eax
    37e7:	66 19 00 
    37ea:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    37ef:	a3 14 62 00 00       	mov    %eax,0x6214
}
    37f4:	c3                   	ret    
    37f5:	66 90                	xchg   %ax,%ax
    37f7:	66 90                	xchg   %ax,%ax
    37f9:	66 90                	xchg   %ax,%ax
    37fb:	66 90                	xchg   %ax,%ax
    37fd:	66 90                	xchg   %ax,%ax
    37ff:	90                   	nop

00003800 <strcpy>:

#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
    3800:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3801:	31 c0                	xor    %eax,%eax
{
    3803:	89 e5                	mov    %esp,%ebp
    3805:	53                   	push   %ebx
    3806:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3809:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    380c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3810:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    3814:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    3817:	83 c0 01             	add    $0x1,%eax
    381a:	84 d2                	test   %dl,%dl
    381c:	75 f2                	jne    3810 <strcpy+0x10>
    ;
  return os;
}
    381e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3821:	89 c8                	mov    %ecx,%eax
    3823:	c9                   	leave  
    3824:	c3                   	ret    
    3825:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    382c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003830 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3830:	55                   	push   %ebp
    3831:	89 e5                	mov    %esp,%ebp
    3833:	53                   	push   %ebx
    3834:	8b 55 08             	mov    0x8(%ebp),%edx
    3837:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    383a:	0f b6 02             	movzbl (%edx),%eax
    383d:	84 c0                	test   %al,%al
    383f:	75 17                	jne    3858 <strcmp+0x28>
    3841:	eb 3a                	jmp    387d <strcmp+0x4d>
    3843:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3847:	90                   	nop
    3848:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    384c:	83 c2 01             	add    $0x1,%edx
    384f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3852:	84 c0                	test   %al,%al
    3854:	74 1a                	je     3870 <strcmp+0x40>
    p++, q++;
    3856:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
    3858:	0f b6 19             	movzbl (%ecx),%ebx
    385b:	38 c3                	cmp    %al,%bl
    385d:	74 e9                	je     3848 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
    385f:	29 d8                	sub    %ebx,%eax
}
    3861:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3864:	c9                   	leave  
    3865:	c3                   	ret    
    3866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    386d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
    3870:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3874:	31 c0                	xor    %eax,%eax
    3876:	29 d8                	sub    %ebx,%eax
}
    3878:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    387b:	c9                   	leave  
    387c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
    387d:	0f b6 19             	movzbl (%ecx),%ebx
    3880:	31 c0                	xor    %eax,%eax
    3882:	eb db                	jmp    385f <strcmp+0x2f>
    3884:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    388b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    388f:	90                   	nop

00003890 <strlen>:

uint
strlen(const char *s)
{
    3890:	55                   	push   %ebp
    3891:	89 e5                	mov    %esp,%ebp
    3893:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3896:	80 3a 00             	cmpb   $0x0,(%edx)
    3899:	74 15                	je     38b0 <strlen+0x20>
    389b:	31 c0                	xor    %eax,%eax
    389d:	8d 76 00             	lea    0x0(%esi),%esi
    38a0:	83 c0 01             	add    $0x1,%eax
    38a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    38a7:	89 c1                	mov    %eax,%ecx
    38a9:	75 f5                	jne    38a0 <strlen+0x10>
    ;
  return n;
}
    38ab:	89 c8                	mov    %ecx,%eax
    38ad:	5d                   	pop    %ebp
    38ae:	c3                   	ret    
    38af:	90                   	nop
  for(n = 0; s[n]; n++)
    38b0:	31 c9                	xor    %ecx,%ecx
}
    38b2:	5d                   	pop    %ebp
    38b3:	89 c8                	mov    %ecx,%eax
    38b5:	c3                   	ret    
    38b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38bd:	8d 76 00             	lea    0x0(%esi),%esi

000038c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    38c0:	55                   	push   %ebp
    38c1:	89 e5                	mov    %esp,%ebp
    38c3:	57                   	push   %edi
    38c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    38c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    38ca:	8b 45 0c             	mov    0xc(%ebp),%eax
    38cd:	89 d7                	mov    %edx,%edi
    38cf:	fc                   	cld    
    38d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    38d2:	8b 7d fc             	mov    -0x4(%ebp),%edi
    38d5:	89 d0                	mov    %edx,%eax
    38d7:	c9                   	leave  
    38d8:	c3                   	ret    
    38d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000038e0 <strchr>:

char*
strchr(const char *s, char c)
{
    38e0:	55                   	push   %ebp
    38e1:	89 e5                	mov    %esp,%ebp
    38e3:	8b 45 08             	mov    0x8(%ebp),%eax
    38e6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    38ea:	0f b6 10             	movzbl (%eax),%edx
    38ed:	84 d2                	test   %dl,%dl
    38ef:	75 12                	jne    3903 <strchr+0x23>
    38f1:	eb 1d                	jmp    3910 <strchr+0x30>
    38f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    38f7:	90                   	nop
    38f8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    38fc:	83 c0 01             	add    $0x1,%eax
    38ff:	84 d2                	test   %dl,%dl
    3901:	74 0d                	je     3910 <strchr+0x30>
    if(*s == c)
    3903:	38 d1                	cmp    %dl,%cl
    3905:	75 f1                	jne    38f8 <strchr+0x18>
      return (char*)s;
  return 0;
}
    3907:	5d                   	pop    %ebp
    3908:	c3                   	ret    
    3909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3910:	31 c0                	xor    %eax,%eax
}
    3912:	5d                   	pop    %ebp
    3913:	c3                   	ret    
    3914:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    391b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    391f:	90                   	nop

00003920 <gets>:

char*
gets(char *buf, int max)
{
    3920:	55                   	push   %ebp
    3921:	89 e5                	mov    %esp,%ebp
    3923:	57                   	push   %edi
    3924:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3925:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    3928:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    3929:	31 db                	xor    %ebx,%ebx
{
    392b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    392e:	eb 27                	jmp    3957 <gets+0x37>
    cc = read(0, &c, 1);
    3930:	83 ec 04             	sub    $0x4,%esp
    3933:	6a 01                	push   $0x1
    3935:	57                   	push   %edi
    3936:	6a 00                	push   $0x0
    3938:	e8 d1 01 00 00       	call   3b0e <read>
    if(cc < 1)
    393d:	83 c4 10             	add    $0x10,%esp
    3940:	85 c0                	test   %eax,%eax
    3942:	7e 1d                	jle    3961 <gets+0x41>
      break;
    buf[i++] = c;
    3944:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3948:	8b 55 08             	mov    0x8(%ebp),%edx
    394b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    394f:	3c 0a                	cmp    $0xa,%al
    3951:	74 1d                	je     3970 <gets+0x50>
    3953:	3c 0d                	cmp    $0xd,%al
    3955:	74 19                	je     3970 <gets+0x50>
  for(i=0; i+1 < max; ){
    3957:	89 de                	mov    %ebx,%esi
    3959:	83 c3 01             	add    $0x1,%ebx
    395c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    395f:	7c cf                	jl     3930 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3961:	8b 45 08             	mov    0x8(%ebp),%eax
    3964:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3968:	8d 65 f4             	lea    -0xc(%ebp),%esp
    396b:	5b                   	pop    %ebx
    396c:	5e                   	pop    %esi
    396d:	5f                   	pop    %edi
    396e:	5d                   	pop    %ebp
    396f:	c3                   	ret    
  buf[i] = '\0';
    3970:	8b 45 08             	mov    0x8(%ebp),%eax
    3973:	89 de                	mov    %ebx,%esi
    3975:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    3979:	8d 65 f4             	lea    -0xc(%ebp),%esp
    397c:	5b                   	pop    %ebx
    397d:	5e                   	pop    %esi
    397e:	5f                   	pop    %edi
    397f:	5d                   	pop    %ebp
    3980:	c3                   	ret    
    3981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3988:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    398f:	90                   	nop

00003990 <stat>:

int
stat(const char *n, struct stat *st)
{
    3990:	55                   	push   %ebp
    3991:	89 e5                	mov    %esp,%ebp
    3993:	56                   	push   %esi
    3994:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3995:	83 ec 08             	sub    $0x8,%esp
    3998:	6a 00                	push   $0x0
    399a:	ff 75 08             	push   0x8(%ebp)
    399d:	e8 94 01 00 00       	call   3b36 <open>
  if(fd < 0)
    39a2:	83 c4 10             	add    $0x10,%esp
    39a5:	85 c0                	test   %eax,%eax
    39a7:	78 27                	js     39d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    39a9:	83 ec 08             	sub    $0x8,%esp
    39ac:	ff 75 0c             	push   0xc(%ebp)
    39af:	89 c3                	mov    %eax,%ebx
    39b1:	50                   	push   %eax
    39b2:	e8 97 01 00 00       	call   3b4e <fstat>
  close(fd);
    39b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    39ba:	89 c6                	mov    %eax,%esi
  close(fd);
    39bc:	e8 5d 01 00 00       	call   3b1e <close>
  return r;
    39c1:	83 c4 10             	add    $0x10,%esp
}
    39c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    39c7:	89 f0                	mov    %esi,%eax
    39c9:	5b                   	pop    %ebx
    39ca:	5e                   	pop    %esi
    39cb:	5d                   	pop    %ebp
    39cc:	c3                   	ret    
    39cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    39d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    39d5:	eb ed                	jmp    39c4 <stat+0x34>
    39d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    39de:	66 90                	xchg   %ax,%ax

000039e0 <atoi>:

int
atoi(const char *s)
{
    39e0:	55                   	push   %ebp
    39e1:	89 e5                	mov    %esp,%ebp
    39e3:	53                   	push   %ebx
    39e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    39e7:	0f be 02             	movsbl (%edx),%eax
    39ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
    39ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    39f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    39f5:	77 1e                	ja     3a15 <atoi+0x35>
    39f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    39fe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3a00:	83 c2 01             	add    $0x1,%edx
    3a03:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3a06:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    3a0a:	0f be 02             	movsbl (%edx),%eax
    3a0d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3a10:	80 fb 09             	cmp    $0x9,%bl
    3a13:	76 eb                	jbe    3a00 <atoi+0x20>
  return n;
}
    3a15:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3a18:	89 c8                	mov    %ecx,%eax
    3a1a:	c9                   	leave  
    3a1b:	c3                   	ret    
    3a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003a20 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3a20:	55                   	push   %ebp
    3a21:	89 e5                	mov    %esp,%ebp
    3a23:	57                   	push   %edi
    3a24:	8b 45 10             	mov    0x10(%ebp),%eax
    3a27:	8b 55 08             	mov    0x8(%ebp),%edx
    3a2a:	56                   	push   %esi
    3a2b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3a2e:	85 c0                	test   %eax,%eax
    3a30:	7e 13                	jle    3a45 <memmove+0x25>
    3a32:	01 d0                	add    %edx,%eax
  dst = vdst;
    3a34:	89 d7                	mov    %edx,%edi
    3a36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3a3d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3a40:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3a41:	39 f8                	cmp    %edi,%eax
    3a43:	75 fb                	jne    3a40 <memmove+0x20>
  return vdst;
}
    3a45:	5e                   	pop    %esi
    3a46:	89 d0                	mov    %edx,%eax
    3a48:	5f                   	pop    %edi
    3a49:	5d                   	pop    %ebp
    3a4a:	c3                   	ret    
    3a4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3a4f:	90                   	nop

00003a50 <thread_create>:

int thread_create(void (*start_routine)(void *, void *), void* arg1, void* arg2)
{
    3a50:	55                   	push   %ebp
    3a51:	89 e5                	mov    %esp,%ebp
    3a53:	83 ec 14             	sub    $0x14,%esp
	void* ptr;
	void *stack; 
		ptr = malloc((PGSIZE*2));
    3a56:	68 00 20 00 00       	push   $0x2000
    3a5b:	e8 30 04 00 00       	call   3e90 <malloc>

	if (ptr != 0) {
    3a60:	83 c4 10             	add    $0x10,%esp
    3a63:	85 c0                	test   %eax,%eax
    3a65:	75 12                	jne    3a79 <thread_create+0x29>
	if ((uint)ptr% PGSIZE == 0)
	       stack = ptr;
	else
	       stack = ptr + (PGSIZE - ((uint)ptr % PGSIZE));	

	return clone(start_routine, arg1, arg2, stack);
    3a67:	6a 00                	push   $0x0
    3a69:	ff 75 10             	push   0x10(%ebp)
    3a6c:	ff 75 0c             	push   0xc(%ebp)
    3a6f:	ff 75 08             	push   0x8(%ebp)
    3a72:	e8 1f 01 00 00       	call   3b96 <clone>
}
    3a77:	c9                   	leave  
    3a78:	c3                   	ret    
	    printf(1, "Error with malloc\n");
    3a79:	50                   	push   %eax
    3a7a:	50                   	push   %eax
    3a7b:	68 ce 57 00 00       	push   $0x57ce
    3a80:	6a 01                	push   $0x1
    3a82:	e8 d9 01 00 00       	call   3c60 <printf>
	    exit();
    3a87:	e8 6a 00 00 00       	call   3af6 <exit>
    3a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003a90 <thread_join>:

int thread_join()
{
    3a90:	55                   	push   %ebp
    3a91:	89 e5                	mov    %esp,%ebp
    3a93:	83 ec 24             	sub    $0x24,%esp
	void* stackPtr;
	int threadret = join(&stackPtr);
    3a96:	8d 45 f4             	lea    -0xc(%ebp),%eax
    3a99:	50                   	push   %eax
    3a9a:	e8 ff 00 00 00       	call   3b9e <join>
	return threadret;
}
    3a9f:	c9                   	leave  
    3aa0:	c3                   	ret    
    3aa1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3aa8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3aaf:	90                   	nop

00003ab0 <lock_init>:

void lock_init(lock_t *lk)
{
    3ab0:	55                   	push   %ebp
    3ab1:	89 e5                	mov    %esp,%ebp
	lk->locked = 0;
    3ab3:	8b 45 08             	mov    0x8(%ebp),%eax
    3ab6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    3abc:	5d                   	pop    %ebp
    3abd:	c3                   	ret    
    3abe:	66 90                	xchg   %ax,%ax

00003ac0 <lock_acquire>:

void lock_acquire(lock_t *lk)
{
    3ac0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    3ac1:	b9 01 00 00 00       	mov    $0x1,%ecx
    3ac6:	89 e5                	mov    %esp,%ebp
    3ac8:	8b 55 08             	mov    0x8(%ebp),%edx
    3acb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3acf:	90                   	nop
    3ad0:	89 c8                	mov    %ecx,%eax
    3ad2:	f0 87 02             	lock xchg %eax,(%edx)
   while(xchg(&lk->locked, 1) != 0);
    3ad5:	85 c0                	test   %eax,%eax
    3ad7:	75 f7                	jne    3ad0 <lock_acquire+0x10>
}
    3ad9:	5d                   	pop    %ebp
    3ada:	c3                   	ret    
    3adb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3adf:	90                   	nop

00003ae0 <lock_release>:
    3ae0:	55                   	push   %ebp
    3ae1:	89 e5                	mov    %esp,%ebp
    3ae3:	8b 45 08             	mov    0x8(%ebp),%eax
    3ae6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    3aec:	5d                   	pop    %ebp
    3aed:	c3                   	ret    

00003aee <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3aee:	b8 01 00 00 00       	mov    $0x1,%eax
    3af3:	cd 40                	int    $0x40
    3af5:	c3                   	ret    

00003af6 <exit>:
SYSCALL(exit)
    3af6:	b8 02 00 00 00       	mov    $0x2,%eax
    3afb:	cd 40                	int    $0x40
    3afd:	c3                   	ret    

00003afe <wait>:
SYSCALL(wait)
    3afe:	b8 03 00 00 00       	mov    $0x3,%eax
    3b03:	cd 40                	int    $0x40
    3b05:	c3                   	ret    

00003b06 <pipe>:
SYSCALL(pipe)
    3b06:	b8 04 00 00 00       	mov    $0x4,%eax
    3b0b:	cd 40                	int    $0x40
    3b0d:	c3                   	ret    

00003b0e <read>:
SYSCALL(read)
    3b0e:	b8 05 00 00 00       	mov    $0x5,%eax
    3b13:	cd 40                	int    $0x40
    3b15:	c3                   	ret    

00003b16 <write>:
SYSCALL(write)
    3b16:	b8 10 00 00 00       	mov    $0x10,%eax
    3b1b:	cd 40                	int    $0x40
    3b1d:	c3                   	ret    

00003b1e <close>:
SYSCALL(close)
    3b1e:	b8 15 00 00 00       	mov    $0x15,%eax
    3b23:	cd 40                	int    $0x40
    3b25:	c3                   	ret    

00003b26 <kill>:
SYSCALL(kill)
    3b26:	b8 06 00 00 00       	mov    $0x6,%eax
    3b2b:	cd 40                	int    $0x40
    3b2d:	c3                   	ret    

00003b2e <exec>:
SYSCALL(exec)
    3b2e:	b8 07 00 00 00       	mov    $0x7,%eax
    3b33:	cd 40                	int    $0x40
    3b35:	c3                   	ret    

00003b36 <open>:
SYSCALL(open)
    3b36:	b8 0f 00 00 00       	mov    $0xf,%eax
    3b3b:	cd 40                	int    $0x40
    3b3d:	c3                   	ret    

00003b3e <mknod>:
SYSCALL(mknod)
    3b3e:	b8 11 00 00 00       	mov    $0x11,%eax
    3b43:	cd 40                	int    $0x40
    3b45:	c3                   	ret    

00003b46 <unlink>:
SYSCALL(unlink)
    3b46:	b8 12 00 00 00       	mov    $0x12,%eax
    3b4b:	cd 40                	int    $0x40
    3b4d:	c3                   	ret    

00003b4e <fstat>:
SYSCALL(fstat)
    3b4e:	b8 08 00 00 00       	mov    $0x8,%eax
    3b53:	cd 40                	int    $0x40
    3b55:	c3                   	ret    

00003b56 <link>:
SYSCALL(link)
    3b56:	b8 13 00 00 00       	mov    $0x13,%eax
    3b5b:	cd 40                	int    $0x40
    3b5d:	c3                   	ret    

00003b5e <mkdir>:
SYSCALL(mkdir)
    3b5e:	b8 14 00 00 00       	mov    $0x14,%eax
    3b63:	cd 40                	int    $0x40
    3b65:	c3                   	ret    

00003b66 <chdir>:
SYSCALL(chdir)
    3b66:	b8 09 00 00 00       	mov    $0x9,%eax
    3b6b:	cd 40                	int    $0x40
    3b6d:	c3                   	ret    

00003b6e <dup>:
SYSCALL(dup)
    3b6e:	b8 0a 00 00 00       	mov    $0xa,%eax
    3b73:	cd 40                	int    $0x40
    3b75:	c3                   	ret    

00003b76 <getpid>:
SYSCALL(getpid)
    3b76:	b8 0b 00 00 00       	mov    $0xb,%eax
    3b7b:	cd 40                	int    $0x40
    3b7d:	c3                   	ret    

00003b7e <sbrk>:
SYSCALL(sbrk)
    3b7e:	b8 0c 00 00 00       	mov    $0xc,%eax
    3b83:	cd 40                	int    $0x40
    3b85:	c3                   	ret    

00003b86 <sleep>:
SYSCALL(sleep)
    3b86:	b8 0d 00 00 00       	mov    $0xd,%eax
    3b8b:	cd 40                	int    $0x40
    3b8d:	c3                   	ret    

00003b8e <uptime>:
SYSCALL(uptime)
    3b8e:	b8 0e 00 00 00       	mov    $0xe,%eax
    3b93:	cd 40                	int    $0x40
    3b95:	c3                   	ret    

00003b96 <clone>:
SYSCALL(clone)
    3b96:	b8 16 00 00 00       	mov    $0x16,%eax
    3b9b:	cd 40                	int    $0x40
    3b9d:	c3                   	ret    

00003b9e <join>:
SYSCALL(join)
    3b9e:	b8 17 00 00 00       	mov    $0x17,%eax
    3ba3:	cd 40                	int    $0x40
    3ba5:	c3                   	ret    
    3ba6:	66 90                	xchg   %ax,%ax
    3ba8:	66 90                	xchg   %ax,%ax
    3baa:	66 90                	xchg   %ax,%ax
    3bac:	66 90                	xchg   %ax,%ax
    3bae:	66 90                	xchg   %ax,%ax

00003bb0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3bb0:	55                   	push   %ebp
    3bb1:	89 e5                	mov    %esp,%ebp
    3bb3:	57                   	push   %edi
    3bb4:	56                   	push   %esi
    3bb5:	53                   	push   %ebx
    3bb6:	83 ec 3c             	sub    $0x3c,%esp
    3bb9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    3bbc:	89 d1                	mov    %edx,%ecx
{
    3bbe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    3bc1:	85 d2                	test   %edx,%edx
    3bc3:	0f 89 7f 00 00 00    	jns    3c48 <printint+0x98>
    3bc9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3bcd:	74 79                	je     3c48 <printint+0x98>
    neg = 1;
    3bcf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    3bd6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    3bd8:	31 db                	xor    %ebx,%ebx
    3bda:	8d 75 d7             	lea    -0x29(%ebp),%esi
    3bdd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3be0:	89 c8                	mov    %ecx,%eax
    3be2:	31 d2                	xor    %edx,%edx
    3be4:	89 cf                	mov    %ecx,%edi
    3be6:	f7 75 c4             	divl   -0x3c(%ebp)
    3be9:	0f b6 92 40 58 00 00 	movzbl 0x5840(%edx),%edx
    3bf0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3bf3:	89 d8                	mov    %ebx,%eax
    3bf5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    3bf8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    3bfb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    3bfe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    3c01:	76 dd                	jbe    3be0 <printint+0x30>
  if(neg)
    3c03:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    3c06:	85 c9                	test   %ecx,%ecx
    3c08:	74 0c                	je     3c16 <printint+0x66>
    buf[i++] = '-';
    3c0a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    3c0f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    3c11:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    3c16:	8b 7d b8             	mov    -0x48(%ebp),%edi
    3c19:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    3c1d:	eb 07                	jmp    3c26 <printint+0x76>
    3c1f:	90                   	nop
    putc(fd, buf[i]);
    3c20:	0f b6 13             	movzbl (%ebx),%edx
    3c23:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    3c26:	83 ec 04             	sub    $0x4,%esp
    3c29:	88 55 d7             	mov    %dl,-0x29(%ebp)
    3c2c:	6a 01                	push   $0x1
    3c2e:	56                   	push   %esi
    3c2f:	57                   	push   %edi
    3c30:	e8 e1 fe ff ff       	call   3b16 <write>
  while(--i >= 0)
    3c35:	83 c4 10             	add    $0x10,%esp
    3c38:	39 de                	cmp    %ebx,%esi
    3c3a:	75 e4                	jne    3c20 <printint+0x70>
}
    3c3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3c3f:	5b                   	pop    %ebx
    3c40:	5e                   	pop    %esi
    3c41:	5f                   	pop    %edi
    3c42:	5d                   	pop    %ebp
    3c43:	c3                   	ret    
    3c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3c48:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    3c4f:	eb 87                	jmp    3bd8 <printint+0x28>
    3c51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c58:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c5f:	90                   	nop

00003c60 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3c60:	55                   	push   %ebp
    3c61:	89 e5                	mov    %esp,%ebp
    3c63:	57                   	push   %edi
    3c64:	56                   	push   %esi
    3c65:	53                   	push   %ebx
    3c66:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3c69:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    3c6c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    3c6f:	0f b6 13             	movzbl (%ebx),%edx
    3c72:	84 d2                	test   %dl,%dl
    3c74:	74 6a                	je     3ce0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    3c76:	8d 45 10             	lea    0x10(%ebp),%eax
    3c79:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3c7c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    3c7f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    3c81:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3c84:	eb 36                	jmp    3cbc <printf+0x5c>
    3c86:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c8d:	8d 76 00             	lea    0x0(%esi),%esi
    3c90:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3c93:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    3c98:	83 f8 25             	cmp    $0x25,%eax
    3c9b:	74 15                	je     3cb2 <printf+0x52>
  write(fd, &c, 1);
    3c9d:	83 ec 04             	sub    $0x4,%esp
    3ca0:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3ca3:	6a 01                	push   $0x1
    3ca5:	57                   	push   %edi
    3ca6:	56                   	push   %esi
    3ca7:	e8 6a fe ff ff       	call   3b16 <write>
    3cac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    3caf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3cb2:	0f b6 13             	movzbl (%ebx),%edx
    3cb5:	83 c3 01             	add    $0x1,%ebx
    3cb8:	84 d2                	test   %dl,%dl
    3cba:	74 24                	je     3ce0 <printf+0x80>
    c = fmt[i] & 0xff;
    3cbc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    3cbf:	85 c9                	test   %ecx,%ecx
    3cc1:	74 cd                	je     3c90 <printf+0x30>
      }
    } else if(state == '%'){
    3cc3:	83 f9 25             	cmp    $0x25,%ecx
    3cc6:	75 ea                	jne    3cb2 <printf+0x52>
      if(c == 'd'){
    3cc8:	83 f8 25             	cmp    $0x25,%eax
    3ccb:	0f 84 07 01 00 00    	je     3dd8 <printf+0x178>
    3cd1:	83 e8 63             	sub    $0x63,%eax
    3cd4:	83 f8 15             	cmp    $0x15,%eax
    3cd7:	77 17                	ja     3cf0 <printf+0x90>
    3cd9:	ff 24 85 e8 57 00 00 	jmp    *0x57e8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3ce0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ce3:	5b                   	pop    %ebx
    3ce4:	5e                   	pop    %esi
    3ce5:	5f                   	pop    %edi
    3ce6:	5d                   	pop    %ebp
    3ce7:	c3                   	ret    
    3ce8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3cef:	90                   	nop
  write(fd, &c, 1);
    3cf0:	83 ec 04             	sub    $0x4,%esp
    3cf3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    3cf6:	6a 01                	push   $0x1
    3cf8:	57                   	push   %edi
    3cf9:	56                   	push   %esi
    3cfa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    3cfe:	e8 13 fe ff ff       	call   3b16 <write>
        putc(fd, c);
    3d03:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    3d07:	83 c4 0c             	add    $0xc,%esp
    3d0a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3d0d:	6a 01                	push   $0x1
    3d0f:	57                   	push   %edi
    3d10:	56                   	push   %esi
    3d11:	e8 00 fe ff ff       	call   3b16 <write>
        putc(fd, c);
    3d16:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3d19:	31 c9                	xor    %ecx,%ecx
    3d1b:	eb 95                	jmp    3cb2 <printf+0x52>
    3d1d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3d20:	83 ec 0c             	sub    $0xc,%esp
    3d23:	b9 10 00 00 00       	mov    $0x10,%ecx
    3d28:	6a 00                	push   $0x0
    3d2a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3d2d:	8b 10                	mov    (%eax),%edx
    3d2f:	89 f0                	mov    %esi,%eax
    3d31:	e8 7a fe ff ff       	call   3bb0 <printint>
        ap++;
    3d36:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3d3a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3d3d:	31 c9                	xor    %ecx,%ecx
    3d3f:	e9 6e ff ff ff       	jmp    3cb2 <printf+0x52>
    3d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3d48:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3d4b:	8b 10                	mov    (%eax),%edx
        ap++;
    3d4d:	83 c0 04             	add    $0x4,%eax
    3d50:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    3d53:	85 d2                	test   %edx,%edx
    3d55:	0f 84 8d 00 00 00    	je     3de8 <printf+0x188>
        while(*s != 0){
    3d5b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    3d5e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    3d60:	84 c0                	test   %al,%al
    3d62:	0f 84 4a ff ff ff    	je     3cb2 <printf+0x52>
    3d68:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    3d6b:	89 d3                	mov    %edx,%ebx
    3d6d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3d70:	83 ec 04             	sub    $0x4,%esp
          s++;
    3d73:	83 c3 01             	add    $0x1,%ebx
    3d76:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3d79:	6a 01                	push   $0x1
    3d7b:	57                   	push   %edi
    3d7c:	56                   	push   %esi
    3d7d:	e8 94 fd ff ff       	call   3b16 <write>
        while(*s != 0){
    3d82:	0f b6 03             	movzbl (%ebx),%eax
    3d85:	83 c4 10             	add    $0x10,%esp
    3d88:	84 c0                	test   %al,%al
    3d8a:	75 e4                	jne    3d70 <printf+0x110>
      state = 0;
    3d8c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    3d8f:	31 c9                	xor    %ecx,%ecx
    3d91:	e9 1c ff ff ff       	jmp    3cb2 <printf+0x52>
    3d96:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d9d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    3da0:	83 ec 0c             	sub    $0xc,%esp
    3da3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3da8:	6a 01                	push   $0x1
    3daa:	e9 7b ff ff ff       	jmp    3d2a <printf+0xca>
    3daf:	90                   	nop
        putc(fd, *ap);
    3db0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    3db3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3db6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    3db8:	6a 01                	push   $0x1
    3dba:	57                   	push   %edi
    3dbb:	56                   	push   %esi
        putc(fd, *ap);
    3dbc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3dbf:	e8 52 fd ff ff       	call   3b16 <write>
        ap++;
    3dc4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    3dc8:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3dcb:	31 c9                	xor    %ecx,%ecx
    3dcd:	e9 e0 fe ff ff       	jmp    3cb2 <printf+0x52>
    3dd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    3dd8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    3ddb:	83 ec 04             	sub    $0x4,%esp
    3dde:	e9 2a ff ff ff       	jmp    3d0d <printf+0xad>
    3de3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3de7:	90                   	nop
          s = "(null)";
    3de8:	ba e1 57 00 00       	mov    $0x57e1,%edx
        while(*s != 0){
    3ded:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    3df0:	b8 28 00 00 00       	mov    $0x28,%eax
    3df5:	89 d3                	mov    %edx,%ebx
    3df7:	e9 74 ff ff ff       	jmp    3d70 <printf+0x110>
    3dfc:	66 90                	xchg   %ax,%ax
    3dfe:	66 90                	xchg   %ax,%ax

00003e00 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3e00:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3e01:	a1 00 aa 00 00       	mov    0xaa00,%eax
{
    3e06:	89 e5                	mov    %esp,%ebp
    3e08:	57                   	push   %edi
    3e09:	56                   	push   %esi
    3e0a:	53                   	push   %ebx
    3e0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3e0e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3e11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e18:	89 c2                	mov    %eax,%edx
    3e1a:	8b 00                	mov    (%eax),%eax
    3e1c:	39 ca                	cmp    %ecx,%edx
    3e1e:	73 30                	jae    3e50 <free+0x50>
    3e20:	39 c1                	cmp    %eax,%ecx
    3e22:	72 04                	jb     3e28 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3e24:	39 c2                	cmp    %eax,%edx
    3e26:	72 f0                	jb     3e18 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3e28:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3e2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3e2e:	39 f8                	cmp    %edi,%eax
    3e30:	74 30                	je     3e62 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3e32:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3e35:	8b 42 04             	mov    0x4(%edx),%eax
    3e38:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3e3b:	39 f1                	cmp    %esi,%ecx
    3e3d:	74 3a                	je     3e79 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    3e3f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3e41:	5b                   	pop    %ebx
  freep = p;
    3e42:	89 15 00 aa 00 00    	mov    %edx,0xaa00
}
    3e48:	5e                   	pop    %esi
    3e49:	5f                   	pop    %edi
    3e4a:	5d                   	pop    %ebp
    3e4b:	c3                   	ret    
    3e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3e50:	39 c2                	cmp    %eax,%edx
    3e52:	72 c4                	jb     3e18 <free+0x18>
    3e54:	39 c1                	cmp    %eax,%ecx
    3e56:	73 c0                	jae    3e18 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    3e58:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3e5b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3e5e:	39 f8                	cmp    %edi,%eax
    3e60:	75 d0                	jne    3e32 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    3e62:	03 70 04             	add    0x4(%eax),%esi
    3e65:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3e68:	8b 02                	mov    (%edx),%eax
    3e6a:	8b 00                	mov    (%eax),%eax
    3e6c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    3e6f:	8b 42 04             	mov    0x4(%edx),%eax
    3e72:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3e75:	39 f1                	cmp    %esi,%ecx
    3e77:	75 c6                	jne    3e3f <free+0x3f>
    p->s.size += bp->s.size;
    3e79:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    3e7c:	89 15 00 aa 00 00    	mov    %edx,0xaa00
    p->s.size += bp->s.size;
    3e82:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3e85:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3e88:	89 0a                	mov    %ecx,(%edx)
}
    3e8a:	5b                   	pop    %ebx
    3e8b:	5e                   	pop    %esi
    3e8c:	5f                   	pop    %edi
    3e8d:	5d                   	pop    %ebp
    3e8e:	c3                   	ret    
    3e8f:	90                   	nop

00003e90 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3e90:	55                   	push   %ebp
    3e91:	89 e5                	mov    %esp,%ebp
    3e93:	57                   	push   %edi
    3e94:	56                   	push   %esi
    3e95:	53                   	push   %ebx
    3e96:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3e99:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3e9c:	8b 3d 00 aa 00 00    	mov    0xaa00,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3ea2:	8d 70 07             	lea    0x7(%eax),%esi
    3ea5:	c1 ee 03             	shr    $0x3,%esi
    3ea8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    3eab:	85 ff                	test   %edi,%edi
    3ead:	0f 84 9d 00 00 00    	je     3f50 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3eb3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3eb5:	8b 4a 04             	mov    0x4(%edx),%ecx
    3eb8:	39 f1                	cmp    %esi,%ecx
    3eba:	73 6a                	jae    3f26 <malloc+0x96>
    3ebc:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3ec1:	39 de                	cmp    %ebx,%esi
    3ec3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3ec6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    3ecd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3ed0:	eb 17                	jmp    3ee9 <malloc+0x59>
    3ed2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3ed8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3eda:	8b 48 04             	mov    0x4(%eax),%ecx
    3edd:	39 f1                	cmp    %esi,%ecx
    3edf:	73 4f                	jae    3f30 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3ee1:	8b 3d 00 aa 00 00    	mov    0xaa00,%edi
    3ee7:	89 c2                	mov    %eax,%edx
    3ee9:	39 d7                	cmp    %edx,%edi
    3eeb:	75 eb                	jne    3ed8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    3eed:	83 ec 0c             	sub    $0xc,%esp
    3ef0:	ff 75 e4             	push   -0x1c(%ebp)
    3ef3:	e8 86 fc ff ff       	call   3b7e <sbrk>
  if(p == (char*)-1)
    3ef8:	83 c4 10             	add    $0x10,%esp
    3efb:	83 f8 ff             	cmp    $0xffffffff,%eax
    3efe:	74 1c                	je     3f1c <malloc+0x8c>
  hp->s.size = nu;
    3f00:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3f03:	83 ec 0c             	sub    $0xc,%esp
    3f06:	83 c0 08             	add    $0x8,%eax
    3f09:	50                   	push   %eax
    3f0a:	e8 f1 fe ff ff       	call   3e00 <free>
  return freep;
    3f0f:	8b 15 00 aa 00 00    	mov    0xaa00,%edx
      if((p = morecore(nunits)) == 0)
    3f15:	83 c4 10             	add    $0x10,%esp
    3f18:	85 d2                	test   %edx,%edx
    3f1a:	75 bc                	jne    3ed8 <malloc+0x48>
        return 0;
  }
}
    3f1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3f1f:	31 c0                	xor    %eax,%eax
}
    3f21:	5b                   	pop    %ebx
    3f22:	5e                   	pop    %esi
    3f23:	5f                   	pop    %edi
    3f24:	5d                   	pop    %ebp
    3f25:	c3                   	ret    
    if(p->s.size >= nunits){
    3f26:	89 d0                	mov    %edx,%eax
    3f28:	89 fa                	mov    %edi,%edx
    3f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3f30:	39 ce                	cmp    %ecx,%esi
    3f32:	74 4c                	je     3f80 <malloc+0xf0>
        p->s.size -= nunits;
    3f34:	29 f1                	sub    %esi,%ecx
    3f36:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3f39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3f3c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    3f3f:	89 15 00 aa 00 00    	mov    %edx,0xaa00
}
    3f45:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3f48:	83 c0 08             	add    $0x8,%eax
}
    3f4b:	5b                   	pop    %ebx
    3f4c:	5e                   	pop    %esi
    3f4d:	5f                   	pop    %edi
    3f4e:	5d                   	pop    %ebp
    3f4f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    3f50:	c7 05 00 aa 00 00 04 	movl   $0xaa04,0xaa00
    3f57:	aa 00 00 
    base.s.size = 0;
    3f5a:	bf 04 aa 00 00       	mov    $0xaa04,%edi
    base.s.ptr = freep = prevp = &base;
    3f5f:	c7 05 04 aa 00 00 04 	movl   $0xaa04,0xaa04
    3f66:	aa 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3f69:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    3f6b:	c7 05 08 aa 00 00 00 	movl   $0x0,0xaa08
    3f72:	00 00 00 
    if(p->s.size >= nunits){
    3f75:	e9 42 ff ff ff       	jmp    3ebc <malloc+0x2c>
    3f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3f80:	8b 08                	mov    (%eax),%ecx
    3f82:	89 0a                	mov    %ecx,(%edx)
    3f84:	eb b9                	jmp    3f3f <malloc+0xaf>
