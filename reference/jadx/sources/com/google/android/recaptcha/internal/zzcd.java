package com.google.android.recaptcha.internal;

import android.content.Context;
import defpackage.nc3;
import defpackage.y5;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcd {
    public zzcd(Context context) {
    }

    public static final byte[] zza(File file) throws GeneralSecurityException, IOException {
        return nc3.S(file);
    }

    public static final void zzb(File file, byte[] bArr) throws GeneralSecurityException, IOException {
        if (!file.exists() || file.delete()) {
            nc3.W(file, bArr);
        } else {
            y5.m("Unable to delete existing encrypted file");
        }
    }
}
