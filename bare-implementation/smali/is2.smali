.class public final Lis2;
.super Ln60;


# instance fields
.field public final b:Lnh;


# direct methods
.method public constructor <init>(Lnh;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    iput-object p1, p0, Lis2;->b:Lnh;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lyc9;->c:[I

    .line 13
    .line 14
    const/16 v1, 0x38

    .line 15
    .line 16
    aget-byte v1, v2, v1

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x7f

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/16 v1, 0x34

    .line 25
    .line 26
    invoke-static {v2, v1}, Lg67;->l([BI)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v4, 0xd

    .line 31
    .line 32
    aget v4, p1, v4

    .line 33
    .line 34
    xor-int/2addr v4, v1

    .line 35
    const/16 v5, 0xc

    .line 36
    .line 37
    :goto_0
    const/high16 v6, -0x80000000

    .line 38
    .line 39
    if-lez v5, :cond_2

    .line 40
    .line 41
    mul-int/lit8 v7, v5, 0x4

    .line 42
    .line 43
    invoke-static {v2, v7}, Lg67;->l([BI)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    add-int v8, v7, v6

    .line 50
    .line 51
    aget v9, p1, v5

    .line 52
    .line 53
    add-int/2addr v9, v6

    .line 54
    if-le v8, v9, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    or-int/2addr v1, v7

    .line 58
    aget v6, p1, v5

    .line 59
    .line 60
    xor-int/2addr v6, v7

    .line 61
    or-int/2addr v4, v6

    .line 62
    add-int/lit8 v5, v5, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v2, v0}, Lg67;->l([BI)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const v7, -0x7fffffff

    .line 70
    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    add-int v1, v5, v6

    .line 75
    .line 76
    if-gt v1, v7, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    if-nez v4, :cond_4

    .line 80
    .line 81
    add-int/2addr v5, v6

    .line 82
    aget p1, p1, v0

    .line 83
    .line 84
    sub-int/2addr p1, v7

    .line 85
    if-lt v5, p1, :cond_4

    .line 86
    .line 87
    :goto_1
    move-object p1, v3

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    new-instance p1, Ll39;

    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    invoke-direct {p1, v1}, Ll39;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v0, p1}, Lyc9;->i([BZLl39;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const/16 v1, 0x20

    .line 103
    .line 104
    new-array v1, v1, [I

    .line 105
    .line 106
    iget-object v2, p1, Ll39;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, [I

    .line 109
    .line 110
    invoke-static {v0, v0, v2, v1}, Lzh8;->g(II[I[I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Ll39;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, [I

    .line 116
    .line 117
    const/16 v2, 0x10

    .line 118
    .line 119
    invoke-static {v0, v2, p1, v1}, Lzh8;->g(II[I[I)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lnh;

    .line 123
    .line 124
    const/4 v0, 0x4

    .line 125
    invoke-direct {p1, v1, v0}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    if-eqz p1, :cond_6

    .line 129
    .line 130
    iput-object p1, p0, Lis2;->b:Lnh;

    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    const-string p0, "invalid public key"

    .line 134
    .line 135
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v3
.end method
