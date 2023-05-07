
_ln:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
  if(argc != 3){
   a:	83 39 03             	cmpl   $0x3,(%ecx)
{
   d:	55                   	push   %ebp
   e:	89 e5                	mov    %esp,%ebp
  10:	53                   	push   %ebx
  11:	51                   	push   %ecx
  12:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc != 3){
  15:	74 13                	je     2a <main+0x2a>
    printf(2, "Usage: ln old new\n");
  17:	52                   	push   %edx
  18:	52                   	push   %edx
  19:	68 e8 07 00 00       	push   $0x7e8
  1e:	6a 02                	push   $0x2
  20:	e8 9b 04 00 00       	call   4c0 <printf>
    exit();
  25:	e8 2c 03 00 00       	call   356 <exit>
  }
  if(link(argv[1], argv[2]) < 0)
  2a:	50                   	push   %eax
  2b:	50                   	push   %eax
  2c:	ff 73 08             	push   0x8(%ebx)
  2f:	ff 73 04             	push   0x4(%ebx)
  32:	e8 7f 03 00 00       	call   3b6 <link>
  37:	83 c4 10             	add    $0x10,%esp
  3a:	85 c0                	test   %eax,%eax
  3c:	78 05                	js     43 <main+0x43>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
  exit();
  3e:	e8 13 03 00 00       	call   356 <exit>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
  43:	ff 73 08             	push   0x8(%ebx)
  46:	ff 73 04             	push   0x4(%ebx)
  49:	68 fb 07 00 00       	push   $0x7fb
  4e:	6a 02                	push   $0x2
  50:	e8 6b 04 00 00       	call   4c0 <printf>
  55:	83 c4 10             	add    $0x10,%esp
  58:	eb e4                	jmp    3e <main+0x3e>
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <strcpy>:

#define PGSIZE 4096

char*
strcpy(char *s, const char *t)
{
  60:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  61:	31 c0                	xor    %eax,%eax
{
  63:	89 e5                	mov    %esp,%ebp
  65:	53                   	push   %ebx
  66:	8b 4d 08             	mov    0x8(%ebp),%ecx
  69:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  70:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  74:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  77:	83 c0 01             	add    $0x1,%eax
  7a:	84 d2                	test   %dl,%dl
  7c:	75 f2                	jne    70 <strcpy+0x10>
    ;
  return os;
}
  7e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  81:	89 c8                	mov    %ecx,%eax
  83:	c9                   	leave  
  84:	c3                   	ret    
  85:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000090 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	53                   	push   %ebx
  94:	8b 55 08             	mov    0x8(%ebp),%edx
  97:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  9a:	0f b6 02             	movzbl (%edx),%eax
  9d:	84 c0                	test   %al,%al
  9f:	75 17                	jne    b8 <strcmp+0x28>
  a1:	eb 3a                	jmp    dd <strcmp+0x4d>
  a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  a7:	90                   	nop
  a8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  ac:	83 c2 01             	add    $0x1,%edx
  af:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  b2:	84 c0                	test   %al,%al
  b4:	74 1a                	je     d0 <strcmp+0x40>
    p++, q++;
  b6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  b8:	0f b6 19             	movzbl (%ecx),%ebx
  bb:	38 c3                	cmp    %al,%bl
  bd:	74 e9                	je     a8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  bf:	29 d8                	sub    %ebx,%eax
}
  c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c4:	c9                   	leave  
  c5:	c3                   	ret    
  c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  d0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  d4:	31 c0                	xor    %eax,%eax
  d6:	29 d8                	sub    %ebx,%eax
}
  d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  db:	c9                   	leave  
  dc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  dd:	0f b6 19             	movzbl (%ecx),%ebx
  e0:	31 c0                	xor    %eax,%eax
  e2:	eb db                	jmp    bf <strcmp+0x2f>
  e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  ef:	90                   	nop

000000f0 <strlen>:

uint
strlen(const char *s)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  f6:	80 3a 00             	cmpb   $0x0,(%edx)
  f9:	74 15                	je     110 <strlen+0x20>
  fb:	31 c0                	xor    %eax,%eax
  fd:	8d 76 00             	lea    0x0(%esi),%esi
 100:	83 c0 01             	add    $0x1,%eax
 103:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 107:	89 c1                	mov    %eax,%ecx
 109:	75 f5                	jne    100 <strlen+0x10>
    ;
  return n;
}
 10b:	89 c8                	mov    %ecx,%eax
 10d:	5d                   	pop    %ebp
 10e:	c3                   	ret    
 10f:	90                   	nop
  for(n = 0; s[n]; n++)
 110:	31 c9                	xor    %ecx,%ecx
}
 112:	5d                   	pop    %ebp
 113:	89 c8                	mov    %ecx,%eax
 115:	c3                   	ret    
 116:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 11d:	8d 76 00             	lea    0x0(%esi),%esi

00000120 <memset>:

void*
memset(void *dst, int c, uint n)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 127:	8b 4d 10             	mov    0x10(%ebp),%ecx
 12a:	8b 45 0c             	mov    0xc(%ebp),%eax
 12d:	89 d7                	mov    %edx,%edi
 12f:	fc                   	cld    
 130:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 132:	8b 7d fc             	mov    -0x4(%ebp),%edi
 135:	89 d0                	mov    %edx,%eax
 137:	c9                   	leave  
 138:	c3                   	ret    
 139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000140 <strchr>:

char*
strchr(const char *s, char c)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 45 08             	mov    0x8(%ebp),%eax
 146:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 14a:	0f b6 10             	movzbl (%eax),%edx
 14d:	84 d2                	test   %dl,%dl
 14f:	75 12                	jne    163 <strchr+0x23>
 151:	eb 1d                	jmp    170 <strchr+0x30>
 153:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 157:	90                   	nop
 158:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 15c:	83 c0 01             	add    $0x1,%eax
 15f:	84 d2                	test   %dl,%dl
 161:	74 0d                	je     170 <strchr+0x30>
    if(*s == c)
 163:	38 d1                	cmp    %dl,%cl
 165:	75 f1                	jne    158 <strchr+0x18>
      return (char*)s;
  return 0;
}
 167:	5d                   	pop    %ebp
 168:	c3                   	ret    
 169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 170:	31 c0                	xor    %eax,%eax
}
 172:	5d                   	pop    %ebp
 173:	c3                   	ret    
 174:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 17f:	90                   	nop

00000180 <gets>:

char*
gets(char *buf, int max)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	57                   	push   %edi
 184:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 185:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 188:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 189:	31 db                	xor    %ebx,%ebx
{
 18b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 18e:	eb 27                	jmp    1b7 <gets+0x37>
    cc = read(0, &c, 1);
 190:	83 ec 04             	sub    $0x4,%esp
 193:	6a 01                	push   $0x1
 195:	57                   	push   %edi
 196:	6a 00                	push   $0x0
 198:	e8 d1 01 00 00       	call   36e <read>
    if(cc < 1)
 19d:	83 c4 10             	add    $0x10,%esp
 1a0:	85 c0                	test   %eax,%eax
 1a2:	7e 1d                	jle    1c1 <gets+0x41>
      break;
    buf[i++] = c;
 1a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1a8:	8b 55 08             	mov    0x8(%ebp),%edx
 1ab:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1af:	3c 0a                	cmp    $0xa,%al
 1b1:	74 1d                	je     1d0 <gets+0x50>
 1b3:	3c 0d                	cmp    $0xd,%al
 1b5:	74 19                	je     1d0 <gets+0x50>
  for(i=0; i+1 < max; ){
 1b7:	89 de                	mov    %ebx,%esi
 1b9:	83 c3 01             	add    $0x1,%ebx
 1bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1bf:	7c cf                	jl     190 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 1c1:	8b 45 08             	mov    0x8(%ebp),%eax
 1c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1cb:	5b                   	pop    %ebx
 1cc:	5e                   	pop    %esi
 1cd:	5f                   	pop    %edi
 1ce:	5d                   	pop    %ebp
 1cf:	c3                   	ret    
  buf[i] = '\0';
 1d0:	8b 45 08             	mov    0x8(%ebp),%eax
 1d3:	89 de                	mov    %ebx,%esi
 1d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 1d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1dc:	5b                   	pop    %ebx
 1dd:	5e                   	pop    %esi
 1de:	5f                   	pop    %edi
 1df:	5d                   	pop    %ebp
 1e0:	c3                   	ret    
 1e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ef:	90                   	nop

000001f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	56                   	push   %esi
 1f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1f5:	83 ec 08             	sub    $0x8,%esp
 1f8:	6a 00                	push   $0x0
 1fa:	ff 75 08             	push   0x8(%ebp)
 1fd:	e8 94 01 00 00       	call   396 <open>
  if(fd < 0)
 202:	83 c4 10             	add    $0x10,%esp
 205:	85 c0                	test   %eax,%eax
 207:	78 27                	js     230 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 209:	83 ec 08             	sub    $0x8,%esp
 20c:	ff 75 0c             	push   0xc(%ebp)
 20f:	89 c3                	mov    %eax,%ebx
 211:	50                   	push   %eax
 212:	e8 97 01 00 00       	call   3ae <fstat>
  close(fd);
 217:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 21a:	89 c6                	mov    %eax,%esi
  close(fd);
 21c:	e8 5d 01 00 00       	call   37e <close>
  return r;
 221:	83 c4 10             	add    $0x10,%esp
}
 224:	8d 65 f8             	lea    -0x8(%ebp),%esp
 227:	89 f0                	mov    %esi,%eax
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
 22d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 230:	be ff ff ff ff       	mov    $0xffffffff,%esi
 235:	eb ed                	jmp    224 <stat+0x34>
 237:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23e:	66 90                	xchg   %ax,%ax

00000240 <atoi>:

int
atoi(const char *s)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 247:	0f be 02             	movsbl (%edx),%eax
 24a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 24d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 250:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 255:	77 1e                	ja     275 <atoi+0x35>
 257:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 260:	83 c2 01             	add    $0x1,%edx
 263:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 266:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 26a:	0f be 02             	movsbl (%edx),%eax
 26d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 270:	80 fb 09             	cmp    $0x9,%bl
 273:	76 eb                	jbe    260 <atoi+0x20>
  return n;
}
 275:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 278:	89 c8                	mov    %ecx,%eax
 27a:	c9                   	leave  
 27b:	c3                   	ret    
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000280 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	57                   	push   %edi
 284:	8b 45 10             	mov    0x10(%ebp),%eax
 287:	8b 55 08             	mov    0x8(%ebp),%edx
 28a:	56                   	push   %esi
 28b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 28e:	85 c0                	test   %eax,%eax
 290:	7e 13                	jle    2a5 <memmove+0x25>
 292:	01 d0                	add    %edx,%eax
  dst = vdst;
 294:	89 d7                	mov    %edx,%edi
 296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 2a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2a1:	39 f8                	cmp    %edi,%eax
 2a3:	75 fb                	jne    2a0 <memmove+0x20>
  return vdst;
}
 2a5:	5e                   	pop    %esi
 2a6:	89 d0                	mov    %edx,%eax
 2a8:	5f                   	pop    %edi
 2a9:	5d                   	pop    %ebp
 2aa:	c3                   	ret    
 2ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <thread_create>:

int thread_create(void (*start_routine)(void *, void *), void* arg1, void* arg2)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	83 ec 14             	sub    $0x14,%esp
	void* ptr;
	void *stack; 
		ptr = malloc((PGSIZE*2));
 2b6:	68 00 20 00 00       	push   $0x2000
 2bb:	e8 30 04 00 00       	call   6f0 <malloc>

	if (ptr != 0) {
 2c0:	83 c4 10             	add    $0x10,%esp
 2c3:	85 c0                	test   %eax,%eax
 2c5:	75 12                	jne    2d9 <thread_create+0x29>
	if ((uint)ptr% PGSIZE == 0)
	       stack = ptr;
	else
	       stack = ptr + (PGSIZE - ((uint)ptr % PGSIZE));	

	return clone(start_routine, arg1, arg2, stack);
 2c7:	6a 00                	push   $0x0
 2c9:	ff 75 10             	push   0x10(%ebp)
 2cc:	ff 75 0c             	push   0xc(%ebp)
 2cf:	ff 75 08             	push   0x8(%ebp)
 2d2:	e8 1f 01 00 00       	call   3f6 <clone>
}
 2d7:	c9                   	leave  
 2d8:	c3                   	ret    
	    printf(1, "Error with malloc\n");
 2d9:	50                   	push   %eax
 2da:	50                   	push   %eax
 2db:	68 0f 08 00 00       	push   $0x80f
 2e0:	6a 01                	push   $0x1
 2e2:	e8 d9 01 00 00       	call   4c0 <printf>
	    exit();
 2e7:	e8 6a 00 00 00       	call   356 <exit>
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002f0 <thread_join>:

int thread_join()
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	83 ec 24             	sub    $0x24,%esp
	void* stackPtr;
	int threadret = join(&stackPtr);
 2f6:	8d 45 f4             	lea    -0xc(%ebp),%eax
 2f9:	50                   	push   %eax
 2fa:	e8 ff 00 00 00       	call   3fe <join>
	return threadret;
}
 2ff:	c9                   	leave  
 300:	c3                   	ret    
 301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30f:	90                   	nop

00000310 <lock_init>:

void lock_init(lock_t *lk)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
	lk->locked = 0;
 313:	8b 45 08             	mov    0x8(%ebp),%eax
 316:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 31c:	5d                   	pop    %ebp
 31d:	c3                   	ret    
 31e:	66 90                	xchg   %ax,%ax

00000320 <lock_acquire>:

void lock_acquire(lock_t *lk)
{
 320:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 321:	b9 01 00 00 00       	mov    $0x1,%ecx
 326:	89 e5                	mov    %esp,%ebp
 328:	8b 55 08             	mov    0x8(%ebp),%edx
 32b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop
 330:	89 c8                	mov    %ecx,%eax
 332:	f0 87 02             	lock xchg %eax,(%edx)
   while(xchg(&lk->locked, 1) != 0);
 335:	85 c0                	test   %eax,%eax
 337:	75 f7                	jne    330 <lock_acquire+0x10>
}
 339:	5d                   	pop    %ebp
 33a:	c3                   	ret    
 33b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 33f:	90                   	nop

00000340 <lock_release>:
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	8b 45 08             	mov    0x8(%ebp),%eax
 346:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 34c:	5d                   	pop    %ebp
 34d:	c3                   	ret    

0000034e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 34e:	b8 01 00 00 00       	mov    $0x1,%eax
 353:	cd 40                	int    $0x40
 355:	c3                   	ret    

00000356 <exit>:
SYSCALL(exit)
 356:	b8 02 00 00 00       	mov    $0x2,%eax
 35b:	cd 40                	int    $0x40
 35d:	c3                   	ret    

0000035e <wait>:
SYSCALL(wait)
 35e:	b8 03 00 00 00       	mov    $0x3,%eax
 363:	cd 40                	int    $0x40
 365:	c3                   	ret    

00000366 <pipe>:
SYSCALL(pipe)
 366:	b8 04 00 00 00       	mov    $0x4,%eax
 36b:	cd 40                	int    $0x40
 36d:	c3                   	ret    

0000036e <read>:
SYSCALL(read)
 36e:	b8 05 00 00 00       	mov    $0x5,%eax
 373:	cd 40                	int    $0x40
 375:	c3                   	ret    

00000376 <write>:
SYSCALL(write)
 376:	b8 10 00 00 00       	mov    $0x10,%eax
 37b:	cd 40                	int    $0x40
 37d:	c3                   	ret    

0000037e <close>:
SYSCALL(close)
 37e:	b8 15 00 00 00       	mov    $0x15,%eax
 383:	cd 40                	int    $0x40
 385:	c3                   	ret    

00000386 <kill>:
SYSCALL(kill)
 386:	b8 06 00 00 00       	mov    $0x6,%eax
 38b:	cd 40                	int    $0x40
 38d:	c3                   	ret    

0000038e <exec>:
SYSCALL(exec)
 38e:	b8 07 00 00 00       	mov    $0x7,%eax
 393:	cd 40                	int    $0x40
 395:	c3                   	ret    

00000396 <open>:
SYSCALL(open)
 396:	b8 0f 00 00 00       	mov    $0xf,%eax
 39b:	cd 40                	int    $0x40
 39d:	c3                   	ret    

0000039e <mknod>:
SYSCALL(mknod)
 39e:	b8 11 00 00 00       	mov    $0x11,%eax
 3a3:	cd 40                	int    $0x40
 3a5:	c3                   	ret    

000003a6 <unlink>:
SYSCALL(unlink)
 3a6:	b8 12 00 00 00       	mov    $0x12,%eax
 3ab:	cd 40                	int    $0x40
 3ad:	c3                   	ret    

000003ae <fstat>:
SYSCALL(fstat)
 3ae:	b8 08 00 00 00       	mov    $0x8,%eax
 3b3:	cd 40                	int    $0x40
 3b5:	c3                   	ret    

000003b6 <link>:
SYSCALL(link)
 3b6:	b8 13 00 00 00       	mov    $0x13,%eax
 3bb:	cd 40                	int    $0x40
 3bd:	c3                   	ret    

000003be <mkdir>:
SYSCALL(mkdir)
 3be:	b8 14 00 00 00       	mov    $0x14,%eax
 3c3:	cd 40                	int    $0x40
 3c5:	c3                   	ret    

000003c6 <chdir>:
SYSCALL(chdir)
 3c6:	b8 09 00 00 00       	mov    $0x9,%eax
 3cb:	cd 40                	int    $0x40
 3cd:	c3                   	ret    

000003ce <dup>:
SYSCALL(dup)
 3ce:	b8 0a 00 00 00       	mov    $0xa,%eax
 3d3:	cd 40                	int    $0x40
 3d5:	c3                   	ret    

000003d6 <getpid>:
SYSCALL(getpid)
 3d6:	b8 0b 00 00 00       	mov    $0xb,%eax
 3db:	cd 40                	int    $0x40
 3dd:	c3                   	ret    

000003de <sbrk>:
SYSCALL(sbrk)
 3de:	b8 0c 00 00 00       	mov    $0xc,%eax
 3e3:	cd 40                	int    $0x40
 3e5:	c3                   	ret    

000003e6 <sleep>:
SYSCALL(sleep)
 3e6:	b8 0d 00 00 00       	mov    $0xd,%eax
 3eb:	cd 40                	int    $0x40
 3ed:	c3                   	ret    

000003ee <uptime>:
SYSCALL(uptime)
 3ee:	b8 0e 00 00 00       	mov    $0xe,%eax
 3f3:	cd 40                	int    $0x40
 3f5:	c3                   	ret    

000003f6 <clone>:
SYSCALL(clone)
 3f6:	b8 16 00 00 00       	mov    $0x16,%eax
 3fb:	cd 40                	int    $0x40
 3fd:	c3                   	ret    

000003fe <join>:
SYSCALL(join)
 3fe:	b8 17 00 00 00       	mov    $0x17,%eax
 403:	cd 40                	int    $0x40
 405:	c3                   	ret    
 406:	66 90                	xchg   %ax,%ax
 408:	66 90                	xchg   %ax,%ax
 40a:	66 90                	xchg   %ax,%ax
 40c:	66 90                	xchg   %ax,%ax
 40e:	66 90                	xchg   %ax,%ax

00000410 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	56                   	push   %esi
 415:	53                   	push   %ebx
 416:	83 ec 3c             	sub    $0x3c,%esp
 419:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 41c:	89 d1                	mov    %edx,%ecx
{
 41e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 421:	85 d2                	test   %edx,%edx
 423:	0f 89 7f 00 00 00    	jns    4a8 <printint+0x98>
 429:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 42d:	74 79                	je     4a8 <printint+0x98>
    neg = 1;
 42f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 436:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 438:	31 db                	xor    %ebx,%ebx
 43a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 43d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 440:	89 c8                	mov    %ecx,%eax
 442:	31 d2                	xor    %edx,%edx
 444:	89 cf                	mov    %ecx,%edi
 446:	f7 75 c4             	divl   -0x3c(%ebp)
 449:	0f b6 92 84 08 00 00 	movzbl 0x884(%edx),%edx
 450:	89 45 c0             	mov    %eax,-0x40(%ebp)
 453:	89 d8                	mov    %ebx,%eax
 455:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 458:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 45b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 45e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 461:	76 dd                	jbe    440 <printint+0x30>
  if(neg)
 463:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 466:	85 c9                	test   %ecx,%ecx
 468:	74 0c                	je     476 <printint+0x66>
    buf[i++] = '-';
 46a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 46f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 471:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 476:	8b 7d b8             	mov    -0x48(%ebp),%edi
 479:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 47d:	eb 07                	jmp    486 <printint+0x76>
 47f:	90                   	nop
    putc(fd, buf[i]);
 480:	0f b6 13             	movzbl (%ebx),%edx
 483:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 486:	83 ec 04             	sub    $0x4,%esp
 489:	88 55 d7             	mov    %dl,-0x29(%ebp)
 48c:	6a 01                	push   $0x1
 48e:	56                   	push   %esi
 48f:	57                   	push   %edi
 490:	e8 e1 fe ff ff       	call   376 <write>
  while(--i >= 0)
 495:	83 c4 10             	add    $0x10,%esp
 498:	39 de                	cmp    %ebx,%esi
 49a:	75 e4                	jne    480 <printint+0x70>
}
 49c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 49f:	5b                   	pop    %ebx
 4a0:	5e                   	pop    %esi
 4a1:	5f                   	pop    %edi
 4a2:	5d                   	pop    %ebp
 4a3:	c3                   	ret    
 4a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 4a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 4af:	eb 87                	jmp    438 <printint+0x28>
 4b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
 4c5:	53                   	push   %ebx
 4c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 4cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 4cf:	0f b6 13             	movzbl (%ebx),%edx
 4d2:	84 d2                	test   %dl,%dl
 4d4:	74 6a                	je     540 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 4d6:	8d 45 10             	lea    0x10(%ebp),%eax
 4d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 4dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 4df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 4e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 4e4:	eb 36                	jmp    51c <printf+0x5c>
 4e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
 4f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 4f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 4f8:	83 f8 25             	cmp    $0x25,%eax
 4fb:	74 15                	je     512 <printf+0x52>
  write(fd, &c, 1);
 4fd:	83 ec 04             	sub    $0x4,%esp
 500:	88 55 e7             	mov    %dl,-0x19(%ebp)
 503:	6a 01                	push   $0x1
 505:	57                   	push   %edi
 506:	56                   	push   %esi
 507:	e8 6a fe ff ff       	call   376 <write>
 50c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 50f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 512:	0f b6 13             	movzbl (%ebx),%edx
 515:	83 c3 01             	add    $0x1,%ebx
 518:	84 d2                	test   %dl,%dl
 51a:	74 24                	je     540 <printf+0x80>
    c = fmt[i] & 0xff;
 51c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 51f:	85 c9                	test   %ecx,%ecx
 521:	74 cd                	je     4f0 <printf+0x30>
      }
    } else if(state == '%'){
 523:	83 f9 25             	cmp    $0x25,%ecx
 526:	75 ea                	jne    512 <printf+0x52>
      if(c == 'd'){
 528:	83 f8 25             	cmp    $0x25,%eax
 52b:	0f 84 07 01 00 00    	je     638 <printf+0x178>
 531:	83 e8 63             	sub    $0x63,%eax
 534:	83 f8 15             	cmp    $0x15,%eax
 537:	77 17                	ja     550 <printf+0x90>
 539:	ff 24 85 2c 08 00 00 	jmp    *0x82c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 540:	8d 65 f4             	lea    -0xc(%ebp),%esp
 543:	5b                   	pop    %ebx
 544:	5e                   	pop    %esi
 545:	5f                   	pop    %edi
 546:	5d                   	pop    %ebp
 547:	c3                   	ret    
 548:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop
  write(fd, &c, 1);
 550:	83 ec 04             	sub    $0x4,%esp
 553:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 556:	6a 01                	push   $0x1
 558:	57                   	push   %edi
 559:	56                   	push   %esi
 55a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 55e:	e8 13 fe ff ff       	call   376 <write>
        putc(fd, c);
 563:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 567:	83 c4 0c             	add    $0xc,%esp
 56a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 56d:	6a 01                	push   $0x1
 56f:	57                   	push   %edi
 570:	56                   	push   %esi
 571:	e8 00 fe ff ff       	call   376 <write>
        putc(fd, c);
 576:	83 c4 10             	add    $0x10,%esp
      state = 0;
 579:	31 c9                	xor    %ecx,%ecx
 57b:	eb 95                	jmp    512 <printf+0x52>
 57d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 580:	83 ec 0c             	sub    $0xc,%esp
 583:	b9 10 00 00 00       	mov    $0x10,%ecx
 588:	6a 00                	push   $0x0
 58a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 58d:	8b 10                	mov    (%eax),%edx
 58f:	89 f0                	mov    %esi,%eax
 591:	e8 7a fe ff ff       	call   410 <printint>
        ap++;
 596:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 59a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 59d:	31 c9                	xor    %ecx,%ecx
 59f:	e9 6e ff ff ff       	jmp    512 <printf+0x52>
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 5a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 5ab:	8b 10                	mov    (%eax),%edx
        ap++;
 5ad:	83 c0 04             	add    $0x4,%eax
 5b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 5b3:	85 d2                	test   %edx,%edx
 5b5:	0f 84 8d 00 00 00    	je     648 <printf+0x188>
        while(*s != 0){
 5bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 5be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 5c0:	84 c0                	test   %al,%al
 5c2:	0f 84 4a ff ff ff    	je     512 <printf+0x52>
 5c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 5cb:	89 d3                	mov    %edx,%ebx
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 5d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 5d3:	83 c3 01             	add    $0x1,%ebx
 5d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 5d9:	6a 01                	push   $0x1
 5db:	57                   	push   %edi
 5dc:	56                   	push   %esi
 5dd:	e8 94 fd ff ff       	call   376 <write>
        while(*s != 0){
 5e2:	0f b6 03             	movzbl (%ebx),%eax
 5e5:	83 c4 10             	add    $0x10,%esp
 5e8:	84 c0                	test   %al,%al
 5ea:	75 e4                	jne    5d0 <printf+0x110>
      state = 0;
 5ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 5ef:	31 c9                	xor    %ecx,%ecx
 5f1:	e9 1c ff ff ff       	jmp    512 <printf+0x52>
 5f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 600:	83 ec 0c             	sub    $0xc,%esp
 603:	b9 0a 00 00 00       	mov    $0xa,%ecx
 608:	6a 01                	push   $0x1
 60a:	e9 7b ff ff ff       	jmp    58a <printf+0xca>
 60f:	90                   	nop
        putc(fd, *ap);
 610:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 613:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 616:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 618:	6a 01                	push   $0x1
 61a:	57                   	push   %edi
 61b:	56                   	push   %esi
        putc(fd, *ap);
 61c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 61f:	e8 52 fd ff ff       	call   376 <write>
        ap++;
 624:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 628:	83 c4 10             	add    $0x10,%esp
      state = 0;
 62b:	31 c9                	xor    %ecx,%ecx
 62d:	e9 e0 fe ff ff       	jmp    512 <printf+0x52>
 632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 638:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 63b:	83 ec 04             	sub    $0x4,%esp
 63e:	e9 2a ff ff ff       	jmp    56d <printf+0xad>
 643:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 647:	90                   	nop
          s = "(null)";
 648:	ba 22 08 00 00       	mov    $0x822,%edx
        while(*s != 0){
 64d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 650:	b8 28 00 00 00       	mov    $0x28,%eax
 655:	89 d3                	mov    %edx,%ebx
 657:	e9 74 ff ff ff       	jmp    5d0 <printf+0x110>
 65c:	66 90                	xchg   %ax,%ax
 65e:	66 90                	xchg   %ax,%ax

00000660 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 660:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 661:	a1 d4 0b 00 00       	mov    0xbd4,%eax
{
 666:	89 e5                	mov    %esp,%ebp
 668:	57                   	push   %edi
 669:	56                   	push   %esi
 66a:	53                   	push   %ebx
 66b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 66e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 678:	89 c2                	mov    %eax,%edx
 67a:	8b 00                	mov    (%eax),%eax
 67c:	39 ca                	cmp    %ecx,%edx
 67e:	73 30                	jae    6b0 <free+0x50>
 680:	39 c1                	cmp    %eax,%ecx
 682:	72 04                	jb     688 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 684:	39 c2                	cmp    %eax,%edx
 686:	72 f0                	jb     678 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 688:	8b 73 fc             	mov    -0x4(%ebx),%esi
 68b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 68e:	39 f8                	cmp    %edi,%eax
 690:	74 30                	je     6c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 692:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 695:	8b 42 04             	mov    0x4(%edx),%eax
 698:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 69b:	39 f1                	cmp    %esi,%ecx
 69d:	74 3a                	je     6d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 69f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6a1:	5b                   	pop    %ebx
  freep = p;
 6a2:	89 15 d4 0b 00 00    	mov    %edx,0xbd4
}
 6a8:	5e                   	pop    %esi
 6a9:	5f                   	pop    %edi
 6aa:	5d                   	pop    %ebp
 6ab:	c3                   	ret    
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6b0:	39 c2                	cmp    %eax,%edx
 6b2:	72 c4                	jb     678 <free+0x18>
 6b4:	39 c1                	cmp    %eax,%ecx
 6b6:	73 c0                	jae    678 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 6b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6be:	39 f8                	cmp    %edi,%eax
 6c0:	75 d0                	jne    692 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 6c2:	03 70 04             	add    0x4(%eax),%esi
 6c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6c8:	8b 02                	mov    (%edx),%eax
 6ca:	8b 00                	mov    (%eax),%eax
 6cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 6cf:	8b 42 04             	mov    0x4(%edx),%eax
 6d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6d5:	39 f1                	cmp    %esi,%ecx
 6d7:	75 c6                	jne    69f <free+0x3f>
    p->s.size += bp->s.size;
 6d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 6dc:	89 15 d4 0b 00 00    	mov    %edx,0xbd4
    p->s.size += bp->s.size;
 6e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 6e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 6e8:	89 0a                	mov    %ecx,(%edx)
}
 6ea:	5b                   	pop    %ebx
 6eb:	5e                   	pop    %esi
 6ec:	5f                   	pop    %edi
 6ed:	5d                   	pop    %ebp
 6ee:	c3                   	ret    
 6ef:	90                   	nop

000006f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	56                   	push   %esi
 6f5:	53                   	push   %ebx
 6f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 6fc:	8b 3d d4 0b 00 00    	mov    0xbd4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 702:	8d 70 07             	lea    0x7(%eax),%esi
 705:	c1 ee 03             	shr    $0x3,%esi
 708:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 70b:	85 ff                	test   %edi,%edi
 70d:	0f 84 9d 00 00 00    	je     7b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 713:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 715:	8b 4a 04             	mov    0x4(%edx),%ecx
 718:	39 f1                	cmp    %esi,%ecx
 71a:	73 6a                	jae    786 <malloc+0x96>
 71c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 721:	39 de                	cmp    %ebx,%esi
 723:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 726:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 72d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 730:	eb 17                	jmp    749 <malloc+0x59>
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 738:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 73a:	8b 48 04             	mov    0x4(%eax),%ecx
 73d:	39 f1                	cmp    %esi,%ecx
 73f:	73 4f                	jae    790 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 741:	8b 3d d4 0b 00 00    	mov    0xbd4,%edi
 747:	89 c2                	mov    %eax,%edx
 749:	39 d7                	cmp    %edx,%edi
 74b:	75 eb                	jne    738 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 74d:	83 ec 0c             	sub    $0xc,%esp
 750:	ff 75 e4             	push   -0x1c(%ebp)
 753:	e8 86 fc ff ff       	call   3de <sbrk>
  if(p == (char*)-1)
 758:	83 c4 10             	add    $0x10,%esp
 75b:	83 f8 ff             	cmp    $0xffffffff,%eax
 75e:	74 1c                	je     77c <malloc+0x8c>
  hp->s.size = nu;
 760:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 763:	83 ec 0c             	sub    $0xc,%esp
 766:	83 c0 08             	add    $0x8,%eax
 769:	50                   	push   %eax
 76a:	e8 f1 fe ff ff       	call   660 <free>
  return freep;
 76f:	8b 15 d4 0b 00 00    	mov    0xbd4,%edx
      if((p = morecore(nunits)) == 0)
 775:	83 c4 10             	add    $0x10,%esp
 778:	85 d2                	test   %edx,%edx
 77a:	75 bc                	jne    738 <malloc+0x48>
        return 0;
  }
}
 77c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 77f:	31 c0                	xor    %eax,%eax
}
 781:	5b                   	pop    %ebx
 782:	5e                   	pop    %esi
 783:	5f                   	pop    %edi
 784:	5d                   	pop    %ebp
 785:	c3                   	ret    
    if(p->s.size >= nunits){
 786:	89 d0                	mov    %edx,%eax
 788:	89 fa                	mov    %edi,%edx
 78a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 790:	39 ce                	cmp    %ecx,%esi
 792:	74 4c                	je     7e0 <malloc+0xf0>
        p->s.size -= nunits;
 794:	29 f1                	sub    %esi,%ecx
 796:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 799:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 79c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 79f:	89 15 d4 0b 00 00    	mov    %edx,0xbd4
}
 7a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 7a8:	83 c0 08             	add    $0x8,%eax
}
 7ab:	5b                   	pop    %ebx
 7ac:	5e                   	pop    %esi
 7ad:	5f                   	pop    %edi
 7ae:	5d                   	pop    %ebp
 7af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 7b0:	c7 05 d4 0b 00 00 d8 	movl   $0xbd8,0xbd4
 7b7:	0b 00 00 
    base.s.size = 0;
 7ba:	bf d8 0b 00 00       	mov    $0xbd8,%edi
    base.s.ptr = freep = prevp = &base;
 7bf:	c7 05 d8 0b 00 00 d8 	movl   $0xbd8,0xbd8
 7c6:	0b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 7cb:	c7 05 dc 0b 00 00 00 	movl   $0x0,0xbdc
 7d2:	00 00 00 
    if(p->s.size >= nunits){
 7d5:	e9 42 ff ff ff       	jmp    71c <malloc+0x2c>
 7da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 7e0:	8b 08                	mov    (%eax),%ecx
 7e2:	89 0a                	mov    %ecx,(%edx)
 7e4:	eb b9                	jmp    79f <malloc+0xaf>
