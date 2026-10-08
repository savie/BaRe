package com.microsoft.identity.common.java.net;

import com.microsoft.identity.common.java.exception.ClientException;
import defpackage.mu7;
import net.jcip.annotations.Immutable;
import net.jcip.annotations.ThreadSafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
@ThreadSafe
public final class NoRetryPolicy implements IRetryPolicy<HttpResponse> {
    @Override // com.microsoft.identity.common.java.net.IRetryPolicy
    public final HttpResponse attempt(mu7 mu7Var) throws ClientException {
        return (HttpResponse) mu7Var.call();
    }
}
