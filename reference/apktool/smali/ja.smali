.class public abstract Lja;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lja;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lga;Lia;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lga;->b:[B

    .line 4
    .line 5
    iget-object v2, p0, Lga;->a:[B

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    array-length v4, v2

    .line 9
    add-int/2addr v3, v4

    .line 10
    new-array v3, v3, [B

    .line 11
    .line 12
    array-length v4, v1

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    array-length v4, v1

    .line 18
    array-length v6, v2

    .line 19
    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p1, Lia;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 23
    .line 24
    const-string v6, "HmacSHA256"

    .line 25
    .line 26
    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object p0, p0, Lga;->c:[B

    .line 38
    .line 39
    array-length v4, v3

    .line 40
    array-length v6, p0

    .line 41
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    move v4, v5

    .line 44
    :goto_0
    array-length v6, v3

    .line 45
    if-ge v5, v6, :cond_0

    .line 46
    .line 47
    aget-byte v6, v3, v5

    .line 48
    .line 49
    aget-byte v7, p0, v5

    .line 50
    .line 51
    xor-int/2addr v6, v7

    .line 52
    or-int/2addr v4, v6

    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-nez v4, :cond_1

    .line 57
    .line 58
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 59
    .line 60
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iget-object p1, p1, Lia;->a:Ljavax/crypto/SecretKey;

    .line 65
    .line 66
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-virtual {p0, v1, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "UTF-8"

    .line 80
    .line 81
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_1
    const-string p0, "MAC stored in civ does not match computed MAC."

    .line 86
    .line 87
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method public static b(Ljava/lang/String;Lia;)Lga;
    .locals 5

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lja;->c()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/security/SecureRandom;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 20
    .line 21
    .line 22
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 23
    .line 24
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p1, Lia;->a:Ljavax/crypto/SecretKey;

    .line 29
    .line 30
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    array-length v0, v1

    .line 48
    array-length v2, p0

    .line 49
    add-int/2addr v0, v2

    .line 50
    new-array v0, v0, [B

    .line 51
    .line 52
    array-length v2, v1

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    array-length v2, v1

    .line 58
    array-length v4, p0

    .line 59
    invoke-static {p0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lia;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 63
    .line 64
    const-string v2, "HmacSHA256"

    .line 65
    .line 66
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Lga;

    .line 78
    .line 79
    invoke-direct {v0, p0, v1, p1}, Lga;-><init>([B[B[B)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-object v0, Lja;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const-class v1, Lha;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    sget v2, Lha;->a:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;[B)Lia;
    .locals 4

    .line 1
    invoke-static {}, Lja;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v1, 0x180

    .line 11
    .line 12
    const/16 v2, 0x2710

    .line 13
    .line 14
    invoke-direct {v0, p0, p1, v2, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 15
    .line 16
    .line 17
    const-string p0, "PBKDF2WithHmacSHA1"

    .line 18
    .line 19
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x10

    .line 32
    .line 33
    new-array v0, p1, [B

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    new-array v3, v2, [B

    .line 42
    .line 43
    invoke-static {p0, p1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 47
    .line 48
    const-string p1, "AES"

    .line 49
    .line 50
    invoke-direct {p0, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    .line 55
    const-string v0, "HmacSHA256"

    .line 56
    .line 57
    invoke-direct {p1, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lia;

    .line 61
    .line 62
    invoke-direct {v0, p0, p1}, Lia;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lia;
    .locals 6

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v0, v2, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aget-object v3, p0, v0

    .line 14
    .line 15
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    array-length v4, v3

    .line 20
    const/16 v5, 0x10

    .line 21
    .line 22
    if-ne v4, v5, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    aget-object p0, p0, v4

    .line 26
    .line 27
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    array-length v2, p0

    .line 32
    const/16 v4, 0x20

    .line 33
    .line 34
    if-ne v2, v4, :cond_0

    .line 35
    .line 36
    new-instance v1, Lia;

    .line 37
    .line 38
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 39
    .line 40
    array-length v4, v3

    .line 41
    const-string v5, "AES"

    .line 42
    .line 43
    invoke-direct {v2, v3, v0, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 47
    .line 48
    const-string v3, "HmacSHA256"

    .line 49
    .line 50
    invoke-direct {v0, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2, v0}, Lia;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_0
    const-string p0, "Base64 decoded key is not 256 bytes"

    .line 58
    .line 59
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_1
    const-string p0, "Base64 decoded key is not 128 bytes"

    .line 64
    .line 65
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_2
    const-string p0, "Cannot parse aesKey:hmacKey"

    .line 70
    .line 71
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method
