	.file	"math.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C17 (GCC) version 8.3.0 (avr)
 ; 	compiled by GNU C version 5.3.0, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -imultilib avr51
 ;  -iprefix c:\mingw\avrgcc\bin\../lib/gcc/avr/8.3.0/ -D__AVR_ATmega128__
 ;  -D__AVR_DEVICE_NAME__=atmega128 math.c -mn-flash=2 -mno-skip-bug
 ;  -mmcu=avr51 -Os -fverbose-asm
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -falign-functions -falign-jumps -falign-labels -falign-loops
 ;  -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type
 ;  -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 ;  -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 ;  -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 ;  -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments
 ;  -fcommon -fcompare-elim -fcprop-registers -fcrossjumping
 ;  -fcse-follow-jumps -fdefer-pop -fdevirtualize
 ;  -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
 ;  -feliminate-unused-debug-types -fexpensive-optimizations
 ;  -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
 ;  -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
 ;  -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
 ;  -findirect-inlining -finline -finline-atomics -finline-functions
 ;  -finline-functions-called-once -finline-small-functions -fipa-bit-cp
 ;  -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables
 ;  -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
 ;  -fipa-vrp -fira-hoist-pressure -fira-share-save-slots
 ;  -fira-share-spill-slots -fisolate-erroneous-paths-dereference -fivopts
 ;  -fkeep-static-consts -fleading-underscore -flifetime-dse -flra-remat
 ;  -flto-odr-type-merging -fmath-errno -fmerge-constants
 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 ;  -foptimize-sibling-calls -fpartial-inlining -fpeephole -fpeephole2
 ;  -fplt -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
 ;  -freorder-functions -frerun-cse-after-loop
 ;  -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 ;  -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 ;  -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 ;  -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
 ;  -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
 ;  -fstdarg-opt -fstore-merging -fstrict-aliasing
 ;  -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
 ;  -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 ;  -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 ;  -ftree-copy-prop -ftree-dce -ftree-dominator-opts -ftree-dse
 ;  -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im
 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 ;  -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
 ;  -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
 ;  -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
 ;  -fzero-initialized-in-bss -mgas-isr-prologues -mmain-is-OS_task

	.text
	.type	compare_acos_table, @function
compare_acos_table:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  math.c:39:     const int16 sub = l - r;
	movw r30,r24	 ; , k
	ld r24,Z	 ;  MEM[(uint16 *)k_4(D)], MEM[(uint16 *)k_4(D)]
	ldd r25,Z+1	 ;  MEM[(uint16 *)k_4(D)], MEM[(uint16 *)k_4(D)]
	movw r30,r22	 ; , v
	ld r18,Z	 ;  MEM[(struct _acos_table_val *)v_6(D)].fractional, MEM[(struct _acos_table_val *)v_6(D)].fractional
	ldd r19,Z+1	 ;  MEM[(struct _acos_table_val *)v_6(D)].fractional, MEM[(struct _acos_table_val *)v_6(D)].fractional
	sub r24,r18	 ;  tmp50, MEM[(struct _acos_table_val *)v_6(D)].fractional
	sbc r25,r19	 ; , MEM[(struct _acos_table_val *)v_6(D)].fractional
 ;  math.c:42: }
	mov r24,r25	 ; ,
/* epilogue start */
	ret	
	.size	compare_acos_table, .-compare_acos_table
.global	fixedpt_atan
	.type	fixedpt_atan, @function
fixedpt_atan:
	push r3		 ; 
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,9	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 9 */
/* stack size = 26 */
.L__stack_usage = 26
	movw r4,r22	 ;  rad, rad
	movw r6,r24	 ;  rad, rad
 ;  math.c:11:     fixedpt s = fixedpt_abs( rad );
	sbrs r7,7	 ;  rad,
	rjmp .L3		 ; 
	com r7	 ;  rad
	com r6	 ;  rad
	com r5	 ;  rad
	com r4	 ;  rad
	adc r4,__zero_reg__	 ;  rad
	adc r5,__zero_reg__	 ;  rad
	adc r6,__zero_reg__	 ;  rad
	adc r7,__zero_reg__	 ;  rad
.L3:
 ;  math.c:12:     fixedpt sq = m( s, s );
	movw r24,r6	 ; , rad
	movw r22,r4	 ; , rad
	movw r20,r6	 ; , rad
	movw r18,r4	 ; , rad
	call __mulsidi3
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:12:     fixedpt sq = m( s, s );
	mov r3,r18	 ;  sq, tmp96
	mov r17,r19	 ;  sq, tmp97
	std Y+9,r20	 ;  %sfp, tmp98
	std Y+1,r21	 ;  %sfp, tmp99
 ;  math.c:15:     if ( s < c( 1.5 ) )
	cp r4,__zero_reg__	 ;  rad
	ldi r18,-128	 ; ,
	cpc r5,r18	 ;  rad,
	ldi r18,1	 ; ,
	cpc r6,r18	 ;  rad,
	cpc r7,__zero_reg__	 ;  rad
	brlt .+2	 ; 
	rjmp .L4	 ; 
 ;  math.c:18:         res = m( sq, c( -15.5939 ) ) + m( c( 60.7821 ), s ) + c( -0.0754 );
	mov r22,r3	 ; , sq
	mov r23,r19	 ; , sq
	movw r24,r20	 ; ,
	ldi r18,lo8(-10)	 ; ,
	ldi r19,lo8(103)	 ; ,
	ldi r20,lo8(-16)	 ; ,
	ldi r21,lo8(-1)	 ; ,
	call __mulsidi3
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r10,r20	 ; ,
 ;  math.c:18:         res = m( sq, c( -15.5939 ) ) + m( c( 60.7821 ), s ) + c( -0.0754 );
	movw r24,r6	 ; , rad
	movw r22,r4	 ; , rad
	ldi r18,lo8(56)	 ; ,
	ldi r19,lo8(-56)	 ; ,
	ldi r20,lo8(60)	 ; ,
	ldi r21,0		 ; 
	call __mulsidi3
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  math.c:18:         res = m( sq, c( -15.5939 ) ) + m( c( 60.7821 ), s ) + c( -0.0754 );
	ldd r24,Y+1	 ; , %sfp
	ldd r25,Y+2	 ; , %sfp
	ldd r26,Y+3	 ; , %sfp
	ldd r27,Y+4	 ; , %sfp
	add r8,r24	 ;  tmp76,
	adc r9,r25	 ; ,
	adc r10,r26	 ; ,
	adc r11,r27	 ; ,
 ;  math.c:18:         res = m( sq, c( -15.5939 ) ) + m( c( 60.7821 ), s ) + c( -0.0754 );
	movw r24,r10	 ;  <retval>,
	movw r22,r8	 ;  <retval>, tmp76
	subi r22,77	 ;  <retval>,
	sbci r23,19	 ;  <retval>,
	sbc r24,__zero_reg__	 ;  <retval>
	sbc r25,__zero_reg__	 ;  <retval>
.L2:
/* epilogue start */
 ;  math.c:26: }
	adiw r28,9	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	pop r3		 ; 
	ret	
.L4:
 ;  math.c:23:         res = m( m( s, sq ), c( 0.5008 ) ) - m( sq, c( -6.5839 ) ) + m( s, c( 31.7839 ) ) + c( 22.0498 );
	movw r24,r6	 ; , rad
	movw r22,r4	 ; , rad
	mov r18,r3	 ; , sq
	ldd r20,Y+9	 ; , %sfp
	ldd r21,Y+1	 ; , %sfp
	call __mulsidi3
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r22,r18	 ; ,
	movw r24,r20	 ; ,
	ldi r18,lo8(52)	 ; ,
	ldi r19,lo8(-128)	 ; ,
	ldi r20,0		 ; 
	ldi r21,0		 ; 
	call __mulsidi3
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r10,r20	 ; ,
 ;  math.c:23:         res = m( m( s, sq ), c( 0.5008 ) ) - m( sq, c( -6.5839 ) ) + m( s, c( 31.7839 ) ) + c( 22.0498 );
	mov r22,r3	 ; , sq
	mov r23,r17	 ; , sq
	ldd r24,Y+9	 ; , %sfp
	ldd r25,Y+1	 ; , %sfp
	ldi r18,lo8(-122)	 ; ,
	ldi r19,lo8(106)	 ; ,
	ldi r20,lo8(-7)	 ; ,
	ldi r21,lo8(-1)	 ; ,
	call __mulsidi3
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  math.c:23:         res = m( m( s, sq ), c( 0.5008 ) ) - m( sq, c( -6.5839 ) ) + m( s, c( 31.7839 ) ) + c( 22.0498 );
	movw r20,r10	 ; ,
	movw r18,r8	 ; ,
	ldd r24,Y+1	 ; , %sfp
	ldd r25,Y+2	 ; , %sfp
	ldd r26,Y+3	 ; , %sfp
	ldd r27,Y+4	 ; , %sfp
	sub r18,r24	 ; ,
	sbc r19,r25	 ; ,
	sbc r20,r26	 ; ,
	sbc r21,r27	 ; ,
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  math.c:23:         res = m( m( s, sq ), c( 0.5008 ) ) - m( sq, c( -6.5839 ) ) + m( s, c( 31.7839 ) ) + c( 22.0498 );
	movw r24,r6	 ; , rad
	movw r22,r4	 ; , rad
	ldi r18,lo8(-82)	 ; ,
	ldi r19,lo8(-56)	 ; ,
	ldi r20,lo8(31)	 ; ,
	ldi r21,0		 ; 
	call __mulsidi3
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r10,r20	 ; ,
 ;  math.c:23:         res = m( m( s, sq ), c( 0.5008 ) ) - m( sq, c( -6.5839 ) ) + m( s, c( 31.7839 ) ) + c( 22.0498 );
	ldd r18,Y+1	 ; , %sfp
	ldd r19,Y+2	 ; , %sfp
	ldd r20,Y+3	 ; , %sfp
	ldd r21,Y+4	 ; , %sfp
	add r8,r18	 ;  tmp86,
	adc r9,r19	 ; ,
	adc r10,r20	 ; ,
	adc r11,r21	 ; ,
 ;  math.c:23:         res = m( m( s, sq ), c( 0.5008 ) ) - m( sq, c( -6.5839 ) ) + m( s, c( 31.7839 ) ) + c( 22.0498 );
	movw r24,r10	 ;  <retval>,
	movw r22,r8	 ;  <retval>, tmp86
	subi r22,64	 ;  <retval>,
	sbci r23,-13	 ;  <retval>,
	sbci r24,-23	 ;  <retval>,
	sbci r25,-1	 ;  <retval>,
 ;  math.c:25:     return res;
	rjmp .L2		 ; 
	.size	fixedpt_atan, .-fixedpt_atan
.global	fixedpt_acos_half
	.type	fixedpt_acos_half, @function
fixedpt_acos_half:
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	 ; SP -= 2	 ; 
	rcall .	
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
 ;  math.c:151:     uint16 Key = x & 0xffff0000 ? 0xffff : x & 0xffff;
	movw r16,r22	 ;  tmp48, x
	movw r18,r24	 ; , x
	clr r16		 ;  tmp48
	clr r17		 ; 
 ;  math.c:151:     uint16 Key = x & 0xffff0000 ? 0xffff : x & 0xffff;
	or r16,r17	 ;  tmp48
	or r16,r18	 ;  tmp48
	or r16,r19	 ;  tmp48
	breq .L7		 ; ,
	ldi r22,lo8(-1)	 ;  x,
	ldi r23,lo8(-1)	 ;  x,
	ldi r24,0		 ;  x
	ldi r25,0		 ;  x
.L7:
 ;  math.c:151:     uint16 Key = x & 0xffff0000 ? 0xffff : x & 0xffff;
	std Y+2,r23	 ;  Key, x
	std Y+1,r22	 ;  Key, x
 ;  math.c:152:     _acos_table_val* found = TryBinarySearch( &Key, acos_table, ARRAYCOUNT( acos_table ), (uint8)sizeof( *acos_table ), compare_acos_table );
	ldi r16,lo8(gs(compare_acos_table))	 ; ,
	ldi r17,hi8(gs(compare_acos_table))	 ; ,
	ldi r18,lo8(6)	 ; ,
	ldi r20,lo8(101)	 ; ,
	ldi r21,0		 ; 
	ldi r22,lo8(acos_table)	 ; ,
	ldi r23,hi8(acos_table)	 ; ,
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call TryBinarySearch	 ; 
 ;  math.c:154:     return found->value;
	movw r30,r24	 ; ,
	ldd r22,Z+2	 ;  <retval>, found_9->value
	ldd r23,Z+3	 ;  <retval>, found_9->value
	ldd r24,Z+4	 ;  <retval>, found_9->value
	ldd r25,Z+5	 ;  <retval>, found_9->value
/* epilogue start */
 ;  math.c:155: }
	 ; SP += 2	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	ret	
	.size	fixedpt_acos_half, .-fixedpt_acos_half
.global	__muldi3
.global	fixedpt_asin
	.type	fixedpt_asin, @function
fixedpt_asin:
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,8	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 8 */
/* stack size = 24 */
.L__stack_usage = 24
	movw r4,r22	 ;  x, x
	movw r6,r24	 ;  x, x
 ;  math.c:164:     res = m( x, c( 1 ) + m( x, m( x, c( 1.0 / 6 ) + m( x, m( x, c( 3.0 / 40 ) ) ) ) ) + m( x, m( x, c( 15.0 / ( 42 * 8 ) ) ) ) );
	movw r26,r24	 ; , x
	movw r24,r22	 ; , x
	lsl r27	 ; 
	sbc r24,r24	 ; 
	mov r25,r24	 ; 
	movw r26,r24	 ; 
	std Y+1,r24	 ;  %sfp,
	std Y+2,r25	 ;  %sfp,
	std Y+3,r26	 ;  %sfp,
	std Y+4,r27	 ;  %sfp,
	movw r24,r6	 ; , x
	ldi r18,lo8(51)	 ; ,
	ldi r19,lo8(19)	 ; ,
	ldi r20,0		 ; 
	ldi r21,0		 ; 
	call __mulsidi3
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r10,r4	 ; ,
	movw r12,r6	 ; ,
	ldd r14,Y+1	 ; , %sfp
	mov r15,r14	 ; ,
	mov r16,r14	 ; , tmp15
	mov r17,r14	 ; , tmp16
	call __muldi3	 ; 
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r24,r20	 ; , tmp10
	movw r22,r8	 ;  tmp73,
	subi r22,85	 ;  tmp73,
	sbci r23,-43	 ; ,
	sbci r24,-1	 ; ,
	sbci r25,-1	 ; ,
	movw r20,r6	 ; , x
	movw r18,r4	 ; , x
	call __mulsidi3
	call __ashrdi3
	mov r27,r18	 ;  tmp126,
	mov r26,r19	 ;  tmp127,
	mov r31,r20	 ;  tmp128,
	mov r30,r21	 ;  tmp129,
	movw r24,r6	 ; , x
	movw r22,r4	 ; , x
	mov r18,r27	 ;  tmp185, tmp126
	mov r19,r26	 ;  tmp186, tmp127
	mov r20,r31	 ;  tmp187, tmp128
	mov r21,r30	 ;  tmp188, tmp129
	call __mulsidi3
	call __ashrdi3
	movw r26,r20	 ; , tmp10
	movw r24,r18	 ; , tmp8
	adiw r26,1	 ; ,
	std Y+5,r24	 ;  %sfp,
	std Y+6,r25	 ;  %sfp,
	std Y+7,r26	 ;  %sfp,
	std Y+8,r27	 ;  %sfp,
	movw r24,r6	 ; , x
	movw r22,r4	 ; , x
	ldi r18,lo8(110)	 ; ,
	ldi r19,lo8(11)	 ; ,
	ldi r20,0		 ; 
	ldi r21,0		 ; 
	call __mulsidi3
	call __ashrdi3
	movw r10,r4	 ; ,
	mov r16,r14	 ; , tmp15
	call __muldi3	 ; 
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r10,r20	 ; ,
	ldd r22,Y+5	 ;  tmp83, %sfp
	ldd r23,Y+6	 ;  tmp83, %sfp
	ldd r24,Y+7	 ;  tmp83, %sfp
	ldd r25,Y+8	 ;  tmp83, %sfp
	add r22,r8	 ;  tmp83, tmp82
	adc r23,r9	 ; ,
	adc r24,r10	 ; ,
	adc r25,r11	 ; ,
	movw r20,r6	 ; , x
	movw r18,r4	 ; , x
	call __mulsidi3
	call __ashrdi3
 ;  math.c:164:     res = m( x, c( 1 ) + m( x, m( x, c( 1.0 / 6 ) + m( x, m( x, c( 3.0 / 40 ) ) ) ) ) + m( x, m( x, c( 15.0 / ( 42 * 8 ) ) ) ) );
	movw r22,r18	 ; ,
	movw r24,r20	 ; ,
/* epilogue start */
 ;  math.c:166: }
	adiw r28,8	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	ret	
	.size	fixedpt_asin, .-fixedpt_asin
.global	fixedpt_sin
	.type	fixedpt_sin, @function
fixedpt_sin:
	push r2		 ; 
	push r3		 ; 
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,10	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 10 */
/* stack size = 28 */
.L__stack_usage = 28
 ;  math.c:178:     fp %= 2 * FIXEDPT_PI;
	ldi r18,lo8(126)	 ; ,
	ldi r19,lo8(72)	 ; ,
	ldi r20,lo8(6)	 ; ,
	ldi r21,0		 ; 
	call __divmodsi4
	movw r4,r22	 ;  fp,
	movw r6,r24	 ;  fp,
 ;  math.c:179:     if ( fp < 0 )
	sbrs r7,7	 ;  fp,
	rjmp .L13		 ; 
 ;  math.c:180:         fp = FIXEDPT_PI * 2 + fp;
	ldi r18,126	 ; ,
	add r4,r18	 ;  fp,
	ldi r18,72	 ; ,
	adc r5,r18	 ;  fp,
	ldi r18,6	 ; ,
	adc r6,r18	 ;  fp,
	adc r7,__zero_reg__	 ;  fp
.L13:
 ;  math.c:181:     if ( ( fp > FIXEDPT_HALF_PI ) && ( fp <= FIXEDPT_PI ) )
	movw r26,r6	 ; , fp
	movw r24,r4	 ;  tmp67, fp
	subi r24,33	 ;  tmp67,
	sbci r25,-110	 ; ,
	sbci r26,1	 ; ,
	sbc r27,__zero_reg__	 ; 
 ;  math.c:181:     if ( ( fp > FIXEDPT_HALF_PI ) && ( fp <= FIXEDPT_PI ) )
	cpi r24,31	 ;  tmp67,
	sbci r25,-110	 ; ,
	sbci r26,1	 ; ,
	cpc r27,__zero_reg__	 ; 
	brsh .L14		 ; ,
 ;  math.c:182:         fp = FIXEDPT_PI - fp;
	ldi r24,lo8(63)	 ;  tmp68,
	ldi r25,lo8(36)	 ; ,
	ldi r26,lo8(3)	 ; ,
	ldi r27,0		 ; 
	movw r18,r24	 ; , tmp68
	movw r20,r26	 ; ,
	sub r18,r4	 ; , fp
	sbc r19,r5	 ; , fp
	sbc r20,r6	 ; , fp
	sbc r21,r7	 ; , fp
	movw r4,r18	 ;  fp,
	movw r6,r20	 ;  fp,
 ;  math.c:171:     int sign = 1;
	ldi r20,lo8(1)	 ; ,
	ldi r21,0		 ; 
.L18:
 ;  math.c:189:         sign = -1;
	std Y+10,r21	 ;  %sfp,
	std Y+9,r20	 ;  %sfp,
	rjmp .L15		 ; 
.L14:
 ;  math.c:183:     else if ( ( fp > FIXEDPT_PI ) && ( fp <= ( FIXEDPT_PI + FIXEDPT_HALF_PI ) ) ) {
	movw r26,r6	 ; , fp
	movw r24,r4	 ;  tmp69, fp
	subi r24,64	 ;  tmp69,
	sbci r25,36	 ; ,
	sbci r26,3	 ; ,
	sbc r27,__zero_reg__	 ; 
 ;  math.c:183:     else if ( ( fp > FIXEDPT_PI ) && ( fp <= ( FIXEDPT_PI + FIXEDPT_HALF_PI ) ) ) {
	cpi r24,32	 ;  tmp69,
	sbci r25,-110	 ; ,
	sbci r26,1	 ; ,
	cpc r27,__zero_reg__	 ; 
	brlo .+2	 ; 
	rjmp .L16	 ; 
 ;  math.c:184:         fp = fp - FIXEDPT_PI;
	ldi r24,63	 ; ,
	sub r4,r24	 ;  fp,
	ldi r24,36	 ; ,
	sbc r5,r24	 ;  fp,
	ldi r24,3	 ; ,
	sbc r6,r24	 ;  fp,
	sbc r7,__zero_reg__	 ;  fp
 ;  math.c:185:         sign = -1;
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	std Y+10,r19	 ;  %sfp,
	std Y+9,r18	 ;  %sfp,
.L15:
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r24,r6	 ; , fp
	movw r22,r4	 ; , fp
	movw r20,r6	 ; , fp
	movw r18,r4	 ; , fp
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	mov r9,r18	 ;  _32,
	mov r8,r19	 ;  _32,
	mov r3,r20	 ;  _32,
	mov r2,r21	 ;  _32,
	std Y+5,r22	 ;  %sfp,
	std Y+6,r23	 ;  %sfp,
	std Y+7,r24	 ;  %sfp,
	std Y+8,r25	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r18,lo8(-13)	 ; ,
	mov r10,r18	 ; ,
	clr r11		 ; 
	inc r11		 ; 
	mov r12,__zero_reg__	 ; 
	mov r13,__zero_reg__	 ; 
	mov r14,__zero_reg__	 ; 
	mov r15,__zero_reg__	 ; 
	ldi r16,0		 ; 
	ldi r17,0		 ; 
	mov r18,r9	 ; , _32
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:194:     result -= SK[1];
	movw r26,r20	 ;  result, tmp12
	movw r24,r18	 ;  result, tmp10
	subi r24,-126	 ;  result,
	sbci r25,42	 ;  result,
	sbc r26,__zero_reg__	 ;  result
	sbc r27,__zero_reg__	 ;  result
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r18,r24	 ; , result
	movw r20,r26	 ; , result
	lsl r21	 ; 
	sbc r18,r18	 ; 
	mov r19,r18	 ; 
	movw r20,r18	 ; 
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	mov r10,r9	 ; , _32
	mov r11,r8	 ; , _32
	mov r12,r3	 ; , _32
	mov r13,r2	 ; , _32
	ldd r14,Y+5	 ; , %sfp
	ldd r15,Y+6	 ; , %sfp
	ldd r16,Y+7	 ; , %sfp
	ldd r17,Y+8	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	ldd r22,Y+1	 ; , %sfp
	mov r23,r22	 ; ,
	mov r24,r22	 ; , tmp23
	mov r25,r22	 ; , tmp24
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:196:     result += FIXEDPT_ONE;
	movw r22,r18	 ;  result, _25
	movw r24,r20	 ;  result, _25
	adiw r24,1	 ;  result,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r20,r6	 ; , fp
	movw r18,r4	 ; , fp
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	call __ashrdi3
	mov r27,r18	 ;  tmp143,
	mov r26,r19	 ;  tmp144,
	mov r31,r20	 ;  tmp145,
	mov r30,r21	 ;  tmp146,
 ;  math.c:198:     return sign * result;
	ldd r24,Y+9	 ; , %sfp
	ldd r25,Y+10	 ; , %sfp
	movw r18,r24	 ;  sign,
	lsl r25		 ; 
	sbc r20,r20	 ; 
	sbc r21,r21	 ; 
	mov r22,r27	 ;  tmp151, tmp143
	mov r23,r26	 ; , tmp144
	mov r24,r31	 ; , tmp145
	mov r25,r30	 ; , tmp146
	call __mulsi3
/* epilogue start */
 ;  math.c:199: }
	adiw r28,10	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	pop r3		 ; 
	pop r2		 ; 
	ret	
.L16:
 ;  math.c:187:     else if ( fp > ( FIXEDPT_PI + FIXEDPT_HALF_PI ) ) {
	ldi r19,96	 ; ,
	cp r4,r19		 ;  fp,
	ldi r19,-74	 ; ,
	cpc r5,r19	 ;  fp,
	ldi r19,4	 ; ,
	cpc r6,r19	 ;  fp,
	cpc r7,__zero_reg__	 ;  fp
	brlt .L17		 ; ,
 ;  math.c:188:         fp = ( FIXEDPT_PI << 1 ) - fp;
	ldi r24,lo8(126)	 ;  tmp70,
	ldi r25,lo8(72)	 ; ,
	ldi r26,lo8(6)	 ; ,
	ldi r27,0		 ; 
	movw r18,r24	 ; , tmp70
	movw r20,r26	 ; ,
	sub r18,r4	 ; , fp
	sbc r19,r5	 ; , fp
	sbc r20,r6	 ; , fp
	sbc r21,r7	 ; , fp
	movw r4,r18	 ;  fp,
	movw r6,r20	 ;  fp,
 ;  math.c:189:         sign = -1;
	ldi r20,lo8(-1)	 ; ,
	ldi r21,lo8(-1)	 ; ,
	rjmp .L18		 ; 
.L17:
 ;  math.c:171:     int sign = 1;
	ldi r24,lo8(1)	 ; ,
	ldi r25,0		 ; 
	std Y+10,r25	 ;  %sfp,
	std Y+9,r24	 ;  %sfp,
	rjmp .L15		 ; 
	.size	fixedpt_sin, .-fixedpt_sin
.global	__divdi3
.global	fixedpt_ln
	.type	fixedpt_ln, @function
fixedpt_ln:
	push r2		 ; 
	push r3		 ; 
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,35	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 35 */
/* stack size = 53 */
.L__stack_usage = 53
	movw r8,r22	 ;  x, x
	movw r10,r24	 ;  x, x
 ;  math.c:218:         return ( 0 );
	ldi r22,0		 ;  <retval>
	ldi r23,0		 ;  <retval>
	movw r24,r22	 ;  <retval>
 ;  math.c:217:     if ( x < 0 )
	sbrc r11,7	 ;  x,
	rjmp .L19		 ; 
 ;  math.c:222:     log2 = 0;
	mov r4,__zero_reg__	 ;  log2
	mov r5,__zero_reg__	 ;  log2
	movw r6,r4	 ;  log2
 ;  math.c:219:     if ( x == 0 )
	cp r8,__zero_reg__	 ;  x
	cpc r9,__zero_reg__	 ;  x
	cpc r10,__zero_reg__	 ;  x
	cpc r11,__zero_reg__	 ;  x
	brne .L21		 ; ,
 ;  math.c:220:         return 0xffffffff;
	ldi r22,lo8(-1)	 ;  <retval>,
	ldi r23,lo8(-1)	 ;  <retval>,
	movw r24,r22	 ;  <retval>
	rjmp .L19		 ; 
.L22:
 ;  math.c:225:         xi >>= 1;
	asr r11	 ;  x
	ror r10	 ;  x
	ror r9	 ;  x
	ror r8	 ;  x
 ;  math.c:226:         log2++;
	ldi r24,-1	 ; ,
	sub r4,r24	 ;  log2,
	sbc r5,r24	 ;  log2,
	sbc r6,r24	 ;  log2,
	sbc r7,r24	 ;  log2,
.L21:
 ;  math.c:224:     while ( xi > FIXEDPT_TWO ) {
	ldi r25,1	 ; ,
	cp r8,r25		 ;  x,
	cpc r9,__zero_reg__	 ;  x
	ldi r25,2	 ; ,
	cpc r10,r25	 ;  x,
	cpc r11,__zero_reg__	 ;  x
	brge .L22		 ; ,
 ;  math.c:228:     f = xi - FIXEDPT_ONE;
	movw r26,r10	 ; , x
	movw r24,r8	 ; , x
	sbiw r26,1	 ; ,
	std Y+9,r24	 ;  %sfp,
	std Y+10,r25	 ;  %sfp,
	std Y+11,r26	 ;  %sfp,
	std Y+12,r27	 ;  %sfp,
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	movw r12,r24	 ;  tmp99,
	movw r14,r26	 ; ,
	lsl r15	 ;  tmp99
	sbc r12,r12	 ;  tmp99
	mov r13,r12	 ;  tmp99
	movw r14,r12	 ;  tmp99
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	ldd r18,Y+9	 ; , %sfp
	ldd r19,Y+10	 ; , %sfp
	ldd r20,Y+11	 ; , %sfp
	ldd r21,Y+12	 ; , %sfp
	mov r22,r12	 ; , tmp99
	mov r23,r12	 ; , tmp99
	mov r24,r12	 ; , tmp99
	mov r25,r12	 ; , tmp99
	ldi r16,lo8(16)	 ; ,
	call __ashldi3
 ;  math.c:229:     s = fixedpt_div( f, FIXEDPT_TWO + f );
	movw r16,r10	 ; , x
	movw r14,r8	 ;  tmp101, x
	subi r16,-1	 ; ,
	sbci r17,-1	 ; ,
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	movw r10,r14	 ; , tmp101
	movw r12,r16	 ; ,
	lsl r13	 ; 
	sbc r10,r10	 ; 
	mov r11,r10	 ; 
	movw r12,r10	 ; 
	std Y+1,r10	 ;  %sfp,
	std Y+2,r11	 ;  %sfp,
	std Y+3,r12	 ;  %sfp,
	std Y+4,r13	 ;  %sfp,
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	movw r10,r14	 ; ,
	movw r12,r16	 ; ,
	ldd r14,Y+1	 ; , %sfp
	mov r15,r14	 ; ,
	mov r16,r14	 ; , tmp15
	mov r17,r14	 ; , tmp16
	call __divdi3	 ; 
	std Y+22,r18	 ;  %sfp,
	std Y+23,r19	 ;  %sfp,
	std Y+24,r20	 ;  %sfp,
	std Y+25,r21	 ;  %sfp,
	std Y+26,r22	 ;  %sfp,
	std Y+27,r23	 ;  %sfp,
	std Y+28,r24	 ;  %sfp,
	std Y+29,r25	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r10,r18	 ; ,
	movw r12,r20	 ; ,
	movw r14,r22	 ; ,
	movw r16,r24	 ; ,
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+15,r19	 ;  %sfp,
	std Y+16,r20	 ;  %sfp,
	std Y+17,r21	 ;  %sfp,
	std Y+18,r22	 ;  %sfp,
	std Y+19,r23	 ;  %sfp,
	std Y+20,r24	 ;  %sfp,
	std Y+21,r25	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r10,r18	 ; ,
	movw r12,r20	 ; ,
	movw r14,r22	 ; ,
	movw r16,r24	 ; ,
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r2,r18	 ; ,
	movw r8,r20	 ; ,
	std Y+35,r22	 ;  %sfp,
	std Y+34,r23	 ;  %sfp,
	std Y+13,r24	 ;  %sfp,
	std Y+14,r25	 ;  %sfp,
 ;  math.c:236:     return ( fixedpt_mul( LN2, ( log2 << FIXEDPT_FBITS ) ) + f
	movw r24,r4	 ;  tmp110, log2
	clr r23	 ;  tmp110
	clr r22	 ;  tmp110
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r18,lo8(114)	 ; ,
	ldi r19,lo8(-79)	 ; ,
	ldi r20,0		 ; 
	ldi r21,0		 ; 
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	call __ashrdi3
	movw r10,r18	 ; ,
	movw r12,r20	 ; ,
 ;  math.c:236:     return ( fixedpt_mul( LN2, ( log2 << FIXEDPT_FBITS ) ) + f
	ldd r24,Y+9	 ; , %sfp
	ldd r25,Y+10	 ; , %sfp
	ldd r26,Y+11	 ; , %sfp
	ldd r27,Y+12	 ; , %sfp
	add r24,r10	 ; , tmp112
	adc r25,r11	 ; ,
	adc r26,r12	 ; ,
	adc r27,r13	 ; ,
	std Y+30,r24	 ;  %sfp,
	std Y+31,r25	 ;  %sfp,
	std Y+32,r26	 ;  %sfp,
	std Y+33,r27	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r26,lo8(-30)	 ; ,
	mov r10,r26	 ; ,
	ldi r27,lo8(37)	 ; ,
	mov r11,r27	 ; ,
	mov r12,__zero_reg__	 ; 
	mov r13,__zero_reg__	 ; 
	mov r14,__zero_reg__	 ; 
	mov r15,__zero_reg__	 ; 
	ldi r16,0		 ; 
	ldi r17,0		 ; 
	movw r18,r2	 ; ,
	movw r20,r8	 ; ,
	ldd r22,Y+35	 ; , %sfp
	ldd r23,Y+34	 ; , %sfp
	ldd r24,Y+13	 ; , %sfp
	ldd r25,Y+14	 ; , %sfp
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:234:                                                                                           + fixedpt_mul( w, LG[2] + fixedpt_mul( w, LG[4]
	movw r26,r20	 ; , tmp12
	movw r24,r18	 ;  tmp116, tmp10
	subi r24,115	 ;  tmp116,
	sbci r25,-47	 ; ,
	sbci r26,-1	 ; ,
	sbci r27,-1	 ; ,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r24	 ;  tmp119, tmp116
	movw r6,r26	 ; ,
	lsl r7	 ;  tmp119
	sbc r4,r4	 ;  tmp119
	mov r5,r4	 ;  tmp119
	movw r6,r4	 ;  tmp119
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r10,r2	 ; ,
	movw r12,r8	 ; ,
	ldd r14,Y+35	 ; , %sfp
	ldd r15,Y+34	 ; , %sfp
	ldd r16,Y+13	 ; , %sfp
	ldd r17,Y+14	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	mov r22,r4	 ; , tmp119
	mov r23,r4	 ; , tmp119
	mov r24,r4	 ; , tmp119
	mov r25,r4	 ; , tmp119
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:234:                                                                                           + fixedpt_mul( w, LG[2] + fixedpt_mul( w, LG[4]
	movw r26,r20	 ; , tmp12
	movw r24,r18	 ;  tmp122, tmp10
	subi r24,-37	 ;  tmp122,
	sbci r25,-74	 ; ,
	sbci r26,-1	 ; ,
	sbci r27,-1	 ; ,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r24	 ;  tmp125, tmp122
	movw r6,r26	 ; ,
	lsl r7	 ;  tmp125
	sbc r4,r4	 ;  tmp125
	mov r5,r4	 ;  tmp125
	movw r6,r4	 ;  tmp125
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r10,r2	 ; ,
	movw r12,r8	 ; ,
	ldd r14,Y+35	 ; , %sfp
	ldd r15,Y+34	 ; , %sfp
	ldd r16,Y+13	 ; , %sfp
	ldd r17,Y+14	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	mov r22,r4	 ; , tmp125
	mov r23,r4	 ; , tmp125
	mov r24,r4	 ; , tmp125
	mov r25,r4	 ; , tmp125
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:233:                                              + fixedpt_mul( w, LG[5] ) ) ) + fixedpt_mul( z, LG[0]
	movw r26,r20	 ; , tmp12
	movw r24,r18	 ;  tmp128, tmp10
	subi r24,85	 ;  tmp128,
	sbci r25,85	 ; ,
	sbci r26,-1	 ; ,
	sbci r27,-1	 ; ,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r24	 ;  tmp131, tmp128
	movw r6,r26	 ; ,
	lsl r7	 ;  tmp131
	sbc r4,r4	 ;  tmp131
	mov r5,r4	 ;  tmp131
	movw r6,r4	 ;  tmp131
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldd r10,Y+1	 ; , %sfp
	ldd r11,Y+15	 ; , %sfp
	ldd r12,Y+16	 ; , %sfp
	ldd r13,Y+17	 ; , %sfp
	ldd r14,Y+18	 ; , %sfp
	ldd r15,Y+19	 ; , %sfp
	ldd r16,Y+20	 ; , %sfp
	ldd r17,Y+21	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	mov r22,r4	 ; , tmp131
	mov r23,r4	 ; , tmp131
	mov r24,r4	 ; , tmp131
	mov r25,r4	 ; , tmp131
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
	std Y+5,r22	 ;  %sfp,
	std Y+6,r23	 ;  %sfp,
	std Y+7,r24	 ;  %sfp,
	std Y+8,r25	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r19,lo8(52)	 ; ,
	mov r10,r19	 ; ,
	ldi r20,lo8(39)	 ; ,
	mov r11,r20	 ; ,
	mov r12,__zero_reg__	 ; 
	mov r13,__zero_reg__	 ; 
	mov r14,__zero_reg__	 ; 
	mov r15,__zero_reg__	 ; 
	ldi r16,0		 ; 
	ldi r17,0		 ; 
	movw r18,r2	 ; ,
	movw r20,r8	 ; ,
	ldd r22,Y+35	 ; , %sfp
	ldd r23,Y+34	 ; , %sfp
	ldd r24,Y+13	 ; , %sfp
	ldd r25,Y+14	 ; , %sfp
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:232:     R = fixedpt_mul( w, LG[1] + fixedpt_mul( w, LG[3]
	movw r26,r20	 ; , tmp12
	movw r24,r18	 ;  tmp136, tmp10
	subi r24,28	 ;  tmp136,
	sbci r25,-57	 ; ,
	sbci r26,-1	 ; ,
	sbci r27,-1	 ; ,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r24	 ;  tmp139, tmp136
	movw r6,r26	 ; ,
	lsl r7	 ;  tmp139
	sbc r4,r4	 ;  tmp139
	mov r5,r4	 ;  tmp139
	movw r6,r4	 ;  tmp139
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r10,r2	 ; ,
	movw r12,r8	 ; ,
	ldd r14,Y+35	 ; , %sfp
	ldd r15,Y+34	 ; , %sfp
	ldd r16,Y+13	 ; , %sfp
	ldd r17,Y+14	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	mov r22,r4	 ; , tmp139
	mov r23,r4	 ; , tmp139
	mov r24,r4	 ; , tmp139
	mov r25,r4	 ; , tmp139
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
 ;  math.c:232:     R = fixedpt_mul( w, LG[1] + fixedpt_mul( w, LG[3]
	movw r26,r20	 ; , tmp12
	movw r24,r18	 ;  tmp142, tmp10
	subi r24,-102	 ;  tmp142,
	sbci r25,-103	 ; ,
	sbci r26,-1	 ; ,
	sbci r27,-1	 ; ,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r24	 ;  tmp145, tmp142
	movw r6,r26	 ; ,
	lsl r7	 ;  tmp145
	sbc r4,r4	 ;  tmp145
	mov r5,r4	 ;  tmp145
	movw r6,r4	 ;  tmp145
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r10,r2	 ; ,
	movw r12,r8	 ; ,
	ldd r14,Y+35	 ; , %sfp
	ldd r15,Y+34	 ; , %sfp
	ldd r16,Y+13	 ; , %sfp
	ldd r17,Y+14	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	mov r22,r4	 ; , tmp145
	mov r23,r4	 ; , tmp145
	mov r24,r4	 ; , tmp145
	mov r25,r4	 ; , tmp145
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r10,r20	 ; ,
 ;  math.c:232:     R = fixedpt_mul( w, LG[1] + fixedpt_mul( w, LG[3]
	ldd r24,Y+1	 ; , %sfp
	ldd r25,Y+2	 ; , %sfp
	ldd r26,Y+3	 ; , %sfp
	ldd r27,Y+4	 ; , %sfp
	add r8,r24	 ;  R,
	adc r9,r25	 ;  R,
	adc r10,r26	 ;  R,
	adc r11,r27	 ;  R,
 ;  math.c:237:              - fixedpt_mul( s, f - R ) );
	ldd r24,Y+9	 ;  tmp149, %sfp
	ldd r25,Y+10	 ;  tmp149, %sfp
	ldd r26,Y+11	 ;  tmp149, %sfp
	ldd r27,Y+12	 ;  tmp149, %sfp
	sub r24,r8	 ;  tmp149, R
	sbc r25,r9	 ; , R
	sbc r26,r10	 ; , R
	sbc r27,r11	 ; , R
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r24	 ;  tmp152, tmp149
	movw r6,r26	 ; ,
	lsl r7	 ;  tmp152
	sbc r4,r4	 ;  tmp152
	mov r5,r4	 ;  tmp152
	movw r6,r4	 ;  tmp152
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldd r10,Y+22	 ; , %sfp
	ldd r11,Y+23	 ; , %sfp
	ldd r12,Y+24	 ; , %sfp
	ldd r13,Y+25	 ; , %sfp
	ldd r14,Y+26	 ; , %sfp
	ldd r15,Y+27	 ; , %sfp
	ldd r16,Y+28	 ; , %sfp
	ldd r17,Y+29	 ; , %sfp
	movw r18,r24	 ; ,
	movw r20,r26	 ; ,
	mov r22,r4	 ; , tmp152
	mov r23,r4	 ; , tmp152
	mov r24,r4	 ; , tmp152
	mov r25,r4	 ; , tmp152
	call __muldi3	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r8,r18	 ; ,
	movw r10,r20	 ; ,
 ;  math.c:237:              - fixedpt_mul( s, f - R ) );
	ldd r22,Y+30	 ;  <retval>, %sfp
	ldd r23,Y+31	 ;  <retval>, %sfp
	ldd r24,Y+32	 ;  <retval>, %sfp
	ldd r25,Y+33	 ;  <retval>, %sfp
	sub r22,r8	 ;  <retval>, tmp154
	sbc r23,r9	 ;  <retval>,
	sbc r24,r10	 ;  <retval>,
	sbc r25,r11	 ;  <retval>,
.L19:
/* epilogue start */
 ;  math.c:238: }
	adiw r28,35	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	pop r3		 ; 
	pop r2		 ; 
	ret	
	.size	fixedpt_ln, .-fixedpt_ln
.global	fixedpt_exp
	.type	fixedpt_exp, @function
fixedpt_exp:
	push r2		 ; 
	push r3		 ; 
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,18	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 18 */
/* stack size = 36 */
.L__stack_usage = 36
	movw r12,r22	 ;  fp, fp
	movw r14,r24	 ;  fp, fp
 ;  math.c:254:     if ( fp == 0 )
	cp r12,__zero_reg__	 ;  fp
	cpc r13,__zero_reg__	 ;  fp
	cpc r14,__zero_reg__	 ;  fp
	cpc r15,__zero_reg__	 ;  fp
	brne .+2	 ; 
	rjmp .L31	 ; 
 ;  math.c:256:     xabs = fixedpt_abs( fp );
	sbrs r15,7	 ;  fp,
	rjmp .L27		 ; 
	clr r22	 ;  xabs
	clr r23	 ;  xabs
	movw r24,r22	 ;  xabs
	sub r22,r12	 ;  xabs, fp
	sbc r23,r13	 ;  xabs, fp
	sbc r24,r14	 ;  xabs, fp
	sbc r25,r15	 ;  xabs, fp
.L27:
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r18,lo8(84)	 ; ,
	ldi r19,lo8(113)	 ; ,
	ldi r20,lo8(1)	 ; ,
	ldi r21,0		 ; 
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r4,r18	 ; ,
	movw r6,r20	 ; ,
 ;  math.c:258:     k += FIXEDPT_ONE_HALF;
	ldi r24,-128	 ; ,
	add r5,r24	 ;  k,
	adc r6,__zero_reg__	 ;  k
	adc r7,__zero_reg__	 ;  k
 ;  math.c:259:     k &= ~FIXEDPT_FMASK;
	movw r26,r6	 ; , k
	movw r24,r4	 ; , k
	clr r24		 ; 
	clr r25		 ; 
	std Y+9,r24	 ;  %sfp,
	std Y+10,r25	 ;  %sfp,
	std Y+11,r26	 ;  %sfp,
	std Y+12,r27	 ;  %sfp,
 ;  math.c:260:     if ( fp < 0 )
	sbrs r15,7	 ;  fp,
	rjmp .L28		 ; 
 ;  math.c:261:         k = -k;
	com r27	 ; 
	com r26	 ; 
	com r25	 ; 
	neg r24	 ; 
	sbci r25,lo8(-1)	 ; 
	sbci r26,lo8(-1)	 ; 
	sbci r27,lo8(-1)	 ; 
	std Y+9,r24	 ;  %sfp,
	std Y+10,r25	 ;  %sfp,
	std Y+11,r26	 ;  %sfp,
	std Y+12,r27	 ;  %sfp,
.L28:
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldd r22,Y+9	 ; , %sfp
	ldd r23,Y+10	 ; , %sfp
	ldd r24,Y+11	 ; , %sfp
	ldd r25,Y+12	 ; , %sfp
	ldi r18,lo8(114)	 ; ,
	ldi r19,lo8(-79)	 ; ,
	ldi r20,0		 ; 
	ldi r21,0		 ; 
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r4,r18	 ; ,
	movw r6,r20	 ; ,
 ;  math.c:262:     fp -= fixedpt_mul( k, LN2 );
	sub r12,r4	 ;  fp, tmp91
	sbc r13,r5	 ;  fp,
	sbc r14,r6	 ;  fp,
	sbc r15,r7	 ;  fp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r24,r14	 ; , fp
	movw r22,r12	 ; , fp
	movw r20,r14	 ; , fp
	movw r18,r12	 ; , fp
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	call __ashrdi3
	mov r30,r21	 ;  tmp162,
	movw r8,r18	 ; ,
	mov r10,r20	 ;  _50, tmp161
	mov r11,r21	 ;  _50, tmp162
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r12	 ;  tmp96, fp
	movw r6,r14	 ; , fp
	lsl r7	 ;  tmp96
	sbc r4,r4	 ;  tmp96
	mov r5,r4	 ;  tmp96
	movw r6,r4	 ;  tmp96
	movw r18,r12	 ; ,
	movw r20,r14	 ; ,
	mov r22,r4	 ; , tmp96
	mov r23,r4	 ; , tmp96
	mov r24,r4	 ; , tmp96
	mov r25,r4	 ; , tmp96
	ldi r16,lo8(17)	 ; ,
	call __ashldi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	ldd r4,Y+1	 ;  tmp101, %sfp
	ldd r5,Y+2	 ;  tmp101, %sfp
	ldd r6,Y+3	 ;  tmp101, %sfp
	ldd r7,Y+4	 ;  tmp101, %sfp
	lsl r7	 ;  tmp101
	sbc r4,r4	 ;  tmp101
	mov r5,r4	 ;  tmp101
	movw r6,r4	 ;  tmp101
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	mov r22,r4	 ; , tmp101
	mov r23,r4	 ; , tmp101
	mov r24,r4	 ; , tmp101
	mov r25,r4	 ; , tmp101
	call __ashldi3
	movw r2,r18	 ; ,
	std Y+17,r20	 ;  %sfp,
	std Y+18,r21	 ;  %sfp,
	std Y+13,r22	 ;  %sfp,
	std Y+14,r23	 ;  %sfp,
	std Y+15,r24	 ;  %sfp,
	std Y+16,r25	 ;  %sfp,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r4,r8	 ;  tmp105, _50
	movw r6,r10	 ; , _50
	lsl r7	 ;  tmp105
	sbc r4,r4	 ;  tmp105
	mov r5,r4	 ;  tmp105
	movw r6,r4	 ;  tmp105
	movw r18,r8	 ; ,
	mov r20,r10	 ; , _50
	mov r21,r30	 ; , tmp162
	mov r22,r4	 ; , tmp105
	mov r23,r4	 ; , tmp105
	mov r24,r4	 ; , tmp105
	mov r25,r4	 ; , tmp105
	ldi r16,lo8(2)	 ; ,
	call __ashldi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  math.c:266:         fixedpt_mul( z, EXP_P[0] + fixedpt_mul( z, EXP_P[1] +
	ldd r22,Y+1	 ;  tmp108, %sfp
	ldd r23,Y+2	 ;  tmp108, %sfp
	ldd r24,Y+3	 ;  tmp108, %sfp
	ldd r25,Y+4	 ;  tmp108, %sfp
	subi r22,-74	 ;  tmp108,
	sbc r23,__zero_reg__	 ; 
	sbc r24,__zero_reg__	 ; 
	sbc r25,__zero_reg__	 ; 
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r20,r10	 ; , _50
	movw r18,r8	 ; , _50
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
	std Y+5,r22	 ;  %sfp,
	std Y+6,r23	 ;  %sfp,
	std Y+7,r24	 ;  %sfp,
	std Y+8,r25	 ;  %sfp,
 ;  math.c:266:         fixedpt_mul( z, EXP_P[0] + fixedpt_mul( z, EXP_P[1] +
	ldd r22,Y+1	 ;  tmp111, %sfp
	ldd r23,Y+2	 ;  tmp111, %sfp
	ldd r24,Y+3	 ;  tmp111, %sfp
	ldd r25,Y+4	 ;  tmp111, %sfp
	subi r22,85	 ;  tmp111,
	sbci r23,-43	 ; ,
	sbci r24,-1	 ; ,
	sbci r25,-1	 ; ,
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	movw r20,r10	 ; , _50
	movw r18,r8	 ; , _50
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	call __ashrdi3
	movw r4,r18	 ; ,
 ;  math.c:265:     R = FIXEDPT_TWO +
	movw r22,r20	 ;  R, tmp6
	movw r20,r4	 ;  R,
	subi r22,-2	 ;  R,
	sbci r23,-1	 ;  R,
 ;  math.c:269:     xp = FIXEDPT_ONE + fixedpt_div( fixedpt_mul( fp, FIXEDPT_TWO ), R - fp );
	sub r20,r12	 ;  tmp115, fp
	sbc r21,r13	 ; , fp
	sbc r22,r14	 ; , fp
	sbc r23,r15	 ; , fp
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	movw r26,r22	 ; ,
	movw r24,r20	 ;  tmp118, tmp115
	lsl r27	 ;  tmp118
	sbc r24,r24	 ;  tmp118
	mov r25,r24	 ;  tmp118
	movw r26,r24	 ;  tmp118
 ;  fixed/fixedptc.h:148:     return ( ( (fixedptd) A << FIXEDPT_FBITS ) / (fixedptd) B );
	movw r10,r20	 ; ,
	movw r12,r22	 ; ,
	mov r14,r24	 ; , tmp118
	mov r15,r24	 ; , tmp118
	mov r16,r24	 ; , tmp118
	mov r17,r24	 ; , tmp118
	movw r18,r2	 ; ,
	ldd r20,Y+17	 ; , %sfp
	ldd r21,Y+18	 ; , %sfp
	ldd r22,Y+13	 ; , %sfp
	ldd r23,Y+14	 ; , %sfp
	ldd r24,Y+15	 ; , %sfp
	ldd r25,Y+16	 ; , %sfp
	call __divdi3	 ; 
 ;  math.c:269:     xp = FIXEDPT_ONE + fixedpt_div( fixedpt_mul( fp, FIXEDPT_TWO ), R - fp );
	subi r20,-1	 ;  xp,
	sbci r21,-1	 ;  xp,
 ;  math.c:270:     if ( k < 0 )
	ldd r24,Y+9	 ; , %sfp
	ldd r25,Y+10	 ; , %sfp
	ldd r26,Y+11	 ; , %sfp
	ldd r27,Y+12	 ; , %sfp
	sbrs r27,7	 ; ,
	rjmp .L29		 ; 
 ;  math.c:271:         k = FIXEDPT_ONE >> ( -k >> FIXEDPT_FBITS );
	movw r12,r24	 ;  tmp123,
	movw r14,r26	 ; ,
	com r15	 ;  tmp123
	com r14	 ;  tmp123
	com r13	 ;  tmp123
	com r12	 ;  tmp123
	adc r12,__zero_reg__	 ;  tmp123
	adc r13,__zero_reg__	 ;  tmp123
	adc r14,__zero_reg__	 ;  tmp123
	adc r15,__zero_reg__	 ;  tmp123
 ;  math.c:271:         k = FIXEDPT_ONE >> ( -k >> FIXEDPT_FBITS );
	ldi r22,0		 ;  tmp125
	ldi r23,0		 ; 
	ldi r24,lo8(1)	 ; ,
	ldi r25,0		 ; 
	rjmp 2f	
	1:	
	asr r25	 ;  k
	ror r24	 ;  k
	ror r23	 ;  k
	ror r22	 ;  k
	2:	
	dec r14		 ; 
	brpl 1b	
.L30:
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	call __mulsidi3
 ;  fixed/fixedptc.h:140:     return ( ( (fixedptd) A * (fixedptd) B ) >> FIXEDPT_FBITS );
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	movw r22,r18	 ; ,
	movw r24,r20	 ; ,
.L25:
/* epilogue start */
 ;  math.c:275: }
	adiw r28,18	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	pop r3		 ; 
	pop r2		 ; 
	ret	
.L29:
 ;  math.c:273:         k = FIXEDPT_ONE << ( k >> FIXEDPT_FBITS );
	ldi r22,0		 ;  tmp127
	ldi r23,0		 ; 
	ldi r24,lo8(1)	 ; ,
	ldi r25,0		 ; 
	ldd r0,Y+11	 ; , %sfp
	rjmp 2f	
	1:	
	lsl r22	 ;  k
	rol r23	 ;  k
	rol r24	 ;  k
	rol r25	 ;  k
	2:	
	dec r0		 ; 
	brpl 1b	
	rjmp .L30		 ; 
.L31:
 ;  math.c:255:         return ( FIXEDPT_ONE );
	ldi r22,0		 ;  <retval>
	ldi r23,0		 ;  <retval>
	ldi r24,lo8(1)	 ;  <retval>,
	ldi r25,0		 ;  <retval>
	rjmp .L25		 ; 
	.size	fixedpt_exp, .-fixedpt_exp
.global	__umoddi3
.global	__moddi3
.global	__udivdi3
.global	fixedpt_str
	.type	fixedpt_str, @function
fixedpt_str:
	push r2		 ; 
	push r3		 ; 
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,30	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 30 */
/* stack size = 48 */
.L__stack_usage = 48
	movw r4,r22	 ;  A, A
	movw r6,r24	 ;  A, A
	std Y+16,r21	 ;  %sfp, str
	std Y+15,r20	 ;  %sfp, str
	std Y+18,r19	 ;  %sfp, max_dec
	std Y+17,r18	 ;  %sfp, max_dec
 ;  math.c:280:     char tmp[12] = { 0 };
	movw r18,r28	 ; ,
	subi r18,-1	 ; ,
	sbci r19,-1	 ; ,
	std Y+14,r19	 ;  %sfp,
	std Y+13,r18	 ;  %sfp,
	ldi r24,lo8(12)	 ;  tmp93,
	movw r26,r18	 ; ,
	0:
	st X+,__zero_reg__	 ; 
	dec r24	 ;  tmp93
	brne 0b
 ;  math.c:285:     if ( max_dec == -1 )
	ldd r30,Y+17	 ; , %sfp
	ldd r31,Y+18	 ; , %sfp
	cpi r30,-1	 ; ,
	cpc r31,r30	 ; 
	brne .+2	 ; 
	rjmp .L41	 ; 
 ;  math.c:297:     else if ( max_dec == -2 )
	adiw r30,2	 ; ,
	brne .L33		 ; ,
 ;  math.c:298:         max_dec = 15;
	ldi r24,lo8(15)	 ; ,
	ldi r25,0		 ; 
	std Y+18,r25	 ;  %sfp,
	std Y+17,r24	 ;  %sfp,
.L33:
 ;  math.c:300:     if ( A < 0 ) {
	sbrs r7,7	 ;  A,
	rjmp .L42		 ; 
 ;  math.c:301:         str[slen++] = '-';
	ldi r24,lo8(45)	 ;  tmp95,
	ldd r30,Y+15	 ; , %sfp
	ldd r31,Y+16	 ; , %sfp
	st Z,r24		 ;  *str_48(D), tmp95
 ;  math.c:302:         A *= -1;
	com r7	 ;  A
	com r6	 ;  A
	com r5	 ;  A
	com r4	 ;  A
	adc r4,__zero_reg__	 ;  A
	adc r5,__zero_reg__	 ;  A
	adc r6,__zero_reg__	 ;  A
	adc r7,__zero_reg__	 ;  A
 ;  math.c:301:         str[slen++] = '-';
	ldi r18,lo8(1)	 ; ,
	ldi r19,0		 ; 
	std Y+22,r19	 ;  %sfp,
	std Y+21,r18	 ;  %sfp,
.L34:
 ;  math.c:305:     ip = fixedpt_toint( A );
	movw r24,r6	 ;  tmp96, A
	clr r27	 ;  tmp96
	sbrc r25,7	 ;  tmp96
	com r27	 ;  tmp96
	mov r26,r27	 ;  tmp96
 ;  math.c:305:     ip = fixedpt_toint( A );
	movw r2,r24	 ; ,
	movw r8,r26	 ; ,
	movw r26,r6	 ; , A
	movw r24,r4	 ;  tmp98, A
	lsl r27	 ;  tmp98
	sbc r24,r24	 ;  tmp98
	mov r25,r24	 ;  tmp98
	movw r26,r24	 ;  tmp98
	std Y+23,r24	 ;  %sfp, tmp98
	std Y+24,r24	 ;  %sfp, tmp98
	std Y+25,r24	 ;  %sfp, tmp98
	std Y+26,r24	 ;  %sfp, tmp98
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	std Y+28,r25	 ;  %sfp,
	std Y+27,r24	 ;  %sfp,
 ;  math.c:279:     int ndec = 0, slen = 0;
	std Y+20,__zero_reg__	 ;  %sfp,
	std Y+19,__zero_reg__	 ;  %sfp,
.L35:
 ;  math.c:307:         tmp[ndec++] = '0' + ip % 10;
	ldd r30,Y+19	 ; , %sfp
	ldd r31,Y+20	 ; , %sfp
	adiw r30,1	 ; ,
	std Y+30,r31	 ;  %sfp,
	std Y+29,r30	 ;  %sfp,
 ;  math.c:307:         tmp[ndec++] = '0' + ip % 10;
	ldi r19,lo8(10)	 ; ,
	mov r10,r19	 ; ,
	mov r11,__zero_reg__	 ; 
	mov r12,__zero_reg__	 ; 
	mov r13,__zero_reg__	 ; 
	mov r14,__zero_reg__	 ; 
	mov r15,__zero_reg__	 ; 
	ldi r16,0		 ; 
	ldi r17,0		 ; 
	movw r18,r2	 ; ,
	movw r20,r8	 ; ,
	ldd r22,Y+23	 ; , %sfp
	ldd r23,Y+24	 ; , %sfp
	ldd r24,Y+25	 ; , %sfp
	ldd r25,Y+26	 ; , %sfp
	call __umoddi3	 ; 
 ;  math.c:307:         tmp[ndec++] = '0' + ip % 10;
	subi r18,lo8(-(48))	 ;  tmp111,
 ;  math.c:307:         tmp[ndec++] = '0' + ip % 10;
	ldd r26,Y+27	 ; , %sfp
	ldd r27,Y+28	 ; , %sfp
	st X+,r18		 ;  MEM[base: _24, offset: 0B], tmp111
	std Y+28,r27	 ;  %sfp,
	std Y+27,r26	 ;  %sfp,
 ;  math.c:308:         ip /= 10;
	movw r18,r2	 ; ,
	movw r20,r8	 ; ,
	ldd r22,Y+23	 ; , %sfp
	ldd r23,Y+24	 ; , %sfp
	ldd r24,Y+25	 ; , %sfp
	ldd r25,Y+26	 ; , %sfp
	call __udivdi3	 ; 
	movw r12,r18	 ; ,
	movw r14,r20	 ; ,
	mov r17,r22	 ;  tmp178,
	mov r27,r23	 ;  tmp179,
	mov r31,r24	 ;  tmp180,
	mov r30,r25	 ;  tmp181,
 ;  math.c:309:     } while ( ip != 0 );
	movw r18,r2	 ; ,
	movw r20,r8	 ; ,
	ldd r22,Y+23	 ; , %sfp
	ldd r23,Y+24	 ; , %sfp
	ldd r24,Y+25	 ; , %sfp
	ldd r25,Y+26	 ; , %sfp
	ldi r26,lo8(9)	 ; ,
	call __cmpdi2_s8
	breq .+4
	brlo .+2
	rjmp .L43	 ; 
	ldi r24,lo8(1)	 ;  ivtmp.40,
	ldi r25,0		 ;  ivtmp.40
	add r24,r28	 ;  ivtmp.40,
	adc r25,r29	 ;  ivtmp.40,
	ldd r30,Y+29	 ; , %sfp
	ldd r31,Y+30	 ; , %sfp
	add r24,r30	 ;  ivtmp.40,
	adc r25,r31	 ;  ivtmp.40,
	ldd r30,Y+15	 ;  ivtmp.43, %sfp
	ldd r31,Y+16	 ;  ivtmp.43, %sfp
	ldd r18,Y+21	 ; , %sfp
	ldd r19,Y+22	 ; , %sfp
	add r30,r18	 ;  ivtmp.43,
	adc r31,r19	 ;  ivtmp.43,
.L36:
 ;  math.c:312:         str[slen++] = tmp[--ndec];
	movw r26,r24	 ; , tmp118
	ld r18,-X		 ;  MEM[base: _68, offset: 0B], MEM[base: _68, offset: 0B]
	movw r24,r26	 ;  tmp118,
	st Z+,r18		 ;  MEM[base: _43, offset: 0B], MEM[base: _68, offset: 0B]
 ;  math.c:311:     while ( ndec > 0 )
	ldd r18,Y+13	 ; , %sfp
	ldd r19,Y+14	 ; , %sfp
	cp r18,r26	 ; , ivtmp.40
	cpc r19,r27	 ; , ivtmp.40
	brne .L36		 ; ,
	ldd r24,Y+19	 ;  slen, %sfp
	ldd r25,Y+20	 ;  slen, %sfp
	ldd r26,Y+21	 ; , %sfp
	ldd r27,Y+22	 ; , %sfp
	add r24,r26	 ;  slen,
	adc r25,r27	 ;  slen,
 ;  math.c:313:     str[slen++] = '.';
	ldd r30,Y+15	 ;  tmp120, %sfp
	ldd r31,Y+16	 ;  tmp120, %sfp
	ldd r18,Y+19	 ; , %sfp
	ldd r19,Y+20	 ; , %sfp
	add r30,r18	 ;  tmp120,
	adc r31,r19	 ; ,
	add r30,r26	 ;  tmp121,
	adc r31,r27	 ; ,
	ldi r18,lo8(46)	 ;  tmp122,
	std Z+1,r18	 ;  *_12, tmp122
 ;  math.c:315:     fr = ( fixedpt_fracpart( A ) << FIXEDPT_WBITS ) & mask;
	movw r6,r4	 ;  tmp123, A
	clr r5	 ;  tmp123
	clr r4	 ;  tmp123
 ;  math.c:315:     fr = ( fixedpt_fracpart( A ) << FIXEDPT_WBITS ) & mask;
	movw r30,r4	 ; ,
	std Y+19,r6	 ;  %sfp,
	mov r3,r7	 ;  fr,
 ;  math.c:313:     str[slen++] = '.';
	movw r6,r24	 ;  slen, slen
	ldi r19,2	 ; ,
	add r6,r19	 ;  slen,
	adc r7,__zero_reg__	 ;  slen
	ldd r26,Y+15	 ; , %sfp
	ldd r27,Y+16	 ; , %sfp
	add r6,r26	 ;  ivtmp.32,
	adc r7,r27	 ;  ivtmp.32,
 ;  math.c:315:     fr = ( fixedpt_fracpart( A ) << FIXEDPT_WBITS ) & mask;
	mov r9,__zero_reg__	 ;  ndec
	mov r8,__zero_reg__	 ;  ndec
	movw r4,r24	 ;  tmp129, slen
	ldi r27,3	 ; ,
	add r4,r27	 ;  tmp129,
	adc r5,__zero_reg__	 ; 
.L38:
 ;  math.c:317:         fr = ( fr & mask ) * 10;
	ldi r24,lo8(10)	 ; ,
	mov r10,r24	 ; ,
	mov r11,__zero_reg__	 ; 
	mov r12,__zero_reg__	 ; 
	mov r13,__zero_reg__	 ; 
	mov r14,__zero_reg__	 ; 
	mov r15,__zero_reg__	 ; 
	ldi r16,0		 ; 
	ldi r17,0		 ; 
	movw r18,r30	 ; ,
	ldd r20,Y+19	 ; , %sfp
	mov r21,r3	 ; , fr
	ldi r22,0		 ; 
	ldi r23,0		 ; 
	ldi r24,0		 ; 
	ldi r25,0		 ; 
	call __muldi3	 ; 
	movw r10,r22	 ; ,
	mov r2,r24	 ;  tmp196,
	std Y+21,r25	 ;  %sfp,
	movw r30,r18	 ; ,
	std Y+19,r20	 ;  %sfp, tmp192
	mov r3,r21	 ;  fr, tmp193
	movw r14,r4	 ;  _82, tmp129
	add r14,r8	 ;  _82, ndec
	adc r15,r9	 ;  _82, ndec
 ;  math.c:319:         str[slen++] = '0' + ( fr >> FIXEDPT_BITS ) % 10;
	movw r12,r6	 ;  _22, ivtmp.32
 ;  math.c:319:         str[slen++] = '0' + ( fr >> FIXEDPT_BITS ) % 10;
	ldi r16,lo8(32)	 ; ,
	call __lshrdi3
 ;  math.c:319:         str[slen++] = '0' + ( fr >> FIXEDPT_BITS ) % 10;
	ldi r17,lo8(48)	 ;  _23,
	add r17,r18	 ;  _23, tmp198
 ;  math.c:319:         str[slen++] = '0' + ( fr >> FIXEDPT_BITS ) % 10;
	movw r26,r6	 ; , ivtmp.32
	st X+,r17		 ;  MEM[base: _22, offset: 0B], _23
	movw r6,r26	 ;  ivtmp.32,
 ;  math.c:320:         ndec++;
	ldi r27,-1	 ; ,
	sub r8,r27	 ;  ndec,
	sbc r9,r27	 ;  ndec,
 ;  math.c:321:     } while ( fr != 0 && ndec < max_dec );
	movw r18,r30	 ; ,
	ldd r20,Y+19	 ; , %sfp
	mov r21,r3	 ; , fr
	movw r22,r10	 ; ,
	mov r24,r2	 ; , tmp196
	ldd r25,Y+21	 ; , %sfp
	ldi r26,0		 ; 
	call __cmpdi2_s8
	breq .L37		 ; ,
 ;  math.c:321:     } while ( fr != 0 && ndec < max_dec );
	ldd r18,Y+17	 ; , %sfp
	ldd r19,Y+18	 ; , %sfp
	cp r8,r18	 ;  ndec,
	cpc r9,r19	 ;  ndec,
	brlt .L38		 ; ,
.L37:
 ;  math.c:323:     if ( ndec > 1 && str[slen - 1] == '0' )
	dec r8	 ;  ndec
	or r8,r9	 ;  ndec
	breq .L39		 ; ,
 ;  math.c:323:     if ( ndec > 1 && str[slen - 1] == '0' )
	cpi r17,lo8(48)	 ;  _23,
	brne .L39		 ; ,
 ;  math.c:324:         str[slen - 1] = '\0'; /* cut off trailing 0 */
	movw r26,r12	 ; , _22
	st X,__zero_reg__		 ;  *_22,
.L40:
 ;  math.c:329: }
	ldd r24,Y+15	 ; , %sfp
	ldd r25,Y+16	 ; , %sfp
/* epilogue start */
	adiw r28,30	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	pop r3		 ; 
	pop r2		 ; 
	ret	
.L41:
 ;  math.c:290:         max_dec = 4;
	ldi r26,lo8(4)	 ; ,
	ldi r27,0		 ; 
	std Y+18,r27	 ;  %sfp,
	std Y+17,r26	 ;  %sfp,
	rjmp .L33		 ; 
.L42:
 ;  math.c:279:     int ndec = 0, slen = 0;
	std Y+22,__zero_reg__	 ;  %sfp,
	std Y+21,__zero_reg__	 ;  %sfp,
	rjmp .L34		 ; 
.L43:
 ;  math.c:308:         ip /= 10;
	movw r2,r12	 ; ,
	movw r8,r14	 ; ,
	std Y+23,r17	 ;  %sfp, tmp178
	std Y+24,r27	 ;  %sfp, tmp179
	std Y+25,r31	 ;  %sfp, tmp180
	std Y+26,r30	 ;  %sfp, tmp181
 ;  math.c:307:         tmp[ndec++] = '0' + ip % 10;
	ldd r26,Y+29	 ; , %sfp
	ldd r27,Y+30	 ; , %sfp
	std Y+20,r27	 ;  %sfp,
	std Y+19,r26	 ;  %sfp,
	rjmp .L35		 ; 
.L39:
 ;  math.c:326:         str[slen] = '\0';
	ldd r30,Y+15	 ;  tmp131, %sfp
	ldd r31,Y+16	 ;  tmp131, %sfp
	add r30,r14	 ;  tmp131, _82
	adc r31,r15	 ; , _82
	st Z,__zero_reg__		 ;  *_27,
	rjmp .L40		 ; 
	.size	fixedpt_str, .-fixedpt_str
.global	fixedpt_sqrt
	.type	fixedpt_sqrt, @function
fixedpt_sqrt:
	push r3		 ; 
	push r4		 ; 
	push r5		 ; 
	push r6		 ; 
	push r7		 ; 
	push r8		 ; 
	push r9		 ; 
	push r10		 ; 
	push r11		 ; 
	push r12		 ; 
	push r13		 ; 
	push r14		 ; 
	push r15		 ; 
	push r16		 ; 
	push r17		 ; 
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,10	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 10 */
/* stack size = 27 */
.L__stack_usage = 27
	movw r8,r22	 ;  A, A
	movw r10,r24	 ;  A, A
 ;  math.c:334:     if ( A < 0 )
	sbrc r11,7	 ;  A,
	rjmp .L53		 ; 
 ;  math.c:336:     if ( A == 0 || A == FIXEDPT_ONE )
	cp r8,__zero_reg__	 ;  A
	cpc r9,__zero_reg__	 ;  A
	cpc r10,__zero_reg__	 ;  A
	cpc r11,__zero_reg__	 ;  A
	brne .+2	 ; 
	rjmp .L50	 ; 
 ;  math.c:336:     if ( A == 0 || A == FIXEDPT_ONE )
	cp r8,__zero_reg__	 ;  A
	cpc r9,__zero_reg__	 ;  A
	ldi r18,1	 ; ,
	cpc r10,r18	 ;  A,
	cpc r11,__zero_reg__	 ;  A
	brne .+2	 ; 
	rjmp .L50	 ; 
 ;  math.c:341:     fixedpt v = A >> 1;
	movw r14,r24	 ;  n, A
	movw r12,r22	 ;  n, A
	asr r15	 ;  n
	ror r14	 ;  n
	ror r13	 ;  n
	ror r12	 ;  n
	std Y+10,r22	 ;  %sfp, A
	std Y+9,r9	 ;  %sfp, A
	mov r17,r24	 ;  n, A
	mov r3,r11	 ;  n, A
 ;  math.c:339:     fixedpt p = 0;
	mov r4,__zero_reg__	 ;  p
	mov r5,__zero_reg__	 ;  p
	movw r6,r4	 ;  p
.L52:
 ;  math.c:345:         fixedptd sq = fixedpt_dmul( v, v );
	movw r24,r14	 ; , n
	movw r22,r12	 ; , n
	movw r20,r14	 ; , n
	movw r18,r12	 ; , n
	call __mulsidi3
	ldi r16,lo8(16)	 ; ,
	call __ashrdi3
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
 ;  math.c:346:         fixedpt err = A - sq;
	movw r26,r10	 ;  _7, A
	movw r24,r8	 ;  _7, A
	ldd r18,Y+1	 ; , %sfp
	ldd r19,Y+2	 ; , %sfp
	ldd r20,Y+3	 ; , %sfp
	ldd r21,Y+4	 ; , %sfp
	sub r24,r18	 ;  _7,
	sbc r25,r19	 ;  _7,
	sbc r26,r20	 ;  _7,
	sbc r27,r21	 ;  _7,
 ;  math.c:348:         if ( fixedpt_abs( err ) < fixedpt_rconst( 0.01 ) )
	movw r20,r24	 ;  tmp58, _7
	movw r22,r26	 ; , _7
	subi r20,114	 ;  tmp58,
	sbci r21,-3	 ; ,
	sbci r22,-1	 ; ,
	sbci r23,-1	 ; ,
 ;  math.c:348:         if ( fixedpt_abs( err ) < fixedpt_rconst( 0.01 ) )
	cpi r20,29	 ;  tmp58,
	sbci r21,5	 ; ,
	cpc r22,__zero_reg__	 ; 
	cpc r23,__zero_reg__	 ; 
	brlo .L54		 ; ,
 ;  math.c:350:         if ( err < 0 )
	sbrc r27,7	 ;  _7,
	rjmp .L51		 ; 
	movw r4,r12	 ;  p, n
	movw r6,r14	 ;  p, n
	ldd r12,Y+10	 ;  n, %sfp
	ldd r13,Y+9	 ;  n, %sfp
	mov r14,r17	 ;  n, n
	mov r15,r3	 ;  n, n
.L51:
 ;  math.c:355:         v = ( n + p ) >> 1;
	movw r26,r6	 ; , p
	movw r24,r4	 ;  tmp59, p
	add r24,r12	 ;  tmp59, n
	adc r25,r13	 ; , n
	adc r26,r14	 ; , n
	adc r27,r15	 ; , n
 ;  math.c:344:     {
	std Y+10,r12	 ;  %sfp, n
	std Y+9,r13	 ;  %sfp, n
	mov r17,r14	 ;  n, n
	mov r3,r15	 ;  n, n
 ;  math.c:355:         v = ( n + p ) >> 1;
	movw r12,r24	 ;  n, tmp59
	movw r14,r26	 ;  n,
	asr r15	 ;  n
	ror r14	 ;  n
	ror r13	 ;  n
	ror r12	 ;  n
 ;  math.c:344:     {
	rjmp .L52		 ; 
.L53:
 ;  math.c:335:         return  -1;
	clr r8		 ;  A
	dec r8		 ;  A
	mov r9,r8	 ;  A, A
	movw r10,r8	 ;  A
.L50:
 ;  math.c:386: }
	movw r24,r10	 ; , A
	movw r22,r8	 ; , A
/* epilogue start */
	adiw r28,10	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29		 ; 
	pop r28		 ; 
	pop r17		 ; 
	pop r16		 ; 
	pop r15		 ; 
	pop r14		 ; 
	pop r13		 ; 
	pop r12		 ; 
	pop r11		 ; 
	pop r10		 ; 
	pop r9		 ; 
	pop r8		 ; 
	pop r7		 ; 
	pop r6		 ; 
	pop r5		 ; 
	pop r4		 ; 
	pop r3		 ; 
	ret	
.L54:
	movw r8,r12	 ;  A, n
	movw r10,r14	 ;  A, n
	rjmp .L50		 ; 
	.size	fixedpt_sqrt, .-fixedpt_sqrt
	.data
	.type	acos_table, @object
	.size	acos_table, 606
acos_table:
 ;  fractional:
	.word	0
 ;  value:
	.byte	32
	.byte	-110
	.byte	1
	.byte	0
 ;  fractional:
	.word	655
 ;  value:
	.byte	-112
	.byte	-113
	.byte	1
	.byte	0
 ;  fractional:
	.word	1311
 ;  value:
	.byte	1
	.byte	-115
	.byte	1
	.byte	0
 ;  fractional:
	.word	1966
 ;  value:
	.byte	113
	.byte	-118
	.byte	1
	.byte	0
 ;  fractional:
	.word	2621
 ;  value:
	.byte	-30
	.byte	-121
	.byte	1
	.byte	0
 ;  fractional:
	.word	3277
 ;  value:
	.byte	82
	.byte	-123
	.byte	1
	.byte	0
 ;  fractional:
	.word	3932
 ;  value:
	.byte	-63
	.byte	-126
	.byte	1
	.byte	0
 ;  fractional:
	.word	4588
 ;  value:
	.byte	48
	.byte	-128
	.byte	1
	.byte	0
 ;  fractional:
	.word	5243
 ;  value:
	.byte	-97
	.byte	125
	.byte	1
	.byte	0
 ;  fractional:
	.word	5898
 ;  value:
	.byte	13
	.byte	123
	.byte	1
	.byte	0
 ;  fractional:
	.word	6554
 ;  value:
	.byte	123
	.byte	120
	.byte	1
	.byte	0
 ;  fractional:
	.word	7209
 ;  value:
	.byte	-24
	.byte	117
	.byte	1
	.byte	0
 ;  fractional:
	.word	7864
 ;  value:
	.byte	84
	.byte	115
	.byte	1
	.byte	0
 ;  fractional:
	.word	8520
 ;  value:
	.byte	-64
	.byte	112
	.byte	1
	.byte	0
 ;  fractional:
	.word	9175
 ;  value:
	.byte	42
	.byte	110
	.byte	1
	.byte	0
 ;  fractional:
	.word	9830
 ;  value:
	.byte	-108
	.byte	107
	.byte	1
	.byte	0
 ;  fractional:
	.word	10486
 ;  value:
	.byte	-3
	.byte	104
	.byte	1
	.byte	0
 ;  fractional:
	.word	11141
 ;  value:
	.byte	100
	.byte	102
	.byte	1
	.byte	0
 ;  fractional:
	.word	11796
 ;  value:
	.byte	-53
	.byte	99
	.byte	1
	.byte	0
 ;  fractional:
	.word	12452
 ;  value:
	.byte	48
	.byte	97
	.byte	1
	.byte	0
 ;  fractional:
	.word	13107
 ;  value:
	.byte	-109
	.byte	94
	.byte	1
	.byte	0
 ;  fractional:
	.word	13763
 ;  value:
	.byte	-10
	.byte	91
	.byte	1
	.byte	0
 ;  fractional:
	.word	14418
 ;  value:
	.byte	87
	.byte	89
	.byte	1
	.byte	0
 ;  fractional:
	.word	15073
 ;  value:
	.byte	-74
	.byte	86
	.byte	1
	.byte	0
 ;  fractional:
	.word	15729
 ;  value:
	.byte	20
	.byte	84
	.byte	1
	.byte	0
 ;  fractional:
	.word	16384
 ;  value:
	.byte	112
	.byte	81
	.byte	1
	.byte	0
 ;  fractional:
	.word	17039
 ;  value:
	.byte	-54
	.byte	78
	.byte	1
	.byte	0
 ;  fractional:
	.word	17695
 ;  value:
	.byte	35
	.byte	76
	.byte	1
	.byte	0
 ;  fractional:
	.word	18350
 ;  value:
	.byte	121
	.byte	73
	.byte	1
	.byte	0
 ;  fractional:
	.word	19005
 ;  value:
	.byte	-51
	.byte	70
	.byte	1
	.byte	0
 ;  fractional:
	.word	19661
 ;  value:
	.byte	31
	.byte	68
	.byte	1
	.byte	0
 ;  fractional:
	.word	20316
 ;  value:
	.byte	111
	.byte	65
	.byte	1
	.byte	0
 ;  fractional:
	.word	20972
 ;  value:
	.byte	-67
	.byte	62
	.byte	1
	.byte	0
 ;  fractional:
	.word	21627
 ;  value:
	.byte	8
	.byte	60
	.byte	1
	.byte	0
 ;  fractional:
	.word	22282
 ;  value:
	.byte	80
	.byte	57
	.byte	1
	.byte	0
 ;  fractional:
	.word	22938
 ;  value:
	.byte	-106
	.byte	54
	.byte	1
	.byte	0
 ;  fractional:
	.word	23593
 ;  value:
	.byte	-39
	.byte	51
	.byte	1
	.byte	0
 ;  fractional:
	.word	24248
 ;  value:
	.byte	25
	.byte	49
	.byte	1
	.byte	0
 ;  fractional:
	.word	24904
 ;  value:
	.byte	86
	.byte	46
	.byte	1
	.byte	0
 ;  fractional:
	.word	25559
 ;  value:
	.byte	-112
	.byte	43
	.byte	1
	.byte	0
 ;  fractional:
	.word	26214
 ;  value:
	.byte	-57
	.byte	40
	.byte	1
	.byte	0
 ;  fractional:
	.word	26870
 ;  value:
	.byte	-6
	.byte	37
	.byte	1
	.byte	0
 ;  fractional:
	.word	27525
 ;  value:
	.byte	41
	.byte	35
	.byte	1
	.byte	0
 ;  fractional:
	.word	28180
 ;  value:
	.byte	85
	.byte	32
	.byte	1
	.byte	0
 ;  fractional:
	.word	28836
 ;  value:
	.byte	126
	.byte	29
	.byte	1
	.byte	0
 ;  fractional:
	.word	29491
 ;  value:
	.byte	-94
	.byte	26
	.byte	1
	.byte	0
 ;  fractional:
	.word	30147
 ;  value:
	.byte	-62
	.byte	23
	.byte	1
	.byte	0
 ;  fractional:
	.word	30802
 ;  value:
	.byte	-34
	.byte	20
	.byte	1
	.byte	0
 ;  fractional:
	.word	31457
 ;  value:
	.byte	-11
	.byte	17
	.byte	1
	.byte	0
 ;  fractional:
	.word	32113
 ;  value:
	.byte	7
	.byte	15
	.byte	1
	.byte	0
 ;  fractional:
	.word	-32768
 ;  value:
	.byte	21
	.byte	12
	.byte	1
	.byte	0
 ;  fractional:
	.word	-32113
 ;  value:
	.byte	30
	.byte	9
	.byte	1
	.byte	0
 ;  fractional:
	.word	-31457
 ;  value:
	.byte	33
	.byte	6
	.byte	1
	.byte	0
 ;  fractional:
	.word	-30802
 ;  value:
	.byte	31
	.byte	3
	.byte	1
	.byte	0
 ;  fractional:
	.word	-30147
 ;  value:
	.byte	24
	.byte	0
	.byte	1
	.byte	0
 ;  fractional:
	.word	-29491
 ;  value:
	.byte	10
	.byte	-3
	.byte	0
	.byte	0
 ;  fractional:
	.word	-28836
 ;  value:
	.byte	-10
	.byte	-7
	.byte	0
	.byte	0
 ;  fractional:
	.word	-28180
 ;  value:
	.byte	-36
	.byte	-10
	.byte	0
	.byte	0
 ;  fractional:
	.word	-27525
 ;  value:
	.byte	-69
	.byte	-13
	.byte	0
	.byte	0
 ;  fractional:
	.word	-26870
 ;  value:
	.byte	-109
	.byte	-16
	.byte	0
	.byte	0
 ;  fractional:
	.word	-26214
 ;  value:
	.byte	99
	.byte	-19
	.byte	0
	.byte	0
 ;  fractional:
	.word	-25559
 ;  value:
	.byte	44
	.byte	-22
	.byte	0
	.byte	0
 ;  fractional:
	.word	-24904
 ;  value:
	.byte	-19
	.byte	-26
	.byte	0
	.byte	0
 ;  fractional:
	.word	-24248
 ;  value:
	.byte	-91
	.byte	-29
	.byte	0
	.byte	0
 ;  fractional:
	.word	-23593
 ;  value:
	.byte	85
	.byte	-32
	.byte	0
	.byte	0
 ;  fractional:
	.word	-22938
 ;  value:
	.byte	-5
	.byte	-36
	.byte	0
	.byte	0
 ;  fractional:
	.word	-22282
 ;  value:
	.byte	-104
	.byte	-39
	.byte	0
	.byte	0
 ;  fractional:
	.word	-21627
 ;  value:
	.byte	43
	.byte	-42
	.byte	0
	.byte	0
 ;  fractional:
	.word	-20972
 ;  value:
	.byte	-78
	.byte	-46
	.byte	0
	.byte	0
 ;  fractional:
	.word	-20316
 ;  value:
	.byte	47
	.byte	-49
	.byte	0
	.byte	0
 ;  fractional:
	.word	-19661
 ;  value:
	.byte	-97
	.byte	-53
	.byte	0
	.byte	0
 ;  fractional:
	.word	-19005
 ;  value:
	.byte	3
	.byte	-56
	.byte	0
	.byte	0
 ;  fractional:
	.word	-18350
 ;  value:
	.byte	90
	.byte	-60
	.byte	0
	.byte	0
 ;  fractional:
	.word	-17695
 ;  value:
	.byte	-94
	.byte	-64
	.byte	0
	.byte	0
 ;  fractional:
	.word	-17039
 ;  value:
	.byte	-36
	.byte	-68
	.byte	0
	.byte	0
 ;  fractional:
	.word	-16384
 ;  value:
	.byte	5
	.byte	-71
	.byte	0
	.byte	0
 ;  fractional:
	.word	-15729
 ;  value:
	.byte	30
	.byte	-75
	.byte	0
	.byte	0
 ;  fractional:
	.word	-15073
 ;  value:
	.byte	36
	.byte	-79
	.byte	0
	.byte	0
 ;  fractional:
	.word	-14418
 ;  value:
	.byte	23
	.byte	-83
	.byte	0
	.byte	0
 ;  fractional:
	.word	-13763
 ;  value:
	.byte	-11
	.byte	-88
	.byte	0
	.byte	0
 ;  fractional:
	.word	-13107
 ;  value:
	.byte	-67
	.byte	-92
	.byte	0
	.byte	0
 ;  fractional:
	.word	-12452
 ;  value:
	.byte	108
	.byte	-96
	.byte	0
	.byte	0
 ;  fractional:
	.word	-11796
 ;  value:
	.byte	1
	.byte	-100
	.byte	0
	.byte	0
 ;  fractional:
	.word	-11141
 ;  value:
	.byte	121
	.byte	-105
	.byte	0
	.byte	0
 ;  fractional:
	.word	-10486
 ;  value:
	.byte	-46
	.byte	-110
	.byte	0
	.byte	0
 ;  fractional:
	.word	-9830
 ;  value:
	.byte	8
	.byte	-114
	.byte	0
	.byte	0
 ;  fractional:
	.word	-9175
 ;  value:
	.byte	24
	.byte	-119
	.byte	0
	.byte	0
 ;  fractional:
	.word	-8520
 ;  value:
	.byte	-2
	.byte	-125
	.byte	0
	.byte	0
 ;  fractional:
	.word	-7864
 ;  value:
	.byte	-76
	.byte	126
	.byte	0
	.byte	0
 ;  fractional:
	.word	-7209
 ;  value:
	.byte	52
	.byte	121
	.byte	0
	.byte	0
 ;  fractional:
	.word	-6554
 ;  value:
	.byte	119
	.byte	115
	.byte	0
	.byte	0
 ;  fractional:
	.word	-5898
 ;  value:
	.byte	114
	.byte	109
	.byte	0
	.byte	0
 ;  fractional:
	.word	-5243
 ;  value:
	.byte	24
	.byte	103
	.byte	0
	.byte	0
 ;  fractional:
	.word	-4588
 ;  value:
	.byte	91
	.byte	96
	.byte	0
	.byte	0
 ;  fractional:
	.word	-3932
 ;  value:
	.byte	34
	.byte	89
	.byte	0
	.byte	0
 ;  fractional:
	.word	-3277
 ;  value:
	.byte	76
	.byte	81
	.byte	0
	.byte	0
 ;  fractional:
	.word	-2622
 ;  value:
	.byte	-89
	.byte	72
	.byte	0
	.byte	0
 ;  fractional:
	.word	-1966
 ;  value:
	.byte	-34
	.byte	62
	.byte	0
	.byte	0
 ;  fractional:
	.word	-1311
 ;  value:
	.byte	73
	.byte	51
	.byte	0
	.byte	0
 ;  fractional:
	.word	-655
 ;  value:
	.byte	60
	.byte	36
	.byte	0
	.byte	0
 ;  fractional:
	.word	0
 ;  value:
	.byte	75
	.byte	0
	.byte	0
	.byte	0
	.ident	"GCC: (GNU) 8.3.0"
.global __do_copy_data