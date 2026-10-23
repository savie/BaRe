package defpackage;

import java.io.IOException;
import java.util.concurrent.CompletableFuture;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bn0 implements Callback {
    public final /* synthetic */ CompletableFuture a;
    public final /* synthetic */ StringBuilder b;
    public final /* synthetic */ v64.h c;
    public final /* synthetic */ Request d;
    public final /* synthetic */ cn0 e;

    public bn0(cn0 cn0Var, CompletableFuture completableFuture, StringBuilder sb, v64.h hVar, Request request) {
        this.e = cn0Var;
        this.a = completableFuture;
        this.b = sb;
        this.c = hVar;
        this.d = request;
    }

    public final void a(Call call, IOException iOException) {
        this.a.completeExceptionally(iOException);
    }

    /* JADX WARN: Code duplicated, block: B:73:0x015c  */
    /* JADX WARN: Code duplicated, block: B:76:0x016c  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
    
        if (java.util.Arrays.asList(r12.split(";")).contains("application/xml") == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(okhttp3.Response r28) {
        /*
            Method dump skipped, instruction units count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bn0.b(okhttp3.Response):void");
    }
}
