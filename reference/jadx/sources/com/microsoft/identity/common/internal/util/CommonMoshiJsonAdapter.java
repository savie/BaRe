package com.microsoft.identity.common.internal.util;

import com.microsoft.identity.common.java.exception.TerminalException;
import com.microsoft.identity.common.java.opentelemetry.SerializableSpanContext;
import defpackage.f6;
import defpackage.kh5;
import defpackage.nh5;
import defpackage.yh8;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CommonMoshiJsonAdapter {
    private final nh5 mMoshi = new nh5(new kh5());

    public final Object fromJson(String str) throws TerminalException {
        if (str == null) {
            f6.n("json is marked non-null but is null");
            return null;
        }
        try {
            return this.mMoshi.a(SerializableSpanContext.class).b(str);
        } catch (IOException e) {
            throw new TerminalException(e, e.getMessage(), "json_deserialization_failure");
        }
    }

    public final <T> String toJson(T t) {
        Class<?> cls = t.getClass();
        nh5 nh5Var = this.mMoshi;
        nh5Var.getClass();
        return nh5Var.b(cls, yh8.a, null).d(t);
    }
}
