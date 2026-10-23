.class public final Lag0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzc3;
.implements Lyc3;


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(J[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lag0;->a:J

    .line 5
    .line 6
    array-length p1, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput p2, p0, Lag0;->b:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    array-length p1, p3

    .line 14
    const/4 v0, 0x4

    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    move p1, p2

    .line 18
    :goto_0
    if-ge p2, v0, :cond_1

    .line 19
    .line 20
    aget-byte v1, p3, p2

    .line 21
    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    mul-int/lit8 v2, p2, 0x8

    .line 25
    .line 26
    shl-int/2addr v1, v2

    .line 27
    or-int/2addr p1, v1

    .line 28
    add-int/lit8 p2, p2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput p1, p0, Lag0;->b:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    const-string p0, "Unsupported BCJ filter properties"

    .line 35
    .line 36
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final b(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;
    .locals 6

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    iget-wide v2, p0, Lag0;->a:J

    .line 4
    .line 5
    cmp-long p2, v2, v0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iget p0, p0, Lag0;->b:I

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Lex8;

    .line 13
    .line 14
    invoke-direct {p2, p0, v0}, Lex8;-><init>(IZ)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v4, 0x5

    .line 19
    .line 20
    cmp-long p2, v2, v4

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    new-instance p2, Lo;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p2, p0, v1, v0}, Lo;-><init>(IIZ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-wide/16 v4, 0x6

    .line 32
    .line 33
    cmp-long p2, v2, v4

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    new-instance p2, Ll74;

    .line 38
    .line 39
    invoke-direct {p2, p0, v0}, Ll74;-><init>(IZ)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-wide/16 v4, 0x7

    .line 44
    .line 45
    cmp-long p2, v2, v4

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    new-instance p2, Lm;

    .line 50
    .line 51
    invoke-direct {p2, p0, v0}, Lm;-><init>(IZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-wide/16 v4, 0x8

    .line 56
    .line 57
    cmp-long p2, v2, v4

    .line 58
    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    new-instance p2, Lo;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {p2, p0, v1, v0}, Lo;-><init>(IIZ)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const-wide/16 v4, 0x9

    .line 69
    .line 70
    cmp-long p2, v2, v4

    .line 71
    .line 72
    if-nez p2, :cond_5

    .line 73
    .line 74
    new-instance p2, Lrv6;

    .line 75
    .line 76
    invoke-direct {p2, p0, v0}, Lrv6;-><init>(IZ)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-wide/16 v0, 0xa

    .line 81
    .line 82
    cmp-long p2, v2, v0

    .line 83
    .line 84
    if-nez p2, :cond_6

    .line 85
    .line 86
    new-instance p2, Lj15;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    iput p0, p2, Lj15;->a:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    const-wide/16 v0, 0xb

    .line 95
    .line 96
    cmp-long p2, v2, v0

    .line 97
    .line 98
    if-nez p2, :cond_7

    .line 99
    .line 100
    new-instance p2, Lme6;

    .line 101
    .line 102
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput p0, p2, Lme6;->a:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 p2, 0x0

    .line 109
    :goto_0
    new-instance p0, Lig7;

    .line 110
    .line 111
    invoke-direct {p0, p1, p2}, Lig7;-><init>(Ljava/io/InputStream;Lgg7;)V

    .line 112
    .line 113
    .line 114
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d()I
    .locals 0

    .line 1
    sget p0, Lig7;->q:I

    .line 2
    .line 3
    const/4 p0, 0x5

    .line 4
    return p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
