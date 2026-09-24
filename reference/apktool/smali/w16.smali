.class public final Lw16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final d:Lx53;

.field public static final e:Lx53;

.field public static final f:Ll15;


# instance fields
.field public final a:Lci7;

.field public final b:Lwj8;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lx53;

    .line 2
    .line 3
    const-string v1, "Curve P384"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lx53;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lw16;->d:Lx53;

    .line 11
    .line 12
    new-instance v0, Lx53;

    .line 13
    .line 14
    const-string v1, "PIN/Touch Policy"

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lx53;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lx53;

    .line 20
    .line 21
    const-string v1, "Cached Touch Policy"

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-direct {v0, v1, v2, v4}, Lx53;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lwj8;

    .line 28
    .line 29
    invoke-static {v2}, Lwj8;->a(I)B

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Lwj8;->a(I)B

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lwj8;->a(I)B

    .line 36
    .line 37
    .line 38
    new-instance v0, Lwj8;

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    invoke-static {v0}, Lwj8;->a(I)B

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lwj8;->a(I)B

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lwj8;->a(I)B

    .line 48
    .line 49
    .line 50
    new-instance v1, Lx53;

    .line 51
    .line 52
    const-string v5, "Metadata"

    .line 53
    .line 54
    invoke-direct {v1, v5, v0, v4}, Lx53;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lw16;->e:Lx53;

    .line 58
    .line 59
    new-instance v1, Lwj8;

    .line 60
    .line 61
    invoke-static {v0}, Lwj8;->a(I)B

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lwj8;->a(I)B

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lwj8;->a(I)B

    .line 68
    .line 69
    .line 70
    new-instance v0, Lv16;

    .line 71
    .line 72
    const-string v1, "RSA key generation"

    .line 73
    .line 74
    const/16 v2, 0x8

    .line 75
    .line 76
    invoke-direct {v0, v1, v2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    const-class v0, Lw16;

    .line 80
    .line 81
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lw16;->f:Ll15;

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Lai7;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lw16;->c:I

    .line 6
    .line 7
    new-instance v1, Lci7;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lci7;-><init>(Lai7;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lw16;->a:Lci7;

    .line 13
    .line 14
    sget-object v2, Lzv1;->a:[B

    .line 15
    .line 16
    :try_start_0
    new-instance v3, Lie;

    .line 17
    .line 18
    const/16 v4, -0x5c

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-direct {v3, v4, v2, v5, v6}, Lie;-><init>(I[BII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lci7;->b(Lie;)[B
    :try_end_0
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    new-instance v2, Lie;

    .line 29
    .line 30
    const/4 v3, -0x3

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, v3, v4, v6, v6}, Lie;-><init>(I[BII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lci7;->b(Lie;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    array-length v3, v2

    .line 40
    if-lt v3, v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lwj8;

    .line 43
    .line 44
    aget-byte v3, v2, v6

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    aget-byte v7, v2, v4

    .line 48
    .line 49
    const/4 v8, 0x2

    .line 50
    aget-byte v2, v2, v8

    .line 51
    .line 52
    invoke-direct {v0, v3, v7, v2}, Lwj8;-><init>(BBB)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lw16;->b:Lwj8;

    .line 56
    .line 57
    invoke-interface {p1}, Lai7;->l()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-ne p0, v4, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0, v5, v8, v6}, Lwj8;->b(III)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-ltz p0, :cond_0

    .line 68
    .line 69
    const/4 p0, 0x7

    .line 70
    invoke-virtual {v0, v5, v8, p0}, Lwj8;->b(III)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-gez p0, :cond_0

    .line 75
    .line 76
    iput-boolean v4, v1, Lci7;->c:Z

    .line 77
    .line 78
    :cond_0
    invoke-interface {p1}, Lai7;->e0()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0, v5, v6, v6}, Lwj8;->b(III)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-ltz p0, :cond_1

    .line 89
    .line 90
    iput v8, v1, Lci7;->b:I

    .line 91
    .line 92
    :cond_1
    sget-object p0, Lw16;->f:Ll15;

    .line 93
    .line 94
    const-string p1, "PIV session initialized (version={})"

    .line 95
    .line 96
    invoke-static {v5, p0, p1, v0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    const-string p0, "Version byte array must contain 3 bytes."

    .line 101
    .line 102
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v4

    .line 106
    :catch_0
    move-exception p0

    .line 107
    const/16 p1, 0x6a82

    .line 108
    .line 109
    iget-short v0, p0, Lje;->b:S

    .line 110
    .line 111
    if-eq v0, p1, :cond_4

    .line 112
    .line 113
    const/16 p1, 0x6d00

    .line 114
    .line 115
    if-ne v0, p1, :cond_3

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 119
    .line 120
    const-string v0, "Unexpected SW"

    .line 121
    .line 122
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_4
    :goto_0
    new-instance p1, Lg10;

    .line 127
    .line 128
    const-string v0, "The application couldn\'t be selected"

    .line 129
    .line 130
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public static h(Lvo4;[B)Lqb6;
    .locals 3

    .line 1
    invoke-static {p1}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lvo4;->b:Lto4;

    .line 6
    .line 7
    iget v0, p0, Lto4;->a:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/math/BigInteger;

    .line 13
    .line 14
    const/16 v0, 0x81

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [B

    .line 25
    .line 26
    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/math/BigInteger;

    .line 30
    .line 31
    const/16 v2, 0x82

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [B

    .line 42
    .line 43
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lpb6;

    .line 47
    .line 48
    invoke-direct {p1, p0, v0}, Lpb6;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_0
    instance-of v0, p0, Lso4;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    check-cast p0, Lso4;

    .line 57
    .line 58
    iget-object p0, p0, Lso4;->c:Lzt2;

    .line 59
    .line 60
    const/16 v0, 0x86

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, [B

    .line 71
    .line 72
    invoke-static {p0, p1}, Lob6;->i(Lzt2;[B)Lob6;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_1
    const-string p0, "Unsupported key type"

    .line 78
    .line 79
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method public static j([C)[B
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-gt v1, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-static {v3, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v2, "PIN/PUK must be no longer than 8 bytes"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method


# virtual methods
.method public final a(Lvh7;)Ljava/security/cert/X509Certificate;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    sget-object v1, Lw16;->f:Ll15;

    .line 3
    .line 4
    const-string v2, "Reading certificate in slot {}"

    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget p1, p1, Lvh7;->b:I

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Reading data from object slot {}"

    .line 18
    .line 19
    invoke-static {v0, v1, v3, v2}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lq48;

    .line 23
    .line 24
    const/16 v1, 0x5c

    .line 25
    .line 26
    invoke-static {p1}, Liz1;->k(I)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1, v1}, Lq48;-><init>([BI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lq48;->a()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lie;

    .line 38
    .line 39
    const/16 v1, 0x3f

    .line 40
    .line 41
    const/16 v2, 0xff

    .line 42
    .line 43
    const/16 v3, -0x35

    .line 44
    .line 45
    invoke-direct {v0, v3, p1, v1, v2}, Lie;-><init>(I[BII)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lw16;->a:Lci7;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lci7;->b(Lie;)[B

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/16 p1, 0x53

    .line 55
    .line 56
    invoke-static {p0, p1}, Lcy0;->K([BI)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/16 p1, 0x71

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, [B

    .line 75
    .line 76
    const/16 v0, 0x70

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, [B

    .line 87
    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    array-length v0, p1

    .line 91
    if-lez v0, :cond_0

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    aget-byte p1, p1, v0

    .line 95
    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    :try_start_0
    invoke-static {p0}, Lf24;->a([B)[B

    .line 99
    .line 100
    .line 101
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Lvk0;

    .line 105
    .line 106
    const-string v0, "Failed to decompress certificate"

    .line 107
    .line 108
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_0
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .line 116
    .line 117
    const-string p0, "X.509"

    .line 118
    .line 119
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    return-object p0

    .line 130
    :catch_1
    move-exception p0

    .line 131
    new-instance p1, Lvk0;

    .line 132
    .line 133
    const-string v0, "Failed to parse certificate: "

    .line 134
    .line 135
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p1
.end method

.method public final b(I)I
    .locals 3

    .line 1
    const/16 v0, 0x6983

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    const/4 v2, 0x4

    .line 9
    iget-object p0, p0, Lw16;->b:Lwj8;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lwj8;->b(III)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-gez p0, :cond_1

    .line 16
    .line 17
    const/16 p0, 0x6300

    .line 18
    .line 19
    if-lt p1, p0, :cond_2

    .line 20
    .line 21
    const/16 p0, 0x63ff

    .line 22
    .line 23
    if-gt p1, p0, :cond_2

    .line 24
    .line 25
    and-int/lit16 p0, p1, 0xff

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    const/16 p0, 0x63c0

    .line 29
    .line 30
    if-lt p1, p0, :cond_2

    .line 31
    .line 32
    const/16 p0, 0x63cf

    .line 33
    .line 34
    if-gt p1, p0, :cond_2

    .line 35
    .line 36
    and-int/lit8 p0, p1, 0xf

    .line 37
    .line 38
    return p0

    .line 39
    :cond_2
    const/4 p0, -0x1

    .line 40
    return p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lw16;->a:Lci7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lci7;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lvh7;)Lh80;
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    sget-object v1, Lw16;->f:Ll15;

    .line 3
    .line 4
    const-string v2, "Getting metadata for slot {}"

    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lw16;->e:Lx53;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lw16;->n(Lol1;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lie;

    .line 15
    .line 16
    iget p1, p1, Lvh7;->a:I

    .line 17
    .line 18
    const/16 v2, -0x9

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v1, v2, v3, v4, p1}, Lie;-><init>(I[BII)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lw16;->a:Lci7;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lci7;->b(Lie;)[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 p1, 0x2

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [B

    .line 45
    .line 46
    new-instance v1, Lh80;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, [B

    .line 58
    .line 59
    aget-byte v5, v5, v4

    .line 60
    .line 61
    invoke-static {}, Lvo4;->values()[Lvo4;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    array-length v7, v6

    .line 66
    move v8, v4

    .line 67
    :goto_0
    if-ge v8, v7, :cond_4

    .line 68
    .line 69
    aget-object v9, v6, v8

    .line 70
    .line 71
    iget-byte v10, v9, Lvo4;->a:B

    .line 72
    .line 73
    if-ne v10, v5, :cond_3

    .line 74
    .line 75
    aget-byte v5, p1, v4

    .line 76
    .line 77
    if-ltz v5, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lk06;->values()[Lk06;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    array-length v6, v6

    .line 84
    if-ge v5, v6, :cond_2

    .line 85
    .line 86
    invoke-static {}, Lk06;->values()[Lk06;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    aget-object v5, v6, v5

    .line 91
    .line 92
    aget-byte p1, p1, v2

    .line 93
    .line 94
    invoke-static {}, Lw88;->values()[Lw88;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    array-length v6, v2

    .line 99
    move v7, v4

    .line 100
    :goto_1
    if-ge v7, v6, :cond_1

    .line 101
    .line 102
    aget-object v8, v2, v7

    .line 103
    .line 104
    iget v10, v8, Lw88;->a:I

    .line 105
    .line 106
    if-ne v10, p1, :cond_0

    .line 107
    .line 108
    const/4 p1, 0x3

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, [B

    .line 118
    .line 119
    aget-byte p1, p1, v4

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, [B

    .line 130
    .line 131
    invoke-direct {v1, v9, v5, v8, p0}, Lh80;-><init>(Lvo4;Lk06;Lw88;[B)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    const-string p0, "Not a valid TouchPolicy :"

    .line 139
    .line 140
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v3

    .line 148
    :cond_2
    const-string p0, "Not a valid PinPolicy :"

    .line 149
    .line 150
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v3

    .line 158
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    const-string p0, "Not a valid KeyType:"

    .line 162
    .line 163
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v3
.end method

.method public final m([BI)V
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    sget-object v2, Lw16;->f:Ll15;

    .line 9
    .line 10
    const-string v3, "Writing data to object slot {}"

    .line 11
    .line 12
    invoke-static {v1, v2, v3, v0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x5c

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p2}, Liz1;->k(I)[B

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const/16 p2, 0x53

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance p1, Lie;

    .line 43
    .line 44
    const/16 p2, 0xff

    .line 45
    .line 46
    invoke-static {v0}, Lcy0;->s(Ljava/util/LinkedHashMap;)[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/16 v1, -0x25

    .line 51
    .line 52
    const/16 v2, 0x3f

    .line 53
    .line 54
    invoke-direct {p1, v1, v0, v2, p2}, Lie;-><init>(I[BII)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lw16;->a:Lci7;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lci7;->b(Lie;)[B

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final n(Lol1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lw16;->b:Lwj8;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lol1;->u(Lwj8;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lol1;->s()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final q(Lvh7;Lvo4;[BZ)[B
    .locals 4

    .line 1
    iget p1, p1, Lvh7;->a:I

    .line 2
    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x82

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    const/16 p4, 0x85

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p4, 0x81

    .line 24
    .line 25
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    new-instance p3, Lq48;

    .line 33
    .line 34
    invoke-static {v0}, Lcy0;->s(Ljava/util/LinkedHashMap;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    const/16 v0, 0x7c

    .line 39
    .line 40
    invoke-direct {p3, p4, v0}, Lq48;-><init>([BI)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Lq48;->a()[B

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    :try_start_0
    iget-object p0, p0, Lw16;->a:Lci7;

    .line 48
    .line 49
    new-instance p4, Lie;

    .line 50
    .line 51
    iget-byte v2, p2, Lvo4;->a:B

    .line 52
    .line 53
    const/16 v3, -0x79

    .line 54
    .line 55
    invoke-direct {p4, v3, p3, v2, p1}, Lie;-><init>(I[BII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p4}, Lci7;->b(Lie;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, v0}, Lcy0;->K([BI)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, v1}, Lcy0;->K([BI)[B

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_0
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const/16 p3, 0x6a80

    .line 73
    .line 74
    iget-short p4, p0, Lje;->b:S

    .line 75
    .line 76
    if-ne p3, p4, :cond_1

    .line 77
    .line 78
    new-instance p0, Lje;

    .line 79
    .line 80
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "Make sure that %s key is generated on slot %02X"

    .line 95
    .line 96
    invoke-static {p3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p4, p1}, Lje;-><init>(SLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_1
    throw p0
.end method

.method public final r([C)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lw16;->f:Ll15;

    .line 2
    .line 3
    const-string v1, "Verifying PIN"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ll15;->k(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lw16;->a:Lci7;

    .line 9
    .line 10
    new-instance v1, Lie;

    .line 11
    .line 12
    invoke-static {p1}, Lw16;->j([C)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, -0x80

    .line 20
    .line 21
    invoke-direct {v1, v2, p1, v3, v4}, Lie;-><init>(I[BII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lci7;->b(Lie;)[B

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lw16;->c:I
    :try_end_0
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p1

    .line 32
    iget-short v0, p1, Lje;->b:S

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lw16;->b(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ltz v0, :cond_0

    .line 39
    .line 40
    iput v0, p0, Lw16;->c:I

    .line 41
    .line 42
    new-instance p0, Ldg4;

    .line 43
    .line 44
    const-string p1, "Invalid PIN/PUK. Remaining attempts: "

    .line 45
    .line 46
    invoke-static {v0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_0
    throw p1
.end method
