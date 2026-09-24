.class public final Lkx7;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x10

    .line 5
    .line 6
    new-array v0, p1, [B

    .line 7
    .line 8
    iput-object v0, p0, Lkx7;->a:[B

    .line 9
    .line 10
    iput p1, p0, Lkx7;->b:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(I[BII)I
    .locals 3

    .line 1
    iget v0, p0, Lkx7;->b:I

    .line 2
    .line 3
    sub-int/2addr v0, p3

    .line 4
    sub-int v1, p1, v0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, p4

    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lkx7;->a:[B

    .line 19
    .line 20
    if-lez p3, :cond_0

    .line 21
    .line 22
    invoke-static {v0, v2, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p2, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    add-int/2addr p1, p3

    .line 29
    iput p1, p0, Lkx7;->c:I

    .line 30
    .line 31
    sub-int/2addr v1, p4

    .line 32
    return v1
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 112
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, v1, v2, v0}, Lkx7;->read([BII)I

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    .line 114
    invoke-virtual {p0, v1, v2, v0}, Lkx7;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    if-ne v3, p0, :cond_1

    return p0

    .line 115
    :cond_1
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lkx7;->d:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    move v2, v0

    .line 12
    :goto_0
    if-nez v2, :cond_7

    .line 13
    .line 14
    iget v2, p0, Lkx7;->c:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-lt p3, v2, :cond_5

    .line 18
    .line 19
    sub-int v2, p3, v2

    .line 20
    .line 21
    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 22
    .line 23
    iget v5, p0, Lkx7;->c:I

    .line 24
    .line 25
    add-int/2addr v5, p2

    .line 26
    invoke-virtual {v4, p1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v1, :cond_2

    .line 31
    .line 32
    iput-boolean v3, p0, Lkx7;->d:Z

    .line 33
    .line 34
    :goto_1
    move v2, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget v4, p0, Lkx7;->c:I

    .line 37
    .line 38
    if-lez v4, :cond_3

    .line 39
    .line 40
    iget-object v5, p0, Lkx7;->a:[B

    .line 41
    .line 42
    invoke-static {v5, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget v4, p0, Lkx7;->c:I

    .line 46
    .line 47
    add-int/2addr v4, v2

    .line 48
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 49
    .line 50
    iget-object v5, p0, Lkx7;->a:[B

    .line 51
    .line 52
    iget v6, p0, Lkx7;->b:I

    .line 53
    .line 54
    invoke-virtual {v2, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ne v2, v1, :cond_4

    .line 59
    .line 60
    iput-boolean v3, p0, Lkx7;->d:Z

    .line 61
    .line 62
    move v2, v0

    .line 63
    :cond_4
    invoke-virtual {p0, v4, p1, v2, p2}, Lkx7;->a(I[BII)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    sub-int/2addr v2, p3

    .line 69
    iget-object v4, p0, Lkx7;->a:[B

    .line 70
    .line 71
    invoke-static {v4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lkx7;->a:[B

    .line 75
    .line 76
    invoke-static {v4, p3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 80
    .line 81
    iget-object v5, p0, Lkx7;->a:[B

    .line 82
    .line 83
    iget v6, p0, Lkx7;->b:I

    .line 84
    .line 85
    sub-int/2addr v6, v2

    .line 86
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v1, :cond_6

    .line 91
    .line 92
    iget-object v4, p0, Lkx7;->a:[B

    .line 93
    .line 94
    invoke-static {v4, v0, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lkx7;->a:[B

    .line 98
    .line 99
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    iput-boolean v3, p0, Lkx7;->d:Z

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    add-int/2addr v4, v2

    .line 106
    invoke-virtual {p0, p3, p1, v4, p2}, Lkx7;->a(I[BII)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    goto :goto_0

    .line 111
    :cond_7
    return v2
.end method
