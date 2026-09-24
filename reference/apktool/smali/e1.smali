.class public final Le1;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnh4;I)V
    .locals 0

    .line 1
    iput p2, p0, Le1;->e:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static H(Lg1;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg1;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/StringTokenizer;

    .line 9
    .line 10
    const-string v3, "."

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    mul-int/lit8 v0, v0, 0x28

    .line 32
    .line 33
    add-int/2addr v0, v3

    .line 34
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    new-instance v0, Ljava/math/BigInteger;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/16 v4, 0x7f

    .line 57
    .line 58
    if-lez v3, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ge v3, v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    div-int/lit8 v3, v3, 0x7

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    rem-int/lit8 v5, v5, 0x7

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    if-lez v5, :cond_2

    .line 88
    .line 89
    move v5, v6

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v5, 0x0

    .line 92
    :goto_1
    add-int/2addr v3, v5

    .line 93
    sub-int/2addr v3, v6

    .line 94
    :goto_2
    if-ltz v3, :cond_0

    .line 95
    .line 96
    mul-int/lit8 v5, v3, 0x7

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    and-int/2addr v5, v4

    .line 107
    int-to-byte v5, v5

    .line 108
    if-lez v3, :cond_3

    .line 109
    .line 110
    or-int/lit16 v5, v5, 0x80

    .line 111
    .line 112
    int-to-byte v5, v5

    .line 113
    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v3, v3, -0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Lr1;->b:[B

    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public final D(Lz0;Ln1;)V
    .locals 0

    .line 1
    iget p0, p0, Le1;->e:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ly1;

    .line 7
    .line 8
    iget-object p0, p1, Ly1;->c:[B

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ly1;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lz0;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ln1;->a(Lz0;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    return-void

    .line 37
    :pswitch_0
    check-cast p1, Lg1;

    .line 38
    .line 39
    iget-object p0, p1, Lr1;->b:[B

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    invoke-static {p1}, Le1;->H(Lg1;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p0, p1, Lr1;->b:[B

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Lz0;)I
    .locals 3

    .line 1
    iget v0, p0, Le1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ly1;

    .line 7
    .line 8
    iget-object v0, p1, Ly1;->c:[B

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ln1;

    .line 18
    .line 19
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lnh4;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Ln1;-><init>(Lnh4;Ljava/io/ByteArrayOutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ly1;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lz0;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ln1;->a(Lz0;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iput-object p0, p1, Ly1;->c:[B

    .line 51
    .line 52
    :cond_1
    iget-object p0, p1, Ly1;->c:[B

    .line 53
    .line 54
    array-length p0, p0

    .line 55
    return p0

    .line 56
    :pswitch_0
    check-cast p1, Lg1;

    .line 57
    .line 58
    iget-object p0, p1, Lr1;->b:[B

    .line 59
    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    invoke-static {p1}, Le1;->H(Lg1;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p0, p1, Lr1;->b:[B

    .line 66
    .line 67
    array-length p0, p0

    .line 68
    return p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
