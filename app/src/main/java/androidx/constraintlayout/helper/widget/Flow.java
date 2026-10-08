package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import defpackage.ap0;
import defpackage.b24;
import defpackage.et1;
import defpackage.ii3;
import defpackage.in8;
import defpackage.ki3;
import defpackage.ot1;
import defpackage.pt1;
import defpackage.yd6;
import defpackage.ys1;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Flow extends in8 {
    public ki3 q;

    public Flow(Context context) {
        super(context);
    }

    @Override // defpackage.in8, defpackage.bt1
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        ki3 ki3Var = new ki3();
        ki3Var.s0 = 0;
        ki3Var.t0 = 0;
        ki3Var.u0 = 0;
        ki3Var.v0 = 0;
        ki3Var.w0 = 0;
        ki3Var.x0 = 0;
        ki3Var.y0 = false;
        ki3Var.z0 = 0;
        ki3Var.A0 = 0;
        ki3Var.B0 = new ap0();
        ki3Var.C0 = null;
        ki3Var.D0 = -1;
        ki3Var.E0 = -1;
        ki3Var.F0 = -1;
        ki3Var.G0 = -1;
        ki3Var.H0 = -1;
        ki3Var.I0 = -1;
        ki3Var.J0 = 0.5f;
        ki3Var.K0 = 0.5f;
        ki3Var.L0 = 0.5f;
        ki3Var.M0 = 0.5f;
        ki3Var.N0 = 0.5f;
        ki3Var.O0 = 0.5f;
        ki3Var.P0 = 0;
        ki3Var.Q0 = 0;
        ki3Var.R0 = 2;
        ki3Var.S0 = 2;
        ki3Var.T0 = 0;
        ki3Var.U0 = -1;
        ki3Var.V0 = 0;
        ki3Var.W0 = new ArrayList();
        ki3Var.X0 = null;
        ki3Var.Y0 = null;
        ki3Var.Z0 = null;
        ki3Var.b1 = 0;
        this.q = ki3Var;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, yd6.b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.q.V0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    ki3 ki3Var2 = this.q;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    ki3Var2.s0 = dimensionPixelSize;
                    ki3Var2.t0 = dimensionPixelSize;
                    ki3Var2.u0 = dimensionPixelSize;
                    ki3Var2.v0 = dimensionPixelSize;
                } else if (index == 18) {
                    ki3 ki3Var3 = this.q;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    ki3Var3.u0 = dimensionPixelSize2;
                    ki3Var3.w0 = dimensionPixelSize2;
                    ki3Var3.x0 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.q.v0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.q.w0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.q.s0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.q.x0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.q.t0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.q.T0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.q.D0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.q.E0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.q.F0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.q.H0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.q.G0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.q.I0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.q.J0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.q.L0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.q.N0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.q.M0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.q.O0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.q.K0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.q.R0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.q.S0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.q.P0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.q.Q0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.q.U0 = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.d = this.q;
        k();
    }

    @Override // defpackage.bt1
    public final void i(ot1 ot1Var, boolean z) {
        ki3 ki3Var = this.q;
        int i = ki3Var.u0;
        if (i > 0 || ki3Var.v0 > 0) {
            if (z) {
                ki3Var.w0 = ki3Var.v0;
                ki3Var.x0 = i;
            } else {
                ki3Var.w0 = i;
                ki3Var.x0 = ki3Var.v0;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:109:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:111:0x0202  */
    /* JADX WARN: Code duplicated, block: B:114:0x0217  */
    /* JADX WARN: Code duplicated, block: B:116:0x021f  */
    /* JADX WARN: Code duplicated, block: B:118:0x0230  */
    /* JADX WARN: Code duplicated, block: B:134:0x0253  */
    /* JADX WARN: Code duplicated, block: B:136:0x026c  */
    /* JADX WARN: Code duplicated, block: B:138:0x0270  */
    /* JADX WARN: Code duplicated, block: B:147:0x0299  */
    /* JADX WARN: Code duplicated, block: B:152:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:154:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:155:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:159:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:161:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:163:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:164:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:167:0x0314  */
    /* JADX WARN: Code duplicated, block: B:169:0x031d  */
    /* JADX WARN: Code duplicated, block: B:171:0x0321  */
    /* JADX WARN: Code duplicated, block: B:172:0x0332  */
    /* JADX WARN: Code duplicated, block: B:175:0x0354  */
    /* JADX WARN: Code duplicated, block: B:180:0x036b  */
    /* JADX WARN: Code duplicated, block: B:182:0x0381 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:183:0x0383  */
    /* JADX WARN: Code duplicated, block: B:185:0x0388 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:186:0x038a  */
    /* JADX WARN: Code duplicated, block: B:190:0x0392  */
    /* JADX WARN: Code duplicated, block: B:193:0x039a  */
    /* JADX WARN: Code duplicated, block: B:196:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:197:0x03a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:198:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:200:0x03ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:201:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:205:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:208:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:214:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:223:0x03dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:224:0x03df  */
    /* JADX WARN: Code duplicated, block: B:225:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:230:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:239:0x0410  */
    /* JADX WARN: Code duplicated, block: B:242:0x0417  */
    /* JADX WARN: Code duplicated, block: B:244:0x041a  */
    /* JADX WARN: Code duplicated, block: B:246:0x0420  */
    /* JADX WARN: Code duplicated, block: B:257:0x043c  */
    /* JADX WARN: Code duplicated, block: B:262:0x0450  */
    /* JADX WARN: Code duplicated, block: B:267:0x045e  */
    /* JADX WARN: Code duplicated, block: B:269:0x0464 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:270:0x0466  */
    /* JADX WARN: Code duplicated, block: B:275:0x0476  */
    /* JADX WARN: Code duplicated, block: B:277:0x047c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:278:0x047e  */
    /* JADX WARN: Code duplicated, block: B:291:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:294:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:296:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:298:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:300:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:317:0x0517  */
    /* JADX WARN: Code duplicated, block: B:319:0x052c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:320:0x052e  */
    /* JADX WARN: Code duplicated, block: B:322:0x053c  */
    /* JADX WARN: Code duplicated, block: B:324:0x0541  */
    /* JADX WARN: Code duplicated, block: B:326:0x054f  */
    /* JADX WARN: Code duplicated, block: B:343:0x0572  */
    /* JADX WARN: Code duplicated, block: B:345:0x0589  */
    /* JADX WARN: Code duplicated, block: B:347:0x058d  */
    /* JADX WARN: Code duplicated, block: B:355:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:360:0x05be  */
    /* JADX WARN: Code duplicated, block: B:362:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:363:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:367:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:369:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:371:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:372:0x060e  */
    /* JADX WARN: Code duplicated, block: B:375:0x0630  */
    /* JADX WARN: Code duplicated, block: B:377:0x0639  */
    /* JADX WARN: Code duplicated, block: B:379:0x063d  */
    /* JADX WARN: Code duplicated, block: B:380:0x064e  */
    /* JADX WARN: Code duplicated, block: B:383:0x0670  */
    /* JADX WARN: Code duplicated, block: B:387:0x0686  */
    /* JADX WARN: Code duplicated, block: B:390:0x069c  */
    /* JADX WARN: Code duplicated, block: B:392:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:393:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:396:0x06f7 A[LOOP:18: B:395:0x06f5->B:396:0x06f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:401:0x0721 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:402:0x0723  */
    /* JADX WARN: Code duplicated, block: B:403:0x0728 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:404:0x072a  */
    /* JADX WARN: Code duplicated, block: B:405:0x072c  */
    /* JADX WARN: Code duplicated, block: B:407:0x072f  */
    /* JADX WARN: Code duplicated, block: B:408:0x0732 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:409:0x0734  */
    /* JADX WARN: Code duplicated, block: B:410:0x073b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:411:0x073d  */
    /* JADX WARN: Code duplicated, block: B:412:0x073f  */
    /* JADX WARN: Code duplicated, block: B:415:0x074e  */
    /* JADX WARN: Code duplicated, block: B:416:0x0750  */
    /* JADX WARN: Code duplicated, block: B:426:0x0108 A[EDGE_INSN: B:426:0x0108->B:61:0x0108 BREAK  A[LOOP:1: B:55:0x00f1->B:60:0x0103], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:428:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:431:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:445:0x03a0 A[EDGE_INSN: B:445:0x03a0->B:195:0x03a0 BREAK  A[LOOP:7: B:184:0x0386->B:194:0x039d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:447:0x039d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:448:0x049e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:454:0x0493 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:470:0x046f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:473:0x0487 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:475:0x03c3 A[EDGE_INSN: B:475:0x03c3->B:210:0x03c3 BREAK  A[LOOP:13: B:199:0x03a9->B:209:0x03c0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:477:0x03c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:59:0x0101  */
    /* JADX WARN: Code duplicated, block: B:62:0x010a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0113  */
    /* JADX WARN: Code duplicated, block: B:67:0x0121  */
    /* JADX WARN: Code duplicated, block: B:70:0x012e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0139  */
    /* JADX WARN: Code duplicated, block: B:75:0x013c  */
    /* JADX WARN: Code duplicated, block: B:77:0x013f  */
    /* JADX WARN: Code duplicated, block: B:79:0x0142  */
    /* JADX WARN: Code duplicated, block: B:82:0x0153  */
    /* JADX WARN: Code duplicated, block: B:84:0x0158  */
    /* JADX WARN: Code duplicated, block: B:85:0x0168  */
    /* JADX WARN: Code duplicated, block: B:87:0x019f  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:91:0x01ba  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.in8
    public final void l(ki3 ki3Var, int i, int i2) {
        ys1 ys1Var;
        ys1 ys1Var2;
        ys1 ys1Var3;
        ArrayList arrayList;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        ot1[] ot1VarArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        ot1[] ot1VarArr2;
        int i16;
        ot1[] ot1VarArr3;
        int i17;
        int i18;
        int[] iArr2;
        int i19;
        int i20;
        ii3 ii3Var;
        int i21;
        char c;
        char c2;
        int i22;
        int i23;
        int iMin;
        boolean z;
        int i24;
        ot1[] ot1VarArr4;
        int i25;
        ii3 ii3Var2;
        int i26;
        int i27;
        int i28;
        ot1 ot1Var;
        int iT;
        boolean z2;
        int i29;
        int size;
        boolean z3;
        int i30;
        int i31;
        int i32;
        int i33;
        ys1 ys1Var4;
        ys1 ys1Var5;
        ys1 ys1Var6;
        ys1 ys1Var7;
        int i34;
        int iMax;
        int i35;
        ii3 ii3Var3;
        int iD;
        int iC;
        int i36;
        ii3 ii3Var4;
        int i37;
        int i38;
        ot1 ot1Var2;
        int iU;
        boolean z4;
        int i39;
        ot1[] ot1VarArr5;
        int i40;
        int i41;
        int iCeil;
        int iCeil2;
        int i42;
        int i43;
        int i44;
        ot1 ot1Var3;
        int iT2;
        boolean z5;
        ot1[] ot1VarArr6;
        Object obj;
        ot1[] ot1VarArr7;
        int i45;
        int i46;
        int iU2;
        int i47;
        int iT3;
        ot1 ot1Var4;
        ot1 ot1Var5;
        int i48;
        int i49;
        ot1 ot1Var6;
        ot1 ot1Var7;
        ot1 ot1Var8;
        int i50;
        int i51;
        ot1 ot1Var9;
        int iU3;
        int i52;
        int i53;
        ot1[] ot1VarArr8;
        ii3 ii3Var5;
        char c3;
        int i54;
        int i55;
        int i56;
        int i57;
        int i58;
        ot1 ot1Var10;
        int iT4;
        int i59;
        boolean z6;
        int i60;
        int size2;
        boolean z7;
        int i61;
        int i62;
        int i63;
        int i64;
        ys1 ys1Var8;
        ys1 ys1Var9;
        ys1 ys1Var10;
        ys1 ys1Var11;
        int i65;
        int iMax2;
        int i66;
        ii3 ii3Var6;
        int iD2;
        int iC2;
        int i67;
        ii3 ii3Var7;
        int i68;
        int i69;
        int i70;
        ot1 ot1Var11;
        int iU4;
        int i71;
        int i72;
        boolean z8;
        int i73;
        int i74;
        int i75;
        int i76;
        int i77;
        ot1 ot1Var12;
        ot1[] ot1VarArr9;
        ys1 ys1Var12;
        ys1 ys1Var13;
        ys1 ys1Var14;
        ArrayList arrayList2;
        int i78;
        int mode = View.MeasureSpec.getMode(i);
        int size3 = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size4 = View.MeasureSpec.getSize(i2);
        if (ki3Var == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        int[] iArr3 = ki3Var.p0;
        ys1 ys1Var15 = ki3Var.J;
        ys1 ys1Var16 = ki3Var.I;
        ys1 ys1Var17 = ki3Var.K;
        ys1 ys1Var18 = ki3Var.L;
        ArrayList arrayList3 = ki3Var.W0;
        if (ki3Var.r0 > 0) {
            ap0 ap0Var = ki3Var.B0;
            ot1 ot1Var13 = ki3Var.T;
            et1 et1Var = ot1Var13 != null ? ((pt1) ot1Var13).u0 : null;
            if (et1Var == null) {
                ki3Var.z0 = 0;
                ki3Var.A0 = 0;
                ki3Var.y0 = false;
            } else {
                int i79 = 0;
                while (i79 < ki3Var.r0) {
                    ot1 ot1Var14 = ki3Var.q0[i79];
                    if (ot1Var14 == null) {
                        ys1Var12 = ys1Var16;
                    } else {
                        ys1Var12 = ys1Var16;
                        if (!(ot1Var14 instanceof b24)) {
                            ys1Var13 = ys1Var17;
                            int iJ = ot1Var14.j(0);
                            ys1Var14 = ys1Var18;
                            int iJ2 = ot1Var14.j(1);
                            arrayList2 = arrayList3;
                            if (iJ == 3) {
                                i78 = i79;
                                if (ot1Var14.r == 1 || iJ2 != 3 || ot1Var14.s == 1) {
                                }
                            } else {
                                i78 = i79;
                            }
                            if (iJ == 3) {
                                iJ = 2;
                            }
                            if (iJ2 == 3) {
                                iJ2 = 2;
                            }
                            ap0Var.a = iJ;
                            ap0Var.b = iJ2;
                            ap0Var.c = ot1Var14.q();
                            ap0Var.d = ot1Var14.k();
                            et1Var.b(ot1Var14, ap0Var);
                            ot1Var14.O(ap0Var.e);
                            ot1Var14.L(ap0Var.f);
                            ot1Var14.I(ap0Var.g);
                        }
                        i79 = i78 + 1;
                        ys1Var16 = ys1Var12;
                        ys1Var17 = ys1Var13;
                        ys1Var18 = ys1Var14;
                        arrayList3 = arrayList2;
                    }
                    ys1Var13 = ys1Var17;
                    ys1Var14 = ys1Var18;
                    arrayList2 = arrayList3;
                    i78 = i79;
                    i79 = i78 + 1;
                    ys1Var16 = ys1Var12;
                    ys1Var17 = ys1Var13;
                    ys1Var18 = ys1Var14;
                    arrayList3 = arrayList2;
                }
                ys1Var = ys1Var16;
                ys1Var2 = ys1Var17;
                ys1Var3 = ys1Var18;
                arrayList = arrayList3;
                i3 = ki3Var.w0;
                int i80 = ki3Var.x0;
                i4 = ki3Var.s0;
                i5 = ki3Var.t0;
                iArr = new int[2];
                i6 = (size3 - i3) - i80;
                i7 = ki3Var.V0;
                if (i7 == 1) {
                    i6 = (size4 - i4) - i5;
                }
                i8 = i6;
                i9 = ki3Var.D0;
                i10 = i80;
                if (i7 == 0) {
                    if (i9 == -1) {
                        ki3Var.D0 = 0;
                    }
                    if (ki3Var.E0 == -1) {
                        ki3Var.E0 = 0;
                    }
                } else {
                    if (i9 == -1) {
                        ki3Var.D0 = 0;
                    }
                    if (ki3Var.E0 == -1) {
                        ki3Var.E0 = 0;
                    }
                }
                ot1VarArr = ki3Var.q0;
                i11 = 0;
                i12 = 0;
                while (true) {
                    i13 = ki3Var.r0;
                    i14 = i4;
                    if (i11 < i13) {
                        break;
                    }
                    if (ki3Var.q0[i11].g0 == 8) {
                        i12++;
                    }
                    i11++;
                    i4 = i14;
                }
                if (i12 > 0) {
                    ot1VarArr2 = new ot1[i13 - i12];
                    i76 = 0;
                    i77 = 0;
                    while (i76 < ki3Var.r0) {
                        ot1Var12 = ki3Var.q0[i76];
                        ot1VarArr9 = ot1VarArr2;
                        if (ot1Var12.g0 != 8) {
                            ot1VarArr9[i77] = ot1Var12;
                            i77++;
                        }
                        i76++;
                        ot1VarArr2 = ot1VarArr9;
                    }
                    i15 = i77;
                } else {
                    i15 = i13;
                    ot1VarArr2 = ot1VarArr;
                }
                ki3Var.a1 = ot1VarArr2;
                ki3Var.b1 = i15;
                i16 = ki3Var.T0;
                if (i16 != 0) {
                    ot1VarArr3 = ot1VarArr2;
                    i17 = i15;
                    i18 = i5;
                    iArr2 = iArr;
                    i19 = size4;
                    i3 = i3;
                    i10 = i10;
                    i14 = i14;
                    i20 = ki3Var.V0;
                    if (i17 == 0) {
                        if (arrayList.size() == 0) {
                            ii3Var = new ii3(ki3Var, i20, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                            arrayList.add(ii3Var);
                        } else {
                            ii3 ii3Var8 = (ii3) arrayList.get(0);
                            ii3Var8.c = 0;
                            ii3Var8.b = null;
                            ii3Var8.l = 0;
                            ii3Var8.m = 0;
                            ii3Var8.n = 0;
                            ii3Var8.o = 0;
                            ii3Var8.p = 0;
                            ii3Var8.f(i20, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, ki3Var.w0, ki3Var.s0, ki3Var.x0, ki3Var.t0, i8);
                            ii3Var = ii3Var8;
                        }
                        for (i21 = 0; i21 < i17; i21++) {
                            ii3Var.a(ot1VarArr3[i21]);
                        }
                        c = 0;
                        iArr2[0] = ii3Var.d();
                        c2 = 1;
                        iArr2[1] = ii3Var.c();
                    }
                    i22 = iArr2[c] + i3 + i10;
                    i23 = iArr2[c2] + i14 + i18;
                    if (mode != 1073741824) {
                        if (mode == Integer.MIN_VALUE) {
                            size3 = Math.min(i22, size3);
                        } else if (mode == 0) {
                            size3 = i22;
                        } else {
                            size3 = 0;
                        }
                    }
                    if (mode2 == 1073741824) {
                        iMin = i19;
                    } else if (mode2 == Integer.MIN_VALUE) {
                        iMin = Math.min(i23, i19);
                    } else if (mode2 == 0) {
                        iMin = i23;
                    } else {
                        iMin = 0;
                    }
                    ki3Var.z0 = size3;
                    ki3Var.A0 = iMin;
                    ki3Var.O(size3);
                    ki3Var.L(iMin);
                    if (ki3Var.r0 > 0) {
                        z = c2;
                    } else {
                        z = 0;
                    }
                    ki3Var.y0 = z;
                } else if (i16 != 1) {
                    if (i16 != 2) {
                        ot1VarArr5 = ot1VarArr2;
                        i40 = i15;
                        i18 = i5;
                        iArr2 = iArr;
                        i19 = size4;
                        i3 = i3;
                        i10 = i10;
                        i14 = i14;
                        i41 = ki3Var.V0;
                        iCeil = ki3Var.U0;
                        if (i41 == 0) {
                            if (iCeil <= 0) {
                                i51 = 0;
                                iCeil2 = 0;
                                for (i50 = 0; i50 < i40; i50++) {
                                    if (i50 > 0) {
                                        i51 += ki3Var.P0;
                                    }
                                    ot1Var9 = ot1VarArr5[i50];
                                    if (ot1Var9 != null) {
                                        iU3 = ki3Var.U(ot1Var9, i8) + i51;
                                        if (iU3 > i8) {
                                            break;
                                        }
                                        iCeil2++;
                                        i51 = iU3;
                                    }
                                }
                            } else {
                                iCeil2 = iCeil;
                            }
                            iCeil = 0;
                        } else {
                            if (iCeil <= 0) {
                                i43 = 0;
                                i44 = 0;
                                for (i42 = 0; i42 < i40; i42++) {
                                    if (i42 > 0) {
                                        i43 += ki3Var.Q0;
                                    }
                                    ot1Var3 = ot1VarArr5[i42];
                                    if (ot1Var3 != null) {
                                        iT2 = ki3Var.T(ot1Var3, i8) + i43;
                                        if (iT2 > i8) {
                                            break;
                                        }
                                        i44++;
                                        i43 = iT2;
                                    }
                                }
                                iCeil = i44;
                            }
                            iCeil2 = 0;
                        }
                        if (ki3Var.Z0 == null) {
                            ki3Var.Z0 = new int[2];
                        }
                        z5 = (iCeil != 0 && i41 == 1) || (iCeil2 == 0 && i41 == 0);
                        while (!z5) {
                            if (i41 == 0) {
                                iCeil = (int) Math.ceil(i40 / iCeil2);
                            } else {
                                iCeil2 = (int) Math.ceil(i40 / iCeil);
                            }
                            ot1VarArr6 = ki3Var.Y0;
                            if (ot1VarArr6 != null || ot1VarArr6.length < iCeil2) {
                                obj = null;
                                ki3Var.Y0 = new ot1[iCeil2];
                            } else {
                                obj = null;
                                Arrays.fill(ot1VarArr6, (Object) null);
                            }
                            ot1VarArr7 = ki3Var.X0;
                            if (ot1VarArr7 != null || ot1VarArr7.length < iCeil) {
                                ki3Var.X0 = new ot1[iCeil];
                            } else {
                                Arrays.fill(ot1VarArr7, obj);
                            }
                            for (i45 = 0; i45 < iCeil2; i45++) {
                                for (i48 = 0; i48 < iCeil; i48++) {
                                    i49 = (i48 * iCeil2) + i45;
                                    if (i41 == 1) {
                                        i49 = (i45 * iCeil) + i48;
                                    }
                                    if (i49 < ot1VarArr5.length && (ot1Var6 = ot1VarArr5[i49]) != null) {
                                        int iU5 = ki3Var.U(ot1Var6, i8);
                                        ot1Var7 = ki3Var.Y0[i45];
                                        if (ot1Var7 != null || ot1Var7.q() < iU5) {
                                            ki3Var.Y0[i45] = ot1Var6;
                                        }
                                        int iT5 = ki3Var.T(ot1Var6, i8);
                                        ot1Var8 = ki3Var.X0[i48];
                                        if (ot1Var8 != null || ot1Var8.k() < iT5) {
                                            ki3Var.X0[i48] = ot1Var6;
                                        }
                                    }
                                }
                            }
                            iU2 = 0;
                            for (i46 = 0; i46 < iCeil2; i46++) {
                                ot1Var5 = ki3Var.Y0[i46];
                                if (ot1Var5 == null) {
                                    if (i46 > 0) {
                                        iU2 += ki3Var.P0;
                                    }
                                    iU2 = ki3Var.U(ot1Var5, i8) + iU2;
                                }
                            }
                            iT3 = 0;
                            for (i47 = 0; i47 < iCeil; i47++) {
                                ot1Var4 = ki3Var.X0[i47];
                                if (ot1Var4 == null) {
                                    if (i47 > 0) {
                                        iT3 += ki3Var.Q0;
                                    }
                                    iT3 = ki3Var.T(ot1Var4, i8) + iT3;
                                }
                            }
                            iArr2[0] = iU2;
                            iArr2[1] = iT3;
                            if (i41 == 0) {
                                if (iU2 > i8 || iCeil2 <= 1) {
                                    z5 = true;
                                } else {
                                    iCeil2--;
                                }
                            } else if (iT3 > i8 || iCeil <= 1) {
                                z5 = true;
                            } else {
                                iCeil--;
                            }
                        }
                        c2 = 1;
                        int[] iArr4 = ki3Var.Z0;
                        iArr4[0] = iCeil2;
                        iArr4[1] = iCeil;
                    } else if (i16 != 3) {
                        i18 = i5;
                        iArr2 = iArr;
                        i19 = size4;
                        i3 = i3;
                        i10 = i10;
                        i14 = i14;
                    } else {
                        i52 = i15;
                        i53 = ki3Var.V0;
                        if (i52 == 0) {
                            i18 = i5;
                            iArr2 = iArr;
                            i19 = size4;
                            c3 = 1;
                        } else {
                            arrayList.clear();
                            ot1VarArr8 = ot1VarArr2;
                            i18 = i5;
                            iArr2 = iArr;
                            c3 = 1;
                            ii3Var5 = new ii3(ki3Var, i53, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                            arrayList.add(ii3Var5);
                            if (i53 == 0) {
                                i68 = 0;
                                i69 = 0;
                                i58 = 0;
                                i70 = 0;
                                while (i68 < i52) {
                                    i69++;
                                    ot1Var11 = ot1VarArr8[i68];
                                    iU4 = ki3Var.U(ot1Var11, i8);
                                    i71 = i53;
                                    i72 = i68;
                                    if (ot1Var11.p0[0] == 3) {
                                        i58++;
                                    }
                                    int i81 = i58;
                                    z8 = (i70 != i8 || (ki3Var.P0 + i70) + iU4 > i8) && ii3Var5.b != null;
                                    if (!z8 && i72 > 0 && (i75 = ki3Var.U0) > 0 && i69 > i75) {
                                        z8 = true;
                                    }
                                    if (z8) {
                                        i73 = size4;
                                        i53 = i71;
                                        i74 = i72;
                                        ii3Var5 = new ii3(ki3Var, i53, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                        ii3Var5.n = i74;
                                        arrayList.add(ii3Var5);
                                        i69 = 1;
                                    } else {
                                        i73 = size4;
                                        i53 = i71;
                                        i74 = i72;
                                        if (i74 > 0) {
                                            i70 = ki3Var.P0 + iU4 + i70;
                                        }
                                        ii3Var5.a(ot1Var11);
                                        i68 = i74 + 1;
                                        i58 = i81;
                                        size4 = i73;
                                    }
                                    i70 = iU4;
                                    ii3Var5.a(ot1Var11);
                                    i68 = i74 + 1;
                                    i58 = i81;
                                    size4 = i73;
                                }
                                i19 = size4;
                            } else {
                                i19 = size4;
                                i54 = 0;
                                i55 = 0;
                                i56 = 0;
                                i57 = 0;
                                while (i54 < i52) {
                                    i55++;
                                    ot1Var10 = ot1VarArr8[i54];
                                    iT4 = ki3Var.T(ot1Var10, i8);
                                    i59 = i53;
                                    if (ot1Var10.p0[1] == 3) {
                                        i56++;
                                    }
                                    int i82 = i56;
                                    z6 = (i57 != i8 || (ki3Var.Q0 + i57) + iT4 > i8) && ii3Var5.b != null;
                                    if (!z6 && i54 > 0 && (i60 = ki3Var.U0) > 0 && i55 > i60) {
                                        z6 = true;
                                    }
                                    if (z6) {
                                        i53 = i59;
                                        ii3Var5 = new ii3(ki3Var, i53, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                        ii3Var5.n = i54;
                                        arrayList.add(ii3Var5);
                                        i55 = 1;
                                    } else {
                                        i53 = i59;
                                        if (i54 > 0) {
                                            i57 = ki3Var.Q0 + iT4 + i57;
                                        }
                                        ii3Var5.a(ot1Var10);
                                        i54++;
                                        i56 = i82;
                                    }
                                    i57 = iT4;
                                    ii3Var5.a(ot1Var10);
                                    i54++;
                                    i56 = i82;
                                }
                                i58 = i56;
                            }
                            size2 = arrayList.size();
                            int i83 = ki3Var.w0;
                            int i84 = ki3Var.s0;
                            int i85 = ki3Var.x0;
                            int i86 = ki3Var.t0;
                            if (iArr3[0] != 2 || iArr3[1] == 2) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (i58 > 0 && z7) {
                                for (i67 = 0; i67 < size2; i67++) {
                                    ii3Var7 = (ii3) arrayList.get(i67);
                                    if (i53 == 0) {
                                        ii3Var7.e(i8 - ii3Var7.d());
                                    } else {
                                        ii3Var7.e(i8 - ii3Var7.c());
                                    }
                                }
                            }
                            i61 = i83;
                            i62 = i84;
                            i63 = i85;
                            i64 = i86;
                            ys1Var8 = ys1Var;
                            ys1Var9 = ys1Var2;
                            ys1Var10 = ys1Var3;
                            ys1Var11 = ys1Var15;
                            iMax2 = 0;
                            i66 = 0;
                            for (i65 = 0; i65 < size2; i65++) {
                                ii3Var6 = (ii3) arrayList.get(i65);
                                if (i53 == 0) {
                                    if (i65 < size2 - 1) {
                                        ys1Var10 = ((ii3) arrayList.get(i65 + 1)).b.J;
                                        i64 = 0;
                                    } else {
                                        i64 = ki3Var.t0;
                                        ys1Var10 = ys1Var3;
                                    }
                                    ys1 ys1Var19 = ii3Var6.b.L;
                                    ii3Var6.f(i53, ys1Var8, ys1Var11, ys1Var9, ys1Var10, i61, i62, i63, i64, i8);
                                    iMax2 = Math.max(iMax2, ii3Var6.d());
                                    iC2 = ii3Var6.c() + i66;
                                    if (i65 > 0) {
                                        iC2 += ki3Var.Q0;
                                    }
                                    i66 = iC2;
                                    ys1Var11 = ys1Var19;
                                    i62 = 0;
                                } else {
                                    if (i65 < size2 - 1) {
                                        ys1Var9 = ((ii3) arrayList.get(i65 + 1)).b.I;
                                        i63 = 0;
                                    } else {
                                        i63 = ki3Var.x0;
                                        ys1Var9 = ys1Var2;
                                    }
                                    ys1 ys1Var20 = ii3Var6.b.K;
                                    ii3Var6.f(i53, ys1Var8, ys1Var11, ys1Var9, ys1Var10, i61, i62, i63, i64, i8);
                                    iD2 = ii3Var6.d() + iMax2;
                                    int iMax3 = Math.max(i66, ii3Var6.c());
                                    if (i65 > 0) {
                                        iD2 += ki3Var.P0;
                                    }
                                    i66 = iMax3;
                                    iMax2 = iD2;
                                    ys1Var8 = ys1Var20;
                                    i61 = 0;
                                }
                            }
                            iArr2[0] = iMax2;
                            iArr2[1] = i66;
                        }
                        c2 = c3;
                    }
                    c = 0;
                    i22 = iArr2[c] + i3 + i10;
                    i23 = iArr2[c2] + i14 + i18;
                    if (mode != 1073741824) {
                        if (mode == Integer.MIN_VALUE) {
                            size3 = Math.min(i22, size3);
                        } else if (mode == 0) {
                            size3 = i22;
                        } else {
                            size3 = 0;
                        }
                    }
                    if (mode2 == 1073741824) {
                        iMin = i19;
                    } else if (mode2 == Integer.MIN_VALUE) {
                        iMin = Math.min(i23, i19);
                    } else if (mode2 == 0) {
                        iMin = i23;
                    } else {
                        iMin = 0;
                    }
                    ki3Var.z0 = size3;
                    ki3Var.A0 = iMin;
                    ki3Var.O(size3);
                    ki3Var.L(iMin);
                    if (ki3Var.r0 > 0) {
                        z = c2;
                    } else {
                        z = 0;
                    }
                    ki3Var.y0 = z;
                } else {
                    i18 = i5;
                    iArr2 = iArr;
                    i19 = size4;
                    i3 = i3;
                    i10 = i10;
                    i14 = i14;
                    i24 = i15;
                    ot1VarArr4 = ot1VarArr2;
                    i25 = ki3Var.V0;
                    if (i24 != 0) {
                        arrayList.clear();
                        ii3Var2 = new ii3(ki3Var, i25, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                        arrayList.add(ii3Var2);
                        if (i25 == 0) {
                            i37 = 0;
                            i27 = 0;
                            i38 = 0;
                            while (i37 < i24) {
                                ot1Var2 = ot1VarArr4[i37];
                                iU = ki3Var.U(ot1Var2, i8);
                                if (ot1Var2.p0[0] == 3) {
                                    i27++;
                                }
                                int i87 = i27;
                                z4 = (i38 != i8 || (ki3Var.P0 + i38) + iU > i8) && ii3Var2.b != null;
                                if (!z4 && i37 > 0 && (i39 = ki3Var.U0) > 0 && i37 % i39 == 0) {
                                    z4 = true;
                                }
                                if (z4) {
                                    ii3Var2 = new ii3(ki3Var, i25, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                    ii3Var2.n = i37;
                                    arrayList.add(ii3Var2);
                                } else {
                                    if (i37 > 0) {
                                        i38 = ki3Var.P0 + iU + i38;
                                    }
                                    ii3Var2.a(ot1Var2);
                                    i37++;
                                    i27 = i87;
                                }
                                i38 = iU;
                                ii3Var2.a(ot1Var2);
                                i37++;
                                i27 = i87;
                            }
                        } else {
                            i26 = 0;
                            i27 = 0;
                            i28 = 0;
                            while (i26 < i24) {
                                ot1Var = ot1VarArr4[i26];
                                iT = ki3Var.T(ot1Var, i8);
                                if (ot1Var.p0[1] == 3) {
                                    i27++;
                                }
                                int i88 = i27;
                                z2 = (i28 != i8 || (ki3Var.Q0 + i28) + iT > i8) && ii3Var2.b != null;
                                if (!z2 && i26 > 0 && (i29 = ki3Var.U0) > 0 && i26 % i29 == 0) {
                                    z2 = true;
                                }
                                if (z2) {
                                    ii3Var2 = new ii3(ki3Var, i25, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                    ii3Var2.n = i26;
                                    arrayList.add(ii3Var2);
                                } else {
                                    if (i26 > 0) {
                                        i28 = ki3Var.Q0 + iT + i28;
                                    }
                                    ii3Var2.a(ot1Var);
                                    i26++;
                                    i27 = i88;
                                }
                                i28 = iT;
                                ii3Var2.a(ot1Var);
                                i26++;
                                i27 = i88;
                            }
                        }
                        size = arrayList.size();
                        int i89 = ki3Var.w0;
                        int i90 = ki3Var.s0;
                        int i91 = ki3Var.x0;
                        int i92 = ki3Var.t0;
                        if (iArr3[0] != 2 || iArr3[1] == 2) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (i27 > 0 && z3) {
                            for (i36 = 0; i36 < size; i36++) {
                                ii3Var4 = (ii3) arrayList.get(i36);
                                if (i25 == 0) {
                                    ii3Var4.e(i8 - ii3Var4.d());
                                } else {
                                    ii3Var4.e(i8 - ii3Var4.c());
                                }
                            }
                        }
                        i30 = i89;
                        i31 = i90;
                        i32 = i91;
                        i33 = i92;
                        ys1Var4 = ys1Var;
                        ys1Var5 = ys1Var2;
                        ys1Var6 = ys1Var3;
                        ys1Var7 = ys1Var15;
                        iMax = 0;
                        i35 = 0;
                        for (i34 = 0; i34 < size; i34++) {
                            ii3Var3 = (ii3) arrayList.get(i34);
                            if (i25 == 0) {
                                if (i34 < size - 1) {
                                    ys1Var6 = ((ii3) arrayList.get(i34 + 1)).b.J;
                                    i33 = 0;
                                } else {
                                    i33 = ki3Var.t0;
                                    ys1Var6 = ys1Var3;
                                }
                                ys1 ys1Var21 = ii3Var3.b.L;
                                ii3Var3.f(i25, ys1Var4, ys1Var7, ys1Var5, ys1Var6, i30, i31, i32, i33, i8);
                                iMax = Math.max(iMax, ii3Var3.d());
                                iC = ii3Var3.c() + i35;
                                if (i34 > 0) {
                                    iC += ki3Var.Q0;
                                }
                                i35 = iC;
                                ys1Var7 = ys1Var21;
                                i31 = 0;
                            } else {
                                if (i34 < size - 1) {
                                    ys1Var5 = ((ii3) arrayList.get(i34 + 1)).b.I;
                                    i32 = 0;
                                } else {
                                    i32 = ki3Var.x0;
                                    ys1Var5 = ys1Var2;
                                }
                                ys1 ys1Var22 = ii3Var3.b.K;
                                ii3Var3.f(i25, ys1Var4, ys1Var7, ys1Var5, ys1Var6, i30, i31, i32, i33, i8);
                                iD = ii3Var3.d() + iMax;
                                int iMax4 = Math.max(i35, ii3Var3.c());
                                if (i34 > 0) {
                                    iD += ki3Var.P0;
                                }
                                i35 = iMax4;
                                iMax = iD;
                                ys1Var4 = ys1Var22;
                                i30 = 0;
                            }
                        }
                        iArr2[0] = iMax;
                        iArr2[1] = i35;
                    }
                }
                c2 = 1;
                c = 0;
                i22 = iArr2[c] + i3 + i10;
                i23 = iArr2[c2] + i14 + i18;
                if (mode != 1073741824) {
                    if (mode == Integer.MIN_VALUE) {
                        size3 = Math.min(i22, size3);
                    } else if (mode == 0) {
                        size3 = i22;
                    } else {
                        size3 = 0;
                    }
                }
                if (mode2 == 1073741824) {
                    iMin = i19;
                } else if (mode2 == Integer.MIN_VALUE) {
                    iMin = Math.min(i23, i19);
                } else if (mode2 == 0) {
                    iMin = i23;
                } else {
                    iMin = 0;
                }
                ki3Var.z0 = size3;
                ki3Var.A0 = iMin;
                ki3Var.O(size3);
                ki3Var.L(iMin);
                if (ki3Var.r0 > 0) {
                    z = c2;
                } else {
                    z = 0;
                }
                ki3Var.y0 = z;
            }
        } else {
            ys1Var = ys1Var16;
            ys1Var2 = ys1Var17;
            ys1Var3 = ys1Var18;
            arrayList = arrayList3;
            i3 = ki3Var.w0;
            int i810 = ki3Var.x0;
            i4 = ki3Var.s0;
            i5 = ki3Var.t0;
            iArr = new int[2];
            i6 = (size3 - i3) - i810;
            i7 = ki3Var.V0;
            if (i7 == 1) {
                i6 = (size4 - i4) - i5;
            }
            i8 = i6;
            i9 = ki3Var.D0;
            i10 = i810;
            if (i7 == 0) {
                if (i9 == -1) {
                    ki3Var.D0 = 0;
                }
                if (ki3Var.E0 == -1) {
                    ki3Var.E0 = 0;
                }
            } else {
                if (i9 == -1) {
                    ki3Var.D0 = 0;
                }
                if (ki3Var.E0 == -1) {
                    ki3Var.E0 = 0;
                }
            }
            ot1VarArr = ki3Var.q0;
            i11 = 0;
            i12 = 0;
            while (true) {
                i13 = ki3Var.r0;
                i14 = i4;
                if (i11 < i13) {
                    break;
                    break;
                }
                if (ki3Var.q0[i11].g0 == 8) {
                    i12++;
                }
                i11++;
                i4 = i14;
            }
            if (i12 > 0) {
                ot1VarArr2 = new ot1[i13 - i12];
                i76 = 0;
                i77 = 0;
                while (i76 < ki3Var.r0) {
                    ot1Var12 = ki3Var.q0[i76];
                    ot1VarArr9 = ot1VarArr2;
                    if (ot1Var12.g0 != 8) {
                        ot1VarArr9[i77] = ot1Var12;
                        i77++;
                    }
                    i76++;
                    ot1VarArr2 = ot1VarArr9;
                }
                i15 = i77;
            } else {
                i15 = i13;
                ot1VarArr2 = ot1VarArr;
            }
            ki3Var.a1 = ot1VarArr2;
            ki3Var.b1 = i15;
            i16 = ki3Var.T0;
            if (i16 != 0) {
                ot1VarArr3 = ot1VarArr2;
                i17 = i15;
                i18 = i5;
                iArr2 = iArr;
                i19 = size4;
                i3 = i3;
                i10 = i10;
                i14 = i14;
                i20 = ki3Var.V0;
                if (i17 == 0) {
                    if (arrayList.size() == 0) {
                        ii3Var = new ii3(ki3Var, i20, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                        arrayList.add(ii3Var);
                    } else {
                        ii3 ii3Var9 = (ii3) arrayList.get(0);
                        ii3Var9.c = 0;
                        ii3Var9.b = null;
                        ii3Var9.l = 0;
                        ii3Var9.m = 0;
                        ii3Var9.n = 0;
                        ii3Var9.o = 0;
                        ii3Var9.p = 0;
                        ii3Var9.f(i20, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, ki3Var.w0, ki3Var.s0, ki3Var.x0, ki3Var.t0, i8);
                        ii3Var = ii3Var9;
                    }
                    while (i21 < i17) {
                        ii3Var.a(ot1VarArr3[i21]);
                    }
                    c = 0;
                    iArr2[0] = ii3Var.d();
                    c2 = 1;
                    iArr2[1] = ii3Var.c();
                }
                i22 = iArr2[c] + i3 + i10;
                i23 = iArr2[c2] + i14 + i18;
                if (mode != 1073741824) {
                    if (mode == Integer.MIN_VALUE) {
                        size3 = Math.min(i22, size3);
                    } else if (mode == 0) {
                        size3 = i22;
                    } else {
                        size3 = 0;
                    }
                }
                if (mode2 == 1073741824) {
                    iMin = i19;
                } else if (mode2 == Integer.MIN_VALUE) {
                    iMin = Math.min(i23, i19);
                } else if (mode2 == 0) {
                    iMin = i23;
                } else {
                    iMin = 0;
                }
                ki3Var.z0 = size3;
                ki3Var.A0 = iMin;
                ki3Var.O(size3);
                ki3Var.L(iMin);
                if (ki3Var.r0 > 0) {
                    z = c2;
                } else {
                    z = 0;
                }
                ki3Var.y0 = z;
            } else if (i16 != 1) {
                if (i16 != 2) {
                    ot1VarArr5 = ot1VarArr2;
                    i40 = i15;
                    i18 = i5;
                    iArr2 = iArr;
                    i19 = size4;
                    i3 = i3;
                    i10 = i10;
                    i14 = i14;
                    i41 = ki3Var.V0;
                    iCeil = ki3Var.U0;
                    if (i41 == 0) {
                        if (iCeil <= 0) {
                            i51 = 0;
                            iCeil2 = 0;
                            while (i50 < i40) {
                                if (i50 > 0) {
                                    i51 += ki3Var.P0;
                                }
                                ot1Var9 = ot1VarArr5[i50];
                                if (ot1Var9 != null) {
                                    iU3 = ki3Var.U(ot1Var9, i8) + i51;
                                    if (iU3 > i8) {
                                        break;
                                        break;
                                    } else {
                                        iCeil2++;
                                        i51 = iU3;
                                    }
                                }
                            }
                        } else {
                            iCeil2 = iCeil;
                        }
                        iCeil = 0;
                    } else {
                        if (iCeil <= 0) {
                            i43 = 0;
                            i44 = 0;
                            while (i42 < i40) {
                                if (i42 > 0) {
                                    i43 += ki3Var.Q0;
                                }
                                ot1Var3 = ot1VarArr5[i42];
                                if (ot1Var3 != null) {
                                    iT2 = ki3Var.T(ot1Var3, i8) + i43;
                                    if (iT2 > i8) {
                                        break;
                                        break;
                                    } else {
                                        i44++;
                                        i43 = iT2;
                                    }
                                }
                            }
                            iCeil = i44;
                        }
                        iCeil2 = 0;
                    }
                    if (ki3Var.Z0 == null) {
                        ki3Var.Z0 = new int[2];
                    }
                    if (iCeil != 0) {
                    }
                    while (!z5) {
                        if (i41 == 0) {
                            iCeil = (int) Math.ceil(i40 / iCeil2);
                        } else {
                            iCeil2 = (int) Math.ceil(i40 / iCeil);
                        }
                        ot1VarArr6 = ki3Var.Y0;
                        if (ot1VarArr6 != null) {
                            obj = null;
                            ki3Var.Y0 = new ot1[iCeil2];
                        } else {
                            obj = null;
                            ki3Var.Y0 = new ot1[iCeil2];
                        }
                        ot1VarArr7 = ki3Var.X0;
                        if (ot1VarArr7 != null) {
                            ki3Var.X0 = new ot1[iCeil];
                        } else {
                            ki3Var.X0 = new ot1[iCeil];
                        }
                        while (i45 < iCeil2) {
                            while (i48 < iCeil) {
                                i49 = (i48 * iCeil2) + i45;
                                if (i41 == 1) {
                                    i49 = (i45 * iCeil) + i48;
                                }
                                if (i49 < ot1VarArr5.length) {
                                    int iU6 = ki3Var.U(ot1Var6, i8);
                                    ot1Var7 = ki3Var.Y0[i45];
                                    if (ot1Var7 != null) {
                                        ki3Var.Y0[i45] = ot1Var6;
                                    } else {
                                        ki3Var.Y0[i45] = ot1Var6;
                                    }
                                    int iT6 = ki3Var.T(ot1Var6, i8);
                                    ot1Var8 = ki3Var.X0[i48];
                                    if (ot1Var8 != null) {
                                        ki3Var.X0[i48] = ot1Var6;
                                    } else {
                                        ki3Var.X0[i48] = ot1Var6;
                                    }
                                }
                            }
                        }
                        iU2 = 0;
                        while (i46 < iCeil2) {
                            ot1Var5 = ki3Var.Y0[i46];
                            if (ot1Var5 == null) {
                                if (i46 > 0) {
                                    iU2 += ki3Var.P0;
                                }
                                iU2 = ki3Var.U(ot1Var5, i8) + iU2;
                            }
                        }
                        iT3 = 0;
                        while (i47 < iCeil) {
                            ot1Var4 = ki3Var.X0[i47];
                            if (ot1Var4 == null) {
                                if (i47 > 0) {
                                    iT3 += ki3Var.Q0;
                                }
                                iT3 = ki3Var.T(ot1Var4, i8) + iT3;
                            }
                        }
                        iArr2[0] = iU2;
                        iArr2[1] = iT3;
                        if (i41 == 0) {
                            if (iU2 > i8) {
                            }
                            z5 = true;
                        } else {
                            if (iT3 > i8) {
                            }
                            z5 = true;
                        }
                    }
                    c2 = 1;
                    int[] iArr5 = ki3Var.Z0;
                    iArr5[0] = iCeil2;
                    iArr5[1] = iCeil;
                } else if (i16 != 3) {
                    i18 = i5;
                    iArr2 = iArr;
                    i19 = size4;
                    i3 = i3;
                    i10 = i10;
                    i14 = i14;
                } else {
                    i52 = i15;
                    i53 = ki3Var.V0;
                    if (i52 == 0) {
                        i18 = i5;
                        iArr2 = iArr;
                        i19 = size4;
                        c3 = 1;
                    } else {
                        arrayList.clear();
                        ot1VarArr8 = ot1VarArr2;
                        i18 = i5;
                        iArr2 = iArr;
                        c3 = 1;
                        ii3Var5 = new ii3(ki3Var, i53, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                        arrayList.add(ii3Var5);
                        if (i53 == 0) {
                            i68 = 0;
                            i69 = 0;
                            i58 = 0;
                            i70 = 0;
                            while (i68 < i52) {
                                i69++;
                                ot1Var11 = ot1VarArr8[i68];
                                iU4 = ki3Var.U(ot1Var11, i8);
                                i71 = i53;
                                i72 = i68;
                                if (ot1Var11.p0[0] == 3) {
                                    i58++;
                                }
                                int i811 = i58;
                                if (i70 != i8) {
                                }
                                if (!z8) {
                                    z8 = true;
                                }
                                if (z8) {
                                    i73 = size4;
                                    i53 = i71;
                                    i74 = i72;
                                    ii3Var5 = new ii3(ki3Var, i53, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                    ii3Var5.n = i74;
                                    arrayList.add(ii3Var5);
                                    i69 = 1;
                                } else {
                                    i73 = size4;
                                    i53 = i71;
                                    i74 = i72;
                                    if (i74 > 0) {
                                        i70 = ki3Var.P0 + iU4 + i70;
                                    }
                                    ii3Var5.a(ot1Var11);
                                    i68 = i74 + 1;
                                    i58 = i811;
                                    size4 = i73;
                                }
                                i70 = iU4;
                                ii3Var5.a(ot1Var11);
                                i68 = i74 + 1;
                                i58 = i811;
                                size4 = i73;
                            }
                            i19 = size4;
                        } else {
                            i19 = size4;
                            i54 = 0;
                            i55 = 0;
                            i56 = 0;
                            i57 = 0;
                            while (i54 < i52) {
                                i55++;
                                ot1Var10 = ot1VarArr8[i54];
                                iT4 = ki3Var.T(ot1Var10, i8);
                                i59 = i53;
                                if (ot1Var10.p0[1] == 3) {
                                    i56++;
                                }
                                int i812 = i56;
                                if (i57 != i8) {
                                }
                                if (!z6) {
                                    z6 = true;
                                }
                                if (z6) {
                                    i53 = i59;
                                    ii3Var5 = new ii3(ki3Var, i53, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                    ii3Var5.n = i54;
                                    arrayList.add(ii3Var5);
                                    i55 = 1;
                                } else {
                                    i53 = i59;
                                    if (i54 > 0) {
                                        i57 = ki3Var.Q0 + iT4 + i57;
                                    }
                                    ii3Var5.a(ot1Var10);
                                    i54++;
                                    i56 = i812;
                                }
                                i57 = iT4;
                                ii3Var5.a(ot1Var10);
                                i54++;
                                i56 = i812;
                            }
                            i58 = i56;
                        }
                        size2 = arrayList.size();
                        int i813 = ki3Var.w0;
                        int i814 = ki3Var.s0;
                        int i815 = ki3Var.x0;
                        int i816 = ki3Var.t0;
                        if (iArr3[0] != 2) {
                            z7 = true;
                        } else {
                            z7 = true;
                        }
                        if (i58 > 0) {
                            while (i67 < size2) {
                                ii3Var7 = (ii3) arrayList.get(i67);
                                if (i53 == 0) {
                                    ii3Var7.e(i8 - ii3Var7.d());
                                } else {
                                    ii3Var7.e(i8 - ii3Var7.c());
                                }
                            }
                        }
                        i61 = i813;
                        i62 = i814;
                        i63 = i815;
                        i64 = i816;
                        ys1Var8 = ys1Var;
                        ys1Var9 = ys1Var2;
                        ys1Var10 = ys1Var3;
                        ys1Var11 = ys1Var15;
                        iMax2 = 0;
                        i66 = 0;
                        while (i65 < size2) {
                            ii3Var6 = (ii3) arrayList.get(i65);
                            if (i53 == 0) {
                                if (i65 < size2 - 1) {
                                    ys1Var10 = ((ii3) arrayList.get(i65 + 1)).b.J;
                                    i64 = 0;
                                } else {
                                    i64 = ki3Var.t0;
                                    ys1Var10 = ys1Var3;
                                }
                                ys1 ys1Var110 = ii3Var6.b.L;
                                ii3Var6.f(i53, ys1Var8, ys1Var11, ys1Var9, ys1Var10, i61, i62, i63, i64, i8);
                                iMax2 = Math.max(iMax2, ii3Var6.d());
                                iC2 = ii3Var6.c() + i66;
                                if (i65 > 0) {
                                    iC2 += ki3Var.Q0;
                                }
                                i66 = iC2;
                                ys1Var11 = ys1Var110;
                                i62 = 0;
                            } else {
                                if (i65 < size2 - 1) {
                                    ys1Var9 = ((ii3) arrayList.get(i65 + 1)).b.I;
                                    i63 = 0;
                                } else {
                                    i63 = ki3Var.x0;
                                    ys1Var9 = ys1Var2;
                                }
                                ys1 ys1Var23 = ii3Var6.b.K;
                                ii3Var6.f(i53, ys1Var8, ys1Var11, ys1Var9, ys1Var10, i61, i62, i63, i64, i8);
                                iD2 = ii3Var6.d() + iMax2;
                                int iMax5 = Math.max(i66, ii3Var6.c());
                                if (i65 > 0) {
                                    iD2 += ki3Var.P0;
                                }
                                i66 = iMax5;
                                iMax2 = iD2;
                                ys1Var8 = ys1Var23;
                                i61 = 0;
                            }
                        }
                        iArr2[0] = iMax2;
                        iArr2[1] = i66;
                    }
                    c2 = c3;
                }
                c = 0;
                i22 = iArr2[c] + i3 + i10;
                i23 = iArr2[c2] + i14 + i18;
                if (mode != 1073741824) {
                    if (mode == Integer.MIN_VALUE) {
                        size3 = Math.min(i22, size3);
                    } else if (mode == 0) {
                        size3 = i22;
                    } else {
                        size3 = 0;
                    }
                }
                if (mode2 == 1073741824) {
                    iMin = i19;
                } else if (mode2 == Integer.MIN_VALUE) {
                    iMin = Math.min(i23, i19);
                } else if (mode2 == 0) {
                    iMin = i23;
                } else {
                    iMin = 0;
                }
                ki3Var.z0 = size3;
                ki3Var.A0 = iMin;
                ki3Var.O(size3);
                ki3Var.L(iMin);
                if (ki3Var.r0 > 0) {
                    z = c2;
                } else {
                    z = 0;
                }
                ki3Var.y0 = z;
            } else {
                i18 = i5;
                iArr2 = iArr;
                i19 = size4;
                i3 = i3;
                i10 = i10;
                i14 = i14;
                i24 = i15;
                ot1VarArr4 = ot1VarArr2;
                i25 = ki3Var.V0;
                if (i24 != 0) {
                    arrayList.clear();
                    ii3Var2 = new ii3(ki3Var, i25, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                    arrayList.add(ii3Var2);
                    if (i25 == 0) {
                        i37 = 0;
                        i27 = 0;
                        i38 = 0;
                        while (i37 < i24) {
                            ot1Var2 = ot1VarArr4[i37];
                            iU = ki3Var.U(ot1Var2, i8);
                            if (ot1Var2.p0[0] == 3) {
                                i27++;
                            }
                            int i817 = i27;
                            if (i38 != i8) {
                            }
                            if (!z4) {
                                z4 = true;
                            }
                            if (z4) {
                                ii3Var2 = new ii3(ki3Var, i25, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                ii3Var2.n = i37;
                                arrayList.add(ii3Var2);
                            } else {
                                if (i37 > 0) {
                                    i38 = ki3Var.P0 + iU + i38;
                                }
                                ii3Var2.a(ot1Var2);
                                i37++;
                                i27 = i817;
                            }
                            i38 = iU;
                            ii3Var2.a(ot1Var2);
                            i37++;
                            i27 = i817;
                        }
                    } else {
                        i26 = 0;
                        i27 = 0;
                        i28 = 0;
                        while (i26 < i24) {
                            ot1Var = ot1VarArr4[i26];
                            iT = ki3Var.T(ot1Var, i8);
                            if (ot1Var.p0[1] == 3) {
                                i27++;
                            }
                            int i818 = i27;
                            if (i28 != i8) {
                            }
                            if (!z2) {
                                z2 = true;
                            }
                            if (z2) {
                                ii3Var2 = new ii3(ki3Var, i25, ki3Var.I, ki3Var.J, ki3Var.K, ki3Var.L, i8);
                                ii3Var2.n = i26;
                                arrayList.add(ii3Var2);
                            } else {
                                if (i26 > 0) {
                                    i28 = ki3Var.Q0 + iT + i28;
                                }
                                ii3Var2.a(ot1Var);
                                i26++;
                                i27 = i818;
                            }
                            i28 = iT;
                            ii3Var2.a(ot1Var);
                            i26++;
                            i27 = i818;
                        }
                    }
                    size = arrayList.size();
                    int i819 = ki3Var.w0;
                    int i93 = ki3Var.s0;
                    int i94 = ki3Var.x0;
                    int i95 = ki3Var.t0;
                    if (iArr3[0] != 2) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (i27 > 0) {
                        while (i36 < size) {
                            ii3Var4 = (ii3) arrayList.get(i36);
                            if (i25 == 0) {
                                ii3Var4.e(i8 - ii3Var4.d());
                            } else {
                                ii3Var4.e(i8 - ii3Var4.c());
                            }
                        }
                    }
                    i30 = i819;
                    i31 = i93;
                    i32 = i94;
                    i33 = i95;
                    ys1Var4 = ys1Var;
                    ys1Var5 = ys1Var2;
                    ys1Var6 = ys1Var3;
                    ys1Var7 = ys1Var15;
                    iMax = 0;
                    i35 = 0;
                    while (i34 < size) {
                        ii3Var3 = (ii3) arrayList.get(i34);
                        if (i25 == 0) {
                            if (i34 < size - 1) {
                                ys1Var6 = ((ii3) arrayList.get(i34 + 1)).b.J;
                                i33 = 0;
                            } else {
                                i33 = ki3Var.t0;
                                ys1Var6 = ys1Var3;
                            }
                            ys1 ys1Var24 = ii3Var3.b.L;
                            ii3Var3.f(i25, ys1Var4, ys1Var7, ys1Var5, ys1Var6, i30, i31, i32, i33, i8);
                            iMax = Math.max(iMax, ii3Var3.d());
                            iC = ii3Var3.c() + i35;
                            if (i34 > 0) {
                                iC += ki3Var.Q0;
                            }
                            i35 = iC;
                            ys1Var7 = ys1Var24;
                            i31 = 0;
                        } else {
                            if (i34 < size - 1) {
                                ys1Var5 = ((ii3) arrayList.get(i34 + 1)).b.I;
                                i32 = 0;
                            } else {
                                i32 = ki3Var.x0;
                                ys1Var5 = ys1Var2;
                            }
                            ys1 ys1Var25 = ii3Var3.b.K;
                            ii3Var3.f(i25, ys1Var4, ys1Var7, ys1Var5, ys1Var6, i30, i31, i32, i33, i8);
                            iD = ii3Var3.d() + iMax;
                            int iMax6 = Math.max(i35, ii3Var3.c());
                            if (i34 > 0) {
                                iD += ki3Var.P0;
                            }
                            i35 = iMax6;
                            iMax = iD;
                            ys1Var4 = ys1Var25;
                            i30 = 0;
                        }
                    }
                    iArr2[0] = iMax;
                    iArr2[1] = i35;
                }
            }
            c2 = 1;
            c = 0;
            i22 = iArr2[c] + i3 + i10;
            i23 = iArr2[c2] + i14 + i18;
            if (mode != 1073741824) {
                if (mode == Integer.MIN_VALUE) {
                    size3 = Math.min(i22, size3);
                } else if (mode == 0) {
                    size3 = i22;
                } else {
                    size3 = 0;
                }
            }
            if (mode2 == 1073741824) {
                iMin = i19;
            } else if (mode2 == Integer.MIN_VALUE) {
                iMin = Math.min(i23, i19);
            } else if (mode2 == 0) {
                iMin = i23;
            } else {
                iMin = 0;
            }
            ki3Var.z0 = size3;
            ki3Var.A0 = iMin;
            ki3Var.O(size3);
            ki3Var.L(iMin);
            if (ki3Var.r0 > 0) {
                z = c2;
            } else {
                z = 0;
            }
            ki3Var.y0 = z;
        }
        setMeasuredDimension(ki3Var.z0, ki3Var.A0);
    }

    @Override // defpackage.bt1, android.view.View
    public final void onMeasure(int i, int i2) {
        l(this.q, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.q.L0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.q.F0 = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.q.M0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.q.G0 = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.q.R0 = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.q.J0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.q.P0 = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.q.D0 = i;
        requestLayout();
    }

    public void setLastHorizontalBias(float f) {
        this.q.N0 = f;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i) {
        this.q.H0 = i;
        requestLayout();
    }

    public void setLastVerticalBias(float f) {
        this.q.O0 = f;
        requestLayout();
    }

    public void setLastVerticalStyle(int i) {
        this.q.I0 = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.q.U0 = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.q.V0 = i;
        requestLayout();
    }

    public void setPadding(int i) {
        ki3 ki3Var = this.q;
        ki3Var.s0 = i;
        ki3Var.t0 = i;
        ki3Var.u0 = i;
        ki3Var.v0 = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.q.t0 = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.q.w0 = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.q.x0 = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.q.s0 = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.q.S0 = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.q.K0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.q.Q0 = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.q.E0 = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.q.T0 = i;
        requestLayout();
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
