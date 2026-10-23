.class public final Ll1a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw99;


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:[B


# direct methods
.method public constructor <init>([BLd2a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lu48;->c(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lyk9;->c([B)Ljavax/crypto/spec/SecretKeySpec;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Ll1a;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    invoke-virtual {p2}, Ld2a;->b()[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ll1a;->b:[B

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    .line 25
    .line 26
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    iget-object v2, p0, Ll1a;->b:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, 0x1c

    .line 9
    .line 10
    if-lt v1, v3, :cond_2

    .line 11
    .line 12
    invoke-static {v2, p1}, Lau9;->b([B[B)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    array-length v0, v2

    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lyk9;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lyk9;->b()Ljavax/crypto/Cipher;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x2

    .line 30
    iget-object p0, p0, Ll1a;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 31
    .line 32
    invoke-virtual {v3, v4, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    array-length p0, p2

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 41
    .line 42
    .line 43
    :cond_0
    array-length p0, v2

    .line 44
    add-int/2addr p0, v1

    .line 45
    array-length p2, p1

    .line 46
    array-length v0, v2

    .line 47
    sub-int/2addr p2, v0

    .line 48
    sub-int/2addr p2, v1

    .line 49
    invoke-virtual {v3, p1, p0, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_1
    const-string p0, "Decryption failed (OutputPrefix mismatch)."

    .line 55
    .line 56
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    const-string p0, "ciphertext too short"

    .line 61
    .line 62
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    const-string p0, "ciphertext is null"

    .line 67
    .line 68
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public final b([B[B)[B
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/16 v1, 0xc

    .line 5
    .line 6
    invoke-static {v1}, Lrt9;->a(I)[B

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    array-length v3, v2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v4, v3}, Lyk9;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {}, Lyk9;->b()Ljavax/crypto/Cipher;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x1

    .line 21
    iget-object v7, p0, Ll1a;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 22
    .line 23
    invoke-virtual {v5, v6, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    array-length v3, p2

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 32
    .line 33
    .line 34
    :cond_0
    array-length p2, p1

    .line 35
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget-object p0, p0, Ll1a;->b:[B

    .line 40
    .line 41
    array-length v3, p0

    .line 42
    const v6, 0x7ffffff3

    .line 43
    .line 44
    .line 45
    sub-int/2addr v6, v3

    .line 46
    if-gt p2, v6, :cond_2

    .line 47
    .line 48
    array-length v3, p0

    .line 49
    add-int/2addr v3, v1

    .line 50
    add-int/2addr v3, p2

    .line 51
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    array-length v3, p0

    .line 56
    invoke-static {v2, v4, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    array-length v8, p1

    .line 60
    array-length p0, p0

    .line 61
    add-int/lit8 v10, p0, 0xc

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v6, p1

    .line 65
    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-ne p0, p2, :cond_1

    .line 70
    .line 71
    return-object v9

    .line 72
    :cond_1
    const-string p0, "not enough data written"

    .line 73
    .line 74
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    const-string p0, "plaintext too long"

    .line 79
    .line 80
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_3
    const-string p0, "plaintext is null"

    .line 85
    .line 86
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method
