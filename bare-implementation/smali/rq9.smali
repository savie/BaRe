.class public abstract Lrq9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lht9;

.field public static final b:Lft9;

.field public static final c:Lfs9;

.field public static final d:Lds9;

.field public static final e:Lfs9;

.field public static final f:Lds9;

.field public static final g:Lot9;

.field public static final h:Lot9;

.field public static final i:Lot9;

.field public static final j:Lot9;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    .line 8
    .line 9
    invoke-static {v1}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcz4;

    .line 14
    .line 15
    const/16 v3, 0x1b

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcz4;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lht9;

    .line 21
    .line 22
    const-class v5, Llq9;

    .line 23
    .line 24
    invoke-direct {v4, v5, v2}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 25
    .line 26
    .line 27
    sput-object v4, Lrq9;->a:Lht9;

    .line 28
    .line 29
    new-instance v2, Lhx0;

    .line 30
    .line 31
    const/16 v4, 0x17

    .line 32
    .line 33
    invoke-direct {v2, v4}, Lhx0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lft9;

    .line 37
    .line 38
    invoke-direct {v4, v0, v2}, Lft9;-><init>(Ld2a;Let9;)V

    .line 39
    .line 40
    .line 41
    sput-object v4, Lrq9;->b:Lft9;

    .line 42
    .line 43
    new-instance v2, Lns0;

    .line 44
    .line 45
    const/16 v4, 0x1a

    .line 46
    .line 47
    invoke-direct {v2, v4}, Lns0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Lfs9;

    .line 51
    .line 52
    const-class v5, Lvq9;

    .line 53
    .line 54
    invoke-direct {v4, v5, v2}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lrq9;->c:Lfs9;

    .line 58
    .line 59
    new-instance v2, Lma2;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Lma2;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lds9;

    .line 65
    .line 66
    invoke-direct {v3, v1, v2}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 67
    .line 68
    .line 69
    sput-object v3, Lrq9;->d:Lds9;

    .line 70
    .line 71
    new-instance v1, Lq34;

    .line 72
    .line 73
    const/16 v2, 0x16

    .line 74
    .line 75
    invoke-direct {v1, v2}, Lq34;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lfs9;

    .line 79
    .line 80
    const-class v3, Loq9;

    .line 81
    .line 82
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 83
    .line 84
    .line 85
    sput-object v2, Lrq9;->e:Lfs9;

    .line 86
    .line 87
    new-instance v1, Lfk8;

    .line 88
    .line 89
    const/4 v2, 0x7

    .line 90
    invoke-direct {v1, v2}, Lfk8;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lds9;

    .line 94
    .line 95
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 96
    .line 97
    .line 98
    sput-object v2, Lrq9;->f:Lds9;

    .line 99
    .line 100
    invoke-static {}, Lot9;->j()Lyf1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v1, Lr0a;->e:Lr0a;

    .line 105
    .line 106
    sget-object v2, Liq9;->d:Liq9;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object v1, Lr0a;->c:Lr0a;

    .line 112
    .line 113
    sget-object v2, Liq9;->b:Liq9;

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v1, Lr0a;->d:Lr0a;

    .line 119
    .line 120
    sget-object v2, Liq9;->c:Liq9;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object v1, Lr0a;->f:Lr0a;

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lrq9;->g:Lot9;

    .line 135
    .line 136
    invoke-static {}, Lot9;->j()Lyf1;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget-object v1, Lsy9;->d:Lsy9;

    .line 141
    .line 142
    sget-object v2, Ljq9;->d:Ljq9;

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v1, Lsy9;->e:Lsy9;

    .line 148
    .line 149
    sget-object v2, Ljq9;->e:Ljq9;

    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Lsy9;->f:Lsy9;

    .line 155
    .line 156
    sget-object v2, Ljq9;->f:Ljq9;

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Lsy9;->c:Lsy9;

    .line 162
    .line 163
    sget-object v2, Ljq9;->g:Ljq9;

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lrq9;->h:Lot9;

    .line 173
    .line 174
    invoke-static {}, Lot9;->j()Lyf1;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-object v1, Lty9;->c:Lty9;

    .line 179
    .line 180
    sget-object v2, Lhq9;->d:Lhq9;

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Lty9;->d:Lty9;

    .line 186
    .line 187
    sget-object v2, Lhq9;->e:Lhq9;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    sget-object v1, Lty9;->e:Lty9;

    .line 193
    .line 194
    sget-object v2, Lhq9;->f:Lhq9;

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sput-object v0, Lrq9;->i:Lot9;

    .line 204
    .line 205
    invoke-static {}, Lot9;->j()Lyf1;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sget-object v1, Lry9;->c:Lry9;

    .line 210
    .line 211
    sget-object v2, Lgq9;->d:Lgq9;

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    sget-object v1, Lry9;->d:Lry9;

    .line 217
    .line 218
    sget-object v2, Lgq9;->e:Lgq9;

    .line 219
    .line 220
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    sget-object v1, Lry9;->e:Lry9;

    .line 224
    .line 225
    sget-object v2, Lgq9;->f:Lgq9;

    .line 226
    .line 227
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sput-object v0, Lrq9;->j:Lot9;

    .line 235
    .line 236
    return-void
.end method

.method public static a(Lr0a;Laz9;)Llq9;
    .locals 2

    .line 1
    invoke-static {}, Llq9;->b()Ll40;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lrq9;->g:Lot9;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Liq9;

    .line 12
    .line 13
    iput-object p0, v0, Ll40;->e:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p0, Lrq9;->h:Lot9;

    .line 16
    .line 17
    invoke-virtual {p1}, Laz9;->y()Lsy9;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljq9;

    .line 26
    .line 27
    iput-object p0, v0, Ll40;->b:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object p0, Lrq9;->i:Lot9;

    .line 30
    .line 31
    invoke-virtual {p1}, Laz9;->x()Lty9;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lhq9;

    .line 40
    .line 41
    iput-object p0, v0, Ll40;->c:Ljava/lang/Object;

    .line 42
    .line 43
    sget-object p0, Lrq9;->j:Lot9;

    .line 44
    .line 45
    invoke-virtual {p1}, Laz9;->t()Lry9;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lgq9;

    .line 54
    .line 55
    iput-object p0, v0, Ll40;->d:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v0}, Ll40;->c()Llq9;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static b(Lvq9;)Lgz9;
    .locals 3

    .line 1
    invoke-static {}, Lgz9;->z()Lfz9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj79;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 9
    .line 10
    check-cast v1, Lgz9;

    .line 11
    .line 12
    invoke-static {v1}, Lgz9;->v(Lgz9;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lvq9;->d:Llq9;

    .line 16
    .line 17
    invoke-static {v1}, Lrq9;->d(Llq9;)Laz9;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lj79;->c()V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 25
    .line 26
    check-cast v2, Lgz9;

    .line 27
    .line 28
    invoke-static {v2, v1}, Lgz9;->x(Lgz9;Laz9;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lvq9;->e:Ld2a;

    .line 32
    .line 33
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    array-length v1, p0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {p0, v2, v1}, Lt69;->g([BII)Lx69;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0}, Lj79;->c()V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 47
    .line 48
    check-cast v1, Lgz9;

    .line 49
    .line 50
    invoke-static {v1, p0}, Lgz9;->w(Lgz9;Lx69;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lgz9;

    .line 58
    .line 59
    return-object p0
.end method

.method public static c(Ljq9;[B)Ld2a;
    .locals 1

    .line 1
    invoke-static {p1}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lor9;->a:[B

    .line 6
    .line 7
    sget-object v0, Ljq9;->g:Ljq9;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x20

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Ljq9;->d:Ljq9;

    .line 15
    .line 16
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x41

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Ljq9;->e:Ljq9;

    .line 22
    .line 23
    if-ne p0, v0, :cond_2

    .line 24
    .line 25
    const/16 p0, 0x61

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Ljq9;->f:Ljq9;

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    const/16 p0, 0x85

    .line 33
    .line 34
    :goto_0
    invoke-static {p0, p1}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_3
    const-string p0, "Unrecognized HPKE KEM identifier"

    .line 44
    .line 45
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static d(Llq9;)Laz9;
    .locals 3

    .line 1
    invoke-static {}, Laz9;->z()Lzy9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lrq9;->h:Lot9;

    .line 6
    .line 7
    iget-object v2, p0, Llq9;->a:Ljq9;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lsy9;

    .line 14
    .line 15
    invoke-virtual {v0}, Lj79;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 19
    .line 20
    check-cast v2, Laz9;

    .line 21
    .line 22
    invoke-static {v2, v1}, Laz9;->v(Laz9;Lsy9;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lrq9;->i:Lot9;

    .line 26
    .line 27
    iget-object v2, p0, Llq9;->b:Lhq9;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lty9;

    .line 34
    .line 35
    invoke-virtual {v0}, Lj79;->c()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 39
    .line 40
    check-cast v2, Laz9;

    .line 41
    .line 42
    invoke-static {v2, v1}, Laz9;->w(Laz9;Lty9;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lrq9;->j:Lot9;

    .line 46
    .line 47
    iget-object p0, p0, Llq9;->c:Lgq9;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lry9;

    .line 54
    .line 55
    invoke-virtual {v0}, Lj79;->c()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 59
    .line 60
    check-cast v1, Laz9;

    .line 61
    .line 62
    invoke-static {v1, p0}, Laz9;->u(Laz9;Lry9;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Laz9;

    .line 70
    .line 71
    return-object p0
.end method
