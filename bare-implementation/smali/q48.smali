.class public final Lq48;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>([BI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lq48;->a:I

    .line 5
    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .line 10
    .line 11
    int-to-long v1, p2

    .line 12
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v1, 0x0

    .line 21
    aget-byte v2, p2, v1

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v1

    .line 29
    :goto_0
    array-length v4, p2

    .line 30
    sub-int/2addr v4, v2

    .line 31
    invoke-virtual {v0, p2, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 32
    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    move p2, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    array-length p2, p1

    .line 39
    :goto_1
    iput p2, p0, Lq48;->b:I

    .line 40
    .line 41
    const/16 v2, 0x80

    .line 42
    .line 43
    if-ge p2, v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    int-to-long v4, p2

    .line 50
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    aget-byte v5, v4, v1

    .line 59
    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v3, v1

    .line 64
    :goto_2
    array-length v5, v4

    .line 65
    sub-int/2addr v5, v3

    .line 66
    or-int/2addr v2, v5

    .line 67
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    .line 69
    .line 70
    array-length v2, v4

    .line 71
    sub-int/2addr v2, v3

    .line 72
    invoke-virtual {v0, v4, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, p0, Lq48;->d:I

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lq48;->c:[B

    .line 91
    .line 92
    return-void
.end method

.method public static c(Ljava/nio/ByteBuffer;)Lq48;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0xff

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    const/16 v3, 0x80

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    shl-int/lit8 v0, v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    move v1, v0

    .line 24
    :goto_0
    and-int/lit16 v0, v1, 0x80

    .line 25
    .line 26
    if-ne v0, v3, :cond_0

    .line 27
    .line 28
    shl-int/lit8 v0, v1, 0x8

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    and-int/lit16 v1, v1, 0xff

    .line 35
    .line 36
    or-int/2addr v1, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/lit16 v0, v0, 0xff

    .line 43
    .line 44
    if-eq v0, v3, :cond_3

    .line 45
    .line 46
    if-le v0, v3, :cond_2

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x80

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    move v3, v2

    .line 52
    :goto_1
    if-ge v3, v0, :cond_1

    .line 53
    .line 54
    shl-int/lit8 v2, v2, 0x8

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    and-int/lit16 v4, v4, 0xff

    .line 61
    .line 62
    or-int/2addr v2, v4

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v0, v2

    .line 67
    :cond_2
    new-array v0, v0, [B

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    new-instance p0, Lq48;

    .line 73
    .line 74
    invoke-direct {p0, v0, v1}, Lq48;-><init>([BI)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    const-string p0, "Indefinite length not supported"

    .line 79
    .line 80
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lq48;->c:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final b()[B
    .locals 2

    .line 1
    iget v0, p0, Lq48;->b:I

    .line 2
    .line 3
    iget v1, p0, Lq48;->d:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object p0, p0, Lq48;->c:[B

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    iget v1, p0, Lq48;->a:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lq48;->b:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lq48;->b()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v3, 0x0

    .line 20
    array-length v4, p0

    .line 21
    invoke-static {p0, v3, v4}, Lx13;->f([BII)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "Tlv(0x%x, %d, %s)"

    .line 30
    .line 31
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
