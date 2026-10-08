package com.jcraft.jsch.bc;

import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.KDF;
import defpackage.m40;
import defpackage.ms8;
import defpackage.n40;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Argon2 implements KDF {
    public m40 a;

    @Override // com.jcraft.jsch.KDF
    public final byte[] getKey(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        this.a.c(bArr, bArr2);
        return bArr2;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0083 A[Catch: NumberFormatException -> 0x003f, LOOP:0: B:26:0x0081->B:27:0x0083, LOOP_END, TryCatch #0 {NumberFormatException -> 0x003f, blocks: (B:3:0x0004, B:6:0x0018, B:8:0x0020, B:14:0x0034, B:25:0x0055, B:27:0x0083, B:28:0x0097, B:30:0x00b9, B:31:0x00be, B:19:0x0042, B:22:0x004c, B:32:0x00bf, B:33:0x00c4), top: B:36:0x0004 }] */
    @Override // com.jcraft.jsch.KDF
    public final void initWithPPKv3Header(Map<String, String> map) throws Exception {
        int i;
        int length;
        byte[] bArr;
        int i2;
        try {
            String str = map.get("Key-Derivation");
            String str2 = map.get("Argon2-Salt");
            if (str == null || str2 == null || str2.length() % 2 != 0) {
                throw new JSchException("Invalid argon2 params.");
            }
            int iHashCode = str.hashCode();
            if (iHashCode == -1530598888) {
                if (str.equals("Argon2id")) {
                    i = 2;
                    int i3 = Integer.parseInt(map.get("Argon2-Memory"));
                    int i4 = Integer.parseInt(map.get("Argon2-Passes"));
                    int i5 = Integer.parseInt(map.get("Argon2-Parallelism"));
                    length = str2.length() / 2;
                    bArr = new byte[length];
                    for (i2 = 0; i2 < length; i2++) {
                        int i6 = i2 * 2;
                        bArr[i2] = (byte) Integer.parseInt(str2.substring(i6, i6 + 2), 16);
                    }
                    n40 n40Var = new n40(i, ms8.k(bArr), ms8.k(new byte[0]), ms8.k(new byte[0]), i4, i3, i5);
                    m40 m40Var = new m40();
                    this.a = m40Var;
                    m40Var.e(n40Var);
                    return;
                }
                throw new JSchException("Invalid argon2 params.");
            }
            if (iHashCode == 920457159) {
                if (str.equals("Argon2d")) {
                    i = 0;
                    int i7 = Integer.parseInt(map.get("Argon2-Memory"));
                    int i8 = Integer.parseInt(map.get("Argon2-Passes"));
                    int i9 = Integer.parseInt(map.get("Argon2-Parallelism"));
                    length = str2.length() / 2;
                    bArr = new byte[length];
                    while (i2 < length) {
                        int i10 = i2 * 2;
                        bArr[i2] = (byte) Integer.parseInt(str2.substring(i10, i10 + 2), 16);
                    }
                    n40 n40Var2 = new n40(i, ms8.k(bArr), ms8.k(new byte[0]), ms8.k(new byte[0]), i8, i7, i9);
                    m40 m40Var2 = new m40();
                    this.a = m40Var2;
                    m40Var2.e(n40Var2);
                    return;
                }
                throw new JSchException("Invalid argon2 params.");
            }
            if (iHashCode == 920457164 && str.equals("Argon2i")) {
                i = 1;
                int i11 = Integer.parseInt(map.get("Argon2-Memory"));
                int i12 = Integer.parseInt(map.get("Argon2-Passes"));
                int i13 = Integer.parseInt(map.get("Argon2-Parallelism"));
                length = str2.length() / 2;
                bArr = new byte[length];
                while (i2 < length) {
                    int i14 = i2 * 2;
                    bArr[i2] = (byte) Integer.parseInt(str2.substring(i14, i14 + 2), 16);
                }
                n40 n40Var3 = new n40(i, ms8.k(bArr), ms8.k(new byte[0]), ms8.k(new byte[0]), i12, i11, i13);
                m40 m40Var3 = new m40();
                this.a = m40Var3;
                m40Var3.e(n40Var3);
                return;
            }
            throw new JSchException("Invalid argon2 params.");
        } catch (NumberFormatException e) {
            throw new JSchException("Invalid argon2 params.", e);
        }
    }
}
