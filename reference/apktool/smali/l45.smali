.class public final Ll45;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lk45;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lai5;

.field public final f:I


# direct methods
.method public constructor <init>(Lk45;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll45;->a:Lk45;

    .line 5
    .line 6
    iget v0, p1, Lk45;->b:I

    .line 7
    .line 8
    iput v0, p0, Ll45;->b:I

    .line 9
    .line 10
    iget v0, p1, Lk45;->g:I

    .line 11
    .line 12
    iput v0, p0, Ll45;->c:I

    .line 13
    .line 14
    iget v0, p1, Lk45;->c:I

    .line 15
    .line 16
    iput v0, p0, Ll45;->d:I

    .line 17
    .line 18
    iget-object p1, p1, Lk45;->h:Lai5;

    .line 19
    .line 20
    iput-object p1, p0, Ll45;->e:Lai5;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    iput p1, p0, Ll45;->f:I

    .line 27
    .line 28
    return-void
.end method

.method public static a(Lg26;II[BI)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x3

    .line 6
    .line 7
    if-gt v2, p4, :cond_2

    .line 8
    .line 9
    aget-byte v3, p3, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    int-to-short v3, v3

    .line 14
    add-int/lit8 v4, v1, 0x1

    .line 15
    .line 16
    aget-byte v4, p3, v4

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    int-to-short v4, v4

    .line 21
    shl-int/lit8 v5, v4, 0x8

    .line 22
    .line 23
    or-int/2addr v3, v5

    .line 24
    and-int/lit16 v3, v3, 0xfff

    .line 25
    .line 26
    int-to-short v3, v3

    .line 27
    shr-int/lit8 v4, v4, 0x4

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    aget-byte v1, p3, v1

    .line 32
    .line 33
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    int-to-short v1, v1

    .line 36
    shl-int/lit8 v1, v1, 0x4

    .line 37
    .line 38
    or-int/2addr v1, v4

    .line 39
    and-int/lit16 v1, v1, 0xfff

    .line 40
    .line 41
    int-to-short v1, v1

    .line 42
    const/16 v4, 0xd01

    .line 43
    .line 44
    if-ge v3, v4, :cond_0

    .line 45
    .line 46
    add-int v5, p1, v0

    .line 47
    .line 48
    iget-object v6, p0, Lg26;->a:[S

    .line 49
    .line 50
    aput-short v3, v6, v5

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    :cond_0
    if-ge v0, p2, :cond_1

    .line 55
    .line 56
    if-ge v1, v4, :cond_1

    .line 57
    .line 58
    add-int v3, p1, v0

    .line 59
    .line 60
    iget-object v4, p0, Lg26;->a:[S

    .line 61
    .line 62
    aput-short v1, v4, v3

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    :cond_1
    move v1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return v0
.end method
