.class public final Lk82;
.super Lj0;


# virtual methods
.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-virtual {p0}, Lk82;->y()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, v0, p2, p0}, Lm1;->k(IZ[B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk82;->y()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0, p1}, Lm1;->d(IZ)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final u()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final w()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final y()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lj0;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    aget-byte v1, v0, v1

    .line 7
    .line 8
    const/16 v2, 0x5a

    .line 9
    .line 10
    if-ne v1, v2, :cond_6

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lj0;->x(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    const/16 v1, 0xb

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lj0;->x(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    const/16 v1, 0xc

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lj0;->x(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    const/16 v1, 0xd

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lj0;->x(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    move p0, v3

    .line 46
    :goto_0
    array-length v1, v0

    .line 47
    if-eq p0, v1, :cond_3

    .line 48
    .line 49
    aget-byte v1, v0, p0

    .line 50
    .line 51
    const/16 v4, 0x2e

    .line 52
    .line 53
    if-ne v1, v4, :cond_2

    .line 54
    .line 55
    const/16 v1, 0xe

    .line 56
    .line 57
    if-ne p0, v1, :cond_2

    .line 58
    .line 59
    array-length p0, v0

    .line 60
    add-int/lit8 p0, p0, -0x2

    .line 61
    .line 62
    :goto_1
    if-lez p0, :cond_0

    .line 63
    .line 64
    aget-byte v1, v0, p0

    .line 65
    .line 66
    const/16 v5, 0x30

    .line 67
    .line 68
    if-ne v1, v5, :cond_0

    .line 69
    .line 70
    add-int/lit8 p0, p0, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    aget-byte v1, v0, p0

    .line 74
    .line 75
    if-ne v1, v4, :cond_1

    .line 76
    .line 77
    add-int/lit8 v1, p0, 0x1

    .line 78
    .line 79
    new-array v1, v1, [B

    .line 80
    .line 81
    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    aput-byte v2, v1, p0

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_1
    add-int/lit8 v1, p0, 0x2

    .line 88
    .line 89
    new-array v1, v1, [B

    .line 90
    .line 91
    add-int/lit8 p0, p0, 0x1

    .line 92
    .line 93
    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    aput-byte v2, v1, p0

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-object v0

    .line 103
    :cond_4
    array-length p0, v0

    .line 104
    add-int/lit8 p0, p0, 0x2

    .line 105
    .line 106
    new-array p0, p0, [B

    .line 107
    .line 108
    array-length v1, v0

    .line 109
    add-int/lit8 v1, v1, -0x1

    .line 110
    .line 111
    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    const-string v1, "00Z"

    .line 115
    .line 116
    invoke-static {v1}, Llq7;->b(Ljava/lang/String;)[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    array-length v0, v0

    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    .line 123
    const/4 v2, 0x3

    .line 124
    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_5
    array-length p0, v0

    .line 129
    add-int/lit8 p0, p0, 0x4

    .line 130
    .line 131
    new-array p0, p0, [B

    .line 132
    .line 133
    array-length v1, v0

    .line 134
    add-int/lit8 v1, v1, -0x1

    .line 135
    .line 136
    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    const-string v1, "0000Z"

    .line 140
    .line 141
    invoke-static {v1}, Llq7;->b(Ljava/lang/String;)[B

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    array-length v0, v0

    .line 146
    add-int/lit8 v0, v0, -0x1

    .line 147
    .line 148
    const/4 v2, 0x5

    .line 149
    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_6
    return-object v0
.end method
