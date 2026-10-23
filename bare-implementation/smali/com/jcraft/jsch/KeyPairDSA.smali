.class Lcom/jcraft/jsch/KeyPairDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final z:[B


# instance fields
.field public t:[B

.field public u:[B

.field public v:[B

.field public w:[B

.field public x:[B

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "-----BEGIN DSA PRIVATE KEY-----"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/jcraft/jsch/KeyPairDSA;->z:[B

    .line 12
    .line 13
    const-string v1, "-----END DSA PRIVATE KEY-----"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/jcraft/jsch/KeyPairDSA;->A:[B

    .line 20
    .line 21
    const-string v1, "ssh-dss"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->B:[B

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x400

    .line 5
    .line 6
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 9
    .line 10
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 11
    .line 12
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 13
    .line 14
    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 15
    .line 16
    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/math/BigInteger;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static y(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    const-string v1, "invalid key format"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    aget-object v3, p1, v0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    aget-object v4, p1, v0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    aget-object v5, p1, v0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    aget-object v6, p1, v0

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    aget-object v7, p1, v0

    .line 22
    .line 23
    new-instance v1, Lcom/jcraft/jsch/KeyPairDSA;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x6

    .line 30
    aget-object p0, p1, p0

    .line 31
    .line 32
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput-object p0, v1, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    iput p0, v1, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 40
    .line 41
    return-object v1
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 2
    .line 3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final forSSHAgent()[B
    .locals 3
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
    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->B:[B

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-static {p0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    new-array v1, p0, [B

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_0
    const-string p0, "key is encrypted."

    .line 63
    .line 64
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public final getKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 4

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
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

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
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 13
    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 15
    .line 16
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 17
    .line 18
    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->B:[B

    .line 19
    .line 20
    filled-new-array {v3, v0, v1, v2, p0}, [[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 29
    .line 30
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "signature.dss"

    .line 3
    .line 4
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/jcraft/jsch/SignatureDSA;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/jcraft/jsch/SignatureDSA;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 32
    .line 33
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 34
    .line 35
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 36
    .line 37
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 38
    .line 39
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/jcraft/jsch/SignatureDSA;->setPrvKey([B[B[B[B)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->sign()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->B:[B

    .line 50
    .line 51
    filled-new-array {v1, p1}, [[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p1, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x3

    .line 70
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v1, "failed to generate signature"

    .line 81
    .line 82
    invoke-interface {p0, v2, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-object v0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPairDSA;->getSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "signature.dss"

    .line 3
    .line 4
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/jcraft/jsch/SignatureDSA;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/jcraft/jsch/SignatureDSA;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 85
    .line 86
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 87
    .line 88
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 89
    .line 90
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 91
    .line 92
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/4 v3, 0x3

    .line 103
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string v2, "failed to create verifier"

    .line 114
    .line 115
    invoke-interface {p0, v3, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    return-object v0
.end method

.method public final getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getVerifier()Lcom/jcraft/jsch/Signature;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 2
    .line 3
    :try_start_0
    const-string v0, "keypairgen.dsa"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v1, Lcom/jcraft/jsch/KeyPairGenDSA;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/jcraft/jsch/KeyPairGenDSA;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenDSA;->init(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getP()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getQ()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getG()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getY()[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getX()[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final i()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairDSA;->z:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairDSA;->A:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairDSA;->B:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final l()[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->B:[B

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 11
    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 23
    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_0
    array-length v7, v1

    .line 28
    add-int/lit8 v7, v7, 0x4

    .line 29
    .line 30
    array-length v8, v2

    .line 31
    add-int/lit8 v8, v8, 0x4

    .line 32
    .line 33
    add-int/2addr v8, v7

    .line 34
    const/4 v7, 0x0

    .line 35
    aget-byte v2, v2, v7

    .line 36
    .line 37
    and-int/lit16 v2, v2, 0x80

    .line 38
    .line 39
    ushr-int/lit8 v2, v2, 0x7

    .line 40
    .line 41
    add-int/2addr v8, v2

    .line 42
    array-length v2, v3

    .line 43
    add-int/lit8 v2, v2, 0x4

    .line 44
    .line 45
    add-int/2addr v2, v8

    .line 46
    aget-byte v3, v3, v7

    .line 47
    .line 48
    and-int/lit16 v3, v3, 0x80

    .line 49
    .line 50
    ushr-int/lit8 v3, v3, 0x7

    .line 51
    .line 52
    add-int/2addr v2, v3

    .line 53
    array-length v3, v4

    .line 54
    add-int/lit8 v3, v3, 0x4

    .line 55
    .line 56
    add-int/2addr v3, v2

    .line 57
    aget-byte v2, v4, v7

    .line 58
    .line 59
    and-int/lit16 v2, v2, 0x80

    .line 60
    .line 61
    ushr-int/lit8 v2, v2, 0x7

    .line 62
    .line 63
    add-int/2addr v3, v2

    .line 64
    array-length v2, v5

    .line 65
    add-int/lit8 v2, v2, 0x4

    .line 66
    .line 67
    add-int/2addr v2, v3

    .line 68
    aget-byte v3, v5, v7

    .line 69
    .line 70
    and-int/lit16 v3, v3, 0x80

    .line 71
    .line 72
    ushr-int/lit8 v3, v3, 0x7

    .line 73
    .line 74
    add-int/2addr v2, v3

    .line 75
    array-length v3, v6

    .line 76
    add-int/lit8 v3, v3, 0x4

    .line 77
    .line 78
    add-int/2addr v3, v2

    .line 79
    aget-byte v2, v6, v7

    .line 80
    .line 81
    and-int/lit16 v2, v2, 0x80

    .line 82
    .line 83
    ushr-int/lit8 v2, v2, 0x7

    .line 84
    .line 85
    add-int/2addr v3, v2

    .line 86
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 87
    .line 88
    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .line 90
    .line 91
    :try_start_1
    array-length v0, v1

    .line 92
    invoke-virtual {v2, v1, v7, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 116
    .line 117
    invoke-virtual {v2, p0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 118
    .line 119
    .line 120
    iget-object p0, v2, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .line 122
    return-object p0

    .line 123
    :catch_0
    move-exception p0

    .line 124
    move-object v0, v2

    .line 125
    goto :goto_0

    .line 126
    :catch_1
    move-exception p0

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    .line 128
    .line 129
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 130
    .line 131
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 132
    .line 133
    .line 134
    :cond_1
    throw p0

    .line 135
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final m()[B
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    add-int/lit8 v1, v1, 0x3

    .line 7
    .line 8
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    invoke-static {v2}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    add-int/2addr v2, v1

    .line 20
    add-int/2addr v2, v0

    .line 21
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 30
    .line 31
    array-length v2, v2

    .line 32
    add-int/2addr v1, v2

    .line 33
    add-int/2addr v1, v0

    .line 34
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 35
    .line 36
    array-length v2, v2

    .line 37
    invoke-static {v2}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v2, v1

    .line 42
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    add-int/2addr v2, v1

    .line 46
    add-int/2addr v2, v0

    .line 47
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 48
    .line 49
    array-length v1, v1

    .line 50
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v2

    .line 55
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 56
    .line 57
    array-length v2, v2

    .line 58
    add-int/2addr v1, v2

    .line 59
    add-int/2addr v1, v0

    .line 60
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    invoke-static {v2}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v1

    .line 68
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 69
    .line 70
    array-length v1, v1

    .line 71
    add-int/2addr v2, v1

    .line 72
    invoke-static {v2}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    add-int/2addr v1, v2

    .line 78
    new-array v1, v1, [B

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    const/16 v4, 0x30

    .line 82
    .line 83
    aput-byte v4, v1, v3

    .line 84
    .line 85
    invoke-static {v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    new-array v0, v0, [B

    .line 90
    .line 91
    invoke-static {v2, v1, v0}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 96
    .line 97
    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 102
    .line 103
    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 114
    .line 115
    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 120
    .line 121
    invoke-static {v0, v1, p0}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 122
    .line 123
    .line 124
    return-object v1
.end method

.method public final s([B)Z
    .locals 10

    .line 1
    const-string v0, "failed to parse key"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget v4, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 8
    .line 9
    const/16 v5, 0x30

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    if-ne v4, v6, :cond_2

    .line 13
    .line 14
    aget-byte v4, p1, v3

    .line 15
    .line 16
    if-eq v4, v5, :cond_1

    .line 17
    .line 18
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 19
    .line 20
    invoke-direct {v4, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 55
    .line 56
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    new-instance p1, Ljava/math/BigInteger;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 63
    .line 64
    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_0
    :goto_0
    return v6

    .line 78
    :cond_1
    return v3

    .line 79
    :cond_2
    const/4 v7, 0x2

    .line 80
    if-eq v4, v7, :cond_11

    .line 81
    .line 82
    const/4 v8, 0x5

    .line 83
    if-ne v4, v8, :cond_3

    .line 84
    .line 85
    goto/16 :goto_8

    .line 86
    .line 87
    :cond_3
    const/4 v8, 0x4

    .line 88
    if-ne v4, v8, :cond_5

    .line 89
    .line 90
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 91
    .line 92
    invoke-direct {v4, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-ne p1, v5, :cond_4

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    array-length v4, p1

    .line 147
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 148
    .line 149
    new-instance v7, Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {v7, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 152
    .line 153
    .line 154
    iput-object v7, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 155
    .line 156
    new-instance p1, Ljava/math/BigInteger;

    .line 157
    .line 158
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 159
    .line 160
    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 168
    .line 169
    return v6

    .line 170
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 171
    .line 172
    const-string p1, "check failed"

    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_5
    aget-byte v4, p1, v3

    .line 179
    .line 180
    if-eq v4, v5, :cond_6

    .line 181
    .line 182
    return v3

    .line 183
    :cond_6
    aget-byte v4, p1, v6

    .line 184
    .line 185
    and-int/lit16 v5, v4, 0x80

    .line 186
    .line 187
    if-eqz v5, :cond_7

    .line 188
    .line 189
    and-int/lit8 v4, v4, 0x7f

    .line 190
    .line 191
    move v5, v7

    .line 192
    :goto_1
    add-int/lit8 v8, v4, -0x1

    .line 193
    .line 194
    if-lez v4, :cond_8

    .line 195
    .line 196
    add-int/lit8 v4, v5, 0x1

    .line 197
    .line 198
    aget-byte v5, p1, v5

    .line 199
    .line 200
    move v5, v4

    .line 201
    move v4, v8

    .line 202
    goto :goto_1

    .line 203
    :cond_7
    move v5, v7

    .line 204
    :cond_8
    aget-byte v4, p1, v5

    .line 205
    .line 206
    if-eq v4, v7, :cond_9

    .line 207
    .line 208
    return v3

    .line 209
    :cond_9
    add-int/lit8 v4, v5, 0x1

    .line 210
    .line 211
    add-int/2addr v5, v7

    .line 212
    aget-byte v4, p1, v4

    .line 213
    .line 214
    and-int/lit16 v8, v4, 0xff

    .line 215
    .line 216
    and-int/lit16 v9, v4, 0x80

    .line 217
    .line 218
    if-eqz v9, :cond_a

    .line 219
    .line 220
    and-int/lit8 v4, v4, 0x7f

    .line 221
    .line 222
    move v8, v3

    .line 223
    :goto_2
    add-int/lit8 v9, v4, -0x1

    .line 224
    .line 225
    if-lez v4, :cond_a

    .line 226
    .line 227
    shl-int/lit8 v4, v8, 0x8

    .line 228
    .line 229
    add-int/lit8 v8, v5, 0x1

    .line 230
    .line 231
    aget-byte v5, p1, v5

    .line 232
    .line 233
    and-int/lit16 v5, v5, 0xff

    .line 234
    .line 235
    add-int/2addr v4, v5

    .line 236
    move v5, v8

    .line 237
    move v8, v4

    .line 238
    move v4, v9

    .line 239
    goto :goto_2

    .line 240
    :cond_a
    add-int/2addr v5, v8

    .line 241
    add-int/lit8 v4, v5, 0x1

    .line 242
    .line 243
    add-int/2addr v5, v7

    .line 244
    aget-byte v4, p1, v4

    .line 245
    .line 246
    and-int/lit16 v8, v4, 0xff

    .line 247
    .line 248
    and-int/lit16 v9, v4, 0x80

    .line 249
    .line 250
    if-eqz v9, :cond_b

    .line 251
    .line 252
    and-int/lit8 v4, v4, 0x7f

    .line 253
    .line 254
    move v8, v3

    .line 255
    :goto_3
    add-int/lit8 v9, v4, -0x1

    .line 256
    .line 257
    if-lez v4, :cond_b

    .line 258
    .line 259
    shl-int/lit8 v4, v8, 0x8

    .line 260
    .line 261
    add-int/lit8 v8, v5, 0x1

    .line 262
    .line 263
    aget-byte v5, p1, v5

    .line 264
    .line 265
    and-int/lit16 v5, v5, 0xff

    .line 266
    .line 267
    add-int/2addr v4, v5

    .line 268
    move v5, v8

    .line 269
    move v8, v4

    .line 270
    move v4, v9

    .line 271
    goto :goto_3

    .line 272
    :cond_b
    new-array v4, v8, [B

    .line 273
    .line 274
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 275
    .line 276
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    .line 278
    .line 279
    add-int/2addr v5, v8

    .line 280
    add-int/lit8 v4, v5, 0x1

    .line 281
    .line 282
    add-int/2addr v5, v7

    .line 283
    aget-byte v4, p1, v4

    .line 284
    .line 285
    and-int/lit16 v8, v4, 0xff

    .line 286
    .line 287
    and-int/lit16 v9, v4, 0x80

    .line 288
    .line 289
    if-eqz v9, :cond_c

    .line 290
    .line 291
    and-int/lit8 v4, v4, 0x7f

    .line 292
    .line 293
    move v8, v3

    .line 294
    :goto_4
    add-int/lit8 v9, v4, -0x1

    .line 295
    .line 296
    if-lez v4, :cond_c

    .line 297
    .line 298
    shl-int/lit8 v4, v8, 0x8

    .line 299
    .line 300
    add-int/lit8 v8, v5, 0x1

    .line 301
    .line 302
    aget-byte v5, p1, v5

    .line 303
    .line 304
    and-int/lit16 v5, v5, 0xff

    .line 305
    .line 306
    add-int/2addr v4, v5

    .line 307
    move v5, v8

    .line 308
    move v8, v4

    .line 309
    move v4, v9

    .line 310
    goto :goto_4

    .line 311
    :cond_c
    new-array v4, v8, [B

    .line 312
    .line 313
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->u:[B

    .line 314
    .line 315
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    .line 317
    .line 318
    add-int/2addr v5, v8

    .line 319
    add-int/lit8 v4, v5, 0x1

    .line 320
    .line 321
    add-int/2addr v5, v7

    .line 322
    aget-byte v4, p1, v4

    .line 323
    .line 324
    and-int/lit16 v8, v4, 0xff

    .line 325
    .line 326
    and-int/lit16 v9, v4, 0x80

    .line 327
    .line 328
    if-eqz v9, :cond_d

    .line 329
    .line 330
    and-int/lit8 v4, v4, 0x7f

    .line 331
    .line 332
    move v8, v3

    .line 333
    :goto_5
    add-int/lit8 v9, v4, -0x1

    .line 334
    .line 335
    if-lez v4, :cond_d

    .line 336
    .line 337
    shl-int/lit8 v4, v8, 0x8

    .line 338
    .line 339
    add-int/lit8 v8, v5, 0x1

    .line 340
    .line 341
    aget-byte v5, p1, v5

    .line 342
    .line 343
    and-int/lit16 v5, v5, 0xff

    .line 344
    .line 345
    add-int/2addr v4, v5

    .line 346
    move v5, v8

    .line 347
    move v8, v4

    .line 348
    move v4, v9

    .line 349
    goto :goto_5

    .line 350
    :cond_d
    new-array v4, v8, [B

    .line 351
    .line 352
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->v:[B

    .line 353
    .line 354
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    .line 356
    .line 357
    add-int/2addr v5, v8

    .line 358
    add-int/lit8 v4, v5, 0x1

    .line 359
    .line 360
    add-int/2addr v5, v7

    .line 361
    aget-byte v4, p1, v4

    .line 362
    .line 363
    and-int/lit16 v8, v4, 0xff

    .line 364
    .line 365
    and-int/lit16 v9, v4, 0x80

    .line 366
    .line 367
    if-eqz v9, :cond_e

    .line 368
    .line 369
    and-int/lit8 v4, v4, 0x7f

    .line 370
    .line 371
    move v8, v3

    .line 372
    :goto_6
    add-int/lit8 v9, v4, -0x1

    .line 373
    .line 374
    if-lez v4, :cond_e

    .line 375
    .line 376
    shl-int/lit8 v4, v8, 0x8

    .line 377
    .line 378
    add-int/lit8 v8, v5, 0x1

    .line 379
    .line 380
    aget-byte v5, p1, v5

    .line 381
    .line 382
    and-int/lit16 v5, v5, 0xff

    .line 383
    .line 384
    add-int/2addr v4, v5

    .line 385
    move v5, v8

    .line 386
    move v8, v4

    .line 387
    move v4, v9

    .line 388
    goto :goto_6

    .line 389
    :cond_e
    new-array v4, v8, [B

    .line 390
    .line 391
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->w:[B

    .line 392
    .line 393
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    .line 395
    .line 396
    add-int/2addr v5, v8

    .line 397
    add-int/lit8 v4, v5, 0x1

    .line 398
    .line 399
    add-int/2addr v5, v7

    .line 400
    aget-byte v4, p1, v4

    .line 401
    .line 402
    and-int/lit16 v7, v4, 0xff

    .line 403
    .line 404
    and-int/lit16 v8, v4, 0x80

    .line 405
    .line 406
    if-eqz v8, :cond_f

    .line 407
    .line 408
    and-int/lit8 v4, v4, 0x7f

    .line 409
    .line 410
    move v7, v3

    .line 411
    :goto_7
    add-int/lit8 v8, v4, -0x1

    .line 412
    .line 413
    if-lez v4, :cond_f

    .line 414
    .line 415
    shl-int/lit8 v4, v7, 0x8

    .line 416
    .line 417
    add-int/lit8 v7, v5, 0x1

    .line 418
    .line 419
    aget-byte v5, p1, v5

    .line 420
    .line 421
    and-int/lit16 v5, v5, 0xff

    .line 422
    .line 423
    add-int/2addr v4, v5

    .line 424
    move v5, v7

    .line 425
    move v7, v4

    .line 426
    move v4, v8

    .line 427
    goto :goto_7

    .line 428
    :cond_f
    new-array v4, v7, [B

    .line 429
    .line 430
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B

    .line 431
    .line 432
    invoke-static {p1, v5, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    .line 434
    .line 435
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 436
    .line 437
    if-eqz p1, :cond_10

    .line 438
    .line 439
    new-instance p1, Ljava/math/BigInteger;

    .line 440
    .line 441
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->t:[B

    .line 442
    .line 443
    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->y:I

    .line 451
    .line 452
    :cond_10
    return v6

    .line 453
    :cond_11
    :goto_8
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 454
    .line 455
    invoke-direct {v4, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 456
    .line 457
    .line 458
    array-length p1, p1

    .line 459
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/Buffer;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .line 461
    .line 462
    :try_start_1
    const-string p1, ""

    .line 463
    .line 464
    invoke-virtual {v4, v6, p1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    aget-object p1, p1, v3

    .line 469
    .line 470
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->x:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    .line 472
    return v6

    .line 473
    :catch_1
    move-exception p0

    .line 474
    :try_start_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    if-eqz p1, :cond_12

    .line 483
    .line 484
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-interface {p1, v2, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 489
    .line 490
    .line 491
    :cond_12
    return v3

    .line 492
    :goto_9
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    if-eqz p1, :cond_13

    .line 501
    .line 502
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-interface {p1, v2, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .line 508
    .line 509
    :cond_13
    return v3
.end method
