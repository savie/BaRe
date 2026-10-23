.class abstract Lcom/jcraft/jsch/bc/SignatureEdDSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/SignatureEdDSA;


# instance fields
.field public a:Lyf7;


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
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Ed25519"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "Ed448"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "invalid curve "

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Lfs2;

    .line 53
    .line 54
    invoke-direct {v0}, Lfs2;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    new-instance v0, Lks2;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    new-array v1, v1, [B

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lks2;-><init>([B)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 69
    .line 70
    return-void
.end method

.method public setPrvKey([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Ed25519"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcs2;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcs2;-><init>([B)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 20
    .line 21
    invoke-interface {p0, v1, v0}, Lyf7;->b(ZLn60;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lhs2;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lhs2;-><init>([B)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 31
    .line 32
    invoke-interface {p0, v1, v0}, Lyf7;->b(ZLn60;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public setPubKey([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Ed25519"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lds2;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lds2;-><init>([B)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 20
    .line 21
    invoke-interface {p0, v1, v0}, Lyf7;->b(ZLn60;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lis2;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lis2;-><init>([B)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 31
    .line 32
    invoke-interface {p0, v1, v0}, Lyf7;->b(ZLn60;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 2
    .line 3
    invoke-interface {p0}, Lyf7;->c()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/security/SignatureException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public update([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    invoke-interface {p0, p1, v0}, Lyf7;->d([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/security/SignatureException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public verify([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/jcraft/jsch/bc/SignatureEdDSA;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 32
    .line 33
    new-array v2, v1, [B

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    move-object p1, v2

    .line 40
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SignatureEdDSA;->a:Lyf7;

    .line 41
    .line 42
    invoke-interface {p0, p1}, Lyf7;->a([B)Z

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/security/SignatureException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method
