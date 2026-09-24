.class public final Lzp4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(ILv40;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lzp4;->c:I

    .line 6
    .line 7
    iput v0, p0, Lzp4;->d:I

    .line 8
    .line 9
    iput v0, p0, Lzp4;->e:I

    .line 10
    .line 11
    iput v0, p0, Lzp4;->f:I

    .line 12
    .line 13
    iput v0, p0, Lzp4;->g:I

    .line 14
    .line 15
    iput v0, p0, Lzp4;->h:I

    .line 16
    .line 17
    iput p1, p0, Lzp4;->b:I

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lv40;->a(I)[B

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lzp4;->a:[B

    .line 24
    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    aput-byte v0, p2, p1

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lzp4;->e:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lzp4;->f:I

    .line 8
    .line 9
    iget v1, p0, Lzp4;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr p2, v0

    .line 17
    iput p2, p0, Lzp4;->g:I

    .line 18
    .line 19
    iput p1, p0, Lzp4;->h:I

    .line 20
    .line 21
    iget p2, p0, Lzp4;->d:I

    .line 22
    .line 23
    sub-int/2addr p2, p1

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    iget-object p1, p0, Lzp4;->a:[B

    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    iget v1, p0, Lzp4;->b:I

    .line 31
    .line 32
    add-int/2addr p2, v1

    .line 33
    sub-int/2addr v1, p2

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v2, p0, Lzp4;->d:I

    .line 39
    .line 40
    invoke-static {p1, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget p2, p0, Lzp4;->d:I

    .line 44
    .line 45
    add-int/2addr p2, v1

    .line 46
    iput p2, p0, Lzp4;->d:I

    .line 47
    .line 48
    sub-int/2addr v0, v1

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p2, 0x0

    .line 53
    :cond_1
    iget v1, p0, Lzp4;->d:I

    .line 54
    .line 55
    sub-int/2addr v1, p2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget v2, p0, Lzp4;->d:I

    .line 61
    .line 62
    invoke-static {p1, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lzp4;->d:I

    .line 66
    .line 67
    add-int/2addr v2, v1

    .line 68
    iput v2, p0, Lzp4;->d:I

    .line 69
    .line 70
    sub-int/2addr v0, v1

    .line 71
    if-gtz v0, :cond_1

    .line 72
    .line 73
    iget p1, p0, Lzp4;->e:I

    .line 74
    .line 75
    if-ge p1, v2, :cond_2

    .line 76
    .line 77
    iput v2, p0, Lzp4;->e:I

    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    new-instance p0, Lcy1;

    .line 81
    .line 82
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p0
.end method
