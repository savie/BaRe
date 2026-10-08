package com.microsoft.identity.common.crypto.wrappedsecretkey;

import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.opentelemetry.NoopTraceState;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.logging.Logger;
import defpackage.c6;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.qj7;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class WrappedSecretKey {
    private final String algorithm;
    private final String cipherTransformation;
    private final byte[] wrappedKeyData;

    public WrappedSecretKey(String str, String str2, byte[] bArr) {
        str.getClass();
        str2.getClass();
        this.wrappedKeyData = bArr;
        this.algorithm = str;
        this.cipherTransformation = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!WrappedSecretKey.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        WrappedSecretKey wrappedSecretKey = (WrappedSecretKey) obj;
        return Arrays.equals(this.wrappedKeyData, wrappedSecretKey.wrappedKeyData) && pe4.d(this.algorithm, wrappedSecretKey.algorithm) && pe4.d(this.cipherTransformation, wrappedSecretKey.cipherTransformation);
    }

    public final String getAlgorithm() {
        return this.algorithm;
    }

    public final String getCipherTransformation() {
        return this.cipherTransformation;
    }

    public final byte[] getWrappedKeyData() {
        return this.wrappedKeyData;
    }

    public final int hashCode() {
        return this.cipherTransformation.hashCode() + fz5.g(Arrays.hashCode(this.wrappedKeyData) * 31, 31, this.algorithm);
    }

    public final byte[] serialize() {
        IWrappedSecretKeySerializer wrappedSecretKeyLegacySerializer;
        int intValue = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.getIntValue(CommonFlight.WRAPPED_SECRET_KEY_SERIALIZER_VERSION);
        SpanExtension.current().getClass();
        System.nanoTime();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("WrappedSecretKeySerializerManager:getSerializer", "Getting serializer for ID: " + intValue);
        if (intValue == 0) {
            wrappedSecretKeyLegacySerializer = new WrappedSecretKeyLegacySerializer();
        } else {
            if (intValue != 1) {
                c6.f(fz5.j(intValue, "Unsupported serializer ID: "));
                return null;
            }
            wrappedSecretKeyLegacySerializer = new NoopTraceState();
        }
        byte[] bArrSerialize = wrappedSecretKeyLegacySerializer.serialize(this);
        System.nanoTime();
        SpanExtension.current().getClass();
        qj7 qj7VarCurrent = SpanExtension.current();
        int length = bArrSerialize.length;
        qj7VarCurrent.getClass();
        return bArrSerialize;
    }

    public final String toString() {
        return "WrappedSecretKey(wrappedKeyData=" + Arrays.toString(this.wrappedKeyData) + ", algorithm=" + this.algorithm + ", cipherTransformation=" + this.cipherTransformation + ')';
    }
}
