
_lab1_test:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "user.h"

int exitWait(void);
int waitPid(void);

int main(int argc, char *argv[]) {
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 10             	sub    $0x10,%esp

    printf(1, "####################################################\n");
   9:	c7 44 24 04 2c 09 00 	movl   $0x92c,0x4(%esp)
  10:	00 
  11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  18:	e8 e3 04 00 00       	call   500 <printf>
    printf(1, "# This program tests the correctness of your lab#1\n");
  1d:	c7 44 24 04 64 09 00 	movl   $0x964,0x4(%esp)
  24:	00 
  25:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  2c:	e8 cf 04 00 00       	call   500 <printf>
    printf(1, "####################################################\n");
  31:	c7 44 24 04 2c 09 00 	movl   $0x92c,0x4(%esp)
  38:	00 
  39:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  40:	e8 bb 04 00 00       	call   500 <printf>
  
    if (atoi(argv[1]) == 1)
  45:	8b 45 0c             	mov    0xc(%ebp),%eax
  48:	8b 40 04             	mov    0x4(%eax),%eax
  4b:	89 04 24             	mov    %eax,(%esp)
  4e:	e8 ed 02 00 00       	call   340 <atoi>
  53:	83 f8 01             	cmp    $0x1,%eax
  56:	74 18                	je     70 <main+0x70>
        exitWait(); // Test exit and wait
//    else if (atoi(argv[1]) == 2)
//        waitPid(); // Test waitpid
    // For corner cases
    else printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid \n");
  58:	c7 44 24 04 98 09 00 	movl   $0x998,0x4(%esp)
  5f:	00 
  60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  67:	e8 94 04 00 00       	call   500 <printf>
	return 0;
    // End of test
}
  6c:	31 c0                	xor    %eax,%eax
  6e:	c9                   	leave  
  6f:	c3                   	ret    
    printf(1, "####################################################\n");
    printf(1, "# This program tests the correctness of your lab#1\n");
    printf(1, "####################################################\n");
  
    if (atoi(argv[1]) == 1)
        exitWait(); // Test exit and wait
  70:	e8 0b 00 00 00       	call   80 <exitWait>
  75:	eb f5                	jmp    6c <main+0x6c>
  77:	66 90                	xchg   %ax,%ax
  79:	66 90                	xchg   %ax,%ax
  7b:	66 90                	xchg   %ax,%ax
  7d:	66 90                	xchg   %ax,%ax
  7f:	90                   	nop

00000080 <exitWait>:
	return 0;
    // End of test
}
  

int exitWait(void) {
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	56                   	push   %esi
  84:	53                   	push   %ebx
    int i;
  
    // use this part to test exit(int status) and wait(int* status)
    printf(1, "Step 1: testing exit(int status) and wait(int* status):\n");

    for (i = 0; i < 2; i++) {
  85:	31 db                	xor    %ebx,%ebx
	return 0;
    // End of test
}
  

int exitWait(void) {
  87:	83 ec 20             	sub    $0x20,%esp
    int pid, ret_pid, exit_status;
    int i;
  
    // use this part to test exit(int status) and wait(int* status)
    printf(1, "Step 1: testing exit(int status) and wait(int* status):\n");
  8a:	c7 44 24 04 68 08 00 	movl   $0x868,0x4(%esp)
  91:	00 
            } else {
                printf(1, " - This is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
                nexit(-1);
            } 
        } else if (pid > 0) { // only the parent exeecutes this code
            ret_pid = nwait(&exit_status);
  92:	8d 75 f4             	lea    -0xc(%ebp),%esi
int exitWait(void) {
    int pid, ret_pid, exit_status;
    int i;
  
    // use this part to test exit(int status) and wait(int* status)
    printf(1, "Step 1: testing exit(int status) and wait(int* status):\n");
  95:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  9c:	e8 5f 04 00 00       	call   500 <printf>

    for (i = 0; i < 2; i++) {
        pid = fork();
  a1:	e8 f4 02 00 00       	call   39a <fork>
        if (pid == 0) { // only the child executed this code
  a6:	83 f8 00             	cmp    $0x0,%eax
  a9:	74 45                	je     f0 <exitWait+0x70>
  ab:	90                   	nop
  ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
                nexit(0);
            } else {
                printf(1, " - This is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
                nexit(-1);
            } 
        } else if (pid > 0) { // only the parent exeecutes this code
  b0:	0f 8e a3 00 00 00    	jle    159 <exitWait+0xd9>
            ret_pid = nwait(&exit_status);
  b6:	89 34 24             	mov    %esi,(%esp)
    int i;
  
    // use this part to test exit(int status) and wait(int* status)
    printf(1, "Step 1: testing exit(int status) and wait(int* status):\n");

    for (i = 0; i < 2; i++) {
  b9:	83 c3 01             	add    $0x1,%ebx
            } else {
                printf(1, " - This is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
                nexit(-1);
            } 
        } else if (pid > 0) { // only the parent exeecutes this code
            ret_pid = nwait(&exit_status);
  bc:	e8 89 03 00 00       	call   44a <nwait>
            printf(1, " - This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
  c1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  c4:	c7 44 24 04 e4 08 00 	movl   $0x8e4,0x4(%esp)
  cb:	00 
  cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  d3:	89 54 24 0c          	mov    %edx,0xc(%esp)
  d7:	89 44 24 08          	mov    %eax,0x8(%esp)
  db:	e8 20 04 00 00       	call   500 <printf>
    int i;
  
    // use this part to test exit(int status) and wait(int* status)
    printf(1, "Step 1: testing exit(int status) and wait(int* status):\n");

    for (i = 0; i < 2; i++) {
  e0:	83 fb 02             	cmp    $0x2,%ebx
  e3:	75 bc                	jne    a1 <exitWait+0x21>
            printf(2, " - Error using fork\n");
            nexit(-1);
        }
    }
    return 0;
}
  e5:	83 c4 20             	add    $0x20,%esp
  e8:	31 c0                	xor    %eax,%eax
  ea:	5b                   	pop    %ebx
  eb:	5e                   	pop    %esi
  ec:	5d                   	pop    %ebp
  ed:	c3                   	ret    
  ee:	66 90                	xchg   %ax,%ax
    printf(1, "Step 1: testing exit(int status) and wait(int* status):\n");

    for (i = 0; i < 2; i++) {
        pid = fork();
        if (pid == 0) { // only the child executed this code
            if (i == 0) {
  f0:	85 db                	test   %ebx,%ebx
  f2:	75 34                	jne    128 <exitWait+0xa8>
                printf(1, " - This is child with PID# %d and I will exit with status %d\n", getpid(), 0);
  f4:	e8 29 03 00 00       	call   422 <getpid>
  f9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 100:	00 
 101:	c7 44 24 04 a4 08 00 	movl   $0x8a4,0x4(%esp)
 108:	00 
 109:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 110:	89 44 24 08          	mov    %eax,0x8(%esp)
 114:	e8 e7 03 00 00       	call   500 <printf>
                nexit(0);
 119:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 120:	e8 1d 03 00 00       	call   442 <nexit>
 125:	8d 76 00             	lea    0x0(%esi),%esi
            } else {
                printf(1, " - This is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
 128:	e8 f5 02 00 00       	call   422 <getpid>
 12d:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%esp)
 134:	ff 
 135:	c7 44 24 04 a4 08 00 	movl   $0x8a4,0x4(%esp)
 13c:	00 
 13d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 144:	89 44 24 08          	mov    %eax,0x8(%esp)
 148:	e8 b3 03 00 00       	call   500 <printf>
                nexit(-1);
 14d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 154:	e8 e9 02 00 00       	call   442 <nexit>
            } 
        } else if (pid > 0) { // only the parent exeecutes this code
            ret_pid = nwait(&exit_status);
            printf(1, " - This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
        } else {  // something went wrong with fork system call
            printf(2, " - Error using fork\n");
 159:	c7 44 24 04 dc 09 00 	movl   $0x9dc,0x4(%esp)
 160:	00 
 161:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 168:	e8 93 03 00 00       	call   500 <printf>
            nexit(-1);
 16d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 174:	e8 c9 02 00 00       	call   442 <nexit>
 179:	66 90                	xchg   %ax,%ax
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	8b 45 08             	mov    0x8(%ebp),%eax
 186:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 189:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 18a:	89 c2                	mov    %eax,%edx
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 190:	83 c1 01             	add    $0x1,%ecx
 193:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 197:	83 c2 01             	add    $0x1,%edx
 19a:	84 db                	test   %bl,%bl
 19c:	88 5a ff             	mov    %bl,-0x1(%edx)
 19f:	75 ef                	jne    190 <strcpy+0x10>
    ;
  return os;
}
 1a1:	5b                   	pop    %ebx
 1a2:	5d                   	pop    %ebp
 1a3:	c3                   	ret    
 1a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 55 08             	mov    0x8(%ebp),%edx
 1b6:	53                   	push   %ebx
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ba:	0f b6 02             	movzbl (%edx),%eax
 1bd:	84 c0                	test   %al,%al
 1bf:	74 2d                	je     1ee <strcmp+0x3e>
 1c1:	0f b6 19             	movzbl (%ecx),%ebx
 1c4:	38 d8                	cmp    %bl,%al
 1c6:	74 0e                	je     1d6 <strcmp+0x26>
 1c8:	eb 2b                	jmp    1f5 <strcmp+0x45>
 1ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d0:	38 c8                	cmp    %cl,%al
 1d2:	75 15                	jne    1e9 <strcmp+0x39>
    p++, q++;
 1d4:	89 d9                	mov    %ebx,%ecx
 1d6:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1d9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 1dc:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1df:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 1e3:	84 c0                	test   %al,%al
 1e5:	75 e9                	jne    1d0 <strcmp+0x20>
 1e7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 1e9:	29 c8                	sub    %ecx,%eax
}
 1eb:	5b                   	pop    %ebx
 1ec:	5d                   	pop    %ebp
 1ed:	c3                   	ret    
 1ee:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1f1:	31 c0                	xor    %eax,%eax
 1f3:	eb f4                	jmp    1e9 <strcmp+0x39>
 1f5:	0f b6 cb             	movzbl %bl,%ecx
 1f8:	eb ef                	jmp    1e9 <strcmp+0x39>
 1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000200 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 206:	80 39 00             	cmpb   $0x0,(%ecx)
 209:	74 12                	je     21d <strlen+0x1d>
 20b:	31 d2                	xor    %edx,%edx
 20d:	8d 76 00             	lea    0x0(%esi),%esi
 210:	83 c2 01             	add    $0x1,%edx
 213:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 217:	89 d0                	mov    %edx,%eax
 219:	75 f5                	jne    210 <strlen+0x10>
    ;
  return n;
}
 21b:	5d                   	pop    %ebp
 21c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 21d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 21f:	5d                   	pop    %ebp
 220:	c3                   	ret    
 221:	eb 0d                	jmp    230 <memset>
 223:	90                   	nop
 224:	90                   	nop
 225:	90                   	nop
 226:	90                   	nop
 227:	90                   	nop
 228:	90                   	nop
 229:	90                   	nop
 22a:	90                   	nop
 22b:	90                   	nop
 22c:	90                   	nop
 22d:	90                   	nop
 22e:	90                   	nop
 22f:	90                   	nop

00000230 <memset>:

void*
memset(void *dst, int c, uint n)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 55 08             	mov    0x8(%ebp),%edx
 236:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 237:	8b 4d 10             	mov    0x10(%ebp),%ecx
 23a:	8b 45 0c             	mov    0xc(%ebp),%eax
 23d:	89 d7                	mov    %edx,%edi
 23f:	fc                   	cld    
 240:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 242:	89 d0                	mov    %edx,%eax
 244:	5f                   	pop    %edi
 245:	5d                   	pop    %ebp
 246:	c3                   	ret    
 247:	89 f6                	mov    %esi,%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000250 <strchr>:

char*
strchr(const char *s, char c)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	8b 45 08             	mov    0x8(%ebp),%eax
 256:	53                   	push   %ebx
 257:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 25a:	0f b6 18             	movzbl (%eax),%ebx
 25d:	84 db                	test   %bl,%bl
 25f:	74 1d                	je     27e <strchr+0x2e>
    if(*s == c)
 261:	38 d3                	cmp    %dl,%bl
 263:	89 d1                	mov    %edx,%ecx
 265:	75 0d                	jne    274 <strchr+0x24>
 267:	eb 17                	jmp    280 <strchr+0x30>
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 270:	38 ca                	cmp    %cl,%dl
 272:	74 0c                	je     280 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 274:	83 c0 01             	add    $0x1,%eax
 277:	0f b6 10             	movzbl (%eax),%edx
 27a:	84 d2                	test   %dl,%dl
 27c:	75 f2                	jne    270 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 27e:	31 c0                	xor    %eax,%eax
}
 280:	5b                   	pop    %ebx
 281:	5d                   	pop    %ebp
 282:	c3                   	ret    
 283:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000290 <gets>:

char*
gets(char *buf, int max)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 295:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 297:	53                   	push   %ebx
 298:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 29b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 29e:	eb 31                	jmp    2d1 <gets+0x41>
    cc = read(0, &c, 1);
 2a0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 2a7:	00 
 2a8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 2ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b3:	e8 02 01 00 00       	call   3ba <read>
    if(cc < 1)
 2b8:	85 c0                	test   %eax,%eax
 2ba:	7e 1d                	jle    2d9 <gets+0x49>
      break;
    buf[i++] = c;
 2bc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2c0:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 2c2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 2c5:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 2c7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2cb:	74 0c                	je     2d9 <gets+0x49>
 2cd:	3c 0a                	cmp    $0xa,%al
 2cf:	74 08                	je     2d9 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2d1:	8d 5e 01             	lea    0x1(%esi),%ebx
 2d4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2d7:	7c c7                	jl     2a0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 2d9:	8b 45 08             	mov    0x8(%ebp),%eax
 2dc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2e0:	83 c4 2c             	add    $0x2c,%esp
 2e3:	5b                   	pop    %ebx
 2e4:	5e                   	pop    %esi
 2e5:	5f                   	pop    %edi
 2e6:	5d                   	pop    %ebp
 2e7:	c3                   	ret    
 2e8:	90                   	nop
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002f0 <stat>:

int
stat(char *n, struct stat *st)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	56                   	push   %esi
 2f4:	53                   	push   %ebx
 2f5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2f8:	8b 45 08             	mov    0x8(%ebp),%eax
 2fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 302:	00 
 303:	89 04 24             	mov    %eax,(%esp)
 306:	e8 d7 00 00 00       	call   3e2 <open>
  if(fd < 0)
 30b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 30d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 30f:	78 27                	js     338 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 311:	8b 45 0c             	mov    0xc(%ebp),%eax
 314:	89 1c 24             	mov    %ebx,(%esp)
 317:	89 44 24 04          	mov    %eax,0x4(%esp)
 31b:	e8 da 00 00 00       	call   3fa <fstat>
  close(fd);
 320:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 323:	89 c6                	mov    %eax,%esi
  close(fd);
 325:	e8 a0 00 00 00       	call   3ca <close>
  return r;
 32a:	89 f0                	mov    %esi,%eax
}
 32c:	83 c4 10             	add    $0x10,%esp
 32f:	5b                   	pop    %ebx
 330:	5e                   	pop    %esi
 331:	5d                   	pop    %ebp
 332:	c3                   	ret    
 333:	90                   	nop
 334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 338:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 33d:	eb ed                	jmp    32c <stat+0x3c>
 33f:	90                   	nop

00000340 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	8b 4d 08             	mov    0x8(%ebp),%ecx
 346:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 347:	0f be 11             	movsbl (%ecx),%edx
 34a:	8d 42 d0             	lea    -0x30(%edx),%eax
 34d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 34f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 354:	77 17                	ja     36d <atoi+0x2d>
 356:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 358:	83 c1 01             	add    $0x1,%ecx
 35b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 35e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 362:	0f be 11             	movsbl (%ecx),%edx
 365:	8d 5a d0             	lea    -0x30(%edx),%ebx
 368:	80 fb 09             	cmp    $0x9,%bl
 36b:	76 eb                	jbe    358 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 36d:	5b                   	pop    %ebx
 36e:	5d                   	pop    %ebp
 36f:	c3                   	ret    

00000370 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 370:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 371:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 373:	89 e5                	mov    %esp,%ebp
 375:	56                   	push   %esi
 376:	8b 45 08             	mov    0x8(%ebp),%eax
 379:	53                   	push   %ebx
 37a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 37d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 380:	85 db                	test   %ebx,%ebx
 382:	7e 12                	jle    396 <memmove+0x26>
 384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 388:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 38c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 38f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 392:	39 da                	cmp    %ebx,%edx
 394:	75 f2                	jne    388 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 396:	5b                   	pop    %ebx
 397:	5e                   	pop    %esi
 398:	5d                   	pop    %ebp
 399:	c3                   	ret    

0000039a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 39a:	b8 01 00 00 00       	mov    $0x1,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <exit>:
SYSCALL(exit)
 3a2:	b8 02 00 00 00       	mov    $0x2,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <wait>:
SYSCALL(wait)
 3aa:	b8 03 00 00 00       	mov    $0x3,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <pipe>:
SYSCALL(pipe)
 3b2:	b8 04 00 00 00       	mov    $0x4,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <read>:
SYSCALL(read)
 3ba:	b8 05 00 00 00       	mov    $0x5,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <write>:
SYSCALL(write)
 3c2:	b8 10 00 00 00       	mov    $0x10,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <close>:
SYSCALL(close)
 3ca:	b8 15 00 00 00       	mov    $0x15,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <kill>:
SYSCALL(kill)
 3d2:	b8 06 00 00 00       	mov    $0x6,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <exec>:
SYSCALL(exec)
 3da:	b8 07 00 00 00       	mov    $0x7,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <open>:
SYSCALL(open)
 3e2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <mknod>:
SYSCALL(mknod)
 3ea:	b8 11 00 00 00       	mov    $0x11,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <unlink>:
SYSCALL(unlink)
 3f2:	b8 12 00 00 00       	mov    $0x12,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <fstat>:
SYSCALL(fstat)
 3fa:	b8 08 00 00 00       	mov    $0x8,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <link>:
SYSCALL(link)
 402:	b8 13 00 00 00       	mov    $0x13,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <mkdir>:
SYSCALL(mkdir)
 40a:	b8 14 00 00 00       	mov    $0x14,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <chdir>:
SYSCALL(chdir)
 412:	b8 09 00 00 00       	mov    $0x9,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <dup>:
SYSCALL(dup)
 41a:	b8 0a 00 00 00       	mov    $0xa,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <getpid>:
SYSCALL(getpid)
 422:	b8 0b 00 00 00       	mov    $0xb,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <sbrk>:
SYSCALL(sbrk)
 42a:	b8 0c 00 00 00       	mov    $0xc,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <sleep>:
SYSCALL(sleep)
 432:	b8 0d 00 00 00       	mov    $0xd,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <uptime>:
SYSCALL(uptime)
 43a:	b8 0e 00 00 00       	mov    $0xe,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <nexit>:
SYSCALL(nexit)
 442:	b8 16 00 00 00       	mov    $0x16,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <nwait>:
 44a:	b8 17 00 00 00       	mov    $0x17,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    
 452:	66 90                	xchg   %ax,%ax
 454:	66 90                	xchg   %ax,%ax
 456:	66 90                	xchg   %ax,%ax
 458:	66 90                	xchg   %ax,%ax
 45a:	66 90                	xchg   %ax,%ax
 45c:	66 90                	xchg   %ax,%ax
 45e:	66 90                	xchg   %ax,%ax

00000460 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
 465:	89 c6                	mov    %eax,%esi
 467:	53                   	push   %ebx
 468:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 46b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 46e:	85 db                	test   %ebx,%ebx
 470:	74 09                	je     47b <printint+0x1b>
 472:	89 d0                	mov    %edx,%eax
 474:	c1 e8 1f             	shr    $0x1f,%eax
 477:	84 c0                	test   %al,%al
 479:	75 75                	jne    4f0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 47b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 47d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 484:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 487:	31 ff                	xor    %edi,%edi
 489:	89 ce                	mov    %ecx,%esi
 48b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 48e:	eb 02                	jmp    492 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 490:	89 cf                	mov    %ecx,%edi
 492:	31 d2                	xor    %edx,%edx
 494:	f7 f6                	div    %esi
 496:	8d 4f 01             	lea    0x1(%edi),%ecx
 499:	0f b6 92 f8 09 00 00 	movzbl 0x9f8(%edx),%edx
  }while((x /= base) != 0);
 4a0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4a2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 4a5:	75 e9                	jne    490 <printint+0x30>
  if(neg)
 4a7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4aa:	89 c8                	mov    %ecx,%eax
 4ac:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 4af:	85 d2                	test   %edx,%edx
 4b1:	74 08                	je     4bb <printint+0x5b>
    buf[i++] = '-';
 4b3:	8d 4f 02             	lea    0x2(%edi),%ecx
 4b6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 4bb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 4be:	66 90                	xchg   %ax,%ax
 4c0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 4c5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4c8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4cf:	00 
 4d0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 4d4:	89 34 24             	mov    %esi,(%esp)
 4d7:	88 45 d7             	mov    %al,-0x29(%ebp)
 4da:	e8 e3 fe ff ff       	call   3c2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 4df:	83 ff ff             	cmp    $0xffffffff,%edi
 4e2:	75 dc                	jne    4c0 <printint+0x60>
    putc(fd, buf[i]);
}
 4e4:	83 c4 4c             	add    $0x4c,%esp
 4e7:	5b                   	pop    %ebx
 4e8:	5e                   	pop    %esi
 4e9:	5f                   	pop    %edi
 4ea:	5d                   	pop    %ebp
 4eb:	c3                   	ret    
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4f0:	89 d0                	mov    %edx,%eax
 4f2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 4f4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 4fb:	eb 87                	jmp    484 <printint+0x24>
 4fd:	8d 76 00             	lea    0x0(%esi),%esi

00000500 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 504:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 506:	56                   	push   %esi
 507:	53                   	push   %ebx
 508:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 50b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 50e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 511:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 514:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 517:	0f b6 13             	movzbl (%ebx),%edx
 51a:	83 c3 01             	add    $0x1,%ebx
 51d:	84 d2                	test   %dl,%dl
 51f:	75 39                	jne    55a <printf+0x5a>
 521:	e9 c2 00 00 00       	jmp    5e8 <printf+0xe8>
 526:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 528:	83 fa 25             	cmp    $0x25,%edx
 52b:	0f 84 bf 00 00 00    	je     5f0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 531:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 534:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 53b:	00 
 53c:	89 44 24 04          	mov    %eax,0x4(%esp)
 540:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 543:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 546:	e8 77 fe ff ff       	call   3c2 <write>
 54b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 54e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 552:	84 d2                	test   %dl,%dl
 554:	0f 84 8e 00 00 00    	je     5e8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 55a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 55c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 55f:	74 c7                	je     528 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 561:	83 ff 25             	cmp    $0x25,%edi
 564:	75 e5                	jne    54b <printf+0x4b>
      if(c == 'd'){
 566:	83 fa 64             	cmp    $0x64,%edx
 569:	0f 84 31 01 00 00    	je     6a0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 56f:	25 f7 00 00 00       	and    $0xf7,%eax
 574:	83 f8 70             	cmp    $0x70,%eax
 577:	0f 84 83 00 00 00    	je     600 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 57d:	83 fa 73             	cmp    $0x73,%edx
 580:	0f 84 a2 00 00 00    	je     628 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 586:	83 fa 63             	cmp    $0x63,%edx
 589:	0f 84 35 01 00 00    	je     6c4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 58f:	83 fa 25             	cmp    $0x25,%edx
 592:	0f 84 e0 00 00 00    	je     678 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 598:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 59b:	83 c3 01             	add    $0x1,%ebx
 59e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5a5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5a6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 5ac:	89 34 24             	mov    %esi,(%esp)
 5af:	89 55 d0             	mov    %edx,-0x30(%ebp)
 5b2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 5b6:	e8 07 fe ff ff       	call   3c2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 5bb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5be:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5c8:	00 
 5c9:	89 44 24 04          	mov    %eax,0x4(%esp)
 5cd:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 5d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5d3:	e8 ea fd ff ff       	call   3c2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5d8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5dc:	84 d2                	test   %dl,%dl
 5de:	0f 85 76 ff ff ff    	jne    55a <printf+0x5a>
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5e8:	83 c4 3c             	add    $0x3c,%esp
 5eb:	5b                   	pop    %ebx
 5ec:	5e                   	pop    %esi
 5ed:	5f                   	pop    %edi
 5ee:	5d                   	pop    %ebp
 5ef:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5f0:	bf 25 00 00 00       	mov    $0x25,%edi
 5f5:	e9 51 ff ff ff       	jmp    54b <printf+0x4b>
 5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 600:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 603:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 608:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 60a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 611:	8b 10                	mov    (%eax),%edx
 613:	89 f0                	mov    %esi,%eax
 615:	e8 46 fe ff ff       	call   460 <printint>
        ap++;
 61a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 61e:	e9 28 ff ff ff       	jmp    54b <printf+0x4b>
 623:	90                   	nop
 624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 628:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 62b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 62f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 631:	b8 f1 09 00 00       	mov    $0x9f1,%eax
 636:	85 ff                	test   %edi,%edi
 638:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 63b:	0f b6 07             	movzbl (%edi),%eax
 63e:	84 c0                	test   %al,%al
 640:	74 2a                	je     66c <printf+0x16c>
 642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 648:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 64b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 64e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 651:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 658:	00 
 659:	89 44 24 04          	mov    %eax,0x4(%esp)
 65d:	89 34 24             	mov    %esi,(%esp)
 660:	e8 5d fd ff ff       	call   3c2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 665:	0f b6 07             	movzbl (%edi),%eax
 668:	84 c0                	test   %al,%al
 66a:	75 dc                	jne    648 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 66c:	31 ff                	xor    %edi,%edi
 66e:	e9 d8 fe ff ff       	jmp    54b <printf+0x4b>
 673:	90                   	nop
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 678:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 67b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 67d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 684:	00 
 685:	89 44 24 04          	mov    %eax,0x4(%esp)
 689:	89 34 24             	mov    %esi,(%esp)
 68c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 690:	e8 2d fd ff ff       	call   3c2 <write>
 695:	e9 b1 fe ff ff       	jmp    54b <printf+0x4b>
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 6a0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 6a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6a8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 6ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 6b2:	8b 10                	mov    (%eax),%edx
 6b4:	89 f0                	mov    %esi,%eax
 6b6:	e8 a5 fd ff ff       	call   460 <printint>
        ap++;
 6bb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6bf:	e9 87 fe ff ff       	jmp    54b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 6c4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6c7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 6c9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6cb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6d2:	00 
 6d3:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 6d6:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6d9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6dc:	89 44 24 04          	mov    %eax,0x4(%esp)
 6e0:	e8 dd fc ff ff       	call   3c2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 6e5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6e9:	e9 5d fe ff ff       	jmp    54b <printf+0x4b>
 6ee:	66 90                	xchg   %ax,%ax

000006f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f1:	a1 a4 0c 00 00       	mov    0xca4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 6f6:	89 e5                	mov    %esp,%ebp
 6f8:	57                   	push   %edi
 6f9:	56                   	push   %esi
 6fa:	53                   	push   %ebx
 6fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6fe:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 700:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 703:	39 d0                	cmp    %edx,%eax
 705:	72 11                	jb     718 <free+0x28>
 707:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 708:	39 c8                	cmp    %ecx,%eax
 70a:	72 04                	jb     710 <free+0x20>
 70c:	39 ca                	cmp    %ecx,%edx
 70e:	72 10                	jb     720 <free+0x30>
 710:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 712:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 714:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 716:	73 f0                	jae    708 <free+0x18>
 718:	39 ca                	cmp    %ecx,%edx
 71a:	72 04                	jb     720 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 71c:	39 c8                	cmp    %ecx,%eax
 71e:	72 f0                	jb     710 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 720:	8b 73 fc             	mov    -0x4(%ebx),%esi
 723:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 726:	39 cf                	cmp    %ecx,%edi
 728:	74 1e                	je     748 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 72a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 72d:	8b 48 04             	mov    0x4(%eax),%ecx
 730:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 733:	39 f2                	cmp    %esi,%edx
 735:	74 28                	je     75f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 737:	89 10                	mov    %edx,(%eax)
  freep = p;
 739:	a3 a4 0c 00 00       	mov    %eax,0xca4
}
 73e:	5b                   	pop    %ebx
 73f:	5e                   	pop    %esi
 740:	5f                   	pop    %edi
 741:	5d                   	pop    %ebp
 742:	c3                   	ret    
 743:	90                   	nop
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 748:	03 71 04             	add    0x4(%ecx),%esi
 74b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 74e:	8b 08                	mov    (%eax),%ecx
 750:	8b 09                	mov    (%ecx),%ecx
 752:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 755:	8b 48 04             	mov    0x4(%eax),%ecx
 758:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 75b:	39 f2                	cmp    %esi,%edx
 75d:	75 d8                	jne    737 <free+0x47>
    p->s.size += bp->s.size;
 75f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 762:	a3 a4 0c 00 00       	mov    %eax,0xca4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 767:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 76a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 76d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 76f:	5b                   	pop    %ebx
 770:	5e                   	pop    %esi
 771:	5f                   	pop    %edi
 772:	5d                   	pop    %ebp
 773:	c3                   	ret    
 774:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 77a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000780 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 789:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 78c:	8b 1d a4 0c 00 00    	mov    0xca4,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 792:	8d 48 07             	lea    0x7(%eax),%ecx
 795:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 798:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 79a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 79d:	0f 84 9b 00 00 00    	je     83e <malloc+0xbe>
 7a3:	8b 13                	mov    (%ebx),%edx
 7a5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7a8:	39 fe                	cmp    %edi,%esi
 7aa:	76 64                	jbe    810 <malloc+0x90>
 7ac:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 7b3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 7b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7bb:	eb 0e                	jmp    7cb <malloc+0x4b>
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7c2:	8b 78 04             	mov    0x4(%eax),%edi
 7c5:	39 fe                	cmp    %edi,%esi
 7c7:	76 4f                	jbe    818 <malloc+0x98>
 7c9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7cb:	3b 15 a4 0c 00 00    	cmp    0xca4,%edx
 7d1:	75 ed                	jne    7c0 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 7d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7d6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 7dc:	bf 00 10 00 00       	mov    $0x1000,%edi
 7e1:	0f 43 fe             	cmovae %esi,%edi
 7e4:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 7e7:	89 04 24             	mov    %eax,(%esp)
 7ea:	e8 3b fc ff ff       	call   42a <sbrk>
  if(p == (char*)-1)
 7ef:	83 f8 ff             	cmp    $0xffffffff,%eax
 7f2:	74 18                	je     80c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 7f4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 7f7:	83 c0 08             	add    $0x8,%eax
 7fa:	89 04 24             	mov    %eax,(%esp)
 7fd:	e8 ee fe ff ff       	call   6f0 <free>
  return freep;
 802:	8b 15 a4 0c 00 00    	mov    0xca4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 808:	85 d2                	test   %edx,%edx
 80a:	75 b4                	jne    7c0 <malloc+0x40>
        return 0;
 80c:	31 c0                	xor    %eax,%eax
 80e:	eb 20                	jmp    830 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 810:	89 d0                	mov    %edx,%eax
 812:	89 da                	mov    %ebx,%edx
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 818:	39 fe                	cmp    %edi,%esi
 81a:	74 1c                	je     838 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 81c:	29 f7                	sub    %esi,%edi
 81e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 821:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 824:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 827:	89 15 a4 0c 00 00    	mov    %edx,0xca4
      return (void*)(p + 1);
 82d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 830:	83 c4 1c             	add    $0x1c,%esp
 833:	5b                   	pop    %ebx
 834:	5e                   	pop    %esi
 835:	5f                   	pop    %edi
 836:	5d                   	pop    %ebp
 837:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 838:	8b 08                	mov    (%eax),%ecx
 83a:	89 0a                	mov    %ecx,(%edx)
 83c:	eb e9                	jmp    827 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 83e:	c7 05 a4 0c 00 00 a8 	movl   $0xca8,0xca4
 845:	0c 00 00 
    base.s.size = 0;
 848:	ba a8 0c 00 00       	mov    $0xca8,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 84d:	c7 05 a8 0c 00 00 a8 	movl   $0xca8,0xca8
 854:	0c 00 00 
    base.s.size = 0;
 857:	c7 05 ac 0c 00 00 00 	movl   $0x0,0xcac
 85e:	00 00 00 
 861:	e9 46 ff ff ff       	jmp    7ac <malloc+0x2c>
