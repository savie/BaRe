.class public final Lrf0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lsn4;


# direct methods
.method public constructor <init>(Lsn4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrf0;->a:Lsn4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 7

    .line 1
    iget-object p0, p0, Lrf0;->a:Lsn4;

    .line 2
    .line 3
    iget-object v0, p0, Lsn4;->h:[B

    .line 4
    .line 5
    iget v1, p0, Lsn4;->b:I

    .line 6
    .line 7
    iget v2, p0, Lsn4;->g:I

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x10

    .line 10
    .line 11
    if-ltz v3, :cond_2

    .line 12
    .line 13
    iget v4, p0, Lsn4;->e:I

    .line 14
    .line 15
    if-ge v3, v4, :cond_2

    .line 16
    .line 17
    rem-int/2addr v2, v1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lsn4;->a()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v2, p0, Lsn4;->g:I

    .line 24
    .line 25
    rem-int/2addr v2, v1

    .line 26
    sub-int v3, v1, v2

    .line 27
    .line 28
    const/16 v4, 0x10

    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v0, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lsn4;->g:I

    .line 39
    .line 40
    add-int/2addr v2, v3

    .line 41
    iput v2, p0, Lsn4;->g:I

    .line 42
    .line 43
    rsub-int/lit8 v2, v3, 0x10

    .line 44
    .line 45
    :goto_0
    if-lez v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lsn4;->a()V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-static {v0, v4, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iget v6, p0, Lsn4;->g:I

    .line 58
    .line 59
    add-int/2addr v6, v5

    .line 60
    iput v6, p0, Lsn4;->g:I

    .line 61
    .line 62
    sub-int/2addr v2, v5

    .line 63
    add-int/2addr v3, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p1, Lua2;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "Current KDFCTR may only be used for "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p0, p0, Lsn4;->e:I

    .line 76
    .line 77
    const-string v1, " bytes"

    .line 78
    .line 79
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public final b(Ley1;)V
    .locals 8

    .line 1
    iget-object v0, p1, Ley1;->a:[B

    .line 2
    .line 3
    iget-object v1, p1, Ley1;->b:[B

    .line 4
    .line 5
    iget p1, p1, Ley1;->c:I

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {v0}, Lms8;->k([B)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-array v1, v2, [B

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v1}, Lms8;->k([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    const/16 v4, 0x8

    .line 26
    .line 27
    if-eq p1, v4, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    if-eq p1, v4, :cond_2

    .line 32
    .line 33
    const/16 v4, 0x18

    .line 34
    .line 35
    if-eq p1, v4, :cond_2

    .line 36
    .line 37
    const/16 v4, 0x20

    .line 38
    .line 39
    if-ne p1, v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "Length of counter should be 8, 16, 24 or 32"

    .line 43
    .line 44
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :goto_1
    iget-object p0, p0, Lrf0;->a:Lsn4;

    .line 49
    .line 50
    iget v4, p0, Lsn4;->b:I

    .line 51
    .line 52
    iget-object v5, p0, Lsn4;->a:Lh24;

    .line 53
    .line 54
    new-instance v6, Loo4;

    .line 55
    .line 56
    array-length v7, v0

    .line 57
    invoke-direct {v6, v0, v7}, Loo4;-><init>([BI)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v6}, Lh24;->c(Lz61;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lms8;->k([B)[B

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lsn4;->c:[B

    .line 68
    .line 69
    invoke-static {v1}, Lms8;->k([B)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lsn4;->d:[B

    .line 74
    .line 75
    div-int/lit8 v0, p1, 0x8

    .line 76
    .line 77
    new-array v0, v0, [B

    .line 78
    .line 79
    iput-object v0, p0, Lsn4;->f:[B

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-lt p1, v0, :cond_3

    .line 86
    .line 87
    const p1, 0x7fffffff

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    shl-int p1, v4, p1

    .line 92
    .line 93
    :goto_2
    iput p1, p0, Lsn4;->e:I

    .line 94
    .line 95
    iput v2, p0, Lsn4;->g:I

    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    const-string p0, "A KDF requires Ki (a seed) as input"

    .line 99
    .line 100
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
