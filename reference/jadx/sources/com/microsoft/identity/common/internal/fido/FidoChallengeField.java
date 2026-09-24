package com.microsoft.identity.common.internal.fido;

import com.microsoft.identity.common.java.exception.ClientException;
import defpackage.el1;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.qt3;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FidoChallengeField<K> {
    public static final Companion Companion = new Companion();
    private final FidoRequestField field;
    private final qt3 throwIfInvalid;
    private final K value;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Companion {
        public static void throwIfInvalidOptionalListParameter(FidoRequestField fidoRequestField, List list) throws ClientException {
            fidoRequestField.getClass();
            if (list != null) {
                if (list.isEmpty() || pe4.d(el1.S0(list), "")) {
                    throw new ClientException("passkey_protocol_request_parsing_error", fidoRequestField.getFieldName().concat(" is empty"), null);
                }
            }
        }

        public static void throwIfInvalidRequiredParameter(FidoRequestField fidoRequestField, String str) throws ClientException {
            fidoRequestField.getClass();
            if (str == null) {
                throw new ClientException("passkey_protocol_request_parsing_error", fidoRequestField.getFieldName().concat(" not provided"), null);
            }
            if (nq7.j0(str)) {
                throw new ClientException("passkey_protocol_request_parsing_error", fidoRequestField.getFieldName().concat(" is empty"), null);
            }
        }
    }

    public FidoChallengeField(FidoRequestField fidoRequestField, K k, qt3 qt3Var) {
        this.field = fidoRequestField;
        this.value = k;
        this.throwIfInvalid = qt3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FidoChallengeField)) {
            return false;
        }
        FidoChallengeField fidoChallengeField = (FidoChallengeField) obj;
        return this.field == fidoChallengeField.field && pe4.d(this.value, fidoChallengeField.value) && this.throwIfInvalid.equals(fidoChallengeField.throwIfInvalid);
    }

    public final K getOrThrow() throws ClientException {
        return (K) this.throwIfInvalid.invoke(this.field, this.value);
    }

    public final int hashCode() {
        int iHashCode = this.field.hashCode() * 31;
        K k = this.value;
        return this.throwIfInvalid.hashCode() + ((iHashCode + (k == null ? 0 : k.hashCode())) * 31);
    }

    public final String toString() {
        return "FidoChallengeField(field=" + this.field + ", value=" + this.value + ", throwIfInvalid=" + this.throwIfInvalid + ')';
    }
}
