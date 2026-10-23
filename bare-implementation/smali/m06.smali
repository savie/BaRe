.class public final Lm06;
.super Ljavax/crypto/CipherSpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final h:Ll15;


# instance fields
.field public final a:Lvz0;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/io/ByteArrayOutputStream;

.field public d:Lj16;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lm06;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lm06;->h:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvz0;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm06;->c:Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lm06;->g:I

    .line 13
    .line 14
    iput-object p1, p0, Lm06;->a:Lvz0;

    .line 15
    .line 16
    iput-object p2, p0, Lm06;->b:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final engineDoFinal([BII[BI)I
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lm06;->engineDoFinal([BII)[B

    move-result-object p0

    .line 159
    :try_start_0
    array-length p1, p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p4, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 161
    :catch_0
    new-instance p0, Ljavax/crypto/ShortBufferException;

    invoke-direct {p0}, Ljavax/crypto/ShortBufferException;-><init>()V

    throw p0
.end method

.method public final engineDoFinal([BII)[B
    .locals 3

    .line 1
    const-string v0, "RSA/"

    .line 2
    .line 3
    iget-object v1, p0, Lm06;->d:Lj16;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lm06;->c:Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    if-lez p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :try_start_0
    iget-object p2, p0, Lm06;->b:Ljava/util/Map;

    .line 19
    .line 20
    iget-object p3, p0, Lm06;->d:Lj16;

    .line 21
    .line 22
    iget-object p3, p3, Lj16;->b:Lvo4;

    .line 23
    .line 24
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/security/KeyPair;

    .line 29
    .line 30
    const-string p3, "RSA/ECB/NoPadding"

    .line 31
    .line 32
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget v1, p0, Lm06;->g:I

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lm06;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "/"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lm06;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Lm06;->g:I

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 80
    .line 81
    .line 82
    iget p2, p0, Lm06;->g:I
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    iget-object v2, p0, Lm06;->a:Lvz0;

    .line 86
    .line 87
    if-eq p2, v1, :cond_2

    .line 88
    .line 89
    const/4 v1, 0x2

    .line 90
    if-ne p2, v1, :cond_1

    .line 91
    .line 92
    :try_start_1
    iget-object p0, p0, Lm06;->d:Lj16;

    .line 93
    .line 94
    invoke-virtual {p0, v2, p1}, Lj16;->b(Lvz0;[B)[B

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p0
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_2
    :try_start_2
    iget-object p0, p0, Lm06;->d:Lj16;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, v2, p1}, Lj16;->b(Lvz0;[B)[B

    .line 124
    .line 125
    .line 126
    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    return-object p0

    .line 128
    :catch_0
    move-exception p0

    .line 129
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p1
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 135
    :catch_1
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :catch_2
    move-exception p0

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 144
    .line 145
    const-string p2, "SecurityProvider doesn\'t support RSA without padding"

    .line 146
    .line 147
    invoke-direct {p1, p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_3
    const-string p0, "Cipher not initialized"

    .line 152
    .line 153
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/4 p0, 0x0

    .line 157
    return-object p0
.end method

.method public final engineGetBlockSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lm06;->d:Lj16;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lj16;->b:Lvo4;

    .line 6
    .line 7
    iget-object p0, p0, Lvo4;->b:Lto4;

    .line 8
    .line 9
    iget p0, p0, Lto4;->b:I

    .line 10
    .line 11
    div-int/lit8 p0, p0, 0x8

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const-string p0, "Cipher not initialized"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final engineGetIV()[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [B

    .line 3
    .line 4
    return-object p0
.end method

.method public final engineGetOutputSize(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm06;->engineGetBlockSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0

    if-nez p3, :cond_0

    .line 55
    invoke-virtual {p0, p1, p2, p4}, Lm06;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void

    .line 56
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Cipher must be initialized with params = null"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4

    .line 1
    iget-object p3, p0, Lm06;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lm06;->f:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    sget-object v2, Lm06;->h:Ll15;

    .line 7
    .line 8
    const-string v3, "Engine init: mode={} padding={}"

    .line 9
    .line 10
    invoke-static {v1, v2, v3, p3, v0}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    instance-of p3, p2, Lj16;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    check-cast p2, Lj16;

    .line 18
    .line 19
    invoke-virtual {p2}, Lj16;->getAlgorithm()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const-string v0, "RSA"

    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    iput-object p2, p0, Lm06;->d:Lj16;

    .line 32
    .line 33
    iput p1, p0, Lm06;->g:I

    .line 34
    .line 35
    iget-object p0, p0, Lm06;->c:Ljava/io/ByteArrayOutputStream;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string p0, "Cipher only supports RSA."

    .line 42
    .line 43
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string p0, "Unsupported key type"

    .line 48
    .line 49
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    if-nez p3, :cond_0

    .line 53
    invoke-virtual {p0, p1, p2, p4}, Lm06;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void

    .line 54
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Cipher must be initialized with params = null"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineSetMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm06;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final engineSetPadding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm06;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final engineUpdate([BII[BI)I
    .locals 0

    .line 10
    iget-object p0, p0, Lm06;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0
.end method

.method public final engineUpdate([BII)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lm06;->c:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    new-array p0, p0, [B

    .line 8
    .line 9
    return-object p0
.end method
