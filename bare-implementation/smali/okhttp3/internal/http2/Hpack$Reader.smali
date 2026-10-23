.class public final Lokhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:Ltf6;

.field public d:[Lokhttp3/internal/http2/Header;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Reader$ContinuationSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ltf6;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Ltf6;-><init>(Lij7;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Ltf6;

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    new-array p1, p1, [Lokhttp3/internal/http2/Header;

    .line 25
    .line 26
    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 27
    .line 28
    const/4 p1, 0x7

    .line 29
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget v2, v2, Lokhttp3/internal/http2/Header;->c:I

    .line 23
    .line 24
    sub-int/2addr p1, v2

    .line 25
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 26
    .line 27
    sub-int/2addr v3, v2

    .line 28
    iput v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 29
    .line 30
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 42
    .line 43
    add-int/lit8 v1, v2, 0x1

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    add-int/2addr v2, v0

    .line 48
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 49
    .line 50
    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 54
    .line 55
    add-int/2addr p1, v0

    .line 56
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 57
    .line 58
    :cond_1
    return v0
.end method

.method public final b(I)Lhy0;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-gt p1, v1, :cond_0

    .line 9
    .line 10
    aget-object p0, v0, p1

    .line 11
    .line 12
    iget-object p0, p0, Lokhttp3/internal/http2/Header;->a:Lhy0;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    sub-int v0, p1, v0

    .line 19
    .line 20
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    if-ltz v1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 28
    .line 29
    array-length v0, p0

    .line 30
    if-ge v1, v0, :cond_1

    .line 31
    .line 32
    aget-object p0, p0, v1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lokhttp3/internal/http2/Header;->a:Lhy0;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Header index too large "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final c(Lokhttp3/internal/http2/Header;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lokhttp3/internal/http2/Header;->c:I

    .line 7
    .line 8
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    invoke-static {p1, v2, v0}, Lx50;->m0([Ljava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 20
    .line 21
    array-length p1, p1

    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 25
    .line 26
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 27
    .line 28
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 32
    .line 33
    add-int/2addr v3, v0

    .line 34
    sub-int/2addr v3, v1

    .line 35
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Hpack$Reader;->a(I)I

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 43
    .line 44
    array-length v4, v3

    .line 45
    if-le v1, v4, :cond_1

    .line 46
    .line 47
    array-length v1, v3

    .line 48
    mul-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 51
    .line 52
    array-length v4, v3

    .line 53
    array-length v5, v3

    .line 54
    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 58
    .line 59
    array-length v2, v2

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 63
    .line 64
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 65
    .line 66
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 67
    .line 68
    add-int/lit8 v2, v1, -0x1

    .line 69
    .line 70
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 71
    .line 72
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 73
    .line 74
    aput-object p1, v2, v1

    .line 75
    .line 76
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 81
    .line 82
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 83
    .line 84
    add-int/2addr p1, v0

    .line 85
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 86
    .line 87
    return-void
.end method

.method public final d()Lhy0;
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Ltf6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltf6;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 8
    .line 9
    and-int/lit16 v2, v1, 0xff

    .line 10
    .line 11
    const/16 v3, 0x80

    .line 12
    .line 13
    and-int/2addr v1, v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v4

    .line 20
    :goto_0
    const/16 v3, 0x7f

    .line 21
    .line 22
    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    int-to-long v2, p0

    .line 27
    if-eqz v1, :cond_6

    .line 28
    .line 29
    new-instance p0, Lnw0;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lokhttp3/internal/http2/Huffman;->a:[I

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lokhttp3/internal/http2/Huffman;->c:Lokhttp3/internal/http2/Huffman$Node;

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    move-object v8, v1

    .line 44
    move-wide v6, v5

    .line 45
    move v5, v4

    .line 46
    :goto_1
    cmp-long v9, v6, v2

    .line 47
    .line 48
    if-gez v9, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Ltf6;->readByte()B

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    sget-object v10, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 55
    .line 56
    and-int/lit16 v9, v9, 0xff

    .line 57
    .line 58
    shl-int/lit8 v4, v4, 0x8

    .line 59
    .line 60
    or-int/2addr v4, v9

    .line 61
    add-int/lit8 v5, v5, 0x8

    .line 62
    .line 63
    :goto_2
    const/16 v9, 0x8

    .line 64
    .line 65
    if-lt v5, v9, :cond_2

    .line 66
    .line 67
    add-int/lit8 v9, v5, -0x8

    .line 68
    .line 69
    ushr-int v9, v4, v9

    .line 70
    .line 71
    and-int/lit16 v9, v9, 0xff

    .line 72
    .line 73
    iget-object v8, v8, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    aget-object v8, v8, v9

    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v9, v8, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    .line 84
    .line 85
    if-nez v9, :cond_1

    .line 86
    .line 87
    iget v9, v8, Lokhttp3/internal/http2/Huffman$Node;->b:I

    .line 88
    .line 89
    invoke-virtual {p0, v9}, Lnw0;->J(I)V

    .line 90
    .line 91
    .line 92
    iget v8, v8, Lokhttp3/internal/http2/Huffman$Node;->c:I

    .line 93
    .line 94
    sub-int/2addr v5, v8

    .line 95
    move-object v8, v1

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    add-int/lit8 v5, v5, -0x8

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const-wide/16 v9, 0x1

    .line 101
    .line 102
    add-long/2addr v6, v9

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :goto_3
    if-lez v5, :cond_5

    .line 105
    .line 106
    rsub-int/lit8 v0, v5, 0x8

    .line 107
    .line 108
    shl-int v0, v4, v0

    .line 109
    .line 110
    and-int/lit16 v0, v0, 0xff

    .line 111
    .line 112
    iget-object v2, v8, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    aget-object v0, v2, v0

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget v2, v0, Lokhttp3/internal/http2/Huffman$Node;->c:I

    .line 123
    .line 124
    iget-object v3, v0, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    .line 125
    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    if-le v2, v5, :cond_4

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    iget v0, v0, Lokhttp3/internal/http2/Huffman$Node;->b:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lnw0;->J(I)V

    .line 134
    .line 135
    .line 136
    sub-int/2addr v5, v2

    .line 137
    move-object v8, v1

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    :goto_4
    iget-wide v0, p0, Lnw0;->b:J

    .line 140
    .line 141
    invoke-virtual {p0, v0, v1}, Lnw0;->o(J)Lhy0;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_6
    invoke-virtual {v0, v2, v3}, Ltf6;->o(J)Lhy0;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0
.end method

.method public final e(II)I
    .locals 3

    .line 1
    and-int/2addr p1, p2

    .line 2
    if-ge p1, p2, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Ltf6;

    .line 7
    .line 8
    invoke-virtual {v0}, Ltf6;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 13
    .line 14
    and-int/lit16 v1, v0, 0xff

    .line 15
    .line 16
    and-int/lit16 v2, v0, 0x80

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x7f

    .line 21
    .line 22
    shl-int/2addr v0, p1

    .line 23
    add-int/2addr p2, v0

    .line 24
    add-int/lit8 p1, p1, 0x7

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    shl-int p0, v1, p1

    .line 28
    .line 29
    add-int/2addr p2, p0

    .line 30
    return p2
.end method
