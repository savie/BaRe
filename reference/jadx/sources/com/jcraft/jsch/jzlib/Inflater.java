package com.jcraft.jsch.jzlib;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class Inflater extends ZStream {
    public Inflater(int i, JZlib.WrapperType wrapperType) throws GZIPException {
        boolean z;
        if (wrapperType == JZlib.a) {
            z = true;
        } else {
            if (wrapperType == JZlib.b) {
                i += 16;
            } else if (wrapperType == JZlib.c) {
                i |= 1073741824;
            }
            z = false;
        }
        int iD = d(i, z);
        if (iD == 0) {
            return;
        }
        a.a(iD, this.i);
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0179  */
    /* JADX WARN: Code duplicated, block: B:205:0x03ef A[LOOP:7: B:205:0x03ef->B:208:0x03f4, LOOP_START, PHI: r4 r6 r11 r13 r14
      0x03ef: PHI (r4v29 int) = (r4v26 int), (r4v30 int) binds: [B:204:0x03ed, B:208:0x03f4] A[DONT_GENERATE, DONT_INLINE]
      0x03ef: PHI (r6v24 int) = (r6v23 int), (r6v25 int) binds: [B:204:0x03ed, B:208:0x03f4] A[DONT_GENERATE, DONT_INLINE]
      0x03ef: PHI (r11v28 int) = (r11v26 int), (r11v29 int) binds: [B:204:0x03ed, B:208:0x03f4] A[DONT_GENERATE, DONT_INLINE]
      0x03ef: PHI (r13v22 int) = (r13v21 int), (r13v24 int) binds: [B:204:0x03ed, B:208:0x03f4] A[DONT_GENERATE, DONT_INLINE]
      0x03ef: PHI (r14v25 int) = (r14v24 int), (r14v27 int) binds: [B:204:0x03ed, B:208:0x03f4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:207:0x03f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:208:0x03f4 A[LOOP:7: B:205:0x03ef->B:208:0x03f4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:214:0x043d A[LOOP:8: B:212:0x0437->B:214:0x043d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:217:0x0480  */
    /* JADX WARN: Code duplicated, block: B:218:0x0487  */
    /* JADX WARN: Code duplicated, block: B:228:0x049e  */
    /* JADX WARN: Code duplicated, block: B:230:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:235:0x0519  */
    /* JADX WARN: Code duplicated, block: B:237:0x051d  */
    /* JADX WARN: Code duplicated, block: B:238:0x0523  */
    /* JADX WARN: Code duplicated, block: B:240:0x0548  */
    /* JADX WARN: Code duplicated, block: B:242:0x054d  */
    /* JADX WARN: Code duplicated, block: B:247:0x0557  */
    /* JADX WARN: Code duplicated, block: B:249:0x055b  */
    /* JADX WARN: Code duplicated, block: B:250:0x0560  */
    /* JADX WARN: Code duplicated, block: B:252:0x0563  */
    /* JADX WARN: Code duplicated, block: B:255:0x056a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:256:0x056c  */
    /* JADX WARN: Code duplicated, block: B:257:0x0571  */
    /* JADX WARN: Code duplicated, block: B:259:0x0578  */
    /* JADX WARN: Code duplicated, block: B:260:0x057d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:261:0x057f  */
    /* JADX WARN: Code duplicated, block: B:264:0x0588  */
    /* JADX WARN: Code duplicated, block: B:267:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:271:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:273:0x060c  */
    /* JADX WARN: Code duplicated, block: B:274:0x0611  */
    /* JADX WARN: Code duplicated, block: B:277:0x0619  */
    /* JADX WARN: Code duplicated, block: B:283:0x063f  */
    /* JADX WARN: Code duplicated, block: B:284:0x0659  */
    /* JADX WARN: Code duplicated, block: B:286:0x0678  */
    /* JADX WARN: Code duplicated, block: B:288:0x0688 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:289:0x068a A[LOOP:3: B:287:0x0686->B:289:0x068a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:293:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:294:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:296:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:297:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:299:0x06f6  */
    /* JADX WARN: Code duplicated, block: B:300:0x06f9  */
    /* JADX WARN: Code duplicated, block: B:303:0x06ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:304:0x0701 A[LOOP:4: B:301:0x06fb->B:304:0x0701, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:308:0x074d  */
    /* JADX WARN: Code duplicated, block: B:33:0x008d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    /* JADX WARN: Code duplicated, block: B:414:0x09ba  */
    /* JADX WARN: Code duplicated, block: B:418:0x09e2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:422:0x0a0f  */
    /* JADX WARN: Code duplicated, block: B:426:0x0a3c  */
    /* JADX WARN: Code duplicated, block: B:428:0x0a5c  */
    /* JADX WARN: Code duplicated, block: B:431:0x0a7f  */
    /* JADX WARN: Code duplicated, block: B:435:0x0a8b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:452:0x0ac4  */
    /* JADX WARN: Code duplicated, block: B:454:0x0aca  */
    /* JADX WARN: Code duplicated, block: B:470:0x0b6c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:471:0x0b6d  */
    /* JADX WARN: Code duplicated, block: B:474:0x0b95 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:475:0x0b96  */
    /* JADX WARN: Code duplicated, block: B:478:0x0bc3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:479:0x0bc4  */
    /* JADX WARN: Code duplicated, block: B:482:0x0bf1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:483:0x0bf2  */
    /* JADX WARN: Code duplicated, block: B:491:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:497:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:503:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:505:0x015c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:509:0x00f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:531:0x0121 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:532:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:0x010e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:0x0198 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:537:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:543:0x09b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:544:0x09e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:545:0x0a0e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x0a3b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:548:0x0abd A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00da  */
    /* JADX WARN: Code duplicated, block: B:581:0x0586 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:582:0x05f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:583:0x062e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:0x069b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x0712 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:586:0x0754 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:601:0x0405 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x049b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:0x04dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:610:0x06b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x072c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:0x0437 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x0420 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:0x044c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00fd A[Catch: Return -> 0x011c, TryCatch #9 {Return -> 0x011c, blocks: (B:64:0x00f5, B:66:0x00fd, B:68:0x010e, B:69:0x0114), top: B:509:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0125  */
    /* JADX WARN: Code duplicated, block: B:81:0x0139 A[Catch: Return -> 0x0146, TryCatch #0 {Return -> 0x0146, blocks: (B:79:0x0132, B:81:0x0139, B:82:0x0141), top: B:491:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x014b  */
    /* JADX WARN: Code duplicated, block: B:88:0x014f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0163 A[Catch: Return -> 0x0170, TryCatch #7 {Return -> 0x0170, blocks: (B:92:0x015c, B:94:0x0163, B:95:0x016b), top: B:505:0x015c }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0175  */
    public final int c(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int iA;
        int i8;
        int iA2;
        int[] iArr;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int[] iArr2;
        int i16;
        int iA3;
        int iA4;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int[] iArr3;
        int[] iArr4;
        int iA5;
        int i22;
        byte b;
        int i23;
        int i24;
        int i25;
        InfTree infTree;
        int i26;
        int i27;
        int[] iArr5;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int iA6;
        int i36;
        int iA7;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        long j;
        int i43;
        int i44;
        int i45;
        int i46;
        String str;
        GZIPHeader gZIPHeader;
        GZIPHeader gZIPHeader2;
        GZIPHeader gZIPHeader3;
        GZIPHeader gZIPHeader4;
        GZIPHeader gZIPHeader5;
        byte[] byteArray;
        int length;
        byte[] bArr;
        GZIPHeader gZIPHeader6;
        GZIPHeader gZIPHeader7;
        GZIPHeader gZIPHeader8;
        GZIPHeader gZIPHeader9;
        Inflate inflate = this.k;
        if (inflate == null) {
            return -2;
        }
        ZStream zStream = inflate.g;
        int i47 = 4;
        if (zStream == null || zStream.a == null) {
            return (i == 4 && inflate.a == 14) ? 0 : -2;
        }
        int i48 = i == 4 ? -5 : 0;
        int iA8 = -5;
        while (true) {
            int i49 = 10;
            int i50 = 6;
            int i51 = -3;
            switch (inflate.a) {
                case 2:
                    i2 = i48;
                    i46 = zStream.c;
                    if (i46 == 0) {
                        return iA8;
                    }
                    zStream.c = i46 - 1;
                    zStream.d++;
                    byte[] bArr2 = zStream.a;
                    int i52 = zStream.b;
                    zStream.b = i52 + 1;
                    inflate.c = ((long) ((bArr2[i52] & 255) << 24)) & 4278190080L;
                    inflate.a = 3;
                    iA8 = i2;
                    i45 = zStream.c;
                    if (i45 == 0) {
                        return iA8;
                    }
                    zStream.c = i45 - 1;
                    zStream.d++;
                    long j2 = inflate.c;
                    byte[] bArr3 = zStream.a;
                    int i53 = zStream.b;
                    zStream.b = i53 + 1;
                    inflate.c = j2 + (((long) ((bArr3[i53] & 255) << 16)) & 16711680);
                    inflate.a = 4;
                    iA8 = i2;
                    i44 = zStream.c;
                    if (i44 == 0) {
                        return iA8;
                    }
                    zStream.c = i44 - 1;
                    zStream.d++;
                    long j3 = inflate.c;
                    byte[] bArr4 = zStream.a;
                    int i54 = zStream.b;
                    zStream.b = i54 + 1;
                    inflate.c = j3 + (((long) ((bArr4[i54] & 255) << 8)) & 65280);
                    inflate.a = 5;
                    i3 = i2;
                    i43 = zStream.c;
                    if (i43 == 0) {
                        return i3;
                    }
                    zStream.c = i43 - 1;
                    zStream.d++;
                    long j4 = inflate.c;
                    byte[] bArr5 = zStream.a;
                    int i55 = zStream.b;
                    zStream.b = i55 + 1;
                    long j5 = j4 + (((long) bArr5[i55]) & 255);
                    inflate.c = j5;
                    zStream.l.reset(j5);
                    inflate.a = 6;
                    return 2;
                case 3:
                    i2 = i48;
                    i45 = zStream.c;
                    if (i45 == 0) {
                        return iA8;
                    }
                    zStream.c = i45 - 1;
                    zStream.d++;
                    long j6 = inflate.c;
                    byte[] bArr6 = zStream.a;
                    int i56 = zStream.b;
                    zStream.b = i56 + 1;
                    inflate.c = j6 + (((long) ((bArr6[i56] & 255) << 16)) & 16711680);
                    inflate.a = 4;
                    iA8 = i2;
                    i44 = zStream.c;
                    if (i44 == 0) {
                        return iA8;
                    }
                    zStream.c = i44 - 1;
                    zStream.d++;
                    long j7 = inflate.c;
                    byte[] bArr7 = zStream.a;
                    int i57 = zStream.b;
                    zStream.b = i57 + 1;
                    inflate.c = j7 + (((long) ((bArr7[i57] & 255) << 8)) & 65280);
                    inflate.a = 5;
                    i3 = i2;
                    i43 = zStream.c;
                    if (i43 == 0) {
                        return i3;
                    }
                    zStream.c = i43 - 1;
                    zStream.d++;
                    long j8 = inflate.c;
                    byte[] bArr8 = zStream.a;
                    int i58 = zStream.b;
                    zStream.b = i58 + 1;
                    long j9 = j8 + (((long) bArr8[i58]) & 255);
                    inflate.c = j9;
                    zStream.l.reset(j9);
                    inflate.a = 6;
                    return 2;
                case 4:
                    i2 = i48;
                    i44 = zStream.c;
                    if (i44 == 0) {
                        return iA8;
                    }
                    zStream.c = i44 - 1;
                    zStream.d++;
                    long j10 = inflate.c;
                    byte[] bArr9 = zStream.a;
                    int i59 = zStream.b;
                    zStream.b = i59 + 1;
                    inflate.c = j10 + (((long) ((bArr9[i59] & 255) << 8)) & 65280);
                    inflate.a = 5;
                    i3 = i2;
                    i43 = zStream.c;
                    if (i43 == 0) {
                        return i3;
                    }
                    zStream.c = i43 - 1;
                    zStream.d++;
                    long j11 = inflate.c;
                    byte[] bArr10 = zStream.a;
                    int i510 = zStream.b;
                    zStream.b = i510 + 1;
                    long j12 = j11 + (((long) bArr10[i510]) & 255);
                    inflate.c = j12;
                    zStream.l.reset(j12);
                    inflate.a = 6;
                    return 2;
                case 5:
                    i3 = iA8;
                    i43 = zStream.c;
                    if (i43 == 0) {
                        return i3;
                    }
                    zStream.c = i43 - 1;
                    zStream.d++;
                    long j13 = inflate.c;
                    byte[] bArr11 = zStream.a;
                    int i511 = zStream.b;
                    zStream.b = i511 + 1;
                    long j14 = j13 + (((long) bArr11[i511]) & 255);
                    inflate.c = j14;
                    zStream.l.reset(j14);
                    inflate.a = 6;
                    return 2;
                case 6:
                    inflate.a = 13;
                    zStream.i = "need dictionary";
                    return -2;
                case 7:
                    InfBlocks infBlocks = inflate.f;
                    int[] iArr6 = infBlocks.m;
                    int[] iArr7 = infBlocks.l;
                    InfTree infTree2 = infBlocks.x;
                    int[] iArr8 = infBlocks.f;
                    InfCodes infCodes = infBlocks.n;
                    int[] iArr9 = infBlocks.i;
                    int[] iArr10 = infBlocks.h;
                    int[] iArr11 = infBlocks.g;
                    int i60 = infBlocks.t;
                    ZStream zStream2 = infBlocks.y;
                    int i61 = zStream2.b;
                    int i62 = zStream2.c;
                    int i63 = infBlocks.q;
                    int i64 = infBlocks.p;
                    int i65 = infBlocks.v;
                    int i66 = infBlocks.u;
                    int i67 = i65 < i66 ? (i66 - i65) - 1 : i60 - i65;
                    int i68 = i61;
                    int[] iArr12 = iArr8;
                    int[] iArr13 = iArr11;
                    int i69 = i63;
                    int i70 = i64;
                    int i71 = iA8;
                    int i72 = i65;
                    int i73 = i62;
                    while (true) {
                        switch (infBlocks.a) {
                            case 0:
                                i4 = i48;
                                InfTree infTree3 = infTree2;
                                int i74 = i60;
                                int[] iArr14 = iArr13;
                                int[] iArr15 = iArr12;
                                int i75 = i71;
                                while (true) {
                                    if (i70 >= 3) {
                                        infBlocks.o = i69 & 1;
                                        int i76 = (i69 & 7) >>> 1;
                                        if (i76 == 0) {
                                            i7 = i49;
                                            int i77 = i70 - 3;
                                            int i78 = i77 & 7;
                                            i69 = (i69 >>> 3) >>> i78;
                                            i70 = i77 - i78;
                                            infBlocks.a = 1;
                                        } else if (i76 == 1) {
                                            int[][] iArr16 = infBlocks.j;
                                            int[][] iArr17 = infBlocks.k;
                                            iArr10[0] = 9;
                                            iArr9[0] = 5;
                                            iArr16[0] = InfTree.g;
                                            int[] iArr18 = InfTree.h;
                                            iArr17[0] = iArr18;
                                            int i79 = iArr10[0];
                                            int[] iArr19 = iArr16[0];
                                            infCodes.a = 0;
                                            infCodes.i = (byte) i79;
                                            infCodes.j = (byte) 5;
                                            infCodes.k = iArr19;
                                            infCodes.l = 0;
                                            infCodes.m = iArr18;
                                            infCodes.n = 0;
                                            i7 = 10;
                                            infCodes.c = null;
                                            i69 >>>= 3;
                                            i70 -= 3;
                                            infBlocks.a = 6;
                                        } else if (i76 == 2) {
                                            i69 >>>= 3;
                                            i70 -= 3;
                                            infBlocks.a = 3;
                                            i7 = i49;
                                        } else if (i76 == 3) {
                                            infBlocks.a = 9;
                                            zStream2.i = "invalid block type";
                                            infBlocks.q = i69 >>> 3;
                                            infBlocks.p = i70 - 3;
                                            zStream2.c = i73;
                                            zStream2.d += (long) (i68 - zStream2.b);
                                            zStream2.b = i68;
                                            infBlocks.v = i72;
                                            i6 = -3;
                                            iA8 = infBlocks.a(-3);
                                        } else {
                                            i7 = i49;
                                        }
                                        i49 = i7;
                                        i71 = i75;
                                        infTree2 = infTree3;
                                        i60 = i74;
                                        i48 = i4;
                                        iArr12 = iArr15;
                                        iArr13 = iArr14;
                                        i50 = 6;
                                        i51 = -3;
                                        break;
                                    } else if (i73 == 0) {
                                        infBlocks.q = i69;
                                        infBlocks.p = i70;
                                        zStream2.c = i73;
                                        zStream2.d += (long) (i68 - zStream2.b);
                                        zStream2.b = i68;
                                        infBlocks.v = i72;
                                        iA = infBlocks.a(i75);
                                        iA8 = iA;
                                        i6 = -3;
                                    } else {
                                        i73--;
                                        i69 |= (zStream2.a[i68] & 255) << i70;
                                        i70 += 8;
                                        i68++;
                                        i75 = 0;
                                    }
                                    break;
                                }
                                break;
                            case 1:
                                i4 = i48;
                                InfTree infTree4 = infTree2;
                                int i80 = i60;
                                int[] iArr20 = iArr13;
                                int[] iArr21 = iArr12;
                                while (true) {
                                    if (i70 >= 32) {
                                        int i81 = i69 & 65535;
                                        if ((((~i69) >>> 16) & 65535) != i81) {
                                            infBlocks.a = 9;
                                            zStream2.i = "invalid stored block lengths";
                                            infBlocks.q = i69;
                                            infBlocks.p = i70;
                                            zStream2.c = i73;
                                            zStream2.d += (long) (i68 - zStream2.b);
                                            zStream2.b = i68;
                                            infBlocks.v = i72;
                                            i8 = -3;
                                            iA2 = infBlocks.a(-3);
                                            iA8 = iA2;
                                            i6 = i8;
                                        } else {
                                            infBlocks.b = i81;
                                            infBlocks.a = i81 != 0 ? 2 : infBlocks.o != 0 ? 7 : 0;
                                            i60 = i80;
                                            infTree2 = infTree4;
                                            i48 = i4;
                                            iArr12 = iArr21;
                                            iArr13 = iArr20;
                                            i69 = 0;
                                            i70 = 0;
                                            i50 = 6;
                                            i51 = -3;
                                        }
                                    } else if (i73 == 0) {
                                        infBlocks.q = i69;
                                        infBlocks.p = i70;
                                        zStream2.c = i73;
                                        zStream2.d += (long) (i68 - zStream2.b);
                                        zStream2.b = i68;
                                        infBlocks.v = i72;
                                        iA = infBlocks.a(i71);
                                        iA8 = iA;
                                        i6 = -3;
                                    } else {
                                        i73--;
                                        i69 |= (zStream2.a[i68] & 255) << i70;
                                        i70 += 8;
                                        i68++;
                                        i71 = 0;
                                    }
                                    break;
                                }
                                break;
                            case 2:
                                i4 = i48;
                                InfTree infTree5 = infTree2;
                                int i82 = i60;
                                iArr13 = iArr13;
                                iArr = iArr12;
                                if (i73 != 0) {
                                    if (i67 == 0) {
                                        if (i72 == i82 && (i9 = infBlocks.u) != 0) {
                                            i67 = i9 > 0 ? i9 - 1 : i82;
                                            i72 = 0;
                                        }
                                        if (i67 == 0) {
                                            infBlocks.v = i72;
                                            int iA9 = infBlocks.a(i71);
                                            int i83 = infBlocks.v;
                                            int i84 = infBlocks.u;
                                            int i85 = i83 < i84 ? (i84 - i83) - 1 : i82 - i83;
                                            if (i83 != i82 || i84 == 0) {
                                                i67 = i85;
                                            } else {
                                                i67 = i84 > 0 ? i84 - 1 : i82;
                                                i83 = 0;
                                            }
                                            if (i67 == 0) {
                                                infBlocks.q = i69;
                                                infBlocks.p = i70;
                                                zStream2.c = i73;
                                                zStream2.d += (long) (i68 - zStream2.b);
                                                zStream2.b = i68;
                                                infBlocks.v = i83;
                                                iA = infBlocks.a(iA9);
                                            } else {
                                                i72 = i83;
                                            }
                                        }
                                    }
                                    int i86 = i67;
                                    int i87 = infBlocks.b;
                                    if (i87 > i73) {
                                        i87 = i73;
                                    }
                                    if (i87 > i86) {
                                        i87 = i86;
                                    }
                                    System.arraycopy(zStream2.a, i68, infBlocks.s, i72, i87);
                                    i68 += i87;
                                    i73 -= i87;
                                    i72 += i87;
                                    i67 = i86 - i87;
                                    int i88 = infBlocks.b - i87;
                                    infBlocks.b = i88;
                                    if (i88 == 0) {
                                        infBlocks.a = infBlocks.o != 0 ? 7 : 0;
                                    }
                                    i60 = i82;
                                    infTree2 = infTree5;
                                    i48 = i4;
                                    iArr12 = iArr;
                                    iArr13 = iArr13;
                                    i71 = 0;
                                    i50 = 6;
                                    i51 = -3;
                                } else {
                                    infBlocks.q = i69;
                                    infBlocks.p = i70;
                                    zStream2.c = i73;
                                    zStream2.d += (long) (i68 - zStream2.b);
                                    zStream2.b = i68;
                                    infBlocks.v = i72;
                                    iA = infBlocks.a(i71);
                                }
                                iA8 = iA;
                                i6 = -3;
                                break;
                            case 3:
                                while (true) {
                                    if (i70 >= 14) {
                                        int i89 = i69 & 16383;
                                        infBlocks.c = i89;
                                        int i90 = i71;
                                        int i91 = i69 & 31;
                                        if (i91 <= 29) {
                                            i4 = i48;
                                            int i92 = (i89 >> 5) & 31;
                                            if (i92 > 29) {
                                                i10 = 9;
                                            } else {
                                                int i93 = i91 + 258 + i92;
                                                int[] iArr22 = infBlocks.e;
                                                if (iArr22 == null || iArr22.length < i93) {
                                                    infBlocks.e = new int[i93];
                                                } else {
                                                    for (int i94 = 0; i94 < i93; i94++) {
                                                        infBlocks.e[i94] = 0;
                                                    }
                                                }
                                                infBlocks.d = 0;
                                                infBlocks.a = 4;
                                                i11 = i70 - 14;
                                                i12 = i69 >>> 14;
                                                i13 = i90;
                                                while (true) {
                                                    i14 = infBlocks.d;
                                                    i15 = (infBlocks.c >>> 10) + 4;
                                                    iArr2 = InfBlocks.A;
                                                    if (i14 < i15) {
                                                        while (true) {
                                                            i16 = infBlocks.d;
                                                            if (i16 < 19) {
                                                                iArr12[0] = 7;
                                                                int[] iArr23 = infBlocks.e;
                                                                int[] iArr24 = infBlocks.r;
                                                                infTree2.b(19);
                                                                int[] iArr25 = infTree2.a;
                                                                iArr25[0] = 0;
                                                                iA3 = infTree2.a(iArr23, 0, 19, 19, null, null, iArr13, iArr12, iArr24, iArr25, infTree2.b);
                                                                iArr = iArr12;
                                                                if (iA3 == -3) {
                                                                    zStream2.i = "oversubscribed dynamic bit lengths tree";
                                                                } else if (iA3 != -5 || iArr[0] == 0) {
                                                                    zStream2.i = "incomplete dynamic bit lengths tree";
                                                                    iA3 = -3;
                                                                }
                                                                if (iA3 != 0) {
                                                                    infBlocks.d = 0;
                                                                    infBlocks.a = 5;
                                                                    while (true) {
                                                                        int i95 = infBlocks.c;
                                                                        i17 = i95 & 31;
                                                                        i18 = i13;
                                                                        i19 = (i95 >> 5) & 31;
                                                                        if (infBlocks.d >= i17 + 258 + i19) {
                                                                            iArr13[0] = -1;
                                                                            iArr10[0] = 9;
                                                                            iArr9[0] = i50;
                                                                            i20 = i17 + 257;
                                                                            i21 = i19 + 1;
                                                                            iArr3 = infBlocks.e;
                                                                            iArr4 = infBlocks.r;
                                                                            infTree2.b(288);
                                                                            int[] iArr26 = infTree2.a;
                                                                            iArr26[0] = 0;
                                                                            iA5 = infTree2.a(iArr3, 0, i20, 257, InfTree.i, InfTree.j, iArr7, iArr10, iArr4, iArr26, infTree2.b);
                                                                            if (iA5 == 0) {
                                                                                if (iArr10[0] == 0) {
                                                                                    i23 = -3;
                                                                                    i22 = -4;
                                                                                    b = -5;
                                                                                } else {
                                                                                    infTree2.b(288);
                                                                                    infTree2 = infTree2;
                                                                                    iA5 = infTree2.a(iArr3, i20, i21, 0, InfTree.k, InfTree.l, iArr6, iArr9, iArr4, infTree2.a, infTree2.b);
                                                                                    if (iA5 == 0) {
                                                                                        i25 = -4;
                                                                                        if (iArr9[0] == 0 || i20 <= 257) {
                                                                                            iA5 = 0;
                                                                                        }
                                                                                        i23 = -3;
                                                                                        b = -5;
                                                                                    } else {
                                                                                        i25 = -4;
                                                                                    }
                                                                                    if (iA5 == -3) {
                                                                                        zStream2.i = "oversubscribed distance tree";
                                                                                        i23 = -3;
                                                                                        b = -5;
                                                                                    } else {
                                                                                        b = -5;
                                                                                        if (iA5 == -5) {
                                                                                            zStream2.i = "incomplete distance tree";
                                                                                        } else {
                                                                                            if (iA5 != i25) {
                                                                                                zStream2.i = "empty distance tree with lengths";
                                                                                            }
                                                                                            i23 = -3;
                                                                                        }
                                                                                        iA5 = -3;
                                                                                        i23 = -3;
                                                                                    }
                                                                                }
                                                                                if (iA5 != 0) {
                                                                                    if (iA5 == i23) {
                                                                                        infBlocks.e = null;
                                                                                        infBlocks.a = 9;
                                                                                    }
                                                                                    infBlocks.q = i12;
                                                                                    infBlocks.p = i11;
                                                                                    zStream2.c = i73;
                                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                                    zStream2.b = i68;
                                                                                    infBlocks.v = i72;
                                                                                    iA8 = infBlocks.a(iA5);
                                                                                    i6 = -3;
                                                                                    break;
                                                                                } else {
                                                                                    int i96 = iArr10[0];
                                                                                    int i97 = iArr9[0];
                                                                                    int[] iArr27 = infBlocks.r;
                                                                                    int i98 = i73;
                                                                                    int i99 = iArr7[0];
                                                                                    int i100 = i68;
                                                                                    int i101 = iArr6[0];
                                                                                    infCodes.a = 0;
                                                                                    infCodes.i = (byte) i96;
                                                                                    infCodes.j = (byte) i97;
                                                                                    infCodes.k = iArr27;
                                                                                    infCodes.l = i99;
                                                                                    infCodes.m = iArr27;
                                                                                    infCodes.n = i101;
                                                                                    infCodes.c = null;
                                                                                    infBlocks.a = i50;
                                                                                    i69 = i12;
                                                                                    i70 = i11;
                                                                                    i73 = i98;
                                                                                    i68 = i100;
                                                                                    i24 = i18;
                                                                                    infBlocks.q = i69;
                                                                                    infBlocks.p = i70;
                                                                                    zStream2.c = i73;
                                                                                    i36 = i60;
                                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                                    zStream2.b = i68;
                                                                                    infBlocks.v = i72;
                                                                                    iA7 = infCodes.a(i24);
                                                                                    if (iA7 != 1) {
                                                                                        iA4 = infBlocks.a(iA7);
                                                                                    } else {
                                                                                        i68 = zStream2.b;
                                                                                        i37 = zStream2.c;
                                                                                        i69 = infBlocks.q;
                                                                                        i70 = infBlocks.p;
                                                                                        i72 = infBlocks.v;
                                                                                        i38 = infBlocks.u;
                                                                                        if (i72 < i38) {
                                                                                            i67 = (i38 - i72) - 1;
                                                                                        } else {
                                                                                            i67 = i36 - i72;
                                                                                        }
                                                                                        if (infBlocks.o == 0) {
                                                                                            infBlocks.a = 0;
                                                                                            i73 = i37;
                                                                                            infTree2 = infTree2;
                                                                                            i60 = i36;
                                                                                            i48 = i4;
                                                                                            iArr12 = iArr;
                                                                                            iArr13 = iArr13;
                                                                                            i71 = 0;
                                                                                            i50 = 6;
                                                                                            i51 = -3;
                                                                                            break;
                                                                                        } else {
                                                                                            infBlocks.a = 7;
                                                                                            i73 = i37;
                                                                                            i5 = 0;
                                                                                            infBlocks.v = i72;
                                                                                            iA6 = infBlocks.a(i5);
                                                                                            i72 = infBlocks.v;
                                                                                            if (infBlocks.u != i72) {
                                                                                                infBlocks.q = i69;
                                                                                                infBlocks.p = i70;
                                                                                                zStream2.c = i73;
                                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                                zStream2.b = i68;
                                                                                                infBlocks.v = i72;
                                                                                                iA4 = infBlocks.a(iA6);
                                                                                            } else {
                                                                                                infBlocks.a = 8;
                                                                                                infBlocks.q = i69;
                                                                                                infBlocks.p = i70;
                                                                                                zStream2.c = i73;
                                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                                zStream2.b = i68;
                                                                                                infBlocks.v = i72;
                                                                                                iA4 = infBlocks.a(1);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                i22 = -4;
                                                                                b = -5;
                                                                                i23 = -3;
                                                                            }
                                                                            if (iA5 == i23) {
                                                                                zStream2.i = "oversubscribed literal/length tree";
                                                                            } else if (iA5 != i22) {
                                                                                zStream2.i = "incomplete literal/length tree";
                                                                                iA5 = i23;
                                                                            }
                                                                            if (iA5 != 0) {
                                                                                if (iA5 == i23) {
                                                                                    infBlocks.e = null;
                                                                                    infBlocks.a = 9;
                                                                                }
                                                                                infBlocks.q = i12;
                                                                                infBlocks.p = i11;
                                                                                zStream2.c = i73;
                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                zStream2.b = i68;
                                                                                infBlocks.v = i72;
                                                                                iA8 = infBlocks.a(iA5);
                                                                                i6 = -3;
                                                                                break;
                                                                            } else {
                                                                                int i910 = iArr10[0];
                                                                                int i911 = iArr9[0];
                                                                                int[] iArr28 = infBlocks.r;
                                                                                int i912 = i73;
                                                                                int i913 = iArr7[0];
                                                                                int i102 = i68;
                                                                                int i103 = iArr6[0];
                                                                                infCodes.a = 0;
                                                                                infCodes.i = (byte) i910;
                                                                                infCodes.j = (byte) i911;
                                                                                infCodes.k = iArr28;
                                                                                infCodes.l = i913;
                                                                                infCodes.m = iArr28;
                                                                                infCodes.n = i103;
                                                                                infCodes.c = null;
                                                                                infBlocks.a = i50;
                                                                                i69 = i12;
                                                                                i70 = i11;
                                                                                i73 = i912;
                                                                                i68 = i102;
                                                                                i24 = i18;
                                                                                infBlocks.q = i69;
                                                                                infBlocks.p = i70;
                                                                                zStream2.c = i73;
                                                                                i36 = i60;
                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                zStream2.b = i68;
                                                                                infBlocks.v = i72;
                                                                                iA7 = infCodes.a(i24);
                                                                                if (iA7 != 1) {
                                                                                    iA4 = infBlocks.a(iA7);
                                                                                } else {
                                                                                    i68 = zStream2.b;
                                                                                    i37 = zStream2.c;
                                                                                    i69 = infBlocks.q;
                                                                                    i70 = infBlocks.p;
                                                                                    i72 = infBlocks.v;
                                                                                    i38 = infBlocks.u;
                                                                                    if (i72 < i38) {
                                                                                        i67 = (i38 - i72) - 1;
                                                                                    } else {
                                                                                        i67 = i36 - i72;
                                                                                    }
                                                                                    if (infBlocks.o == 0) {
                                                                                        infBlocks.a = 0;
                                                                                        i73 = i37;
                                                                                        infTree2 = infTree2;
                                                                                        i60 = i36;
                                                                                        i48 = i4;
                                                                                        iArr12 = iArr;
                                                                                        iArr13 = iArr13;
                                                                                        i71 = 0;
                                                                                        i50 = 6;
                                                                                        i51 = -3;
                                                                                        break;
                                                                                    } else {
                                                                                        infBlocks.a = 7;
                                                                                        i73 = i37;
                                                                                        i5 = 0;
                                                                                        infBlocks.v = i72;
                                                                                        iA6 = infBlocks.a(i5);
                                                                                        i72 = infBlocks.v;
                                                                                        if (infBlocks.u != i72) {
                                                                                            infBlocks.q = i69;
                                                                                            infBlocks.p = i70;
                                                                                            zStream2.c = i73;
                                                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                                                            zStream2.b = i68;
                                                                                            infBlocks.v = i72;
                                                                                            iA4 = infBlocks.a(iA6);
                                                                                        } else {
                                                                                            infBlocks.a = 8;
                                                                                            infBlocks.q = i69;
                                                                                            infBlocks.p = i70;
                                                                                            zStream2.c = i73;
                                                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                                                            zStream2.b = i68;
                                                                                            infBlocks.v = i72;
                                                                                            iA4 = infBlocks.a(1);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            infTree = infTree2;
                                                                            i26 = i60;
                                                                            i27 = iArr[0];
                                                                            i13 = i18;
                                                                            while (true) {
                                                                                if (i11 >= i27) {
                                                                                    int i104 = iArr13[0];
                                                                                    int[] iArr29 = infBlocks.r;
                                                                                    iArr5 = InfBlocks.z;
                                                                                    i28 = iArr29[(((iArr5[i27] & i12) + i104) * 3) + 1];
                                                                                    i29 = iArr29[((i104 + (i12 & iArr5[i28])) * 3) + 2];
                                                                                    if (i29 < 16) {
                                                                                        int i105 = i12 >>> i28;
                                                                                        i11 -= i28;
                                                                                        int[] iArr30 = infBlocks.e;
                                                                                        int i106 = infBlocks.d;
                                                                                        infBlocks.d = i106 + 1;
                                                                                        iArr30[i106] = i29;
                                                                                        i12 = i105;
                                                                                    } else {
                                                                                        if (i29 == 18) {
                                                                                            i30 = 7;
                                                                                        } else {
                                                                                            i30 = i29 - 14;
                                                                                        }
                                                                                        if (i29 == 18) {
                                                                                            i31 = 11;
                                                                                        } else {
                                                                                            i31 = 3;
                                                                                        }
                                                                                        while (true) {
                                                                                            if (i11 >= i28 + i30) {
                                                                                                int i107 = i12 >>> i28;
                                                                                                int i108 = i11 - i28;
                                                                                                i32 = i31 + (iArr5[i30] & i107);
                                                                                                i33 = i107 >>> i30;
                                                                                                i11 = i108 - i30;
                                                                                                i34 = infBlocks.d;
                                                                                                i35 = infBlocks.c;
                                                                                                if (i34 + i32 <= (i35 & 31) + 258 + ((i35 >> 5) & 31) || (i29 == 16 && i34 < 1)) {
                                                                                                    infBlocks.e = null;
                                                                                                    infBlocks.a = 9;
                                                                                                    zStream2.i = "invalid bit length repeat";
                                                                                                    infBlocks.q = i33;
                                                                                                    infBlocks.p = i11;
                                                                                                    zStream2.c = i73;
                                                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                                                    zStream2.b = i68;
                                                                                                    infBlocks.v = i72;
                                                                                                    iA8 = infBlocks.a(-3);
                                                                                                    i6 = -3;
                                                                                                } else {
                                                                                                    int i109 = i29 == 16 ? infBlocks.e[i34 - 1] : 0;
                                                                                                    while (true) {
                                                                                                        int i110 = i34 + 1;
                                                                                                        infBlocks.e[i34] = i109;
                                                                                                        i32--;
                                                                                                        if (i32 == 0) {
                                                                                                            infBlocks.d = i110;
                                                                                                            i12 = i33;
                                                                                                        } else {
                                                                                                            i34 = i110;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            } else if (i73 != 0) {
                                                                                                i73--;
                                                                                                i12 |= (zStream2.a[i68] & 255) << i11;
                                                                                                i11 += 8;
                                                                                                i68++;
                                                                                                i13 = 0;
                                                                                            } else {
                                                                                                infBlocks.q = i12;
                                                                                                infBlocks.p = i11;
                                                                                                zStream2.c = i73;
                                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                                zStream2.b = i68;
                                                                                                infBlocks.v = i72;
                                                                                                iA4 = infBlocks.a(i13);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    infTree2 = infTree;
                                                                                    i60 = i26;
                                                                                    i50 = 6;
                                                                                } else if (i73 != 0) {
                                                                                    i73--;
                                                                                    i12 |= (zStream2.a[i68] & 255) << i11;
                                                                                    i11 += 8;
                                                                                    i68++;
                                                                                    i13 = 0;
                                                                                } else {
                                                                                    infBlocks.q = i12;
                                                                                    infBlocks.p = i11;
                                                                                    zStream2.c = i73;
                                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                                    zStream2.b = i68;
                                                                                    infBlocks.v = i72;
                                                                                    iA4 = infBlocks.a(i13);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (iA3 == -3) {
                                                                        infBlocks.e = null;
                                                                        infBlocks.a = 9;
                                                                    }
                                                                    infBlocks.q = i12;
                                                                    infBlocks.p = i11;
                                                                    zStream2.c = i73;
                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                    zStream2.b = i68;
                                                                    infBlocks.v = i72;
                                                                    iA4 = infBlocks.a(iA3);
                                                                }
                                                            } else {
                                                                int[] iArr31 = infBlocks.e;
                                                                infBlocks.d = i16 + 1;
                                                                iArr31[iArr2[i16]] = 0;
                                                            }
                                                            break;
                                                        }
                                                    } else {
                                                        while (true) {
                                                            if (i11 < 3) {
                                                                int[] iArr32 = infBlocks.e;
                                                                int i111 = infBlocks.d;
                                                                infBlocks.d = i111 + 1;
                                                                iArr32[iArr2[i111]] = i12 & 7;
                                                                i12 >>>= 3;
                                                                i11 -= 3;
                                                            } else if (i73 != 0) {
                                                                i73--;
                                                                i12 |= (zStream2.a[i68] & 255) << i11;
                                                                i11 += 8;
                                                                i68++;
                                                                i13 = 0;
                                                            } else {
                                                                infBlocks.q = i12;
                                                                infBlocks.p = i11;
                                                                zStream2.c = i73;
                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                zStream2.b = i68;
                                                                infBlocks.v = i72;
                                                                iA4 = infBlocks.a(i13);
                                                            }
                                                        }
                                                    }
                                                    iA8 = iA4;
                                                }
                                            }
                                        } else {
                                            i4 = i48;
                                            i10 = 9;
                                        }
                                        infBlocks.a = i10;
                                        zStream2.i = "too many length or distance symbols";
                                        infBlocks.q = i69;
                                        infBlocks.p = i70;
                                        zStream2.c = i73;
                                        zStream2.d += (long) (i68 - zStream2.b);
                                        zStream2.b = i68;
                                        infBlocks.v = i72;
                                        i8 = -3;
                                        iA2 = infBlocks.a(-3);
                                        iA8 = iA2;
                                        i6 = i8;
                                        break;
                                    } else if (i73 != 0) {
                                        i73--;
                                        i69 |= (zStream2.a[i68] & 255) << i70;
                                        i70 += 8;
                                        i68++;
                                        i71 = 0;
                                    } else {
                                        infBlocks.q = i69;
                                        infBlocks.p = i70;
                                        zStream2.c = i73;
                                        zStream2.d += (long) (i68 - zStream2.b);
                                        zStream2.b = i68;
                                        infBlocks.v = i72;
                                        i4 = i48;
                                        iA8 = infBlocks.a(i71);
                                    }
                                    i6 = -3;
                                    break;
                                }
                                break;
                            case 4:
                                i4 = i48;
                                i11 = i70;
                                i12 = i69;
                                i13 = i71;
                                while (true) {
                                    i14 = infBlocks.d;
                                    i15 = (infBlocks.c >>> 10) + 4;
                                    iArr2 = InfBlocks.A;
                                    if (i14 < i15) {
                                        while (true) {
                                            i16 = infBlocks.d;
                                            if (i16 < 19) {
                                                iArr12[0] = 7;
                                                int[] iArr210 = infBlocks.e;
                                                int[] iArr211 = infBlocks.r;
                                                infTree2.b(19);
                                                int[] iArr212 = infTree2.a;
                                                iArr212[0] = 0;
                                                iA3 = infTree2.a(iArr210, 0, 19, 19, null, null, iArr13, iArr12, iArr211, iArr212, infTree2.b);
                                                iArr = iArr12;
                                                if (iA3 == -3) {
                                                    zStream2.i = "oversubscribed dynamic bit lengths tree";
                                                } else {
                                                    if (iA3 != -5) {
                                                        break;
                                                    }
                                                    zStream2.i = "incomplete dynamic bit lengths tree";
                                                    iA3 = -3;
                                                }
                                                if (iA3 != 0) {
                                                    infBlocks.d = 0;
                                                    infBlocks.a = 5;
                                                    while (true) {
                                                        int i914 = infBlocks.c;
                                                        i17 = i914 & 31;
                                                        i18 = i13;
                                                        i19 = (i914 >> 5) & 31;
                                                        if (infBlocks.d >= i17 + 258 + i19) {
                                                            iArr13[0] = -1;
                                                            iArr10[0] = 9;
                                                            iArr9[0] = i50;
                                                            i20 = i17 + 257;
                                                            i21 = i19 + 1;
                                                            iArr3 = infBlocks.e;
                                                            iArr4 = infBlocks.r;
                                                            infTree2.b(288);
                                                            int[] iArr213 = infTree2.a;
                                                            iArr213[0] = 0;
                                                            iA5 = infTree2.a(iArr3, 0, i20, 257, InfTree.i, InfTree.j, iArr7, iArr10, iArr4, iArr213, infTree2.b);
                                                            if (iA5 == 0) {
                                                                if (iArr10[0] == 0) {
                                                                    i23 = -3;
                                                                    i22 = -4;
                                                                    b = -5;
                                                                } else {
                                                                    infTree2.b(288);
                                                                    infTree2 = infTree2;
                                                                    iA5 = infTree2.a(iArr3, i20, i21, 0, InfTree.k, InfTree.l, iArr6, iArr9, iArr4, infTree2.a, infTree2.b);
                                                                    if (iA5 == 0) {
                                                                        i25 = -4;
                                                                        if (iArr9[0] == 0) {
                                                                        }
                                                                        iA5 = 0;
                                                                        i23 = -3;
                                                                        b = -5;
                                                                    } else {
                                                                        i25 = -4;
                                                                    }
                                                                    if (iA5 == -3) {
                                                                        zStream2.i = "oversubscribed distance tree";
                                                                        i23 = -3;
                                                                        b = -5;
                                                                    } else {
                                                                        b = -5;
                                                                        if (iA5 == -5) {
                                                                            zStream2.i = "incomplete distance tree";
                                                                        } else {
                                                                            if (iA5 != i25) {
                                                                                zStream2.i = "empty distance tree with lengths";
                                                                            }
                                                                            i23 = -3;
                                                                        }
                                                                        iA5 = -3;
                                                                        i23 = -3;
                                                                    }
                                                                }
                                                                if (iA5 != 0) {
                                                                    if (iA5 == i23) {
                                                                        infBlocks.e = null;
                                                                        infBlocks.a = 9;
                                                                    }
                                                                    infBlocks.q = i12;
                                                                    infBlocks.p = i11;
                                                                    zStream2.c = i73;
                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                    zStream2.b = i68;
                                                                    infBlocks.v = i72;
                                                                    iA8 = infBlocks.a(iA5);
                                                                    i6 = -3;
                                                                    break;
                                                                } else {
                                                                    int i915 = iArr10[0];
                                                                    int i916 = iArr9[0];
                                                                    int[] iArr214 = infBlocks.r;
                                                                    int i917 = i73;
                                                                    int i918 = iArr7[0];
                                                                    int i1010 = i68;
                                                                    int i1011 = iArr6[0];
                                                                    infCodes.a = 0;
                                                                    infCodes.i = (byte) i915;
                                                                    infCodes.j = (byte) i916;
                                                                    infCodes.k = iArr214;
                                                                    infCodes.l = i918;
                                                                    infCodes.m = iArr214;
                                                                    infCodes.n = i1011;
                                                                    infCodes.c = null;
                                                                    infBlocks.a = i50;
                                                                    i69 = i12;
                                                                    i70 = i11;
                                                                    i73 = i917;
                                                                    i68 = i1010;
                                                                    i24 = i18;
                                                                    infBlocks.q = i69;
                                                                    infBlocks.p = i70;
                                                                    zStream2.c = i73;
                                                                    i36 = i60;
                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                    zStream2.b = i68;
                                                                    infBlocks.v = i72;
                                                                    iA7 = infCodes.a(i24);
                                                                    if (iA7 != 1) {
                                                                        iA4 = infBlocks.a(iA7);
                                                                    } else {
                                                                        i68 = zStream2.b;
                                                                        i37 = zStream2.c;
                                                                        i69 = infBlocks.q;
                                                                        i70 = infBlocks.p;
                                                                        i72 = infBlocks.v;
                                                                        i38 = infBlocks.u;
                                                                        if (i72 < i38) {
                                                                            i67 = (i38 - i72) - 1;
                                                                        } else {
                                                                            i67 = i36 - i72;
                                                                        }
                                                                        if (infBlocks.o == 0) {
                                                                            infBlocks.a = 0;
                                                                            i73 = i37;
                                                                            infTree2 = infTree2;
                                                                            i60 = i36;
                                                                            i48 = i4;
                                                                            iArr12 = iArr;
                                                                            iArr13 = iArr13;
                                                                            i71 = 0;
                                                                            i50 = 6;
                                                                            i51 = -3;
                                                                            break;
                                                                        } else {
                                                                            infBlocks.a = 7;
                                                                            i73 = i37;
                                                                            i5 = 0;
                                                                            infBlocks.v = i72;
                                                                            iA6 = infBlocks.a(i5);
                                                                            i72 = infBlocks.v;
                                                                            if (infBlocks.u != i72) {
                                                                                infBlocks.q = i69;
                                                                                infBlocks.p = i70;
                                                                                zStream2.c = i73;
                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                zStream2.b = i68;
                                                                                infBlocks.v = i72;
                                                                                iA4 = infBlocks.a(iA6);
                                                                            } else {
                                                                                infBlocks.a = 8;
                                                                                infBlocks.q = i69;
                                                                                infBlocks.p = i70;
                                                                                zStream2.c = i73;
                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                zStream2.b = i68;
                                                                                infBlocks.v = i72;
                                                                                iA4 = infBlocks.a(1);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                i22 = -4;
                                                                b = -5;
                                                                i23 = -3;
                                                            }
                                                            if (iA5 == i23) {
                                                                zStream2.i = "oversubscribed literal/length tree";
                                                            } else if (iA5 != i22) {
                                                                zStream2.i = "incomplete literal/length tree";
                                                                iA5 = i23;
                                                            }
                                                            if (iA5 != 0) {
                                                                if (iA5 == i23) {
                                                                    infBlocks.e = null;
                                                                    infBlocks.a = 9;
                                                                }
                                                                infBlocks.q = i12;
                                                                infBlocks.p = i11;
                                                                zStream2.c = i73;
                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                zStream2.b = i68;
                                                                infBlocks.v = i72;
                                                                iA8 = infBlocks.a(iA5);
                                                                i6 = -3;
                                                                break;
                                                            } else {
                                                                int i919 = iArr10[0];
                                                                int i9110 = iArr9[0];
                                                                int[] iArr215 = infBlocks.r;
                                                                int i9111 = i73;
                                                                int i9112 = iArr7[0];
                                                                int i1012 = i68;
                                                                int i1013 = iArr6[0];
                                                                infCodes.a = 0;
                                                                infCodes.i = (byte) i919;
                                                                infCodes.j = (byte) i9110;
                                                                infCodes.k = iArr215;
                                                                infCodes.l = i9112;
                                                                infCodes.m = iArr215;
                                                                infCodes.n = i1013;
                                                                infCodes.c = null;
                                                                infBlocks.a = i50;
                                                                i69 = i12;
                                                                i70 = i11;
                                                                i73 = i9111;
                                                                i68 = i1012;
                                                                i24 = i18;
                                                                infBlocks.q = i69;
                                                                infBlocks.p = i70;
                                                                zStream2.c = i73;
                                                                i36 = i60;
                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                zStream2.b = i68;
                                                                infBlocks.v = i72;
                                                                iA7 = infCodes.a(i24);
                                                                if (iA7 != 1) {
                                                                    iA4 = infBlocks.a(iA7);
                                                                } else {
                                                                    i68 = zStream2.b;
                                                                    i37 = zStream2.c;
                                                                    i69 = infBlocks.q;
                                                                    i70 = infBlocks.p;
                                                                    i72 = infBlocks.v;
                                                                    i38 = infBlocks.u;
                                                                    if (i72 < i38) {
                                                                        i67 = (i38 - i72) - 1;
                                                                    } else {
                                                                        i67 = i36 - i72;
                                                                    }
                                                                    if (infBlocks.o == 0) {
                                                                        infBlocks.a = 0;
                                                                        i73 = i37;
                                                                        infTree2 = infTree2;
                                                                        i60 = i36;
                                                                        i48 = i4;
                                                                        iArr12 = iArr;
                                                                        iArr13 = iArr13;
                                                                        i71 = 0;
                                                                        i50 = 6;
                                                                        i51 = -3;
                                                                        break;
                                                                    } else {
                                                                        infBlocks.a = 7;
                                                                        i73 = i37;
                                                                        i5 = 0;
                                                                        infBlocks.v = i72;
                                                                        iA6 = infBlocks.a(i5);
                                                                        i72 = infBlocks.v;
                                                                        if (infBlocks.u != i72) {
                                                                            infBlocks.q = i69;
                                                                            infBlocks.p = i70;
                                                                            zStream2.c = i73;
                                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                                            zStream2.b = i68;
                                                                            infBlocks.v = i72;
                                                                            iA4 = infBlocks.a(iA6);
                                                                        } else {
                                                                            infBlocks.a = 8;
                                                                            infBlocks.q = i69;
                                                                            infBlocks.p = i70;
                                                                            zStream2.c = i73;
                                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                                            zStream2.b = i68;
                                                                            infBlocks.v = i72;
                                                                            iA4 = infBlocks.a(1);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            break;
                                                        } else {
                                                            infTree = infTree2;
                                                            i26 = i60;
                                                            i27 = iArr[0];
                                                            i13 = i18;
                                                            while (true) {
                                                                if (i11 >= i27) {
                                                                    int i1014 = iArr13[0];
                                                                    int[] iArr216 = infBlocks.r;
                                                                    iArr5 = InfBlocks.z;
                                                                    i28 = iArr216[(((iArr5[i27] & i12) + i1014) * 3) + 1];
                                                                    i29 = iArr216[((i1014 + (i12 & iArr5[i28])) * 3) + 2];
                                                                    if (i29 < 16) {
                                                                        int i1015 = i12 >>> i28;
                                                                        i11 -= i28;
                                                                        int[] iArr33 = infBlocks.e;
                                                                        int i1016 = infBlocks.d;
                                                                        infBlocks.d = i1016 + 1;
                                                                        iArr33[i1016] = i29;
                                                                        i12 = i1015;
                                                                    } else {
                                                                        if (i29 == 18) {
                                                                            i30 = 7;
                                                                        } else {
                                                                            i30 = i29 - 14;
                                                                        }
                                                                        if (i29 == 18) {
                                                                            i31 = 11;
                                                                        } else {
                                                                            i31 = 3;
                                                                        }
                                                                        while (true) {
                                                                            if (i11 >= i28 + i30) {
                                                                                int i1017 = i12 >>> i28;
                                                                                int i1018 = i11 - i28;
                                                                                i32 = i31 + (iArr5[i30] & i1017);
                                                                                i33 = i1017 >>> i30;
                                                                                i11 = i1018 - i30;
                                                                                i34 = infBlocks.d;
                                                                                i35 = infBlocks.c;
                                                                                if (i34 + i32 <= (i35 & 31) + 258 + ((i35 >> 5) & 31)) {
                                                                                }
                                                                                infBlocks.e = null;
                                                                                infBlocks.a = 9;
                                                                                zStream2.i = "invalid bit length repeat";
                                                                                infBlocks.q = i33;
                                                                                infBlocks.p = i11;
                                                                                zStream2.c = i73;
                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                zStream2.b = i68;
                                                                                infBlocks.v = i72;
                                                                                iA8 = infBlocks.a(-3);
                                                                                i6 = -3;
                                                                            } else if (i73 != 0) {
                                                                                i73--;
                                                                                i12 |= (zStream2.a[i68] & 255) << i11;
                                                                                i11 += 8;
                                                                                i68++;
                                                                                i13 = 0;
                                                                            } else {
                                                                                infBlocks.q = i12;
                                                                                infBlocks.p = i11;
                                                                                zStream2.c = i73;
                                                                                zStream2.d += (long) (i68 - zStream2.b);
                                                                                zStream2.b = i68;
                                                                                infBlocks.v = i72;
                                                                                iA4 = infBlocks.a(i13);
                                                                            }
                                                                        }
                                                                    }
                                                                    infTree2 = infTree;
                                                                    i60 = i26;
                                                                    i50 = 6;
                                                                } else if (i73 != 0) {
                                                                    i73--;
                                                                    i12 |= (zStream2.a[i68] & 255) << i11;
                                                                    i11 += 8;
                                                                    i68++;
                                                                    i13 = 0;
                                                                } else {
                                                                    infBlocks.q = i12;
                                                                    infBlocks.p = i11;
                                                                    zStream2.c = i73;
                                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                                    zStream2.b = i68;
                                                                    infBlocks.v = i72;
                                                                    iA4 = infBlocks.a(i13);
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    if (iA3 == -3) {
                                                        infBlocks.e = null;
                                                        infBlocks.a = 9;
                                                    }
                                                    infBlocks.q = i12;
                                                    infBlocks.p = i11;
                                                    zStream2.c = i73;
                                                    zStream2.d += (long) (i68 - zStream2.b);
                                                    zStream2.b = i68;
                                                    infBlocks.v = i72;
                                                    iA4 = infBlocks.a(iA3);
                                                }
                                            } else {
                                                int[] iArr34 = infBlocks.e;
                                                infBlocks.d = i16 + 1;
                                                iArr34[iArr2[i16]] = 0;
                                            }
                                            break;
                                        }
                                    } else {
                                        while (true) {
                                            if (i11 < 3) {
                                                int[] iArr35 = infBlocks.e;
                                                int i112 = infBlocks.d;
                                                infBlocks.d = i112 + 1;
                                                iArr35[iArr2[i112]] = i12 & 7;
                                                i12 >>>= 3;
                                                i11 -= 3;
                                            } else if (i73 != 0) {
                                                i73--;
                                                i12 |= (zStream2.a[i68] & 255) << i11;
                                                i11 += 8;
                                                i68++;
                                                i13 = 0;
                                            } else {
                                                infBlocks.q = i12;
                                                infBlocks.p = i11;
                                                zStream2.c = i73;
                                                zStream2.d += (long) (i68 - zStream2.b);
                                                zStream2.b = i68;
                                                infBlocks.v = i72;
                                                iA4 = infBlocks.a(i13);
                                            }
                                        }
                                    }
                                    iA8 = iA4;
                                    i6 = -3;
                                    break;
                                }
                                break;
                            case 5:
                                i4 = i48;
                                i11 = i70;
                                iArr = iArr12;
                                i12 = i69;
                                i13 = i71;
                                while (true) {
                                    int i9113 = infBlocks.c;
                                    i17 = i9113 & 31;
                                    i18 = i13;
                                    i19 = (i9113 >> 5) & 31;
                                    if (infBlocks.d >= i17 + 258 + i19) {
                                        iArr13[0] = -1;
                                        iArr10[0] = 9;
                                        iArr9[0] = i50;
                                        i20 = i17 + 257;
                                        i21 = i19 + 1;
                                        iArr3 = infBlocks.e;
                                        iArr4 = infBlocks.r;
                                        infTree2.b(288);
                                        int[] iArr217 = infTree2.a;
                                        iArr217[0] = 0;
                                        iA5 = infTree2.a(iArr3, 0, i20, 257, InfTree.i, InfTree.j, iArr7, iArr10, iArr4, iArr217, infTree2.b);
                                        if (iA5 == 0) {
                                            if (iArr10[0] == 0) {
                                                i23 = -3;
                                                i22 = -4;
                                                b = -5;
                                            } else {
                                                infTree2.b(288);
                                                infTree2 = infTree2;
                                                iA5 = infTree2.a(iArr3, i20, i21, 0, InfTree.k, InfTree.l, iArr6, iArr9, iArr4, infTree2.a, infTree2.b);
                                                if (iA5 == 0) {
                                                    i25 = -4;
                                                    if (iArr9[0] == 0) {
                                                    }
                                                    iA5 = 0;
                                                    i23 = -3;
                                                    b = -5;
                                                } else {
                                                    i25 = -4;
                                                }
                                                if (iA5 == -3) {
                                                    zStream2.i = "oversubscribed distance tree";
                                                    i23 = -3;
                                                    b = -5;
                                                } else {
                                                    b = -5;
                                                    if (iA5 == -5) {
                                                        zStream2.i = "incomplete distance tree";
                                                    } else {
                                                        if (iA5 != i25) {
                                                            zStream2.i = "empty distance tree with lengths";
                                                        }
                                                        i23 = -3;
                                                    }
                                                    iA5 = -3;
                                                    i23 = -3;
                                                }
                                            }
                                            if (iA5 != 0) {
                                                if (iA5 == i23) {
                                                    infBlocks.e = null;
                                                    infBlocks.a = 9;
                                                }
                                                infBlocks.q = i12;
                                                infBlocks.p = i11;
                                                zStream2.c = i73;
                                                zStream2.d += (long) (i68 - zStream2.b);
                                                zStream2.b = i68;
                                                infBlocks.v = i72;
                                                iA8 = infBlocks.a(iA5);
                                                i6 = -3;
                                            } else {
                                                int i9114 = iArr10[0];
                                                int i9115 = iArr9[0];
                                                int[] iArr218 = infBlocks.r;
                                                int i9116 = i73;
                                                int i9117 = iArr7[0];
                                                int i1019 = i68;
                                                int i10110 = iArr6[0];
                                                infCodes.a = 0;
                                                infCodes.i = (byte) i9114;
                                                infCodes.j = (byte) i9115;
                                                infCodes.k = iArr218;
                                                infCodes.l = i9117;
                                                infCodes.m = iArr218;
                                                infCodes.n = i10110;
                                                infCodes.c = null;
                                                infBlocks.a = i50;
                                                i69 = i12;
                                                i70 = i11;
                                                i73 = i9116;
                                                i68 = i1019;
                                                i24 = i18;
                                                infBlocks.q = i69;
                                                infBlocks.p = i70;
                                                zStream2.c = i73;
                                                i36 = i60;
                                                zStream2.d += (long) (i68 - zStream2.b);
                                                zStream2.b = i68;
                                                infBlocks.v = i72;
                                                iA7 = infCodes.a(i24);
                                                if (iA7 != 1) {
                                                    iA4 = infBlocks.a(iA7);
                                                } else {
                                                    i68 = zStream2.b;
                                                    i37 = zStream2.c;
                                                    i69 = infBlocks.q;
                                                    i70 = infBlocks.p;
                                                    i72 = infBlocks.v;
                                                    i38 = infBlocks.u;
                                                    if (i72 < i38) {
                                                        i67 = (i38 - i72) - 1;
                                                    } else {
                                                        i67 = i36 - i72;
                                                    }
                                                    if (infBlocks.o == 0) {
                                                        infBlocks.a = 0;
                                                        i73 = i37;
                                                        infTree2 = infTree2;
                                                        i60 = i36;
                                                        i48 = i4;
                                                        iArr12 = iArr;
                                                        iArr13 = iArr13;
                                                        i71 = 0;
                                                        i50 = 6;
                                                        i51 = -3;
                                                        break;
                                                    } else {
                                                        infBlocks.a = 7;
                                                        i73 = i37;
                                                        i5 = 0;
                                                        infBlocks.v = i72;
                                                        iA6 = infBlocks.a(i5);
                                                        i72 = infBlocks.v;
                                                        if (infBlocks.u != i72) {
                                                            infBlocks.q = i69;
                                                            infBlocks.p = i70;
                                                            zStream2.c = i73;
                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                            zStream2.b = i68;
                                                            infBlocks.v = i72;
                                                            iA4 = infBlocks.a(iA6);
                                                        } else {
                                                            infBlocks.a = 8;
                                                            infBlocks.q = i69;
                                                            infBlocks.p = i70;
                                                            zStream2.c = i73;
                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                            zStream2.b = i68;
                                                            infBlocks.v = i72;
                                                            iA4 = infBlocks.a(1);
                                                        }
                                                    }
                                                }
                                                iA8 = iA4;
                                                i6 = -3;
                                            }
                                        } else {
                                            i22 = -4;
                                            b = -5;
                                            i23 = -3;
                                        }
                                        if (iA5 == i23) {
                                            zStream2.i = "oversubscribed literal/length tree";
                                        } else if (iA5 != i22) {
                                            zStream2.i = "incomplete literal/length tree";
                                            iA5 = i23;
                                        }
                                        if (iA5 != 0) {
                                            if (iA5 == i23) {
                                                infBlocks.e = null;
                                                infBlocks.a = 9;
                                            }
                                            infBlocks.q = i12;
                                            infBlocks.p = i11;
                                            zStream2.c = i73;
                                            zStream2.d += (long) (i68 - zStream2.b);
                                            zStream2.b = i68;
                                            infBlocks.v = i72;
                                            iA8 = infBlocks.a(iA5);
                                            i6 = -3;
                                        } else {
                                            int i9118 = iArr10[0];
                                            int i9119 = iArr9[0];
                                            int[] iArr219 = infBlocks.r;
                                            int i91110 = i73;
                                            int i91111 = iArr7[0];
                                            int i10111 = i68;
                                            int i10112 = iArr6[0];
                                            infCodes.a = 0;
                                            infCodes.i = (byte) i9118;
                                            infCodes.j = (byte) i9119;
                                            infCodes.k = iArr219;
                                            infCodes.l = i91111;
                                            infCodes.m = iArr219;
                                            infCodes.n = i10112;
                                            infCodes.c = null;
                                            infBlocks.a = i50;
                                            i69 = i12;
                                            i70 = i11;
                                            i73 = i91110;
                                            i68 = i10111;
                                            i24 = i18;
                                            infBlocks.q = i69;
                                            infBlocks.p = i70;
                                            zStream2.c = i73;
                                            i36 = i60;
                                            zStream2.d += (long) (i68 - zStream2.b);
                                            zStream2.b = i68;
                                            infBlocks.v = i72;
                                            iA7 = infCodes.a(i24);
                                            if (iA7 != 1) {
                                                iA4 = infBlocks.a(iA7);
                                            } else {
                                                i68 = zStream2.b;
                                                i37 = zStream2.c;
                                                i69 = infBlocks.q;
                                                i70 = infBlocks.p;
                                                i72 = infBlocks.v;
                                                i38 = infBlocks.u;
                                                if (i72 < i38) {
                                                    i67 = (i38 - i72) - 1;
                                                } else {
                                                    i67 = i36 - i72;
                                                }
                                                if (infBlocks.o == 0) {
                                                    infBlocks.a = 0;
                                                    i73 = i37;
                                                    infTree2 = infTree2;
                                                    i60 = i36;
                                                    i48 = i4;
                                                    iArr12 = iArr;
                                                    iArr13 = iArr13;
                                                    i71 = 0;
                                                    i50 = 6;
                                                    i51 = -3;
                                                    break;
                                                } else {
                                                    infBlocks.a = 7;
                                                    i73 = i37;
                                                    i5 = 0;
                                                    infBlocks.v = i72;
                                                    iA6 = infBlocks.a(i5);
                                                    i72 = infBlocks.v;
                                                    if (infBlocks.u != i72) {
                                                        infBlocks.q = i69;
                                                        infBlocks.p = i70;
                                                        zStream2.c = i73;
                                                        zStream2.d += (long) (i68 - zStream2.b);
                                                        zStream2.b = i68;
                                                        infBlocks.v = i72;
                                                        iA4 = infBlocks.a(iA6);
                                                    } else {
                                                        infBlocks.a = 8;
                                                        infBlocks.q = i69;
                                                        infBlocks.p = i70;
                                                        zStream2.c = i73;
                                                        zStream2.d += (long) (i68 - zStream2.b);
                                                        zStream2.b = i68;
                                                        infBlocks.v = i72;
                                                        iA4 = infBlocks.a(1);
                                                    }
                                                }
                                            }
                                            iA8 = iA4;
                                            i6 = -3;
                                        }
                                    } else {
                                        infTree = infTree2;
                                        i26 = i60;
                                        i27 = iArr[0];
                                        i13 = i18;
                                        while (true) {
                                            if (i11 >= i27) {
                                                int i10113 = iArr13[0];
                                                int[] iArr2110 = infBlocks.r;
                                                iArr5 = InfBlocks.z;
                                                i28 = iArr2110[(((iArr5[i27] & i12) + i10113) * 3) + 1];
                                                i29 = iArr2110[((i10113 + (i12 & iArr5[i28])) * 3) + 2];
                                                if (i29 < 16) {
                                                    int i10114 = i12 >>> i28;
                                                    i11 -= i28;
                                                    int[] iArr36 = infBlocks.e;
                                                    int i10115 = infBlocks.d;
                                                    infBlocks.d = i10115 + 1;
                                                    iArr36[i10115] = i29;
                                                    i12 = i10114;
                                                } else {
                                                    if (i29 == 18) {
                                                        i30 = 7;
                                                    } else {
                                                        i30 = i29 - 14;
                                                    }
                                                    if (i29 == 18) {
                                                        i31 = 11;
                                                    } else {
                                                        i31 = 3;
                                                    }
                                                    while (true) {
                                                        if (i11 >= i28 + i30) {
                                                            int i10116 = i12 >>> i28;
                                                            int i10117 = i11 - i28;
                                                            i32 = i31 + (iArr5[i30] & i10116);
                                                            i33 = i10116 >>> i30;
                                                            i11 = i10117 - i30;
                                                            i34 = infBlocks.d;
                                                            i35 = infBlocks.c;
                                                            if (i34 + i32 <= (i35 & 31) + 258 + ((i35 >> 5) & 31)) {
                                                            }
                                                            infBlocks.e = null;
                                                            infBlocks.a = 9;
                                                            zStream2.i = "invalid bit length repeat";
                                                            infBlocks.q = i33;
                                                            infBlocks.p = i11;
                                                            zStream2.c = i73;
                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                            zStream2.b = i68;
                                                            infBlocks.v = i72;
                                                            iA8 = infBlocks.a(-3);
                                                            i6 = -3;
                                                        } else if (i73 != 0) {
                                                            i73--;
                                                            i12 |= (zStream2.a[i68] & 255) << i11;
                                                            i11 += 8;
                                                            i68++;
                                                            i13 = 0;
                                                        } else {
                                                            infBlocks.q = i12;
                                                            infBlocks.p = i11;
                                                            zStream2.c = i73;
                                                            zStream2.d += (long) (i68 - zStream2.b);
                                                            zStream2.b = i68;
                                                            infBlocks.v = i72;
                                                            iA4 = infBlocks.a(i13);
                                                        }
                                                    }
                                                }
                                                infTree2 = infTree;
                                                i60 = i26;
                                                i50 = 6;
                                            } else if (i73 != 0) {
                                                i73--;
                                                i12 |= (zStream2.a[i68] & 255) << i11;
                                                i11 += 8;
                                                i68++;
                                                i13 = 0;
                                            } else {
                                                infBlocks.q = i12;
                                                infBlocks.p = i11;
                                                zStream2.c = i73;
                                                zStream2.d += (long) (i68 - zStream2.b);
                                                zStream2.b = i68;
                                                infBlocks.v = i72;
                                                iA4 = infBlocks.a(i13);
                                            }
                                            iA8 = iA4;
                                            i6 = -3;
                                        }
                                    }
                                    break;
                                }
                                break;
                            case 6:
                                i4 = i48;
                                infTree2 = infTree2;
                                i24 = i71;
                                iArr13 = iArr13;
                                iArr = iArr12;
                                infBlocks.q = i69;
                                infBlocks.p = i70;
                                zStream2.c = i73;
                                i36 = i60;
                                zStream2.d += (long) (i68 - zStream2.b);
                                zStream2.b = i68;
                                infBlocks.v = i72;
                                iA7 = infCodes.a(i24);
                                if (iA7 != 1) {
                                    iA4 = infBlocks.a(iA7);
                                } else {
                                    i68 = zStream2.b;
                                    i37 = zStream2.c;
                                    i69 = infBlocks.q;
                                    i70 = infBlocks.p;
                                    i72 = infBlocks.v;
                                    i38 = infBlocks.u;
                                    if (i72 < i38) {
                                        i67 = (i38 - i72) - 1;
                                    } else {
                                        i67 = i36 - i72;
                                    }
                                    if (infBlocks.o == 0) {
                                        infBlocks.a = 0;
                                        i73 = i37;
                                        infTree2 = infTree2;
                                        i60 = i36;
                                        i48 = i4;
                                        iArr12 = iArr;
                                        iArr13 = iArr13;
                                        i71 = 0;
                                        i50 = 6;
                                        i51 = -3;
                                        break;
                                    } else {
                                        infBlocks.a = 7;
                                        i73 = i37;
                                        i5 = 0;
                                        infBlocks.v = i72;
                                        iA6 = infBlocks.a(i5);
                                        i72 = infBlocks.v;
                                        if (infBlocks.u != i72) {
                                            infBlocks.q = i69;
                                            infBlocks.p = i70;
                                            zStream2.c = i73;
                                            zStream2.d += (long) (i68 - zStream2.b);
                                            zStream2.b = i68;
                                            infBlocks.v = i72;
                                            iA4 = infBlocks.a(iA6);
                                        } else {
                                            infBlocks.a = 8;
                                            infBlocks.q = i69;
                                            infBlocks.p = i70;
                                            zStream2.c = i73;
                                            zStream2.d += (long) (i68 - zStream2.b);
                                            zStream2.b = i68;
                                            infBlocks.v = i72;
                                            iA4 = infBlocks.a(1);
                                        }
                                    }
                                }
                                iA8 = iA4;
                                i6 = -3;
                                break;
                            case 7:
                                i4 = i48;
                                i5 = i71;
                                infBlocks.v = i72;
                                iA6 = infBlocks.a(i5);
                                i72 = infBlocks.v;
                                if (infBlocks.u != i72) {
                                    infBlocks.q = i69;
                                    infBlocks.p = i70;
                                    zStream2.c = i73;
                                    zStream2.d += (long) (i68 - zStream2.b);
                                    zStream2.b = i68;
                                    infBlocks.v = i72;
                                    iA4 = infBlocks.a(iA6);
                                } else {
                                    infBlocks.a = 8;
                                    infBlocks.q = i69;
                                    infBlocks.p = i70;
                                    zStream2.c = i73;
                                    zStream2.d += (long) (i68 - zStream2.b);
                                    zStream2.b = i68;
                                    infBlocks.v = i72;
                                    iA4 = infBlocks.a(1);
                                }
                                iA8 = iA4;
                                i6 = -3;
                                break;
                            case 8:
                                i4 = i48;
                                infBlocks.q = i69;
                                infBlocks.p = i70;
                                zStream2.c = i73;
                                zStream2.d += (long) (i68 - zStream2.b);
                                zStream2.b = i68;
                                infBlocks.v = i72;
                                iA4 = infBlocks.a(1);
                                iA8 = iA4;
                                i6 = -3;
                                break;
                            case XmlPullParser.COMMENT /* 9 */:
                                infBlocks.q = i69;
                                infBlocks.p = i70;
                                zStream2.c = i73;
                                zStream2.d += (long) (i68 - zStream2.b);
                                zStream2.b = i68;
                                infBlocks.v = i72;
                                int i113 = i51;
                                i4 = i48;
                                iA8 = infBlocks.a(i113);
                                i6 = i113;
                                break;
                            default:
                                infBlocks.q = i69;
                                infBlocks.p = i70;
                                zStream2.c = i73;
                                zStream2.d += (long) (i68 - zStream2.b);
                                zStream2.b = i68;
                                infBlocks.v = i72;
                                i4 = i48;
                                iA8 = infBlocks.a(-2);
                                i6 = i51;
                                break;
                        }
                        if (iA8 != i6) {
                            if (iA8 == 0) {
                                iA8 = i4;
                            }
                            if (iA8 != 1) {
                                return iA8;
                            }
                            inflate.b = zStream.l.getValue();
                            inflate.f.b();
                            if (inflate.d != 0) {
                                inflate.a = 8;
                                iA8 = i4;
                                i39 = zStream.c;
                                if (i39 == 0) {
                                    return iA8;
                                }
                                zStream.c = i39 - 1;
                                zStream.d++;
                                byte[] bArr12 = zStream.a;
                                int i114 = zStream.b;
                                zStream.b = i114 + 1;
                                inflate.c = ((long) ((bArr12[i114] & 255) << 24)) & 4278190080L;
                                inflate.a = 9;
                                iA8 = i4;
                                i40 = zStream.c;
                                if (i40 == 0) {
                                    return iA8;
                                }
                                zStream.c = i40 - 1;
                                zStream.d++;
                                long j15 = inflate.c;
                                byte[] bArr13 = zStream.a;
                                int i115 = zStream.b;
                                zStream.b = i115 + 1;
                                inflate.c = j15 + (((long) ((bArr13[i115] & 255) << 16)) & 16711680);
                                inflate.a = i49;
                                iA8 = i4;
                                i41 = zStream.c;
                                if (i41 == 0) {
                                    return iA8;
                                }
                                zStream.c = i41 - 1;
                                zStream.d++;
                                long j16 = inflate.c;
                                byte[] bArr14 = zStream.a;
                                int i116 = zStream.b;
                                zStream.b = i116 + 1;
                                inflate.c = j16 + (((long) ((bArr14[i116] & 255) << 8)) & 65280);
                                inflate.a = 11;
                                iA8 = i4;
                                i42 = zStream.c;
                                if (i42 == 0) {
                                    return iA8;
                                }
                                zStream.c = i42 - 1;
                                zStream.d++;
                                long j17 = inflate.c;
                                byte[] bArr15 = zStream.a;
                                int i117 = zStream.b;
                                zStream.b = i117 + 1;
                                j = j17 + (((long) bArr15[i117]) & 255);
                                inflate.c = j;
                                if (inflate.h != 0) {
                                    inflate.c = (((j & 65535) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & 4294967295L;
                                }
                                if (((int) inflate.b) != ((int) inflate.c)) {
                                    zStream.i = "incorrect data check";
                                }
                                inflate.a = 15;
                                iA8 = i4;
                                if (inflate.d != 0 || inflate.h == 0) {
                                    i48 = i4;
                                    str = zStream.i;
                                    if (str != null || !str.equals("incorrect data check")) {
                                        inflate.a = 12;
                                        return 1;
                                    }
                                    inflate.a = 13;
                                } else {
                                    i48 = i4;
                                    try {
                                        iA8 = inflate.c(4, iA8, i48);
                                        String str2 = zStream.i;
                                        if (str2 != null && str2.equals("incorrect data check")) {
                                            inflate.a = 13;
                                        } else {
                                            if (inflate.c == (zStream.h & 4294967295L)) {
                                                zStream.i = null;
                                                inflate.a = 12;
                                                return 1;
                                            }
                                            zStream.i = "incorrect length check";
                                            inflate.a = 13;
                                        }
                                    } catch (Inflate.Return e) {
                                        return e.a;
                                    }
                                }
                            } else {
                                inflate.a = 12;
                                i48 = i4;
                                iA8 = i48;
                            }
                        } else {
                            inflate.a = 13;
                            i48 = i4;
                        }
                        i47 = 4;
                        break;
                    }
                    break;
                case 8:
                    i4 = i48;
                    i39 = zStream.c;
                    if (i39 == 0) {
                        return iA8;
                    }
                    zStream.c = i39 - 1;
                    zStream.d++;
                    byte[] bArr16 = zStream.a;
                    int i118 = zStream.b;
                    zStream.b = i118 + 1;
                    inflate.c = ((long) ((bArr16[i118] & 255) << 24)) & 4278190080L;
                    inflate.a = 9;
                    iA8 = i4;
                    i40 = zStream.c;
                    if (i40 == 0) {
                        return iA8;
                    }
                    zStream.c = i40 - 1;
                    zStream.d++;
                    long j18 = inflate.c;
                    byte[] bArr17 = zStream.a;
                    int i119 = zStream.b;
                    zStream.b = i119 + 1;
                    inflate.c = j18 + (((long) ((bArr17[i119] & 255) << 16)) & 16711680);
                    inflate.a = i49;
                    iA8 = i4;
                    i41 = zStream.c;
                    if (i41 == 0) {
                        return iA8;
                    }
                    zStream.c = i41 - 1;
                    zStream.d++;
                    long j19 = inflate.c;
                    byte[] bArr18 = zStream.a;
                    int i1110 = zStream.b;
                    zStream.b = i1110 + 1;
                    inflate.c = j19 + (((long) ((bArr18[i1110] & 255) << 8)) & 65280);
                    inflate.a = 11;
                    iA8 = i4;
                    i42 = zStream.c;
                    if (i42 == 0) {
                        return iA8;
                    }
                    zStream.c = i42 - 1;
                    zStream.d++;
                    long j110 = inflate.c;
                    byte[] bArr19 = zStream.a;
                    int i1111 = zStream.b;
                    zStream.b = i1111 + 1;
                    j = j110 + (((long) bArr19[i1111]) & 255);
                    inflate.c = j;
                    if (inflate.h != 0) {
                        inflate.c = (((j & 65535) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & 4294967295L;
                    }
                    if (((int) inflate.b) != ((int) inflate.c)) {
                        zStream.i = "incorrect data check";
                    }
                    inflate.a = 15;
                    iA8 = i4;
                    if (inflate.d != 0) {
                        i48 = i4;
                        str = zStream.i;
                        if (str != null) {
                        }
                        inflate.a = 12;
                        return 1;
                    }
                    i48 = i4;
                    str = zStream.i;
                    if (str != null) {
                    }
                    inflate.a = 12;
                    return 1;
                    break;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    i4 = i48;
                    i40 = zStream.c;
                    if (i40 == 0) {
                        return iA8;
                    }
                    zStream.c = i40 - 1;
                    zStream.d++;
                    long j111 = inflate.c;
                    byte[] bArr110 = zStream.a;
                    int i1112 = zStream.b;
                    zStream.b = i1112 + 1;
                    inflate.c = j111 + (((long) ((bArr110[i1112] & 255) << 16)) & 16711680);
                    inflate.a = i49;
                    iA8 = i4;
                    i41 = zStream.c;
                    if (i41 == 0) {
                        return iA8;
                    }
                    zStream.c = i41 - 1;
                    zStream.d++;
                    long j112 = inflate.c;
                    byte[] bArr111 = zStream.a;
                    int i1113 = zStream.b;
                    zStream.b = i1113 + 1;
                    inflate.c = j112 + (((long) ((bArr111[i1113] & 255) << 8)) & 65280);
                    inflate.a = 11;
                    iA8 = i4;
                    i42 = zStream.c;
                    if (i42 == 0) {
                        return iA8;
                    }
                    zStream.c = i42 - 1;
                    zStream.d++;
                    long j113 = inflate.c;
                    byte[] bArr112 = zStream.a;
                    int i1114 = zStream.b;
                    zStream.b = i1114 + 1;
                    j = j113 + (((long) bArr112[i1114]) & 255);
                    inflate.c = j;
                    if (inflate.h != 0) {
                        inflate.c = (((j & 65535) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & 4294967295L;
                    }
                    if (((int) inflate.b) != ((int) inflate.c)) {
                        zStream.i = "incorrect data check";
                    }
                    inflate.a = 15;
                    iA8 = i4;
                    if (inflate.d != 0) {
                        i48 = i4;
                        str = zStream.i;
                        if (str != null) {
                        }
                        inflate.a = 12;
                        return 1;
                    }
                    i48 = i4;
                    str = zStream.i;
                    if (str != null) {
                    }
                    inflate.a = 12;
                    return 1;
                    break;
                    break;
                case 10:
                    i4 = i48;
                    i41 = zStream.c;
                    if (i41 == 0) {
                        return iA8;
                    }
                    zStream.c = i41 - 1;
                    zStream.d++;
                    long j114 = inflate.c;
                    byte[] bArr113 = zStream.a;
                    int i1115 = zStream.b;
                    zStream.b = i1115 + 1;
                    inflate.c = j114 + (((long) ((bArr113[i1115] & 255) << 8)) & 65280);
                    inflate.a = 11;
                    iA8 = i4;
                    i42 = zStream.c;
                    if (i42 == 0) {
                        return iA8;
                    }
                    zStream.c = i42 - 1;
                    zStream.d++;
                    long j115 = inflate.c;
                    byte[] bArr114 = zStream.a;
                    int i1116 = zStream.b;
                    zStream.b = i1116 + 1;
                    j = j115 + (((long) bArr114[i1116]) & 255);
                    inflate.c = j;
                    if (inflate.h != 0) {
                        inflate.c = (((j & 65535) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & 4294967295L;
                    }
                    if (((int) inflate.b) != ((int) inflate.c)) {
                        zStream.i = "incorrect data check";
                    }
                    inflate.a = 15;
                    iA8 = i4;
                    if (inflate.d != 0) {
                        i48 = i4;
                        str = zStream.i;
                        if (str != null) {
                        }
                        inflate.a = 12;
                        return 1;
                    }
                    i48 = i4;
                    str = zStream.i;
                    if (str != null) {
                    }
                    inflate.a = 12;
                    return 1;
                    break;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    i4 = i48;
                    i42 = zStream.c;
                    if (i42 == 0) {
                        return iA8;
                    }
                    zStream.c = i42 - 1;
                    zStream.d++;
                    long j116 = inflate.c;
                    byte[] bArr115 = zStream.a;
                    int i1117 = zStream.b;
                    zStream.b = i1117 + 1;
                    j = j116 + (((long) bArr115[i1117]) & 255);
                    inflate.c = j;
                    if (inflate.h != 0) {
                        inflate.c = (((j & 65535) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & 4294967295L;
                    }
                    if (((int) inflate.b) != ((int) inflate.c)) {
                        zStream.i = "incorrect data check";
                    }
                    inflate.a = 15;
                    iA8 = i4;
                    if (inflate.d != 0) {
                        i48 = i4;
                        str = zStream.i;
                        if (str != null) {
                        }
                        inflate.a = 12;
                        return 1;
                    }
                    i48 = i4;
                    str = zStream.i;
                    if (str != null) {
                    }
                    inflate.a = 12;
                    return 1;
                    break;
                    break;
                case 12:
                    return 1;
                case 13:
                    return -3;
                case 14:
                    if (inflate.d == 0) {
                        inflate.a = 7;
                    } else {
                        try {
                            iA8 = inflate.c(2, iA8, i48);
                            int i120 = inflate.d;
                            if ((i120 == i47 || (i120 & 2) != 0) && inflate.c == 35615) {
                                if (i120 == i47) {
                                    inflate.d = 2;
                                }
                                zStream.l = new CRC32();
                                inflate.a(2, inflate.c);
                                if (inflate.k == null) {
                                    inflate.k = new GZIPHeader();
                                }
                                inflate.a = 23;
                            } else if ((i120 & 2) != 0) {
                                inflate.a = 13;
                                zStream.i = "incorrect header check";
                            } else {
                                inflate.h = 0;
                                long j20 = inflate.c;
                                int i121 = (int) j20;
                                int i122 = i121 & 255;
                                int i123 = (int) (j20 >> 8);
                                int i124 = i123 & 255;
                                if (((i120 & 1) == 0 || ((i122 << 8) + i124) % 31 != 0) && (i121 & 15) != 8) {
                                    if (i120 == i47) {
                                        zStream.b -= 2;
                                        zStream.c += 2;
                                        zStream.d -= 2;
                                        inflate.d = 0;
                                        inflate.a = 7;
                                    } else {
                                        inflate.a = 13;
                                        zStream.i = "incorrect header check";
                                    }
                                } else if ((i121 & 15) != 8) {
                                    inflate.a = 13;
                                    zStream.i = "unknown compression method";
                                } else {
                                    if (i120 == i47) {
                                        inflate.d = 1;
                                    }
                                    if ((i122 >> 4) + 8 > inflate.e) {
                                        inflate.a = 13;
                                        zStream.i = "invalid window size";
                                    } else {
                                        zStream.l = new Adler32();
                                        if ((i123 & 32) != 0) {
                                            inflate.a = 2;
                                            i2 = i48;
                                            i46 = zStream.c;
                                            if (i46 == 0) {
                                                return iA8;
                                            }
                                            zStream.c = i46 - 1;
                                            zStream.d++;
                                            byte[] bArr20 = zStream.a;
                                            int i512 = zStream.b;
                                            zStream.b = i512 + 1;
                                            inflate.c = ((long) ((bArr20[i512] & 255) << 24)) & 4278190080L;
                                            inflate.a = 3;
                                            iA8 = i2;
                                            i45 = zStream.c;
                                            if (i45 == 0) {
                                                return iA8;
                                            }
                                            zStream.c = i45 - 1;
                                            zStream.d++;
                                            long j21 = inflate.c;
                                            byte[] bArr21 = zStream.a;
                                            int i513 = zStream.b;
                                            zStream.b = i513 + 1;
                                            inflate.c = j21 + (((long) ((bArr21[i513] & 255) << 16)) & 16711680);
                                            inflate.a = 4;
                                            iA8 = i2;
                                            i44 = zStream.c;
                                            if (i44 == 0) {
                                                return iA8;
                                            }
                                            zStream.c = i44 - 1;
                                            zStream.d++;
                                            long j117 = inflate.c;
                                            byte[] bArr22 = zStream.a;
                                            int i514 = zStream.b;
                                            zStream.b = i514 + 1;
                                            inflate.c = j117 + (((long) ((bArr22[i514] & 255) << 8)) & 65280);
                                            inflate.a = 5;
                                            i3 = i2;
                                            i43 = zStream.c;
                                            if (i43 == 0) {
                                                return i3;
                                            }
                                            zStream.c = i43 - 1;
                                            zStream.d++;
                                            long j118 = inflate.c;
                                            byte[] bArr116 = zStream.a;
                                            int i515 = zStream.b;
                                            zStream.b = i515 + 1;
                                            long j119 = j118 + (((long) bArr116[i515]) & 255);
                                            inflate.c = j119;
                                            zStream.l.reset(j119);
                                            inflate.a = 6;
                                            return 2;
                                        }
                                        inflate.a = 7;
                                    }
                                }
                            }
                        } catch (Inflate.Return e2) {
                            return e2.a;
                        }
                    }
                    break;
                case 15:
                    i4 = i48;
                    if (inflate.d != 0) {
                        i48 = i4;
                        str = zStream.i;
                        if (str != null) {
                        }
                        inflate.a = 12;
                        return 1;
                    }
                    i48 = i4;
                    str = zStream.i;
                    if (str != null) {
                    }
                    inflate.a = 12;
                    return 1;
                    break;
                case Argon2.V10 /* 16 */:
                    try {
                        iA8 = inflate.c(i47, iA8, i48);
                        gZIPHeader9 = inflate.k;
                        if (gZIPHeader9 != null) {
                            gZIPHeader9.e = inflate.c;
                        }
                        if ((inflate.h & 512) != 0) {
                            inflate.a(i47, inflate.c);
                        }
                        inflate.a = 17;
                        try {
                            iA8 = inflate.c(2, iA8, i48);
                            gZIPHeader8 = inflate.k;
                            if (gZIPHeader8 != null) {
                                gZIPHeader8.a = (((int) inflate.c) >> 8) & 255;
                            }
                            if ((inflate.h & 512) != 0) {
                                inflate.a(2, inflate.c);
                            }
                            inflate.a = 18;
                            if ((inflate.h & 1024) != 0) {
                                try {
                                    int iC = inflate.c(2, iA8, i48);
                                    gZIPHeader6 = inflate.k;
                                    if (gZIPHeader6 != null) {
                                        gZIPHeader6.b = new byte[((int) inflate.c) & 65535];
                                    }
                                    if ((inflate.h & 512) != 0) {
                                        inflate.a(2, inflate.c);
                                    }
                                    iA8 = iC;
                                } catch (Inflate.Return e3) {
                                    return e3.a;
                                }
                            } else {
                                gZIPHeader7 = inflate.k;
                                if (gZIPHeader7 != null) {
                                    gZIPHeader7.b = null;
                                }
                            }
                            inflate.a = 19;
                            if ((inflate.h & 1024) != 0) {
                                try {
                                    iA8 = inflate.b(iA8, i48);
                                    if (inflate.k != null) {
                                        byteArray = inflate.l.toByteArray();
                                        inflate.l = null;
                                        length = byteArray.length;
                                        bArr = inflate.k.b;
                                        if (length == bArr.length) {
                                            System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                                        } else {
                                            zStream.i = "bad extra field length";
                                            inflate.a = 13;
                                        }
                                        break;
                                    }
                                } catch (Inflate.Return e4) {
                                    return e4.a;
                                }
                            } else {
                                gZIPHeader5 = inflate.k;
                                if (gZIPHeader5 != null) {
                                    gZIPHeader5.b = null;
                                }
                            }
                            inflate.a = 20;
                            if ((inflate.h & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                                try {
                                    inflate.d(iA8, i48);
                                    gZIPHeader3 = inflate.k;
                                    if (gZIPHeader3 != null) {
                                        gZIPHeader3.c = inflate.l.toByteArray();
                                    }
                                    inflate.l = null;
                                    iA8 = i48;
                                } catch (Inflate.Return e5) {
                                    return e5.a;
                                }
                            } else {
                                gZIPHeader4 = inflate.k;
                                if (gZIPHeader4 != null) {
                                    gZIPHeader4.c = null;
                                }
                            }
                            inflate.a = 21;
                            if ((inflate.h & 4096) != 0) {
                                try {
                                    inflate.d(iA8, i48);
                                    gZIPHeader = inflate.k;
                                    if (gZIPHeader != null) {
                                        gZIPHeader.d = inflate.l.toByteArray();
                                    }
                                    inflate.l = null;
                                    iA8 = i48;
                                } catch (Inflate.Return e6) {
                                    return e6.a;
                                }
                            } else {
                                gZIPHeader2 = inflate.k;
                                if (gZIPHeader2 != null) {
                                    gZIPHeader2.d = null;
                                }
                            }
                            inflate.a = 22;
                            if ((inflate.h & 512) != 0) {
                                try {
                                    iA8 = inflate.c(2, iA8, i48);
                                    if (inflate.c != (zStream.l.getValue() & 65535)) {
                                        inflate.a = 13;
                                        zStream.i = "header crc mismatch";
                                    }
                                } catch (Inflate.Return e7) {
                                    return e7.a;
                                }
                                break;
                            }
                            zStream.l = new CRC32();
                            inflate.a = 7;
                        } catch (Inflate.Return e8) {
                            return e8.a;
                        }
                    } catch (Inflate.Return e9) {
                        return e9.a;
                    }
                    break;
                case 17:
                    iA8 = inflate.c(2, iA8, i48);
                    gZIPHeader8 = inflate.k;
                    if (gZIPHeader8 != null) {
                        gZIPHeader8.a = (((int) inflate.c) >> 8) & 255;
                    }
                    if ((inflate.h & 512) != 0) {
                        inflate.a(2, inflate.c);
                    }
                    inflate.a = 18;
                    if ((inflate.h & 1024) != 0) {
                        int iC2 = inflate.c(2, iA8, i48);
                        gZIPHeader6 = inflate.k;
                        if (gZIPHeader6 != null) {
                            gZIPHeader6.b = new byte[((int) inflate.c) & 65535];
                        }
                        if ((inflate.h & 512) != 0) {
                            inflate.a(2, inflate.c);
                        }
                        iA8 = iC2;
                    } else {
                        gZIPHeader7 = inflate.k;
                        if (gZIPHeader7 != null) {
                            gZIPHeader7.b = null;
                        }
                    }
                    inflate.a = 19;
                    if ((inflate.h & 1024) != 0) {
                        iA8 = inflate.b(iA8, i48);
                        if (inflate.k != null) {
                            byteArray = inflate.l.toByteArray();
                            inflate.l = null;
                            length = byteArray.length;
                            bArr = inflate.k.b;
                            if (length == bArr.length) {
                                System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                            } else {
                                zStream.i = "bad extra field length";
                                inflate.a = 13;
                            }
                            break;
                        }
                    } else {
                        gZIPHeader5 = inflate.k;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.b = null;
                        }
                    }
                    inflate.a = 20;
                    if ((inflate.h & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader3 = inflate.k;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.c = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader4 = inflate.k;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.c = null;
                        }
                    }
                    inflate.a = 21;
                    if ((inflate.h & 4096) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader = inflate.k;
                        if (gZIPHeader != null) {
                            gZIPHeader.d = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader2 = inflate.k;
                        if (gZIPHeader2 != null) {
                            gZIPHeader2.d = null;
                        }
                    }
                    inflate.a = 22;
                    if ((inflate.h & 512) != 0) {
                        iA8 = inflate.c(2, iA8, i48);
                        if (inflate.c != (zStream.l.getValue() & 65535)) {
                            inflate.a = 13;
                            zStream.i = "header crc mismatch";
                        }
                        break;
                    }
                    zStream.l = new CRC32();
                    inflate.a = 7;
                    break;
                case 18:
                    if ((inflate.h & 1024) != 0) {
                        int iC3 = inflate.c(2, iA8, i48);
                        gZIPHeader6 = inflate.k;
                        if (gZIPHeader6 != null) {
                            gZIPHeader6.b = new byte[((int) inflate.c) & 65535];
                        }
                        if ((inflate.h & 512) != 0) {
                            inflate.a(2, inflate.c);
                        }
                        iA8 = iC3;
                    } else {
                        gZIPHeader7 = inflate.k;
                        if (gZIPHeader7 != null) {
                            gZIPHeader7.b = null;
                        }
                    }
                    inflate.a = 19;
                    if ((inflate.h & 1024) != 0) {
                        iA8 = inflate.b(iA8, i48);
                        if (inflate.k != null) {
                            byteArray = inflate.l.toByteArray();
                            inflate.l = null;
                            length = byteArray.length;
                            bArr = inflate.k.b;
                            if (length == bArr.length) {
                                System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                            } else {
                                zStream.i = "bad extra field length";
                                inflate.a = 13;
                            }
                            break;
                        }
                    } else {
                        gZIPHeader5 = inflate.k;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.b = null;
                        }
                    }
                    inflate.a = 20;
                    if ((inflate.h & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader3 = inflate.k;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.c = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader4 = inflate.k;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.c = null;
                        }
                    }
                    inflate.a = 21;
                    if ((inflate.h & 4096) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader = inflate.k;
                        if (gZIPHeader != null) {
                            gZIPHeader.d = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader2 = inflate.k;
                        if (gZIPHeader2 != null) {
                            gZIPHeader2.d = null;
                        }
                    }
                    inflate.a = 22;
                    if ((inflate.h & 512) != 0) {
                        iA8 = inflate.c(2, iA8, i48);
                        if (inflate.c != (zStream.l.getValue() & 65535)) {
                            inflate.a = 13;
                            zStream.i = "header crc mismatch";
                        }
                        break;
                    }
                    zStream.l = new CRC32();
                    inflate.a = 7;
                    break;
                case Argon2.V13 /* 19 */:
                    if ((inflate.h & 1024) != 0) {
                        iA8 = inflate.b(iA8, i48);
                        if (inflate.k != null) {
                            byteArray = inflate.l.toByteArray();
                            inflate.l = null;
                            length = byteArray.length;
                            bArr = inflate.k.b;
                            if (length == bArr.length) {
                                System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                            } else {
                                zStream.i = "bad extra field length";
                                inflate.a = 13;
                            }
                            break;
                        }
                    } else {
                        gZIPHeader5 = inflate.k;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.b = null;
                        }
                    }
                    inflate.a = 20;
                    if ((inflate.h & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader3 = inflate.k;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.c = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader4 = inflate.k;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.c = null;
                        }
                    }
                    inflate.a = 21;
                    if ((inflate.h & 4096) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader = inflate.k;
                        if (gZIPHeader != null) {
                            gZIPHeader.d = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader2 = inflate.k;
                        if (gZIPHeader2 != null) {
                            gZIPHeader2.d = null;
                        }
                    }
                    inflate.a = 22;
                    if ((inflate.h & 512) != 0) {
                        iA8 = inflate.c(2, iA8, i48);
                        if (inflate.c != (zStream.l.getValue() & 65535)) {
                            inflate.a = 13;
                            zStream.i = "header crc mismatch";
                        }
                        break;
                    }
                    zStream.l = new CRC32();
                    inflate.a = 7;
                    break;
                case 20:
                    if ((inflate.h & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader3 = inflate.k;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.c = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader4 = inflate.k;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.c = null;
                        }
                    }
                    inflate.a = 21;
                    if ((inflate.h & 4096) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader = inflate.k;
                        if (gZIPHeader != null) {
                            gZIPHeader.d = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader2 = inflate.k;
                        if (gZIPHeader2 != null) {
                            gZIPHeader2.d = null;
                        }
                    }
                    inflate.a = 22;
                    if ((inflate.h & 512) != 0) {
                        iA8 = inflate.c(2, iA8, i48);
                        if (inflate.c != (zStream.l.getValue() & 65535)) {
                            inflate.a = 13;
                            zStream.i = "header crc mismatch";
                        }
                        break;
                    }
                    zStream.l = new CRC32();
                    inflate.a = 7;
                    break;
                case 21:
                    if ((inflate.h & 4096) != 0) {
                        inflate.d(iA8, i48);
                        gZIPHeader = inflate.k;
                        if (gZIPHeader != null) {
                            gZIPHeader.d = inflate.l.toByteArray();
                        }
                        inflate.l = null;
                        iA8 = i48;
                    } else {
                        gZIPHeader2 = inflate.k;
                        if (gZIPHeader2 != null) {
                            gZIPHeader2.d = null;
                        }
                    }
                    inflate.a = 22;
                    if ((inflate.h & 512) != 0) {
                        iA8 = inflate.c(2, iA8, i48);
                        if (inflate.c != (zStream.l.getValue() & 65535)) {
                            inflate.a = 13;
                            zStream.i = "header crc mismatch";
                        }
                        break;
                    }
                    zStream.l = new CRC32();
                    inflate.a = 7;
                    break;
                case 22:
                    if ((inflate.h & 512) != 0) {
                        iA8 = inflate.c(2, iA8, i48);
                        if (inflate.c != (zStream.l.getValue() & 65535)) {
                            inflate.a = 13;
                            zStream.i = "header crc mismatch";
                        }
                        break;
                    }
                    zStream.l = new CRC32();
                    inflate.a = 7;
                    break;
                case 23:
                    try {
                        iA8 = inflate.c(2, iA8, i48);
                        long j22 = inflate.c;
                        int i125 = (int) j22;
                        inflate.h = i125 & 65535;
                        if ((i125 & 255) != 8) {
                            zStream.i = "unknown compression method";
                            inflate.a = 13;
                        } else if ((57344 & i125) != 0) {
                            zStream.i = "unknown header flags set";
                            inflate.a = 13;
                        } else {
                            if ((i125 & 512) != 0) {
                                inflate.a(2, j22);
                            }
                            inflate.a = 16;
                            iA8 = inflate.c(i47, iA8, i48);
                            gZIPHeader9 = inflate.k;
                            if (gZIPHeader9 != null) {
                                gZIPHeader9.e = inflate.c;
                            }
                            if ((inflate.h & 512) != 0) {
                                inflate.a(i47, inflate.c);
                            }
                            inflate.a = 17;
                            iA8 = inflate.c(2, iA8, i48);
                            gZIPHeader8 = inflate.k;
                            if (gZIPHeader8 != null) {
                                gZIPHeader8.a = (((int) inflate.c) >> 8) & 255;
                            }
                            if ((inflate.h & 512) != 0) {
                                inflate.a(2, inflate.c);
                            }
                            inflate.a = 18;
                            if ((inflate.h & 1024) != 0) {
                                int iC4 = inflate.c(2, iA8, i48);
                                gZIPHeader6 = inflate.k;
                                if (gZIPHeader6 != null) {
                                    gZIPHeader6.b = new byte[((int) inflate.c) & 65535];
                                }
                                if ((inflate.h & 512) != 0) {
                                    inflate.a(2, inflate.c);
                                }
                                iA8 = iC4;
                            } else {
                                gZIPHeader7 = inflate.k;
                                if (gZIPHeader7 != null) {
                                    gZIPHeader7.b = null;
                                }
                            }
                            inflate.a = 19;
                            if ((inflate.h & 1024) != 0) {
                                iA8 = inflate.b(iA8, i48);
                                if (inflate.k != null) {
                                    byteArray = inflate.l.toByteArray();
                                    inflate.l = null;
                                    length = byteArray.length;
                                    bArr = inflate.k.b;
                                    if (length == bArr.length) {
                                        System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                                    } else {
                                        zStream.i = "bad extra field length";
                                        inflate.a = 13;
                                    }
                                }
                            } else {
                                gZIPHeader5 = inflate.k;
                                if (gZIPHeader5 != null) {
                                    gZIPHeader5.b = null;
                                }
                            }
                            inflate.a = 20;
                            if ((inflate.h & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
                                inflate.d(iA8, i48);
                                gZIPHeader3 = inflate.k;
                                if (gZIPHeader3 != null) {
                                    gZIPHeader3.c = inflate.l.toByteArray();
                                }
                                inflate.l = null;
                                iA8 = i48;
                            } else {
                                gZIPHeader4 = inflate.k;
                                if (gZIPHeader4 != null) {
                                    gZIPHeader4.c = null;
                                }
                            }
                            inflate.a = 21;
                            if ((inflate.h & 4096) != 0) {
                                inflate.d(iA8, i48);
                                gZIPHeader = inflate.k;
                                if (gZIPHeader != null) {
                                    gZIPHeader.d = inflate.l.toByteArray();
                                }
                                inflate.l = null;
                                iA8 = i48;
                            } else {
                                gZIPHeader2 = inflate.k;
                                if (gZIPHeader2 != null) {
                                    gZIPHeader2.d = null;
                                }
                            }
                            inflate.a = 22;
                            if ((inflate.h & 512) != 0) {
                                iA8 = inflate.c(2, iA8, i48);
                                if (inflate.c != (zStream.l.getValue() & 65535)) {
                                    inflate.a = 13;
                                    zStream.i = "header crc mismatch";
                                }
                            }
                            zStream.l = new CRC32();
                            inflate.a = 7;
                        }
                    } catch (Inflate.Return e10) {
                        return e10.a;
                    }
                    break;
                default:
                    return -2;
            }
        }
    }

    public final int d(int i, boolean z) {
        Inflate inflate = new Inflate(this);
        this.k = inflate;
        if (z) {
            i = -i;
        }
        this.i = null;
        inflate.f = null;
        inflate.d = 0;
        if (i < 0) {
            i = -i;
        } else if ((1073741824 & i) != 0) {
            inflate.d = 4;
            int i2 = (-1073741825) & i;
            i = i2 < 48 ? i & 15 : i2;
        } else {
            if ((i & (-32)) != 0) {
                inflate.d = 4;
            } else {
                inflate.d = (i >> 4) + 1;
                if (i < 48) {
                }
            }
        }
        if (i < 8 || i > 15) {
            return -2;
        }
        inflate.e = i;
        InfBlocks infBlocks = new InfBlocks(this, 1 << i);
        inflate.f = infBlocks;
        this.h = 0L;
        this.d = 0L;
        this.i = null;
        inflate.a = 14;
        inflate.i = -1;
        infBlocks.b();
        return 0;
    }

    public Inflater(JZlib.WrapperType wrapperType) throws GZIPException {
        this(15, wrapperType);
    }

    public Inflater() {
        d(15, false);
    }

    public Inflater(int i) throws GZIPException {
        this(i, false);
    }

    public Inflater(boolean z) throws GZIPException {
        this(15, z);
    }

    public Inflater(int i, boolean z) throws GZIPException {
        int iD = d(i, z);
        if (iD == 0) {
            return;
        }
        a.a(iD, this.i);
        throw null;
    }
}
