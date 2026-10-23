.class abstract Lcom/jcraft/jsch/jce/HMAC;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljavax/crypto/Mac;

.field public final f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->f:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/jce/HMAC;->e:Ljavax/crypto/Mac;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1, p2, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public getBlockSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/jce/HMAC;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/HMAC;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public init([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lcom/jcraft/jsch/jce/HMAC;->b:I

    .line 3
    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->e:Ljavax/crypto/Mac;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public isEtM()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/jce/HMAC;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public update(I)V
    .locals 4

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->f:[B

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-byte v0, v1, v2

    .line 8
    .line 9
    ushr-int/lit8 v0, p1, 0x10

    .line 10
    .line 11
    int-to-byte v0, v0

    .line 12
    const/4 v3, 0x1

    .line 13
    aput-byte v0, v1, v3

    .line 14
    .line 15
    ushr-int/lit8 v0, p1, 0x8

    .line 16
    .line 17
    int-to-byte v0, v0

    .line 18
    const/4 v3, 0x2

    .line 19
    aput-byte v0, v1, v3

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v1, v0

    .line 24
    .line 25
    const/4 p1, 0x4

    .line 26
    invoke-virtual {p0, v1, v2, p1}, Lcom/jcraft/jsch/jce/HMAC;->update([BII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jcraft/jsch/jce/HMAC;->e:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
