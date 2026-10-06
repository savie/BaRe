package com.microsoft.identity.common.java.logging;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum DiagnosticContext {
    INSTANCE;

    private final transient ThreadLocal<RequestContext> REQUEST_CONTEXT_THREAD_LOCAL = new AnonymousClass1();

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.logging.DiagnosticContext$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 extends ThreadLocal<RequestContext> {
        @Override // java.lang.ThreadLocal
        public final RequestContext initialValue() {
            RequestContext requestContext = new RequestContext();
            requestContext.put("thread_id", String.valueOf(Thread.currentThread().getId()));
            requestContext.put("correlation_id", "UNSET");
            return requestContext;
        }
    }

    public final void clear() {
        this.REQUEST_CONTEXT_THREAD_LOCAL.remove();
    }

    public final RequestContext getRequestContext() {
        return this.REQUEST_CONTEXT_THREAD_LOCAL.get();
    }

    public final void setRequestContext(RequestContext requestContext) {
        requestContext.put("thread_id", String.valueOf(Thread.currentThread().getId()));
        this.REQUEST_CONTEXT_THREAD_LOCAL.set(requestContext);
    }
}
