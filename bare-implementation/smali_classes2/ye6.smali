.class public abstract Lye6;
.super Ly13;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lye6;->h:I

    .line 6
    .line 7
    iput v0, p0, Lye6;->i:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final R(I[S)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lye6;->T()V

    .line 2
    .line 3
    .line 4
    aget-short v0, p2, p1

    .line 5
    .line 6
    iget v1, p0, Lye6;->h:I

    .line 7
    .line 8
    ushr-int/lit8 v1, v1, 0xb

    .line 9
    .line 10
    mul-int/2addr v1, v0

    .line 11
    iget v2, p0, Lye6;->i:I

    .line 12
    .line 13
    invoke-static {v2, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    iput v1, p0, Lye6;->h:I

    .line 20
    .line 21
    rsub-int p0, v0, 0x800

    .line 22
    .line 23
    ushr-int/lit8 p0, p0, 0x5

    .line 24
    .line 25
    add-int/2addr v0, p0

    .line 26
    int-to-short p0, v0

    .line 27
    aput-short p0, p2, p1

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_0
    iget v2, p0, Lye6;->h:I

    .line 32
    .line 33
    sub-int/2addr v2, v1

    .line 34
    iput v2, p0, Lye6;->h:I

    .line 35
    .line 36
    iget v2, p0, Lye6;->i:I

    .line 37
    .line 38
    sub-int/2addr v2, v1

    .line 39
    iput v2, p0, Lye6;->i:I

    .line 40
    .line 41
    ushr-int/lit8 p0, v0, 0x5

    .line 42
    .line 43
    sub-int/2addr v0, p0

    .line 44
    int-to-short p0, v0

    .line 45
    aput-short p0, p2, p1

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public final S([S)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lye6;->R(I[S)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    or-int/2addr v0, v1

    .line 9
    array-length v1, p1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    array-length p0, p1

    .line 13
    sub-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public abstract T()V
.end method
