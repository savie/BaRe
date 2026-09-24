package com.jcraft.jsch.bc;

import com.jcraft.jsch.KEM;
import defpackage.e42;
import defpackage.lg7;
import defpackage.ms8;
import defpackage.ov6;
import defpackage.pv6;
import defpackage.qv6;
import defpackage.ty3;
import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SNTRUP761 implements KEM {
    public ty3 a;
    public qv6 b;

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 5351. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.jcraft.jsch.KEM
    public final byte[] decapsulate(byte[] r21) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.bc.SNTRUP761.decapsulate(byte[]):byte[]");
    }

    @Override // com.jcraft.jsch.KEM
    public final byte[] getPublicKey() throws Exception {
        return ms8.k(this.b.c);
    }

    @Override // com.jcraft.jsch.KEM
    public final void init() throws Exception {
        short s;
        int i;
        int i2;
        int i3;
        short s2;
        short s3;
        int i4;
        int i5;
        short[] sArr;
        int i6;
        SecureRandom secureRandom = new SecureRandom();
        AtomicReference atomicReference = e42.a;
        int i7 = 761;
        byte[] bArr = new byte[761];
        byte[] bArr2 = new byte[761];
        while (true) {
            byte b = 0;
            int i8 = 0;
            while (true) {
                s = 1;
                if (i8 >= i7) {
                    break;
                }
                bArr[i8] = (byte) ((((lg7.r(secureRandom) & 1073741823) * 3) >>> 30) - 1);
                i8++;
            }
            i = 761 + 1;
            byte[] bArr3 = new byte[i];
            byte[] bArr4 = new byte[i];
            byte[] bArr5 = new byte[i];
            byte[] bArr6 = new byte[i];
            bArr5[0] = 1;
            bArr3[0] = 1;
            i2 = 761 - 1;
            bArr3[i2] = -1;
            bArr3[i7] = -1;
            for (int i9 = 0; i9 < i7; i9++) {
                bArr4[i2 - i9] = bArr[i9];
            }
            bArr4[i7] = 0;
            int i10 = 0;
            int i11 = 1;
            while (true) {
                i3 = (761 * 2) - 1;
                if (i10 >= i3) {
                    break;
                }
                System.arraycopy(bArr6, b, bArr6, s, i7);
                bArr6[b] = b;
                byte b2 = bArr4[b];
                byte b3 = b;
                int i12 = (-b2) * bArr3[b3];
                short s4 = s;
                int i13 = -i11;
                int i14 = (-(i13 >>> 31)) & (-((int) ((-(((long) b2) & 4294967295L)) >>> 63)));
                i11 = (((i11 ^ i13) & i14) ^ i11) + 1;
                for (int i15 = b3; i15 < i; i15++) {
                    byte b4 = bArr3[i15];
                    int i16 = i14 & (b4 ^ bArr4[i15]);
                    bArr3[i15] = (byte) (b4 ^ i16);
                    bArr4[i15] = (byte) (bArr4[i15] ^ i16);
                    byte b5 = bArr6[i15];
                    int i17 = i14 & (b5 ^ bArr5[i15]);
                    bArr6[i15] = (byte) (b5 ^ i17);
                    bArr5[i15] = (byte) (bArr5[i15] ^ i17);
                }
                for (int i18 = b3; i18 < i; i18++) {
                    bArr4[i18] = (byte) lg7.q((bArr3[i18] * i12) + bArr4[i18], 3);
                }
                for (int i19 = b3; i19 < i; i19++) {
                    bArr5[i19] = (byte) lg7.q((bArr6[i19] * i12) + bArr5[i19], 3);
                }
                int i20 = b3;
                while (i20 < 761) {
                    int i21 = i20 + 1;
                    bArr4[i20] = bArr4[i21];
                    i20 = i21;
                }
                bArr4[761] = b3;
                i10++;
                i7 = 761;
                b = b3;
                s = s4;
            }
            s2 = b;
            s3 = s;
            i4 = i7;
            byte b6 = bArr3[s2];
            for (int i22 = s2; i22 < i4; i22++) {
                bArr2[i22] = (byte) (bArr6[i2 - i22] * b6);
            }
            if (i11 == 0) {
                break;
            } else {
                i7 = i4;
            }
        }
        byte[] bArr7 = new byte[i4];
        int[] iArr = new int[i4];
        int i23 = s2;
        while (i23 < i4) {
            iArr[i23] = lg7.r(secureRandom);
            i23++;
            i4 = 761;
        }
        int i24 = s2;
        while (true) {
            if (i24 >= 286) {
                break;
            }
            iArr[i24] = iArr[i24] & (-2);
            i24++;
        }
        for (i5 = 286; i5 < 761; i5++) {
            iArr[i5] = (iArr[i5] & (-3)) | 1;
        }
        int i25 = s3;
        while (i25 < 761 - i25) {
            i25 += i25;
        }
        for (int i26 = i25; i26 > 0; i26 >>>= 1) {
            for (int i27 = s2; i27 < 761 - i26; i27++) {
                if ((i27 & i26) == 0) {
                    lg7.x(i27, i27 + i26, iArr);
                }
            }
            for (int i28 = i25; i28 > i26; i28 >>>= 1) {
                for (int i29 = s2; i29 < 761 - i28; i29++) {
                    if ((i29 & i26) == 0) {
                        lg7.x(i29 + i26, i29 + i28, iArr);
                    }
                }
            }
        }
        for (int i30 = s2; i30 < 761; i30++) {
            bArr7[i30] = (byte) ((iArr[i30] & 3) - 1);
        }
        short[] sArr2 = new short[761];
        short[] sArr3 = new short[i];
        short[] sArr4 = new short[i];
        short[] sArr5 = new short[i];
        short[] sArr6 = new short[i];
        int i31 = s3;
        int iQ = 3;
        while (true) {
            sArr = sArr3;
            i6 = 4591 - 2;
            if (i31 >= i6) {
                break;
            }
            iQ = lg7.q(3 * iQ, 4591);
            i31++;
            sArr3 = sArr;
        }
        sArr5[s2] = (short) iQ;
        sArr[s2] = s3;
        sArr[i2] = -1;
        int i32 = 761;
        sArr[761] = -1;
        for (int i33 = s2; i33 < 761; i33++) {
            sArr4[i2 - i33] = bArr7[i33];
        }
        sArr4[761] = s2;
        int i34 = s2;
        int i35 = s3;
        while (i34 < i3) {
            int i36 = i3;
            short[] sArr7 = sArr4;
            short s5 = s2;
            System.arraycopy(sArr6, s5, sArr6, s3, i32);
            sArr6[s5] = s5;
            int i37 = -i35;
            int i38 = (-((int) ((-(((long) sArr7[s2]) & 4294967295L)) >>> 63))) & (-(i37 >>> 31));
            i35 = (((i35 ^ i37) & i38) ^ i35) + 1;
            for (int i39 = 0; i39 < i; i39++) {
                short s6 = sArr[i39];
                int i40 = i38 & (s6 ^ sArr7[i39]);
                sArr[i39] = (short) (s6 ^ i40);
                sArr7[i39] = (short) (sArr7[i39] ^ i40);
                short s7 = sArr6[i39];
                int i41 = i38 & (s7 ^ sArr5[i39]);
                sArr6[i39] = (short) (s7 ^ i41);
                sArr5[i39] = (short) (sArr5[i39] ^ i41);
            }
            short s8 = sArr[0];
            short s9 = sArr7[0];
            int i42 = 0;
            while (i42 < i) {
                sArr7[i42] = (short) lg7.q((sArr7[i42] * s8) - (sArr[i42] * s9), 4591);
                i42++;
                s9 = s9;
                s8 = s8;
            }
            short s10 = s8;
            short s11 = s9;
            for (int i43 = 0; i43 < i; i43++) {
                sArr5[i43] = (short) lg7.q((sArr5[i43] * s10) - (sArr6[i43] * s11), 4591);
            }
            int i44 = 0;
            while (i44 < 761) {
                int i45 = i44 + 1;
                sArr7[i44] = sArr7[i45];
                i44 = i45;
            }
            s2 = 0;
            sArr7[761] = 0;
            i34++;
            i3 = i36;
            sArr4 = sArr7;
            i32 = 761;
            s3 = 1;
        }
        short s12 = sArr[s2];
        int iQ2 = s12;
        for (int i46 = 1; i46 < i6; i46++) {
            iQ2 = lg7.q(iQ2 * s12, 4591);
        }
        int i47 = 761;
        for (int i48 = 0; i48 < 761; i48++) {
            sArr2[i48] = (short) lg7.q(sArr6[i2 - i48] * iQ2, 4591);
        }
        short[] sArr8 = new short[761];
        lg7.A(761, 4591, bArr, sArr8, sArr2);
        ov6 ov6Var = ov6.k;
        byte[] bArr8 = new byte[ov6Var.e];
        short[] sArr9 = new short[761];
        short[] sArr10 = new short[761];
        int i49 = 0;
        while (i49 < i47) {
            sArr9[i49] = (short) (((4591 - 1) / 2) + sArr8[i49]);
            i49++;
            i47 = 761;
        }
        for (int i50 = 0; i50 < i47; i50++) {
            sArr10[i50] = (short) 4591;
        }
        lg7.h(i47, 0, bArr8, sArr9, sArr10);
        qv6 qv6Var = new qv6(ov6Var, bArr8);
        int i51 = (i47 + 3) / 4;
        byte[] bArr9 = new byte[i51];
        lg7.o(i47, bArr9, bArr7);
        byte[] bArr10 = new byte[i51];
        lg7.o(i47, bArr10, bArr2);
        byte[] bArr11 = new byte[i51];
        secureRandom.nextBytes(bArr11);
        this.a = new ty3(new pv6(ov6Var, bArr9, bArr10, bArr8, bArr11, ms8.t(lg7.p(new byte[]{4}, bArr8), 0, 32)));
        this.b = qv6Var;
    }
}
