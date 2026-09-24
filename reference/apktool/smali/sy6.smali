.class public abstract Lsy6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lf51;->d:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "SBA1-7zAES-key-check-v1"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sput-object v1, Lsy6;->a:[B

    .line 13
    .line 14
    const-string v1, "SBA1-AES256GCM-key-check-v1"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sput-object v1, Lsy6;->b:[B

    .line 24
    .line 25
    const-string v1, "SBA1-AES256GCMSIV-key-check-v1"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sput-object v1, Lsy6;->c:[B

    .line 35
    .line 36
    const-string v1, "SBA1-AEGIS256-key-check-v1"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sput-object v1, Lsy6;->d:[B

    .line 46
    .line 47
    const-string v1, "SBA1-AEGIS128X2-key-check-v1"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sput-object v1, Lsy6;->e:[B

    .line 57
    .line 58
    const-string v1, "SBA1-payload-hmac-key-v1"

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v1, "SBA2-index-mac-key-v1"

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sput-object v1, Lsy6;->f:[B

    .line 77
    .line 78
    const-string v1, "SBA2-index-metadata-mac-v1"

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sput-object v0, Lsy6;->g:[B

    .line 88
    .line 89
    return-void
.end method

.method public static a([C[BIIII)[B
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    if-ne v0, v2, :cond_5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-gt v0, p2, :cond_4

    .line 15
    .line 16
    const/16 v2, 0x65

    .line 17
    .line 18
    if-ge p2, v2, :cond_4

    .line 19
    .line 20
    const/16 v2, 0x4000

    .line 21
    .line 22
    if-gt v2, p3, :cond_3

    .line 23
    .line 24
    const v2, 0x10001

    .line 25
    .line 26
    .line 27
    if-ge p3, v2, :cond_3

    .line 28
    .line 29
    if-gt v0, p4, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x9

    .line 32
    .line 33
    if-ge p4, v0, :cond_2

    .line 34
    .line 35
    if-lez p5, :cond_1

    .line 36
    .line 37
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    new-array v3, v1, [B

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v9, 0x0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    array-length v0, p0

    .line 75
    invoke-static {p0, v9, v0, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 76
    .line 77
    .line 78
    :cond_0
    :try_start_0
    sget-object v2, Lcom/swiftapps/sba/SbaNativeCrypto;->a:Lcom/swiftapps/sba/SbaNativeCrypto;

    .line 79
    .line 80
    move-object v4, p1

    .line 81
    move v5, p2

    .line 82
    move v6, p3

    .line 83
    move v7, p4

    .line 84
    move v8, p5

    .line 85
    invoke-virtual/range {v2 .. v8}, Lcom/swiftapps/sba/SbaNativeCrypto;->deriveArgon2id([B[BIIII)[B

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v3, v9, v1, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    invoke-static {v3, v9, v1, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_1
    move v8, p5

    .line 100
    const-string p0, "SBA Argon2id output bytes must be positive: "

    .line 101
    .line 102
    invoke-static {v8, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_2
    move v7, p4

    .line 111
    const-string p0, "SBA Argon2id parallelism out of range: "

    .line 112
    .line 113
    invoke-static {v7, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_3
    move v6, p3

    .line 122
    const-string p0, "SBA Argon2id memoryKiB out of range: "

    .line 123
    .line 124
    invoke-static {v6, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_4
    move v5, p2

    .line 133
    const-string p0, "SBA Argon2id iterations out of range: "

    .line 134
    .line 135
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_5
    const-string p0, "SBA Argon2id salt must be 16 bytes"

    .line 144
    .line 145
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_6
    const-string p0, "SBA encryption password must not be empty"

    .line 150
    .line 151
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v1
.end method

.method public static b([B[BJJI[B)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "HmacSHA256"

    .line 5
    .line 6
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lsy6;->g:[B

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p2, p3}, Lsy6;->e(Ljavax/crypto/Mac;J)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p4, p5}, Lsy6;->e(Ljavax/crypto/Mac;J)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x4

    .line 33
    new-array p1, p0, [B

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    if-ge p2, p0, :cond_0

    .line 37
    .line 38
    mul-int/lit8 p3, p2, 0x8

    .line 39
    .line 40
    rsub-int/lit8 p3, p3, 0x18

    .line 41
    .line 42
    ushr-int p3, p6, p3

    .line 43
    .line 44
    and-int/lit16 p3, p3, 0xff

    .line 45
    .line 46
    int-to-byte p3, p3

    .line 47
    aput-byte p3, p1, p2

    .line 48
    .line 49
    add-int/lit8 p2, p2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p7}, Ljavax/crypto/Mac;->update([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method public static c([B[B[B)[B
    .locals 2

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lsy6;->f:[B

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public static d(Ll27;[B[B[B)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "SHA-256"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lry6;->a:[I

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    aget p0, v1, p0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    packed-switch p0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lq;->j()V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    const-string p0, "SBA encryption method required for key check"

    .line 30
    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_1
    sget-object p0, Lsy6;->e:[B

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_2
    sget-object p0, Lsy6;->d:[B

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_3
    sget-object p0, Lsy6;->c:[B

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    sget-object p0, Lsy6;->b:[B

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_5
    sget-object p0, Lsy6;->a:[B

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/16 p1, 0x10

    .line 69
    .line 70
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljavax/crypto/Mac;J)V
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v3, v2, 0x8

    .line 9
    .line 10
    rsub-int/lit8 v3, v3, 0x38

    .line 11
    .line 12
    ushr-long v3, p1, v3

    .line 13
    .line 14
    const-wide/16 v5, 0xff

    .line 15
    .line 16
    and-long/2addr v3, v5

    .line 17
    long-to-int v3, v3

    .line 18
    int-to-byte v3, v3

    .line 19
    aput-byte v3, v1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
