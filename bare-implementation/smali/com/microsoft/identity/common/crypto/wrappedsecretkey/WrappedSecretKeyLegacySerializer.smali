.class public final Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyLegacySerializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/crypto/wrappedsecretkey/IWrappedSecretKeySerializer;


# virtual methods
.method public final deserialize([B)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;
    .locals 2

    .line 1
    new-instance p0, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;

    .line 2
    .line 3
    const-string v0, "AES"

    .line 4
    .line 5
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final serialize(Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getWrappedKeyData()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
