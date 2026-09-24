.class public final Lx24;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:[I


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Lx24;->i:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    move v3, v1

    .line 12
    move v4, v2

    .line 13
    :goto_1
    const/16 v5, 0x8

    .line 14
    .line 15
    if-ge v3, v5, :cond_1

    .line 16
    .line 17
    and-int/lit8 v5, v4, 0x1

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    ushr-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    const v5, -0x12477ce0

    .line 24
    .line 25
    .line 26
    xor-int/2addr v4, v5

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object v3, Lx24;->i:[I

    .line 34
    .line 35
    aput v4, v3, v2

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method

.method public constructor <init>(ILv40;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lx24;->f:I

    .line 6
    .line 7
    iput v0, p0, Lx24;->g:I

    .line 8
    .line 9
    iput v0, p0, Lx24;->h:I

    .line 10
    .line 11
    const/16 v0, 0x400

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p2, v0, v1}, Lv40;->b(IZ)[I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lx24;->b:[I

    .line 19
    .line 20
    const/high16 v0, 0x10000

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1}, Lv40;->b(IZ)[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lx24;->c:[I

    .line 27
    .line 28
    sub-int/2addr p1, v1

    .line 29
    ushr-int/lit8 v0, p1, 0x1

    .line 30
    .line 31
    or-int/2addr p1, v0

    .line 32
    ushr-int/lit8 v0, p1, 0x2

    .line 33
    .line 34
    or-int/2addr p1, v0

    .line 35
    ushr-int/lit8 v0, p1, 0x4

    .line 36
    .line 37
    or-int/2addr p1, v0

    .line 38
    ushr-int/lit8 v0, p1, 0x8

    .line 39
    .line 40
    or-int/2addr p1, v0

    .line 41
    ushr-int/2addr p1, v1

    .line 42
    const v0, 0xffff

    .line 43
    .line 44
    .line 45
    or-int/2addr p1, v0

    .line 46
    const/high16 v0, 0x1000000

    .line 47
    .line 48
    if-le p1, v0, :cond_0

    .line 49
    .line 50
    ushr-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 53
    .line 54
    iput v0, p0, Lx24;->e:I

    .line 55
    .line 56
    invoke-virtual {p2, v0, v1}, Lv40;->b(IZ)[I

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lx24;->d:[I

    .line 61
    .line 62
    iput p1, p0, Lx24;->a:I

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    sget-object v1, Lx24;->i:[I

    .line 6
    .line 7
    aget v0, v1, v0

    .line 8
    .line 9
    add-int/lit8 v2, p2, 0x1

    .line 10
    .line 11
    aget-byte v2, p1, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    xor-int/2addr v0, v2

    .line 16
    and-int/lit16 v2, v0, 0x3ff

    .line 17
    .line 18
    iput v2, p0, Lx24;->f:I

    .line 19
    .line 20
    add-int/lit8 v2, p2, 0x2

    .line 21
    .line 22
    aget-byte v2, p1, v2

    .line 23
    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 25
    .line 26
    shl-int/lit8 v2, v2, 0x8

    .line 27
    .line 28
    xor-int/2addr v0, v2

    .line 29
    const v2, 0xffff

    .line 30
    .line 31
    .line 32
    and-int/2addr v2, v0

    .line 33
    iput v2, p0, Lx24;->g:I

    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x3

    .line 36
    .line 37
    aget-byte p1, p1, p2

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    aget p1, v1, p1

    .line 42
    .line 43
    shl-int/lit8 p1, p1, 0x5

    .line 44
    .line 45
    xor-int/2addr p1, v0

    .line 46
    iget p2, p0, Lx24;->a:I

    .line 47
    .line 48
    and-int/2addr p1, p2

    .line 49
    iput p1, p0, Lx24;->h:I

    .line 50
    .line 51
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx24;->b:[I

    .line 2
    .line 3
    iget v1, p0, Lx24;->f:I

    .line 4
    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    iget-object v0, p0, Lx24;->c:[I

    .line 8
    .line 9
    iget v1, p0, Lx24;->g:I

    .line 10
    .line 11
    aput p1, v0, v1

    .line 12
    .line 13
    iget-object v0, p0, Lx24;->d:[I

    .line 14
    .line 15
    iget p0, p0, Lx24;->h:I

    .line 16
    .line 17
    aput p1, v0, p0

    .line 18
    .line 19
    return-void
.end method
