.class public final Lnb6;
.super Lqb6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lzt2;

.field public final d:[B


# direct methods
.method public constructor <init>(Lzt2;[B)V
    .locals 1

    .line 1
    iget v0, p1, Lzt2;->a:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lqb6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lzt2;->f:Lzt2;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lzt2;->e:Lzt2;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "InvalidCurve"

    .line 16
    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iput-object p1, p0, Lnb6;->c:Lzt2;

    .line 23
    .line 24
    array-length p1, p2

    .line 25
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lnb6;->d:[B

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final h()Ljava/security/PublicKey;
    .locals 8

    .line 1
    iget-object v0, p0, Lnb6;->c:Lzt2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 12
    .line 13
    new-instance v3, Lq48;

    .line 14
    .line 15
    new-instance v4, Lq48;

    .line 16
    .line 17
    new-instance v5, Lq48;

    .line 18
    .line 19
    iget-object v0, v0, Lzt2;->b:[B

    .line 20
    .line 21
    array-length v6, v0

    .line 22
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v6, 0x6

    .line 27
    invoke-direct {v5, v0, v6}, Lq48;-><init>([BI)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Lq48;->a()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v5, 0x30

    .line 35
    .line 36
    invoke-direct {v4, v0, v5}, Lq48;-><init>([BI)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lq48;

    .line 40
    .line 41
    iget-object p0, p0, Lnb6;->d:[B

    .line 42
    .line 43
    array-length v6, p0

    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v6, 0x3

    .line 64
    invoke-direct {v0, p0, v6}, Lq48;-><init>([BI)V

    .line 65
    .line 66
    .line 67
    filled-new-array {v4, v0}, [Lq48;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lcy0;->r(Ljava/util/List;)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v3, p0, v5}, Lq48;-><init>([BI)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lq48;->a()[B

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PublicKeyValues.Cv25519{curve="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnb6;->c:Lzt2;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", publicKey="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object v2, p0, Lnb6;->d:[B

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    invoke-static {v2, v1, v3}, Lx13;->f([BII)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", bitLength="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lqb6;->a:I

    .line 39
    .line 40
    const/16 v1, 0x7d

    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
