package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.Status;
import defpackage.c6;
import defpackage.re;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class StandardIntegrityException extends re {
    private final Throwable a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StandardIntegrityException(int i, Throwable th) {
        super(new Status(i, "Standard Integrity API error (" + i + "): " + com.google.android.play.core.integrity.model.b.a(i) + ".", null, null));
        Locale locale = Locale.ROOT;
        if (i != 0) {
            this.a = th;
        } else {
            c6.f("ErrorCode should not be 0.");
            throw null;
        }
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
