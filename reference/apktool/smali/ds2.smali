.class public final Lds2;
.super Ln60;


# instance fields
.field public final b:Lke;


# direct methods
.method public constructor <init>(Lke;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    iput-object p1, p0, Lds2;->b:Lke;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1c

    .line 13
    .line 14
    invoke-static {v2, p1}, Lg67;->l([BI)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const v1, 0x7fffffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, v1

    .line 22
    sget-object v1, Ljb9;->c:[I

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    aget v4, v1, v3

    .line 26
    .line 27
    xor-int/2addr v4, p1

    .line 28
    sget-object v5, Ljb9;->d:[I

    .line 29
    .line 30
    aget v6, v5, v3

    .line 31
    .line 32
    xor-int/2addr v6, p1

    .line 33
    sget-object v7, Ljb9;->e:[I

    .line 34
    .line 35
    aget v3, v7, v3

    .line 36
    .line 37
    xor-int/2addr v3, p1

    .line 38
    const/4 v8, 0x6

    .line 39
    move v9, v8

    .line 40
    :goto_0
    if-lez v9, :cond_0

    .line 41
    .line 42
    mul-int/lit8 v10, v9, 0x4

    .line 43
    .line 44
    invoke-static {v2, v10}, Lg67;->l([BI)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    or-int/2addr p1, v10

    .line 49
    aget v11, v1, v9

    .line 50
    .line 51
    xor-int/2addr v11, v10

    .line 52
    or-int/2addr v4, v11

    .line 53
    aget v11, v5, v9

    .line 54
    .line 55
    xor-int/2addr v11, v10

    .line 56
    or-int/2addr v6, v11

    .line 57
    aget v11, v7, v9

    .line 58
    .line 59
    xor-int/2addr v10, v11

    .line 60
    or-int/2addr v3, v10

    .line 61
    add-int/lit8 v9, v9, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v2, v0}, Lg67;->l([BI)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const v10, -0x7fffffff

    .line 69
    .line 70
    .line 71
    const/high16 v11, -0x80000000

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    add-int p1, v9, v11

    .line 76
    .line 77
    if-gt p1, v10, :cond_1

    .line 78
    .line 79
    :goto_1
    move p1, v0

    .line 80
    goto :goto_4

    .line 81
    :cond_1
    if-nez v4, :cond_2

    .line 82
    .line 83
    add-int/2addr v11, v9

    .line 84
    aget p1, v1, v0

    .line 85
    .line 86
    sub-int/2addr p1, v10

    .line 87
    if-lt v11, p1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    aget p1, v5, v0

    .line 91
    .line 92
    xor-int/2addr p1, v9

    .line 93
    or-int/2addr p1, v6

    .line 94
    aget v1, v7, v0

    .line 95
    .line 96
    xor-int/2addr v1, v9

    .line 97
    or-int/2addr v1, v3

    .line 98
    const/4 v3, 0x1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    move p1, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move p1, v0

    .line 104
    :goto_2
    if-eqz v1, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v3, v0

    .line 108
    :goto_3
    and-int/2addr p1, v3

    .line 109
    :goto_4
    const/4 v1, 0x0

    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    :goto_5
    move-object p1, v1

    .line 113
    goto :goto_6

    .line 114
    :cond_5
    new-instance p1, Lix0;

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    invoke-direct {p1, v3}, Lix0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v0, p1}, Ljb9;->v([BZLix0;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    const/16 v2, 0x14

    .line 128
    .line 129
    new-array v2, v2, [I

    .line 130
    .line 131
    iget-object v3, p1, Lix0;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, [I

    .line 134
    .line 135
    invoke-static {v0, v0, v3, v2}, Lnc8;->n(II[I[I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, [I

    .line 141
    .line 142
    const/16 v3, 0xa

    .line 143
    .line 144
    invoke-static {v0, v3, p1, v2}, Lnc8;->n(II[I[I)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Lke;

    .line 148
    .line 149
    invoke-direct {p1, v2, v8}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    :goto_6
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iput-object p1, p0, Lds2;->b:Lke;

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    const-string p0, "invalid public key"

    .line 158
    .line 159
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1
.end method
