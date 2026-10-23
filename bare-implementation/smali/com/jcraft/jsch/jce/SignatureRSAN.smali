.class abstract Lcom/jcraft/jsch/jce/SignatureRSAN;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/SignatureRSA;


# instance fields
.field public a:Ljava/security/Signature;

.field public b:Ljava/security/KeyFactory;


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

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/jce/SignatureRSAN;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "rsa-sha2-256"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    const-string v1, "ssh-rsa-sha256@ssh.com"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string v1, "rsa-sha2-512"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_4

    .line 29
    .line 30
    const-string v1, "ssh-rsa-sha512@ssh.com"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v1, "ssh-rsa-sha384@ssh.com"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const-string v0, "SHA384withRSA"

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const-string v1, "ssh-rsa-sha224@ssh.com"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const-string v0, "SHA224withRSA"

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const-string v0, "SHA1withRSA"

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    :goto_0
    const-string v0, "SHA512withRSA"

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    :goto_1
    const-string v0, "SHA256withRSA"

    .line 68
    .line 69
    :goto_2
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 74
    .line 75
    const-string v0, "RSA"

    .line 76
    .line 77
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->b:Ljava/security/KeyFactory;

    .line 82
    .line 83
    return-void
.end method

.method public setPrvKey([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    .line 2
    .line 3
    new-instance v1, Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->b:Ljava/security/KeyFactory;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setPubKey([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    .line 2
    .line 3
    new-instance v1, Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->b:Ljava/security/KeyFactory;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public sign()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public update([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    .line 4
    .line 5
    .line 6
    return-void
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
    const-string v2, "ssh-rsa"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string v2, "rsa-sha2-256"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string v2, "rsa-sha2-512"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    const-string v2, "ssh-rsa-sha224@ssh.com"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    const-string v2, "ssh-rsa-sha256@ssh.com"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    const-string v2, "ssh-rsa-sha384@ssh.com"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    const-string v2, "ssh-rsa-sha512@ssh.com"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/jce/SignatureRSAN;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x0

    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    return v2

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 90
    .line 91
    new-array v3, v1, [B

    .line 92
    .line 93
    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    move-object p1, v3

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureRSAN;->a:Ljava/security/Signature;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0
.end method
