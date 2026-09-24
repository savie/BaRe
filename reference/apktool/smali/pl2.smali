.class public final Lpl2;
.super Lei0;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final k:[B

.field public final n:[B

.field public final p:[B


# direct methods
.method public constructor <init>(Lol2;[BLql2;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 3
    .line 4
    .line 5
    iget p1, p1, Lol2;->a:I

    .line 6
    .line 7
    new-instance v0, Llr6;

    .line 8
    .line 9
    const/16 v1, 0x100

    .line 10
    .line 11
    invoke-direct {v0, v1}, Llr6;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    const/high16 v3, 0x20000

    .line 17
    .line 18
    const/16 v4, 0x80

    .line 19
    .line 20
    const/16 v5, 0x60

    .line 21
    .line 22
    const/high16 v6, 0x80000

    .line 23
    .line 24
    if-eq p1, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    const/4 v7, 0x5

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    if-ne p1, v7, :cond_0

    .line 31
    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    const/4 v7, 0x7

    .line 35
    :goto_0
    move v0, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-string p0, "The mode "

    .line 38
    .line 39
    const-string p2, "is not supported by Crystals Dilithium!"

    .line 40
    .line 41
    invoke-static {p1, p0, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v2

    .line 49
    :cond_1
    const/4 p1, 0x6

    .line 50
    move v5, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v7, 0x4

    .line 53
    move v0, v3

    .line 54
    move p1, v7

    .line 55
    :goto_1
    new-instance v8, Llr6;

    .line 56
    .line 57
    invoke-direct {v8, v4}, Lgo4;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v8, Llr6;

    .line 61
    .line 62
    invoke-direct {v8, v1}, Llr6;-><init>(I)V

    .line 63
    .line 64
    .line 65
    if-ne v0, v3, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    if-ne v0, v6, :cond_5

    .line 69
    .line 70
    :goto_2
    const/4 v0, 0x0

    .line 71
    const/16 v1, 0x20

    .line 72
    .line 73
    invoke-static {p2, v0, v1}, Lms8;->t([BII)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lpl2;->c:[B

    .line 78
    .line 79
    const/16 v0, 0x40

    .line 80
    .line 81
    invoke-static {p2, v1, v0}, Lms8;->t([BII)[B

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lpl2;->d:[B

    .line 86
    .line 87
    invoke-static {p2, v0, v4}, Lms8;->t([BII)[B

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lpl2;->e:[B

    .line 92
    .line 93
    mul-int/2addr v7, v5

    .line 94
    add-int/2addr v7, v4

    .line 95
    invoke-static {p2, v4, v7}, Lms8;->t([BII)[B

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lpl2;->f:[B

    .line 100
    .line 101
    mul-int/2addr v5, p1

    .line 102
    add-int/2addr v5, v7

    .line 103
    invoke-static {p2, v7, v5}, Lms8;->t([BII)[B

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lpl2;->k:[B

    .line 108
    .line 109
    mul-int/lit16 p1, p1, 0x1a0

    .line 110
    .line 111
    add-int/2addr p1, v5

    .line 112
    invoke-static {p2, v5, p1}, Lms8;->t([BII)[B

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lpl2;->n:[B

    .line 117
    .line 118
    if-eqz p3, :cond_4

    .line 119
    .line 120
    iget-object p1, p3, Lql2;->d:[B

    .line 121
    .line 122
    invoke-static {p1}, Lms8;->k([B)[B

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lpl2;->p:[B

    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    iput-object v2, p0, Lpl2;->p:[B

    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    const-string p0, "Wrong Dilithium Gamma1!"

    .line 133
    .line 134
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v2
.end method

.method public constructor <init>(Lol2;[B[B[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    invoke-static {p2}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->c:[B

    invoke-static {p3}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->d:[B

    invoke-static {p4}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->e:[B

    invoke-static {p5}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->f:[B

    invoke-static {p6}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->k:[B

    invoke-static {p7}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->n:[B

    invoke-static {p8}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lpl2;->p:[B

    return-void
.end method
