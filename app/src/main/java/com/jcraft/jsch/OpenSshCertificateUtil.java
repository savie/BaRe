package com.jcraft.jsch;

import defpackage.au5;
import defpackage.cu5;
import defpackage.du5;
import defpackage.i23;
import defpackage.w81;
import java.util.Arrays;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class OpenSshCertificateUtil {
    public static byte[] a(byte[] bArr, int i) {
        if (bArr == null || bArr.length == 0 || i < 0) {
            return null;
        }
        int i2 = 0;
        while (i2 < bArr.length && e(bArr[i2])) {
            i2++;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 < bArr.length) {
            if (e(bArr[i2])) {
                if (i4 != -1) {
                    if (i3 == i) {
                        int i5 = i2 - i4;
                        byte[] bArr2 = new byte[i5];
                        System.arraycopy(bArr, i4, bArr2, 0, i5);
                        return bArr2;
                    }
                    i3++;
                    i4 = -1;
                }
                while (i2 < bArr.length && e(bArr[i2])) {
                    i2++;
                }
            } else {
                if (i4 == -1) {
                    i4 = i2;
                }
                i2++;
            }
        }
        if (i4 == -1 || i3 != i) {
            return null;
        }
        int i6 = i2 - i4;
        byte[] bArr3 = new byte[i6];
        System.arraycopy(bArr, i4, bArr3, 0, i6);
        return bArr3;
    }

    public static Set b(HostKeyRepository hostKeyRepository) {
        return (Set) Arrays.stream(hostKeyRepository.getHostKey()).filter(new au5()).collect(Collectors.toSet());
    }

    public static Set c(HostKeyRepository hostKeyRepository) {
        return (Set) Arrays.stream(hostKeyRepository.getHostKey()).filter(new du5()).collect(Collectors.toSet());
    }

    public static boolean d(HostKeyRepository hostKeyRepository, HostKey hostKey) {
        final byte[] bArr;
        if (hostKey == null || (bArr = hostKey.d) == null) {
            return true;
        }
        return b(hostKeyRepository).stream().filter(new i23(1)).map(new w81(2)).filter(new cu5(0)).anyMatch(new Predicate() { // from class: com.jcraft.jsch.f
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Util.b((byte[]) obj, bArr);
            }
        });
    }

    public static boolean e(byte b) {
        return b == 32 || b == 9 || b == 10 || b == 13;
    }
}
