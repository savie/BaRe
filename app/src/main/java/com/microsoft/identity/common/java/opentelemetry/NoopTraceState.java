package com.microsoft.identity.common.java.opentelemetry;

import com.microsoft.identity.common.crypto.wrappedsecretkey.IWrappedSecretKeySerializer;
import com.microsoft.identity.common.crypto.wrappedsecretkey.WrappedSecretKey;
import com.microsoft.identity.common.crypto.wrappedsecretkey.WrappedSecretKeyMetadata;
import com.microsoft.identity.common.logging.Logger;
import defpackage.a98;
import defpackage.qn8;
import defpackage.rs9;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NoopTraceState implements IWrappedSecretKeySerializer, a98 {
    @Override // com.microsoft.identity.common.crypto.wrappedsecretkey.IWrappedSecretKeySerializer
    public WrappedSecretKey deserialize(byte[] bArr) throws IOException {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AbstractWrappedSecretKeySerializer:loadFromNewFormat", "Loading key using metadata format");
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.getInt();
        byteBufferWrap.getInt();
        byte[] bArr2 = new byte[byteBufferWrap.getInt()];
        byteBufferWrap.get(bArr2);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2);
        try {
            DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
            try {
                String utf = dataInputStream.readUTF();
                String utf2 = dataInputStream.readUTF();
                int i2 = dataInputStream.readInt();
                utf.getClass();
                utf2.getClass();
                WrappedSecretKeyMetadata wrappedSecretKeyMetadata = new WrappedSecretKeyMetadata(utf, utf2, i2);
                dataInputStream.close();
                byteArrayInputStream.close();
                if (wrappedSecretKeyMetadata.getKeyLength() != byteBufferWrap.remaining()) {
                    com.microsoft.identity.common.java.logging.Logger.warn("AbstractWrappedSecretKeySerializer:loadFromNewFormat", "Key data length mismatch. Expected: " + wrappedSecretKeyMetadata.getKeyLength() + ", Actual: " + byteBufferWrap.remaining());
                }
                byte[] bArr3 = new byte[byteBufferWrap.remaining()];
                byteBufferWrap.get(bArr3);
                com.microsoft.identity.common.java.logging.Logger.verbose("AbstractWrappedSecretKeySerializer:loadFromNewFormat", "Successfully loaded key with algorithm: " + wrappedSecretKeyMetadata.getAlgorithm() + ", transformation: " + wrappedSecretKeyMetadata.getCipherTransformation());
                return new WrappedSecretKey(wrappedSecretKeyMetadata.getAlgorithm(), wrappedSecretKeyMetadata.getCipherTransformation(), bArr3);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(dataInputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(byteArrayInputStream, th3);
                throw th4;
            }
        }
    }

    @Override // defpackage.a98
    public boolean isEmpty() {
        return true;
    }

    @Override // com.microsoft.identity.common.crypto.wrappedsecretkey.IWrappedSecretKeySerializer
    public byte[] serialize(WrappedSecretKey wrappedSecretKey) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeUTF(wrappedSecretKey.getAlgorithm());
                dataOutputStream.writeUTF(wrappedSecretKey.getCipherTransformation());
                dataOutputStream.writeInt(wrappedSecretKey.getWrappedKeyData().length);
                dataOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                byteArray.getClass();
                byte[] bArrArray = ByteBuffer.allocate(byteArray.length + 12 + wrappedSecretKey.getWrappedKeyData().length).putInt(16727211).putInt(1).putInt(byteArray.length).put(byteArray).put(wrappedSecretKey.getWrappedKeyData()).array();
                bArrArray.getClass();
                return bArrArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(dataOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(byteArrayOutputStream, th3);
                throw th4;
            }
        }
    }

    @Override // defpackage.a98
    public void forEach(qn8 qn8Var) {
    }
}
