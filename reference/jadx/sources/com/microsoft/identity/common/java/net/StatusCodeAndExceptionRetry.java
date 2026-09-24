package com.microsoft.identity.common.java.net;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.util.ported.Function;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import defpackage.l0;
import defpackage.mu7;
import defpackage.xs1;
import java.util.function.BiFunction;
import net.jcip.annotations.Immutable;
import net.jcip.annotations.ThreadSafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
@ThreadSafe
public final class StatusCodeAndExceptionRetry implements IRetryPolicy<HttpResponse> {
    private final int extensionFactor;
    private final int initialDelay;
    private final Function<HttpResponse, Boolean> isAcceptable;
    private final BiFunction<HttpResponse, Integer, Boolean> isRetryable;
    private final Function<Exception, Boolean> isRetryableException;
    private final int number;

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.StatusCodeAndExceptionRetry$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Function<Exception, Boolean> {
        @Override // com.microsoft.identity.common.java.util.ported.Function
        public final /* bridge */ /* synthetic */ Boolean apply(Object obj) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.StatusCodeAndExceptionRetry$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements BiFunction<HttpResponse, Integer, Boolean> {
        @Override // java.util.function.BiFunction
        public final /* bridge */ /* synthetic */ Boolean apply(HttpResponse httpResponse, Integer num) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.StatusCodeAndExceptionRetry$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements Function<HttpResponse, Boolean> {
        @Override // com.microsoft.identity.common.java.util.ported.Function
        public final /* bridge */ /* synthetic */ Boolean apply(Object obj) {
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class StatusCodeAndExceptionRetryBuilder {
        private boolean extensionFactor$set;
        private int extensionFactor$value;
        private boolean initialDelay$set;
        private int initialDelay$value;
        private boolean isAcceptable$set;
        private Function<HttpResponse, Boolean> isAcceptable$value;
        private boolean isRetryable$set;
        private BiFunction<HttpResponse, Integer, Boolean> isRetryable$value;
        private boolean isRetryableException$set;
        private Function<Exception, Boolean> isRetryableException$value;
        private boolean number$set;
        private int number$value;

        public final StatusCodeAndExceptionRetry build() {
            Function anonymousClass1 = this.isRetryableException$value;
            if (!this.isRetryableException$set) {
                anonymousClass1 = new AnonymousClass1();
            }
            Function function = anonymousClass1;
            BiFunction anonymousClass2 = this.isRetryable$value;
            if (!this.isRetryable$set) {
                anonymousClass2 = new AnonymousClass2();
            }
            BiFunction biFunction = anonymousClass2;
            Function anonymousClass3 = this.isAcceptable$value;
            if (!this.isAcceptable$set) {
                anonymousClass3 = new AnonymousClass3();
            }
            Function function2 = anonymousClass3;
            int i = this.number$value;
            if (!this.number$set) {
                i = 1;
            }
            int i2 = i;
            int i3 = this.initialDelay$value;
            if (!this.initialDelay$set) {
                i3 = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
            }
            int i4 = i3;
            int i5 = this.extensionFactor$value;
            if (!this.extensionFactor$set) {
                i5 = 2;
            }
            return new StatusCodeAndExceptionRetry(function, biFunction, function2, i2, i4, i5);
        }

        public final void extensionFactor() {
            this.extensionFactor$value = 2;
            this.extensionFactor$set = true;
        }

        public final void initialDelay() {
            this.initialDelay$value = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
            this.initialDelay$set = true;
        }

        public final void isAcceptable(Function function) {
            this.isAcceptable$value = function;
            this.isAcceptable$set = true;
        }

        public final void isRetryable(BiFunction biFunction) {
            this.isRetryable$value = biFunction;
            this.isRetryable$set = true;
        }

        public final void isRetryableException(Function function) {
            this.isRetryableException$value = function;
            this.isRetryableException$set = true;
        }

        public final void number() {
            this.number$value = 1;
            this.number$set = true;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("StatusCodeAndExceptionRetry.StatusCodeAndExceptionRetryBuilder(isRetryableException$value=");
            sb.append(this.isRetryableException$value);
            sb.append(", isRetryable$value=");
            sb.append(this.isRetryable$value);
            sb.append(", isAcceptable$value=");
            sb.append(this.isAcceptable$value);
            sb.append(", number$value=");
            sb.append(this.number$value);
            sb.append(", initialDelay$value=");
            sb.append(this.initialDelay$value);
            sb.append(", extensionFactor$value=");
            return xs1.m(sb, this.extensionFactor$value, ")");
        }
    }

    public StatusCodeAndExceptionRetry(Function<Exception, Boolean> function, BiFunction<HttpResponse, Integer, Boolean> biFunction, Function<HttpResponse, Boolean> function2, int i, int i2, int i3) {
        this.isRetryableException = function;
        this.isRetryable = biFunction;
        this.isAcceptable = function2;
        this.number = i;
        this.initialDelay = i2;
        this.extensionFactor = i3;
    }

    @Override // com.microsoft.identity.common.java.net.IRetryPolicy
    public final HttpResponse attempt(mu7 mu7Var) throws ClientException {
        HttpResponse httpResponse;
        int i = this.number;
        int i2 = this.initialDelay;
        while (true) {
            try {
                httpResponse = (HttpResponse) mu7Var.call();
                if (i <= 0 || this.isAcceptable.apply(httpResponse).booleanValue() || !this.isRetryable.apply(httpResponse, Integer.valueOf(i)).booleanValue()) {
                    break;
                }
            } catch (Exception e) {
                if (i <= 0 || !this.isRetryableException.apply(e).booleanValue()) {
                    if (e instanceof ClientException) {
                        throw ((ClientException) e);
                    }
                    throw new RetryFailedException(e);
                }
            }
            int i3 = i - 1;
            if (i > 0) {
                try {
                    Thread.sleep(i2);
                    i2 *= this.extensionFactor;
                    if (i2 > 0) {
                        i = i3;
                    }
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            l0.e("This code should not be reachable");
            return null;
        }
        return httpResponse;
    }
}
