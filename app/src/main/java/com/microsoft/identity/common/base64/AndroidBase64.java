package com.microsoft.identity.common.base64;

import android.util.Base64;
import com.microsoft.identity.common.java.base64.Base64Flags;
import defpackage.x50;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidBase64 {
    private final int combineFlags(Base64Flags... base64FlagsArr) {
        int i = x50.e0(base64FlagsArr, Base64Flags.URL_SAFE) ? 8 : 0;
        if (x50.e0(base64FlagsArr, Base64Flags.NO_WRAP)) {
            i |= 2;
        }
        return x50.e0(base64FlagsArr, Base64Flags.NO_PADDING) ? i | 1 : i;
    }

    public byte[] decode(byte[] bArr, Base64Flags... base64FlagsArr) {
        bArr.getClass();
        base64FlagsArr.getClass();
        byte[] bArrDecode = Base64.decode(bArr, combineFlags((Base64Flags[]) Arrays.copyOf(base64FlagsArr, base64FlagsArr.length)));
        bArrDecode.getClass();
        return bArrDecode;
    }

    public byte[] encode(byte[] bArr, Base64Flags... base64FlagsArr) {
        bArr.getClass();
        base64FlagsArr.getClass();
        byte[] bArrEncode = Base64.encode(bArr, combineFlags((Base64Flags[]) Arrays.copyOf(base64FlagsArr, base64FlagsArr.length)));
        bArrEncode.getClass();
        return bArrEncode;
    }
}
