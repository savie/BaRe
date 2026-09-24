.class abstract Lcom/jcraft/jsch/jce/AESGCM;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public b:Ljavax/crypto/spec/SecretKeySpec;

.field public c:I

.field public d:Ljava/nio/ByteBuffer;

.field public e:J


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
.method public doFinal([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->d:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide p3

    .line 18
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    add-long/2addr p3, v0

    .line 21
    iget-wide v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->e:J

    .line 22
    .line 23
    cmp-long p1, p3, v0

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->d:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->a:Ljavax/crypto/Cipher;

    .line 33
    .line 34
    iget p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->c:I

    .line 35
    .line 36
    iget-object p3, p0, Lcom/jcraft/jsch/jce/AESGCM;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    .line 38
    new-instance p4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/jcraft/jsch/jce/AESGCM;->d:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const/16 p5, 0x80

    .line 47
    .line 48
    invoke-direct {p4, p5, p0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string p0, "GCM IV would be reused"

    .line 56
    .line 57
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public getIVSize()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public getTagSize()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public init(I[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0xc

    .line 4
    .line 5
    if-le v0, v2, :cond_0

    .line 6
    .line 7
    new-array v0, v2, [B

    .line 8
    .line 9
    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    array-length v2, p2

    .line 18
    if-le v2, v0, :cond_1

    .line 19
    .line 20
    new-array v2, v0, [B

    .line 21
    .line 22
    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    move-object p2, v2

    .line 26
    :cond_1
    if-nez p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x2

    .line 31
    :goto_0
    iput p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->c:I

    .line 32
    .line 33
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->d:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->e:J

    .line 45
    .line 46
    :try_start_0
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 47
    .line 48
    const-string v0, "AES"

    .line 49
    .line 50
    invoke-direct {p1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    .line 55
    const-string p1, "AES/GCM/NoPadding"

    .line 56
    .line 57
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->a:Ljavax/crypto/Cipher;

    .line 62
    .line 63
    iget p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->c:I

    .line 64
    .line 65
    iget-object v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 66
    .line 67
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 68
    .line 69
    const/16 v2, 0x80

    .line 70
    .line 71
    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception p1

    .line 79
    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->a:Ljavax/crypto/Cipher;

    .line 81
    .line 82
    iput-object p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->d:Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    throw p1
.end method

.method public isAEAD()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isCBC()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public update([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/AESGCM;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateAAD([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/AESGCM;->a:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
