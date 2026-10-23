.class public final Loq4;
.super Lto4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:[Lnq4;

.field public final synthetic d:Lpq4;


# direct methods
.method public constructor <init>(Lpq4;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Loq4;->d:Lpq4;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p3, p1}, Lto4;-><init>(III)V

    .line 5
    .line 6
    .line 7
    add-int/2addr p2, p3

    .line 8
    shl-int/2addr p1, p2

    .line 9
    new-array p1, p1, [Lnq4;

    .line 10
    .line 11
    iput-object p1, p0, Loq4;->c:[Lnq4;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p2, p0, Loq4;->c:[Lnq4;

    .line 15
    .line 16
    array-length p3, p2

    .line 17
    if-ge p1, p3, :cond_0

    .line 18
    .line 19
    new-instance p3, Lnq4;

    .line 20
    .line 21
    invoke-direct {p3, p0}, Lnq4;-><init>(Loq4;)V

    .line 22
    .line 23
    .line 24
    aput-object p3, p2, p1

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(IIIILdm7;)I
    .locals 5

    .line 1
    iget-object v0, p0, Loq4;->d:Lpq4;

    .line 2
    .line 3
    iget-object v1, v0, Lgq4;->d:[[S

    .line 4
    .line 5
    iget v2, p5, Ldm7;->a:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget v0, v0, Lgq4;->a:I

    .line 10
    .line 11
    and-int/2addr v0, p4

    .line 12
    aget-short v0, v1, v0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lbf6;->T(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, p3, p4}, Lto4;->a(II)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iget p4, p5, Ldm7;->a:I

    .line 24
    .line 25
    const/4 p5, 0x7

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ge p4, p5, :cond_0

    .line 28
    .line 29
    move p4, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p4, v1

    .line 32
    :goto_0
    const/high16 p5, 0x10000

    .line 33
    .line 34
    const/16 v3, 0x100

    .line 35
    .line 36
    iget-object p0, p0, Loq4;->c:[Lnq4;

    .line 37
    .line 38
    if-eqz p4, :cond_2

    .line 39
    .line 40
    aget-object p4, p0, p3

    .line 41
    .line 42
    or-int/lit16 p0, p1, 0x100

    .line 43
    .line 44
    :cond_1
    ushr-int/lit8 p1, p0, 0x8

    .line 45
    .line 46
    ushr-int/lit8 p2, p0, 0x7

    .line 47
    .line 48
    and-int/2addr p2, v2

    .line 49
    iget-object p3, p4, Lol1;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p3, [S

    .line 52
    .line 53
    aget-short p1, p3, p1

    .line 54
    .line 55
    invoke-static {p1, p2}, Lbf6;->T(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    add-int/2addr v1, p1

    .line 60
    shl-int/2addr p0, v2

    .line 61
    if-lt p0, p5, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    aget-object p0, p0, p3

    .line 65
    .line 66
    or-int/2addr p1, v3

    .line 67
    :cond_3
    shl-int/2addr p2, v2

    .line 68
    and-int p3, p2, v3

    .line 69
    .line 70
    add-int/2addr p3, v3

    .line 71
    ushr-int/lit8 p4, p1, 0x8

    .line 72
    .line 73
    add-int/2addr p3, p4

    .line 74
    ushr-int/lit8 p4, p1, 0x7

    .line 75
    .line 76
    and-int/2addr p4, v2

    .line 77
    iget-object v4, p0, Lol1;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, [S

    .line 80
    .line 81
    aget-short p3, v4, p3

    .line 82
    .line 83
    invoke-static {p3, p4}, Lbf6;->T(II)I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    add-int/2addr v1, p3

    .line 88
    shl-int/2addr p1, v2

    .line 89
    xor-int p3, p2, p1

    .line 90
    .line 91
    not-int p3, p3

    .line 92
    and-int/2addr v3, p3

    .line 93
    if-lt p1, p5, :cond_3

    .line 94
    .line 95
    :goto_1
    add-int/2addr v0, v1

    .line 96
    return v0
.end method
