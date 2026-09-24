.class public final Lwr9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw99;


# instance fields
.field public final a:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 10
    .line 11
    iput-object p2, p0, Lwr9;->a:Ljavax/crypto/SecretKey;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 17
    .line 18
    const-string p2, "Keystore cannot load the key with ID: "

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 7
    .line 8
    const/16 v1, 0x80

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0xc

    .line 12
    .line 13
    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 14
    .line 15
    .line 16
    const-string v1, "AES/GCM/NoPadding"

    .line 17
    .line 18
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    iget-object p0, p0, Lwr9;->a:Ljavax/crypto/SecretKey;

    .line 24
    .line 25
    invoke-virtual {v1, v2, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 29
    .line 30
    .line 31
    array-length p0, p1

    .line 32
    sub-int/2addr p0, v3

    .line 33
    invoke-virtual {v1, p1, v3, p0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljavax/crypto/BadPaddingException;

    .line 39
    .line 40
    const-string p1, "ciphertext too short"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final b([B[B)[B
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const v1, 0x7fffffe3

    .line 3
    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gt v0, v1, :cond_2

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    add-int/lit8 v0, v0, 0x1c

    .line 10
    .line 11
    new-array v7, v0, [B

    .line 12
    .line 13
    const-string v0, "AES/GCM/NoPadding"

    .line 14
    .line 15
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v0, 0x1

    .line 20
    iget-object p0, p0, Lwr9;->a:Ljavax/crypto/SecretKey;

    .line 21
    .line 22
    invoke-virtual {v3, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 26
    .line 27
    .line 28
    array-length v6, p1

    .line 29
    const/16 v8, 0xc

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v4, p1

    .line 33
    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    array-length p1, v4

    .line 38
    add-int/lit8 p1, p1, 0x10

    .line 39
    .line 40
    if-ne p0, p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    array-length p1, p0

    .line 47
    const/16 p2, 0xc

    .line 48
    .line 49
    if-ne p1, p2, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {p0, p1, v7, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    return-object v7

    .line 56
    :cond_0
    const-string p0, "IV has unexpected length"

    .line 57
    .line 58
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_1
    const-string p0, "encryption failed: bytesWritten is wrong"

    .line 63
    .line 64
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_2
    const-string p0, "plaintext too long"

    .line 69
    .line 70
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method
