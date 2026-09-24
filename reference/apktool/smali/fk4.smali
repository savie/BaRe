.class public abstract Lfk4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public a:Lr56;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Llp7;->values()[Llp7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/16 v2, 0x1f

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-gt v1, v2, :cond_1

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    aget-object v2, v0, v3

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Llp7;->c:Llp7;

    .line 23
    .line 24
    invoke-virtual {v0}, Llp7;->c()I

    .line 25
    .line 26
    .line 27
    sget-object v0, Llp7;->b:Llp7;

    .line 28
    .line 29
    invoke-virtual {v0}, Llp7;->c()I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    aget-object v1, v0, v3

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v0, v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)"

    .line 53
    .line 54
    invoke-static {v1, v0}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static b(II)V
    .locals 1

    .line 1
    if-gt p1, p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "invalid argument(s) (offset=%d, length=%d) for input array of %d element"

    .line 22
    .line 23
    invoke-static {p1, p0}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public abstract A(F)V
.end method

.method public abstract D(I)V
.end method

.method public abstract G(J)V
.end method

.method public abstract J(C)V
.end method

.method public abstract O(Ljava/lang/String;)V
.end method

.method public abstract S(Ljava/lang/Object;)V
.end method

.method public abstract U(Ljava/lang/Object;)V
.end method

.method public abstract W()V
.end method

.method public abstract Y(Ljava/lang/Object;)V
.end method

.method public abstract Z(Lz77;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ldk4;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Ldk4;-><init>(Ljava/lang/String;Lfk4;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public abstract b0(Ljava/lang/String;)V
.end method

.method public abstract c0([CII)V
.end method

.method public abstract g(Ljava/lang/Object;)V
.end method

.method public final g0(Lnw8;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lnw8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lnw8;->f:Lmm4;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget v6, p1, Lnw8;->e:I

    .line 18
    .line 19
    sget-object v7, Lmm4;->d:Lmm4;

    .line 20
    .line 21
    const/4 v8, 0x4

    .line 22
    if-eq v1, v7, :cond_3

    .line 23
    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    if-eq v6, v3, :cond_1

    .line 27
    .line 28
    if-ne v6, v8, :cond_3

    .line 29
    .line 30
    :cond_1
    iput v5, p1, Lnw8;->e:I

    .line 31
    .line 32
    move v6, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    throw v2

    .line 35
    :cond_3
    :goto_0
    iput-boolean v5, p1, Lnw8;->g:Z

    .line 36
    .line 37
    invoke-static {v6}, Ldj7;->A(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eq v6, v5, :cond_a

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    if-eq v6, v7, :cond_9

    .line 45
    .line 46
    if-eq v6, v3, :cond_b

    .line 47
    .line 48
    if-eq v6, v8, :cond_b

    .line 49
    .line 50
    move-object v6, p0

    .line 51
    check-cast v6, Lpw8;

    .line 52
    .line 53
    const-string v7, "start an array"

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Lpw8;->l0(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v7, v6, Lcv3;->e:Lv08;

    .line 59
    .line 60
    iget-object v8, v7, Lv08;->i:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Lv08;

    .line 63
    .line 64
    if-nez v8, :cond_5

    .line 65
    .line 66
    new-instance v8, Lv08;

    .line 67
    .line 68
    iget-object v9, v7, Lv08;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, Lf41;

    .line 71
    .line 72
    if-nez v9, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance v2, Lf41;

    .line 76
    .line 77
    iget-object v9, v9, Lf41;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v9, Lcv3;

    .line 80
    .line 81
    invoke-direct {v2, v9}, Lf41;-><init>(Lcv3;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-direct {v8, v5, v7, v2}, Lv08;-><init>(ILv08;Lf41;)V

    .line 85
    .line 86
    .line 87
    iput-object v8, v7, Lv08;->i:Ljava/lang/Object;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    iput v5, v8, Lv08;->b:I

    .line 91
    .line 92
    const/4 v7, -0x1

    .line 93
    iput v7, v8, Lv08;->c:I

    .line 94
    .line 95
    iput-object v2, v8, Lv08;->e:Ljava/lang/String;

    .line 96
    .line 97
    iput-boolean v4, v8, Lv08;->f:Z

    .line 98
    .line 99
    iget-object v7, v8, Lv08;->h:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v7, Lf41;

    .line 102
    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    iput-object v2, v7, Lf41;->b:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v2, v7, Lf41;->c:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object v2, v7, Lf41;->d:Ljava/lang/Object;

    .line 110
    .line 111
    :cond_6
    :goto_2
    iput-object v8, v6, Lcv3;->e:Lv08;

    .line 112
    .line 113
    iget v2, v8, Lv08;->d:I

    .line 114
    .line 115
    iget-object v7, v6, Lgk4;->n:Lmp7;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lmp7;->a(I)V

    .line 121
    .line 122
    .line 123
    iget-object v2, v6, Lfk4;->a:Lr56;

    .line 124
    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    check-cast v2, Lkf2;

    .line 128
    .line 129
    invoke-virtual {v2, v6}, Lkf2;->a(Lfk4;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    iget v2, v6, Lpw8;->K:I

    .line 134
    .line 135
    iget v7, v6, Lpw8;->L:I

    .line 136
    .line 137
    if-lt v2, v7, :cond_8

    .line 138
    .line 139
    invoke-virtual {v6}, Lpw8;->u0()V

    .line 140
    .line 141
    .line 142
    :cond_8
    iget-object v2, v6, Lpw8;->I:[C

    .line 143
    .line 144
    iget v7, v6, Lpw8;->K:I

    .line 145
    .line 146
    add-int/lit8 v8, v7, 0x1

    .line 147
    .line 148
    iput v8, v6, Lpw8;->K:I

    .line 149
    .line 150
    const/16 v6, 0x5b

    .line 151
    .line 152
    aput-char v6, v2, v7

    .line 153
    .line 154
    :goto_3
    invoke-virtual {p0, v0}, Lfk4;->b0(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_9
    iget-object v2, p1, Lnw8;->a:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {p0, v2}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object v2, p1, Lnw8;->d:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p0, v2}, Lfk4;->u(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lfk4;->b0(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move v4, v5

    .line 172
    goto :goto_4

    .line 173
    :cond_a
    invoke-virtual {p0}, Lfk4;->W()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lfk4;->u(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eq v0, v5, :cond_d

    .line 184
    .line 185
    if-eq v0, v3, :cond_c

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_c
    iget-object p1, p1, Lnw8;->a:Ljava/lang/Object;

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Lfk4;->S(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_d
    if-nez v4, :cond_e

    .line 195
    .line 196
    iget-object p1, p1, Lnw8;->a:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_e
    :goto_5
    return-void
.end method

.method public abstract h(Lek4;)Z
.end method

.method public final h0(Lnw8;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lnw8;->f:Lmm4;

    .line 2
    .line 3
    sget-object v1, Lmm4;->d:Lmm4;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lfk4;->q()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lmm4;->e:Lmm4;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lfk4;->n()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lnw8;->g:Z

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget v0, p1, Lnw8;->e:I

    .line 23
    .line 24
    invoke-static {v0}, Ldj7;->A(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-eq v0, v1, :cond_5

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    if-eq v0, v1, :cond_5

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lfk4;->q()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v0, p1, Lnw8;->c:Ljava/lang/Object;

    .line 44
    .line 45
    instance-of v1, v0, Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_1
    iget-object p1, p1, Lnw8;->d:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lfk4;->u(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lfk4;->b0(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    invoke-virtual {p0}, Lfk4;->n()V

    .line 66
    .line 67
    .line 68
    :cond_5
    return-void
.end method

.method public abstract j(Lbl0;[BII)V
.end method

.method public abstract m(Z)V
.end method

.method public abstract n()V
.end method

.method public abstract q()V
.end method

.method public abstract r(Lz77;)V
.end method

.method public abstract u(Ljava/lang/String;)V
.end method

.method public abstract v()V
.end method

.method public abstract z(D)V
.end method
