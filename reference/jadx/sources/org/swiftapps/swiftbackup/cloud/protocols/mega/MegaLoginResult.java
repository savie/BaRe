package org.swiftapps.swiftbackup.cloud.protocols.mega;

import defpackage.dj7;
import defpackage.io4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class MegaLoginResult {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Failed extends MegaLoginResult {
        private final Exception e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(Exception exc) {
            super(null);
            exc.getClass();
            this.e = exc;
        }

        public final Exception getE() {
            return this.e;
        }

        public String toString() {
            return dj7.k(Failed.class.getSimpleName(), ": ", io4.b(this.e));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class MultiFactorAuthRequired extends MegaLoginResult {
        private final Exception e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MultiFactorAuthRequired(Exception exc) {
            super(null);
            exc.getClass();
            this.e = exc;
        }

        public final Exception getE() {
            return this.e;
        }

        public String toString() {
            return dj7.k(MultiFactorAuthRequired.class.getSimpleName(), ": ", io4.b(this.e));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Success extends MegaLoginResult {
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof Success);
        }

        public int hashCode() {
            return -1627205819;
        }

        public String toString() {
            return "Success";
        }
    }

    public /* synthetic */ MegaLoginResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private MegaLoginResult() {
    }
}
