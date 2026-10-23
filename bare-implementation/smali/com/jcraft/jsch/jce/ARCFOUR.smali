.class public Lcom/jcraft/jsch/jce/ARCFOUR;
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
    const/16 p0, 0x10

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
    .locals 3
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
    const/16 v1, 0x10

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    new-array v0, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    iput-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    .line 20
    .line 21
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 22
    .line 23
    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x2

    .line 33
    :goto_0
    invoke-virtual {p2, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    .line 40
    .line 41
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
    iget-object p0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
