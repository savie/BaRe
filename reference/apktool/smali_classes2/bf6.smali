.class public abstract Lbf6;
.super Ly13;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final l:[I


# instance fields
.field public h:J

.field public i:I

.field public j:J

.field public k:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Lbf6;->l:[I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    :goto_0
    const/16 v1, 0x800

    .line 10
    .line 11
    if-ge v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v3, v0

    .line 15
    move v2, v1

    .line 16
    :goto_1
    const/4 v4, 0x4

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    mul-int/2addr v3, v3

    .line 20
    shl-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    :goto_2
    const/high16 v4, -0x10000

    .line 23
    .line 24
    and-int/2addr v4, v3

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    ushr-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v1, Lbf6;->l:[I

    .line 36
    .line 37
    shr-int/lit8 v3, v0, 0x4

    .line 38
    .line 39
    rsub-int v2, v2, 0xa1

    .line 40
    .line 41
    aput v2, v1, v3

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x10

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method public static T(II)I
    .locals 0

    .line 1
    neg-int p1, p1

    .line 2
    and-int/lit16 p1, p1, 0x7ff

    .line 3
    .line 4
    xor-int/2addr p0, p1

    .line 5
    ushr-int/lit8 p0, p0, 0x4

    .line 6
    .line 7
    sget-object p1, Lbf6;->l:[I

    .line 8
    .line 9
    aget p0, p1, p0

    .line 10
    .line 11
    return p0
.end method

.method public static U(I[S)I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    or-int/2addr p0, v0

    .line 3
    const/4 v0, 0x0

    .line 4
    :cond_0
    and-int/lit8 v1, p0, 0x1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    ushr-int/2addr p0, v2

    .line 8
    aget-short v3, p1, p0

    .line 9
    .line 10
    invoke-static {v3, v1}, Lbf6;->T(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    if-ne p0, v2, :cond_0

    .line 16
    .line 17
    return v0
.end method


# virtual methods
.method public final R([SII)V
    .locals 9

    .line 1
    aget-short v0, p1, p2

    .line 2
    .line 3
    iget v1, p0, Lbf6;->i:I

    .line 4
    .line 5
    ushr-int/lit8 v2, v1, 0xb

    .line 6
    .line 7
    mul-int/2addr v2, v0

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    iput v2, p0, Lbf6;->i:I

    .line 11
    .line 12
    rsub-int p3, v0, 0x800

    .line 13
    .line 14
    ushr-int/lit8 p3, p3, 0x5

    .line 15
    .line 16
    add-int/2addr v0, p3

    .line 17
    int-to-short p3, v0

    .line 18
    aput-short p3, p1, p2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-wide v3, p0, Lbf6;->h:J

    .line 22
    .line 23
    int-to-long v5, v2

    .line 24
    const-wide v7, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v5, v7

    .line 30
    add-long/2addr v3, v5

    .line 31
    iput-wide v3, p0, Lbf6;->h:J

    .line 32
    .line 33
    sub-int/2addr v1, v2

    .line 34
    iput v1, p0, Lbf6;->i:I

    .line 35
    .line 36
    ushr-int/lit8 p3, v0, 0x5

    .line 37
    .line 38
    sub-int/2addr v0, p3

    .line 39
    int-to-short p3, v0

    .line 40
    aput-short p3, p1, p2

    .line 41
    .line 42
    :goto_0
    iget p1, p0, Lbf6;->i:I

    .line 43
    .line 44
    const/high16 p2, -0x1000000

    .line 45
    .line 46
    and-int/2addr p2, p1

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    shl-int/lit8 p1, p1, 0x8

    .line 50
    .line 51
    iput p1, p0, Lbf6;->i:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lbf6;->W()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final S(I[S)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    move v2, v1

    .line 4
    :cond_0
    ushr-int/2addr v0, v1

    .line 5
    and-int v3, p1, v0

    .line 6
    .line 7
    invoke-virtual {p0, p2, v2, v3}, Lbf6;->R([SII)V

    .line 8
    .line 9
    .line 10
    shl-int/2addr v2, v1

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    or-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    :cond_1
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void
.end method

.method public V()I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/Error;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final W()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lbf6;->h:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    long-to-int v2, v2

    .line 8
    const-wide/16 v3, 0x1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-wide v5, 0xff000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v0, v0, v5

    .line 18
    .line 19
    if-gez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-byte v0, p0, Lbf6;->k:B

    .line 22
    .line 23
    :goto_0
    add-int/2addr v0, v2

    .line 24
    invoke-virtual {p0, v0}, Lbf6;->X(I)V

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Lbf6;->j:J

    .line 28
    .line 29
    sub-long/2addr v0, v3

    .line 30
    iput-wide v0, p0, Lbf6;->j:J

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    cmp-long v0, v0, v5

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-wide v0, p0, Lbf6;->h:J

    .line 39
    .line 40
    const/16 v2, 0x18

    .line 41
    .line 42
    ushr-long/2addr v0, v2

    .line 43
    long-to-int v0, v0

    .line 44
    int-to-byte v0, v0

    .line 45
    iput-byte v0, p0, Lbf6;->k:B

    .line 46
    .line 47
    :cond_1
    iget-wide v0, p0, Lbf6;->j:J

    .line 48
    .line 49
    add-long/2addr v0, v3

    .line 50
    iput-wide v0, p0, Lbf6;->j:J

    .line 51
    .line 52
    iget-wide v0, p0, Lbf6;->h:J

    .line 53
    .line 54
    const-wide/32 v2, 0xffffff

    .line 55
    .line 56
    .line 57
    and-long/2addr v0, v2

    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    shl-long/2addr v0, v2

    .line 61
    iput-wide v0, p0, Lbf6;->h:J

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const/16 v0, 0xff

    .line 65
    .line 66
    goto :goto_0
.end method

.method public abstract X(I)V
.end method
