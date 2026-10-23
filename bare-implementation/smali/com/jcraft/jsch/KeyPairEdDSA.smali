.class abstract Lcom/jcraft/jsch/KeyPairEdDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public t:[B

.field public u:[B


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 5
    .line 6
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final forSSHAgent()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->k()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 26
    .line 27
    array-length v3, v3

    .line 28
    add-int/2addr v2, v3

    .line 29
    new-array v3, v2, [B

    .line 30
    .line 31
    array-length v4, v1

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 37
    .line 38
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 39
    .line 40
    array-length v4, v4

    .line 41
    array-length v6, v1

    .line 42
    invoke-static {v1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3, v5, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-static {p0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    new-array v1, p0, [B

    .line 64
    .line 65
    invoke-virtual {v0, v1, v5, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_0
    const-string p0, "key is encrypted."

    .line 70
    .line 71
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->k()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 17
    .line 18
    filled-new-array {v0, p0}, [[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 27
    .line 28
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getSignature([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/SignatureEdDSA;->setPrvKey([B)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->sign()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 42
    .line 43
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    filled-new-array {p2, p1}, [[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p0, p1, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    return-object p0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception p1

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-interface {p2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p2, "failed to generate signature"

    .line 81
    .line 82
    invoke-interface {p0, v1, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-object v0
.end method

.method public final getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;

    move-result-object p0

    return-object p0
.end method

.method public final getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-class v1, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/jcraft/jsch/Signature;->init()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getPublicKeyBlob()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getPublicKeyBlob()[B

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 63
    .line 64
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SignatureEdDSA;->setPubKey([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x3

    .line 75
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v1, "failed to create verifier"

    .line 86
    .line 87
    invoke-interface {p0, v2, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-object v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    :try_start_0
    const-string p1, "keypairgen.eddsa"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-class v0, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->y()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getKeySize()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->init(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPub()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPrv()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final i()[B
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final j()[B
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final k()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->z()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 6
    .line 7
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final l()[B
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->k()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :try_start_0
    array-length v4, v3

    .line 18
    array-length v2, v2

    .line 19
    add-int/2addr v4, v2

    .line 20
    new-array v2, v4, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    :try_start_1
    array-length v5, v3

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static {v3, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 28
    .line 29
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 30
    .line 31
    array-length v5, v5

    .line 32
    array-length v7, v3

    .line 33
    invoke-static {v3, v6, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    array-length v3, v0

    .line 37
    add-int/lit8 v3, v3, 0x4

    .line 38
    .line 39
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 40
    .line 41
    array-length v5, v5

    .line 42
    add-int/lit8 v5, v5, 0x4

    .line 43
    .line 44
    add-int/2addr v5, v3

    .line 45
    add-int/lit8 v3, v4, 0x4

    .line 46
    .line 47
    add-int/2addr v3, v5

    .line 48
    new-instance v5, Lcom/jcraft/jsch/Buffer;

    .line 49
    .line 50
    invoke-direct {v5, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_2
    array-length v1, v0

    .line 54
    invoke-virtual {v5, v0, v6, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 58
    .line 59
    invoke-virtual {v5, p0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v2, v6, v4}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v5, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    move-object v1, v2

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    move-object v1, v5

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :catch_2
    move-exception p0

    .line 82
    move-object v2, v1

    .line 83
    :goto_0
    if-eqz v1, :cond_1

    .line 84
    .line 85
    :try_start_3
    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 86
    .line 87
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 88
    .line 89
    .line 90
    :cond_1
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :goto_1
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    :goto_2
    return-object v1
.end method

.method public final m()[B
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final s([B)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "failed to parse key"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne p1, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getKeySize()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    array-length v0, p1

    .line 68
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    new-instance v7, Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {v7, p1, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 73
    .line 74
    .line 75
    iput-object v7, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 76
    .line 77
    return v3

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 81
    .line 82
    const-string p1, "check failed"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, v6, v2, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_2
    if-ne v0, v6, :cond_3

    .line 108
    .line 109
    :try_start_1
    const-string v0, "keypairgen_fromprivate.eddsa"

    .line 110
    .line 111
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-class v1, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->y()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v0, v1, p1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->init(Ljava/lang/String;[B)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPub()[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->t:[B

    .line 148
    .line 149
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPrv()[B

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    return v3

    .line 156
    :catch_1
    move-exception p0

    .line 157
    goto :goto_1

    .line 158
    :catch_2
    move-exception p0

    .line 159
    :goto_1
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-interface {p1, v6, v2, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_3
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-interface {p0, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_5

    .line 186
    .line 187
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-interface {p0, v6, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return v4

    .line 195
    :cond_4
    :goto_2
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 196
    .line 197
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 198
    .line 199
    .line 200
    array-length p1, p1

    .line 201
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 202
    .line 203
    .line 204
    :try_start_2
    const-string p1, ""

    .line 205
    .line 206
    invoke-virtual {v0, v3, p1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    aget-object p1, p1, v4

    .line 211
    .line 212
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->u:[B
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_3

    .line 213
    .line 214
    return v3

    .line 215
    :catch_3
    move-exception p0

    .line 216
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-interface {p1, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_5

    .line 225
    .line 226
    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-interface {p1, v6, v2, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    :cond_5
    :goto_3
    return v4
.end method

.method public abstract y()Ljava/lang/String;
.end method

.method public abstract z()Ljava/lang/String;
.end method
