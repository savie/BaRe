.class public Lcom/jcraft/jsch/jce/ARCFOUR256;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field public a:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getBlockSize()I
    .locals 0

    .line 1
    const/16 p0, 0x20

    .line 2
    .line 3
    return p0
.end method

.method public final getIVSize()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public final init(I[B[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string p3, "RC4"

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    if-le v0, v2, :cond_0

    .line 8
    .line 9
    new-array v0, v2, [B

    .line 10
    .line 11
    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    move-object p2, v0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    .line 20
    .line 21
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 22
    .line 23
    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    move p1, p3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x2

    .line 34
    :goto_0
    invoke-virtual {p2, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    .line 36
    .line 37
    new-array v3, p3, [B

    .line 38
    .line 39
    :goto_1
    const/16 p1, 0x600

    .line 40
    .line 41
    if-ge v1, p1, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    move-object v6, v3

    .line 49
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    move-object p1, v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    return-void

    .line 59
    :goto_2
    const/4 p2, 0x0

    .line 60
    iput-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    .line 61
    .line 62
    throw p1
.end method

.method public final isCBC()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final update([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
