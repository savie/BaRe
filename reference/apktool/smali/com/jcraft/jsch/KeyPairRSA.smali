.class Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final C:[B

.field public static final D:[B

.field public static final E:[B


# instance fields
.field public A:[B

.field public B:I

.field public t:[B

.field public u:[B

.field public v:[B

.field public w:[B

.field public x:[B

.field public y:[B

.field public z:[B


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
    const-string v1, "-----BEGIN RSA PRIVATE KEY-----"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/jcraft/jsch/KeyPairRSA;->C:[B

    .line 12
    .line 13
    const-string v1, "-----END RSA PRIVATE KEY-----"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/jcraft/jsch/KeyPairRSA;->D:[B

    .line 20
    .line 21
    const-string v1, "ssh-rsa"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->E:[B

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x400

    .line 5
    .line 6
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 9
    .line 10
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 11
    .line 12
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static y(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const-string v1, "invalid key format"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    aget-object v0, p1, v0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    aget-object v1, p1, v1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    aget-object v2, p1, v2

    .line 17
    .line 18
    new-instance v3, Lcom/jcraft/jsch/KeyPairRSA;

    .line 19
    .line 20
    invoke-direct {v3, p0, v0, v1, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    aget-object p0, p1, p0

    .line 25
    .line 26
    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 27
    .line 28
    const/4 p0, 0x5

    .line 29
    aget-object p0, p1, p0

    .line 30
    .line 31
    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 32
    .line 33
    const/4 p0, 0x6

    .line 34
    aget-object p0, p1, p0

    .line 35
    .line 36
    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 37
    .line 38
    const/4 p0, 0x7

    .line 39
    aget-object p0, p1, p0

    .line 40
    .line 41
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iput-object p0, v3, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    iput p0, v3, Lcom/jcraft/jsch/KeyPair;->a:I

    .line 49
    .line 50
    return-object v3
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigInteger;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigInteger;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

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
    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->E:[B

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->z()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-static {p0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    new-array v1, p0, [B

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

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

.method public final getKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final getPublicKeyBlob()[B
    .locals 2

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
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

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
    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->E:[B

    .line 13
    .line 14
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 15
    .line 16
    filled-new-array {v1, v0, p0}, [[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/jcraft/jsch/Buffer;->b([[B)Lcom/jcraft/jsch/Buffer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 25
    .line 26
    return-object p0
.end method

.method public final getSignature([B)[B
    .locals 1

    .line 84
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPairRSA;->getSignature([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSignature([BLjava/lang/String;)[B
    .locals 4

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
    const-class v2, Lcom/jcraft/jsch/SignatureRSA;

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
    check-cast v1, Lcom/jcraft/jsch/SignatureRSA;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 30
    .line 31
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 32
    .line 33
    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/SignatureRSA;->setPrvKey([B[B)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->sign()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    return-object p0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-interface {p2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p2, "failed to generate signature"

    .line 79
    .line 80
    invoke-interface {p0, v1, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-object v0
.end method

.method public final getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 1

    .line 101
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairRSA;->getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;

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
    const-class v1, Lcom/jcraft/jsch/SignatureRSA;

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
    check-cast p1, Lcom/jcraft/jsch/SignatureRSA;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/jcraft/jsch/Signature;->init()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 71
    .line 72
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 73
    .line 74
    invoke-interface {p1, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v1, "failed to create verifier"

    .line 96
    .line 97
    invoke-interface {p0, v2, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-object v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 2
    .line 3
    :try_start_0
    const-string v0, "keypairgen.rsa"

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
    const-class v1, Lcom/jcraft/jsch/KeyPairGenRSA;

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
    check-cast v0, Lcom/jcraft/jsch/KeyPairGenRSA;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenRSA;->init(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getE()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getD()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getN()[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getP()[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getQ()[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEP()[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEQ()[B

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 74
    .line 75
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getC()[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    move-exception p0

    .line 83
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final i()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairRSA;->C:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairRSA;->D:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/KeyPairRSA;->E:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final l()[B
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->E:[B

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 11
    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 23
    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    :try_start_0
    array-length v8, v1

    .line 33
    add-int/lit8 v8, v8, 0x4

    .line 34
    .line 35
    array-length v9, v2

    .line 36
    add-int/lit8 v9, v9, 0x4

    .line 37
    .line 38
    add-int/2addr v9, v8

    .line 39
    const/4 v8, 0x0

    .line 40
    aget-byte v2, v2, v8

    .line 41
    .line 42
    and-int/lit16 v2, v2, 0x80

    .line 43
    .line 44
    ushr-int/lit8 v2, v2, 0x7

    .line 45
    .line 46
    add-int/2addr v9, v2

    .line 47
    array-length v2, v3

    .line 48
    add-int/lit8 v2, v2, 0x4

    .line 49
    .line 50
    add-int/2addr v2, v9

    .line 51
    aget-byte v3, v3, v8

    .line 52
    .line 53
    and-int/lit16 v3, v3, 0x80

    .line 54
    .line 55
    ushr-int/lit8 v3, v3, 0x7

    .line 56
    .line 57
    add-int/2addr v2, v3

    .line 58
    array-length v3, v4

    .line 59
    add-int/lit8 v3, v3, 0x4

    .line 60
    .line 61
    add-int/2addr v3, v2

    .line 62
    aget-byte v2, v4, v8

    .line 63
    .line 64
    and-int/lit16 v2, v2, 0x80

    .line 65
    .line 66
    ushr-int/lit8 v2, v2, 0x7

    .line 67
    .line 68
    add-int/2addr v3, v2

    .line 69
    array-length v2, v5

    .line 70
    add-int/lit8 v2, v2, 0x4

    .line 71
    .line 72
    add-int/2addr v2, v3

    .line 73
    aget-byte v3, v5, v8

    .line 74
    .line 75
    and-int/lit16 v3, v3, 0x80

    .line 76
    .line 77
    ushr-int/lit8 v3, v3, 0x7

    .line 78
    .line 79
    add-int/2addr v2, v3

    .line 80
    array-length v3, v6

    .line 81
    add-int/lit8 v3, v3, 0x4

    .line 82
    .line 83
    add-int/2addr v3, v2

    .line 84
    aget-byte v2, v6, v8

    .line 85
    .line 86
    and-int/lit16 v2, v2, 0x80

    .line 87
    .line 88
    ushr-int/lit8 v2, v2, 0x7

    .line 89
    .line 90
    add-int/2addr v3, v2

    .line 91
    array-length v2, v7

    .line 92
    add-int/lit8 v2, v2, 0x4

    .line 93
    .line 94
    add-int/2addr v2, v3

    .line 95
    aget-byte v3, v7, v8

    .line 96
    .line 97
    and-int/lit16 v3, v3, 0x80

    .line 98
    .line 99
    ushr-int/lit8 v3, v3, 0x7

    .line 100
    .line 101
    add-int/2addr v2, v3

    .line 102
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    .line 103
    .line 104
    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .line 106
    .line 107
    :try_start_1
    array-length v0, v1

    .line 108
    invoke-virtual {v3, v1, v8, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 112
    .line 113
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 117
    .line 118
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 122
    .line 123
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 137
    .line 138
    invoke-virtual {v3, p0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 139
    .line 140
    .line 141
    iget-object p0, v3, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .line 143
    return-object p0

    .line 144
    :catch_0
    move-exception p0

    .line 145
    move-object v0, v3

    .line 146
    goto :goto_0

    .line 147
    :catch_1
    move-exception p0

    .line 148
    :goto_0
    if-eqz v0, :cond_1

    .line 149
    .line 150
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 151
    .line 152
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 153
    .line 154
    .line 155
    :cond_1
    throw p0

    .line 156
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
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

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
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    add-int/2addr v2, v1

    .line 20
    add-int/2addr v2, v0

    .line 21
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

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
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 30
    .line 31
    array-length v2, v2

    .line 32
    add-int/2addr v1, v2

    .line 33
    add-int/2addr v1, v0

    .line 34
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

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
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    add-int/2addr v2, v1

    .line 46
    add-int/2addr v2, v0

    .line 47
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

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
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 56
    .line 57
    array-length v2, v2

    .line 58
    add-int/2addr v1, v2

    .line 59
    add-int/2addr v1, v0

    .line 60
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

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
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 69
    .line 70
    array-length v1, v1

    .line 71
    add-int/2addr v2, v1

    .line 72
    add-int/2addr v2, v0

    .line 73
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 74
    .line 75
    array-length v1, v1

    .line 76
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v1, v2

    .line 81
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 82
    .line 83
    array-length v2, v2

    .line 84
    add-int/2addr v1, v2

    .line 85
    add-int/2addr v1, v0

    .line 86
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 87
    .line 88
    array-length v2, v2

    .line 89
    invoke-static {v2}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    add-int/2addr v2, v1

    .line 94
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 95
    .line 96
    array-length v1, v1

    .line 97
    add-int/2addr v2, v1

    .line 98
    add-int/2addr v2, v0

    .line 99
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 100
    .line 101
    array-length v1, v1

    .line 102
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    add-int/2addr v1, v2

    .line 107
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 108
    .line 109
    array-length v2, v2

    .line 110
    add-int/2addr v1, v2

    .line 111
    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    add-int/2addr v2, v0

    .line 116
    add-int/2addr v2, v1

    .line 117
    new-array v2, v2, [B

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    const/16 v4, 0x30

    .line 121
    .line 122
    aput-byte v4, v2, v3

    .line 123
    .line 124
    invoke-static {v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->x([BII)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    new-array v0, v0, [B

    .line 129
    .line 130
    invoke-static {v1, v2, v0}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 135
    .line 136
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 141
    .line 142
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 147
    .line 148
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 153
    .line 154
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 159
    .line 160
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 165
    .line 166
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 171
    .line 172
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 177
    .line 178
    invoke-static {v0, v2, p0}, Lcom/jcraft/jsch/KeyPair;->w(I[B[B)I

    .line 179
    .line 180
    .line 181
    return-object v2
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
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eq v4, v6, :cond_13

    .line 13
    .line 14
    const/4 v8, 0x5

    .line 15
    if-ne v4, v8, :cond_0

    .line 16
    .line 17
    goto/16 :goto_b

    .line 18
    .line 19
    :cond_0
    if-ne v4, v7, :cond_3

    .line 20
    .line 21
    aget-byte v4, p1, v3

    .line 22
    .line 23
    const/16 v5, 0x30

    .line 24
    .line 25
    if-eq v4, v5, :cond_2

    .line 26
    .line 27
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 28
    .line 29
    invoke-direct {v4, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 64
    .line 65
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    new-instance p1, Ljava/math/BigInteger;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 72
    .line 73
    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto/16 :goto_c

    .line 85
    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->A()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->B()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->z()[B

    .line 93
    .line 94
    .line 95
    return v7

    .line 96
    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-interface {p0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_14

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {p0, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return v3

    .line 114
    :cond_3
    if-ne v4, v5, :cond_5

    .line 115
    .line 116
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 117
    .line 118
    invoke-direct {v4, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-ne p1, v5, :cond_4

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 173
    .line 174
    new-instance p1, Ljava/math/BigInteger;

    .line 175
    .line 176
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 177
    .line 178
    invoke-direct {p1, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    array-length v4, p1

    .line 192
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 193
    .line 194
    new-instance v6, Ljava/lang/String;

    .line 195
    .line 196
    invoke-direct {v6, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 197
    .line 198
    .line 199
    iput-object v6, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->A()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->B()V

    .line 205
    .line 206
    .line 207
    return v7

    .line 208
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 209
    .line 210
    const-string p1, "check failed"

    .line 211
    .line 212
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_5
    aget-byte v4, p1, v7

    .line 217
    .line 218
    and-int/lit16 v5, v4, 0x80

    .line 219
    .line 220
    if-eqz v5, :cond_6

    .line 221
    .line 222
    and-int/lit8 v4, v4, 0x7f

    .line 223
    .line 224
    move v5, v6

    .line 225
    :goto_1
    add-int/lit8 v8, v4, -0x1

    .line 226
    .line 227
    if-lez v4, :cond_7

    .line 228
    .line 229
    add-int/lit8 v4, v5, 0x1

    .line 230
    .line 231
    aget-byte v5, p1, v5

    .line 232
    .line 233
    move v5, v4

    .line 234
    move v4, v8

    .line 235
    goto :goto_1

    .line 236
    :cond_6
    move v5, v6

    .line 237
    :cond_7
    aget-byte v4, p1, v5

    .line 238
    .line 239
    if-eq v4, v6, :cond_8

    .line 240
    .line 241
    goto/16 :goto_d

    .line 242
    .line 243
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .line 244
    .line 245
    add-int/2addr v5, v6

    .line 246
    aget-byte v4, p1, v4

    .line 247
    .line 248
    and-int/lit16 v8, v4, 0xff

    .line 249
    .line 250
    and-int/lit16 v9, v4, 0x80

    .line 251
    .line 252
    if-eqz v9, :cond_9

    .line 253
    .line 254
    and-int/lit8 v4, v4, 0x7f

    .line 255
    .line 256
    move v8, v3

    .line 257
    :goto_2
    add-int/lit8 v9, v4, -0x1

    .line 258
    .line 259
    if-lez v4, :cond_9

    .line 260
    .line 261
    shl-int/lit8 v4, v8, 0x8

    .line 262
    .line 263
    add-int/lit8 v8, v5, 0x1

    .line 264
    .line 265
    aget-byte v5, p1, v5

    .line 266
    .line 267
    and-int/lit16 v5, v5, 0xff

    .line 268
    .line 269
    add-int/2addr v4, v5

    .line 270
    move v5, v8

    .line 271
    move v8, v4

    .line 272
    move v4, v9

    .line 273
    goto :goto_2

    .line 274
    :cond_9
    add-int/2addr v5, v8

    .line 275
    add-int/lit8 v4, v5, 0x1

    .line 276
    .line 277
    add-int/2addr v5, v6

    .line 278
    aget-byte v4, p1, v4

    .line 279
    .line 280
    and-int/lit16 v8, v4, 0xff

    .line 281
    .line 282
    and-int/lit16 v9, v4, 0x80

    .line 283
    .line 284
    if-eqz v9, :cond_a

    .line 285
    .line 286
    and-int/lit8 v4, v4, 0x7f

    .line 287
    .line 288
    move v8, v3

    .line 289
    :goto_3
    add-int/lit8 v9, v4, -0x1

    .line 290
    .line 291
    if-lez v4, :cond_a

    .line 292
    .line 293
    shl-int/lit8 v4, v8, 0x8

    .line 294
    .line 295
    add-int/lit8 v8, v5, 0x1

    .line 296
    .line 297
    aget-byte v5, p1, v5

    .line 298
    .line 299
    and-int/lit16 v5, v5, 0xff

    .line 300
    .line 301
    add-int/2addr v4, v5

    .line 302
    move v5, v8

    .line 303
    move v8, v4

    .line 304
    move v4, v9

    .line 305
    goto :goto_3

    .line 306
    :cond_a
    new-array v4, v8, [B

    .line 307
    .line 308
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 309
    .line 310
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    .line 312
    .line 313
    add-int/2addr v5, v8

    .line 314
    add-int/lit8 v4, v5, 0x1

    .line 315
    .line 316
    add-int/2addr v5, v6

    .line 317
    aget-byte v4, p1, v4

    .line 318
    .line 319
    and-int/lit16 v8, v4, 0xff

    .line 320
    .line 321
    and-int/lit16 v9, v4, 0x80

    .line 322
    .line 323
    if-eqz v9, :cond_b

    .line 324
    .line 325
    and-int/lit8 v4, v4, 0x7f

    .line 326
    .line 327
    move v8, v3

    .line 328
    :goto_4
    add-int/lit8 v9, v4, -0x1

    .line 329
    .line 330
    if-lez v4, :cond_b

    .line 331
    .line 332
    shl-int/lit8 v4, v8, 0x8

    .line 333
    .line 334
    add-int/lit8 v8, v5, 0x1

    .line 335
    .line 336
    aget-byte v5, p1, v5

    .line 337
    .line 338
    and-int/lit16 v5, v5, 0xff

    .line 339
    .line 340
    add-int/2addr v4, v5

    .line 341
    move v5, v8

    .line 342
    move v8, v4

    .line 343
    move v4, v9

    .line 344
    goto :goto_4

    .line 345
    :cond_b
    new-array v4, v8, [B

    .line 346
    .line 347
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->u:[B

    .line 348
    .line 349
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    .line 351
    .line 352
    add-int/2addr v5, v8

    .line 353
    add-int/lit8 v4, v5, 0x1

    .line 354
    .line 355
    add-int/2addr v5, v6

    .line 356
    aget-byte v4, p1, v4

    .line 357
    .line 358
    and-int/lit16 v8, v4, 0xff

    .line 359
    .line 360
    and-int/lit16 v9, v4, 0x80

    .line 361
    .line 362
    if-eqz v9, :cond_c

    .line 363
    .line 364
    and-int/lit8 v4, v4, 0x7f

    .line 365
    .line 366
    move v8, v3

    .line 367
    :goto_5
    add-int/lit8 v9, v4, -0x1

    .line 368
    .line 369
    if-lez v4, :cond_c

    .line 370
    .line 371
    shl-int/lit8 v4, v8, 0x8

    .line 372
    .line 373
    add-int/lit8 v8, v5, 0x1

    .line 374
    .line 375
    aget-byte v5, p1, v5

    .line 376
    .line 377
    and-int/lit16 v5, v5, 0xff

    .line 378
    .line 379
    add-int/2addr v4, v5

    .line 380
    move v5, v8

    .line 381
    move v8, v4

    .line 382
    move v4, v9

    .line 383
    goto :goto_5

    .line 384
    :cond_c
    new-array v4, v8, [B

    .line 385
    .line 386
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 387
    .line 388
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    .line 390
    .line 391
    add-int/2addr v5, v8

    .line 392
    add-int/lit8 v4, v5, 0x1

    .line 393
    .line 394
    add-int/2addr v5, v6

    .line 395
    aget-byte v4, p1, v4

    .line 396
    .line 397
    and-int/lit16 v8, v4, 0xff

    .line 398
    .line 399
    and-int/lit16 v9, v4, 0x80

    .line 400
    .line 401
    if-eqz v9, :cond_d

    .line 402
    .line 403
    and-int/lit8 v4, v4, 0x7f

    .line 404
    .line 405
    move v8, v3

    .line 406
    :goto_6
    add-int/lit8 v9, v4, -0x1

    .line 407
    .line 408
    if-lez v4, :cond_d

    .line 409
    .line 410
    shl-int/lit8 v4, v8, 0x8

    .line 411
    .line 412
    add-int/lit8 v8, v5, 0x1

    .line 413
    .line 414
    aget-byte v5, p1, v5

    .line 415
    .line 416
    and-int/lit16 v5, v5, 0xff

    .line 417
    .line 418
    add-int/2addr v4, v5

    .line 419
    move v5, v8

    .line 420
    move v8, v4

    .line 421
    move v4, v9

    .line 422
    goto :goto_6

    .line 423
    :cond_d
    new-array v4, v8, [B

    .line 424
    .line 425
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 426
    .line 427
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    .line 429
    .line 430
    add-int/2addr v5, v8

    .line 431
    add-int/lit8 v4, v5, 0x1

    .line 432
    .line 433
    add-int/2addr v5, v6

    .line 434
    aget-byte v4, p1, v4

    .line 435
    .line 436
    and-int/lit16 v8, v4, 0xff

    .line 437
    .line 438
    and-int/lit16 v9, v4, 0x80

    .line 439
    .line 440
    if-eqz v9, :cond_e

    .line 441
    .line 442
    and-int/lit8 v4, v4, 0x7f

    .line 443
    .line 444
    move v8, v3

    .line 445
    :goto_7
    add-int/lit8 v9, v4, -0x1

    .line 446
    .line 447
    if-lez v4, :cond_e

    .line 448
    .line 449
    shl-int/lit8 v4, v8, 0x8

    .line 450
    .line 451
    add-int/lit8 v8, v5, 0x1

    .line 452
    .line 453
    aget-byte v5, p1, v5

    .line 454
    .line 455
    and-int/lit16 v5, v5, 0xff

    .line 456
    .line 457
    add-int/2addr v4, v5

    .line 458
    move v5, v8

    .line 459
    move v8, v4

    .line 460
    move v4, v9

    .line 461
    goto :goto_7

    .line 462
    :cond_e
    new-array v4, v8, [B

    .line 463
    .line 464
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 465
    .line 466
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    .line 468
    .line 469
    add-int/2addr v5, v8

    .line 470
    add-int/lit8 v4, v5, 0x1

    .line 471
    .line 472
    add-int/2addr v5, v6

    .line 473
    aget-byte v4, p1, v4

    .line 474
    .line 475
    and-int/lit16 v8, v4, 0xff

    .line 476
    .line 477
    and-int/lit16 v9, v4, 0x80

    .line 478
    .line 479
    if-eqz v9, :cond_f

    .line 480
    .line 481
    and-int/lit8 v4, v4, 0x7f

    .line 482
    .line 483
    move v8, v3

    .line 484
    :goto_8
    add-int/lit8 v9, v4, -0x1

    .line 485
    .line 486
    if-lez v4, :cond_f

    .line 487
    .line 488
    shl-int/lit8 v4, v8, 0x8

    .line 489
    .line 490
    add-int/lit8 v8, v5, 0x1

    .line 491
    .line 492
    aget-byte v5, p1, v5

    .line 493
    .line 494
    and-int/lit16 v5, v5, 0xff

    .line 495
    .line 496
    add-int/2addr v4, v5

    .line 497
    move v5, v8

    .line 498
    move v8, v4

    .line 499
    move v4, v9

    .line 500
    goto :goto_8

    .line 501
    :cond_f
    new-array v4, v8, [B

    .line 502
    .line 503
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->y:[B

    .line 504
    .line 505
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    .line 507
    .line 508
    add-int/2addr v5, v8

    .line 509
    add-int/lit8 v4, v5, 0x1

    .line 510
    .line 511
    add-int/2addr v5, v6

    .line 512
    aget-byte v4, p1, v4

    .line 513
    .line 514
    and-int/lit16 v8, v4, 0xff

    .line 515
    .line 516
    and-int/lit16 v9, v4, 0x80

    .line 517
    .line 518
    if-eqz v9, :cond_10

    .line 519
    .line 520
    and-int/lit8 v4, v4, 0x7f

    .line 521
    .line 522
    move v8, v3

    .line 523
    :goto_9
    add-int/lit8 v9, v4, -0x1

    .line 524
    .line 525
    if-lez v4, :cond_10

    .line 526
    .line 527
    shl-int/lit8 v4, v8, 0x8

    .line 528
    .line 529
    add-int/lit8 v8, v5, 0x1

    .line 530
    .line 531
    aget-byte v5, p1, v5

    .line 532
    .line 533
    and-int/lit16 v5, v5, 0xff

    .line 534
    .line 535
    add-int/2addr v4, v5

    .line 536
    move v5, v8

    .line 537
    move v8, v4

    .line 538
    move v4, v9

    .line 539
    goto :goto_9

    .line 540
    :cond_10
    new-array v4, v8, [B

    .line 541
    .line 542
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->z:[B

    .line 543
    .line 544
    invoke-static {p1, v5, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    .line 546
    .line 547
    add-int/2addr v5, v8

    .line 548
    add-int/lit8 v4, v5, 0x1

    .line 549
    .line 550
    add-int/2addr v5, v6

    .line 551
    aget-byte v4, p1, v4

    .line 552
    .line 553
    and-int/lit16 v6, v4, 0xff

    .line 554
    .line 555
    and-int/lit16 v8, v4, 0x80

    .line 556
    .line 557
    if-eqz v8, :cond_11

    .line 558
    .line 559
    and-int/lit8 v4, v4, 0x7f

    .line 560
    .line 561
    move v6, v3

    .line 562
    :goto_a
    add-int/lit8 v8, v4, -0x1

    .line 563
    .line 564
    if-lez v4, :cond_11

    .line 565
    .line 566
    shl-int/lit8 v4, v6, 0x8

    .line 567
    .line 568
    add-int/lit8 v6, v5, 0x1

    .line 569
    .line 570
    aget-byte v5, p1, v5

    .line 571
    .line 572
    and-int/lit16 v5, v5, 0xff

    .line 573
    .line 574
    add-int/2addr v4, v5

    .line 575
    move v5, v6

    .line 576
    move v6, v4

    .line 577
    move v4, v8

    .line 578
    goto :goto_a

    .line 579
    :cond_11
    new-array v4, v6, [B

    .line 580
    .line 581
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 582
    .line 583
    invoke-static {p1, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    .line 585
    .line 586
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 587
    .line 588
    if-eqz p1, :cond_12

    .line 589
    .line 590
    new-instance p1, Ljava/math/BigInteger;

    .line 591
    .line 592
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->t:[B

    .line 593
    .line 594
    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->B:I

    .line 602
    .line 603
    :cond_12
    return v7

    .line 604
    :cond_13
    :goto_b
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 605
    .line 606
    invoke-direct {v4, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 607
    .line 608
    .line 609
    array-length p1, p1

    .line 610
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/Buffer;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .line 612
    .line 613
    :try_start_1
    const-string p1, ""

    .line 614
    .line 615
    invoke-virtual {v4, v5, p1}, Lcom/jcraft/jsch/Buffer;->d(ILjava/lang/String;)[[B

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    aget-object v4, p1, v3

    .line 620
    .line 621
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->v:[B

    .line 622
    .line 623
    aget-object v4, p1, v7

    .line 624
    .line 625
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 626
    .line 627
    aget-object v4, p1, v6

    .line 628
    .line 629
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 630
    .line 631
    aget-object p1, p1, v2

    .line 632
    .line 633
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 634
    .line 635
    :try_start_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->A()V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->B()V

    .line 639
    .line 640
    .line 641
    return v7

    .line 642
    :catch_1
    move-exception p0

    .line 643
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 648
    .line 649
    .line 650
    move-result p1

    .line 651
    if-eqz p1, :cond_14

    .line 652
    .line 653
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 654
    .line 655
    .line 656
    move-result-object p1

    .line 657
    invoke-interface {p1, v2, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 658
    .line 659
    .line 660
    goto :goto_d

    .line 661
    :goto_c
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    if-eqz p1, :cond_14

    .line 670
    .line 671
    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    invoke-interface {p1, v2, v0, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    .line 677
    .line 678
    :cond_14
    :goto_d
    return v3
.end method

.method public final z()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->x:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigInteger;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->w:[B

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPairRSA;->A:[B

    .line 30
    .line 31
    return-object p0
.end method
