package org.swiftapps.swiftbackup.cloud.protocols;

import defpackage.dj7;
import defpackage.mf8;
import defpackage.pw5;
import defpackage.zf4;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class CloudOperationsImpl$LoginResult {
    private final Exception e;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Failed extends CloudOperationsImpl$LoginResult {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(Exception exc) {
            super(exc, null);
            exc.getClass();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class InvalidCredentials extends CloudOperationsImpl$LoginResult {
        public static final InvalidCredentials INSTANCE = new InvalidCredentials();

        private InvalidCredentials() {
            super(new zf4(), null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Success extends CloudOperationsImpl$LoginResult {
        /* JADX WARN: Multi-variable type inference failed */
        public Success() {
            super(null, 0 == true ? 1 : 0);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class TempConnectionError extends CloudOperationsImpl$LoginResult {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TempConnectionError(Exception exc) {
            super(exc, null);
            exc.getClass();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class UnknownError extends CloudOperationsImpl$LoginResult {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownError(Exception exc) {
            super(exc, null);
            exc.getClass();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class UnknownHostKey extends CloudOperationsImpl$LoginResult {
        private final List<pw5> properties;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownHostKey(Exception exc, List<pw5> list) {
            super(exc, null);
            exc.getClass();
            list.getClass();
            this.properties = list;
        }

        public final List<pw5> getProperties() {
            return this.properties;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class UntrustedCertificate extends CloudOperationsImpl$LoginResult {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UntrustedCertificate(mf8 mf8Var) {
            super(mf8Var, null);
            mf8Var.getClass();
        }
    }

    private CloudOperationsImpl$LoginResult(Exception exc) {
        this.e = exc;
    }

    public final Exception getE() {
        return this.e;
    }

    public String toString() {
        return this.e == null ? getClass().getSimpleName() : dj7.k(getClass().getSimpleName(), ": ", this.e.getMessage());
    }

    public /* synthetic */ CloudOperationsImpl$LoginResult(Exception exc, DefaultConstructorMarker defaultConstructorMarker) {
        this(exc);
    }
}
