.class public abstract Lgr9;
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
    .locals 5

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    .line 8
    .line 9
    invoke-static {v1}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lfk8;

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lfk8;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lht9;

    .line 21
    .line 22
    const-class v4, Lcq9;

    .line 23
    .line 24
    invoke-direct {v3, v4, v2}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lgr9;->a:Lht9;

    .line 28
    .line 29
    new-instance v2, Lfa9;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lft9;

    .line 35
    .line 36
    invoke-direct {v3, v0, v2}, Lft9;-><init>(Ld2a;Let9;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lgr9;->b:Lft9;

    .line 40
    .line 41
    new-instance v2, Lfo8;

    .line 42
    .line 43
    const/16 v3, 0x1b

    .line 44
    .line 45
    invoke-direct {v2, v3}, Lfo8;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lfs9;

    .line 49
    .line 50
    const-class v4, Lnq9;

    .line 51
    .line 52
    invoke-direct {v3, v4, v2}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lgr9;->c:Lfs9;

    .line 56
    .line 57
    new-instance v2, Lhi9;

    .line 58
    .line 59
    const/4 v3, 0x5

    .line 60
    invoke-direct {v2, v3}, Lhi9;-><init>(I)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Lds9;

    .line 64
    .line 65
    invoke-direct {v3, v1, v2}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 66
    .line 67
    .line 68
    sput-object v3, Lgr9;->d:Lds9;

    .line 69
    .line 70
    new-instance v1, Lb05;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lfs9;

    .line 76
    .line 77
    const-class v3, Lfq9;

    .line 78
    .line 79
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 80
    .line 81
    .line 82
    sput-object v2, Lgr9;->e:Lfs9;

    .line 83
    .line 84
    new-instance v1, Lcz4;

    .line 85
    .line 86
    const/16 v2, 0x1c

    .line 87
    .line 88
    invoke-direct {v1, v2}, Lcz4;-><init>(I)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lds9;

    .line 92
    .line 93
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 94
    .line 95
    .line 96
    sput-object v2, Lgr9;->f:Lds9;

    .line 97
    .line 98
    invoke-static {}, Lot9;->j()Lyf1;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v1, Lr0a;->e:Lr0a;

    .line 103
    .line 104
    sget-object v2, Lzp9;->d:Lzp9;

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lr0a;->c:Lr0a;

    .line 110
    .line 111
    sget-object v2, Lzp9;->b:Lzp9;

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object v1, Lr0a;->d:Lr0a;

    .line 117
    .line 118
    sget-object v2, Lzp9;->c:Lzp9;

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lr0a;->f:Lr0a;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Lgr9;->g:Lot9;

    .line 133
    .line 134
    invoke-static {}, Lot9;->j()Lyf1;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget-object v1, Ljy9;->c:Ljy9;

    .line 139
    .line 140
    sget-object v2, Lxp9;->b:Lxp9;

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v1, Ljy9;->k:Ljy9;

    .line 146
    .line 147
    sget-object v2, Lxp9;->c:Lxp9;

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-object v1, Ljy9;->e:Ljy9;

    .line 153
    .line 154
    sget-object v2, Lxp9;->d:Lxp9;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget-object v1, Ljy9;->d:Ljy9;

    .line 160
    .line 161
    sget-object v2, Lxp9;->e:Lxp9;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    sget-object v1, Ljy9;->f:Ljy9;

    .line 167
    .line 168
    sget-object v2, Lxp9;->f:Lxp9;

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lgr9;->h:Lot9;

    .line 178
    .line 179
    invoke-static {}, Lot9;->j()Lyf1;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sget-object v1, Ldy9;->c:Ldy9;

    .line 184
    .line 185
    sget-object v2, Lyp9;->b:Lyp9;

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    sget-object v1, Ldy9;->d:Ldy9;

    .line 191
    .line 192
    sget-object v2, Lyp9;->c:Lyp9;

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v1, Ldy9;->e:Ldy9;

    .line 198
    .line 199
    sget-object v2, Lyp9;->d:Lyp9;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v1, Ldy9;->f:Ldy9;

    .line 205
    .line 206
    sget-object v2, Lyp9;->e:Lyp9;

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Lgr9;->i:Lot9;

    .line 216
    .line 217
    invoke-static {}, Lot9;->j()Lyf1;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sget-object v1, Lkx9;->c:Lkx9;

    .line 222
    .line 223
    sget-object v2, Laq9;->c:Laq9;

    .line 224
    .line 225
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Lkx9;->d:Lkx9;

    .line 229
    .line 230
    sget-object v2, Laq9;->b:Laq9;

    .line 231
    .line 232
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object v1, Lkx9;->e:Lkx9;

    .line 236
    .line 237
    sget-object v2, Laq9;->d:Laq9;

    .line 238
    .line 239
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    sput-object v0, Lgr9;->j:Lot9;

    .line 247
    .line 248
    return-void
.end method

.method public static a(Lyp9;)I
    .locals 2

    .line 1
    sget-object v0, Lyp9;->b:Lyp9;

    .line 2
    .line 3
    if-eq v0, p0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lyp9;->c:Lyp9;

    .line 6
    .line 7
    if-eq v0, p0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lyp9;->d:Lyp9;

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x43

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "Unable to serialize CurveType "

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    const/16 p0, 0x31

    .line 33
    .line 34
    return p0

    .line 35
    :cond_2
    const/16 p0, 0x21

    .line 36
    .line 37
    return p0
.end method

.method public static b(Lr0a;Lqx9;)Lcq9;
    .locals 3

    .line 1
    invoke-static {}, Lmz9;->t()Llz9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lqx9;->x()Ljx9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljx9;->w()Lmz9;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lmz9;->B()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Llz9;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lr0a;->e:Lr0a;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Llz9;->e(Lr0a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lqx9;->x()Ljx9;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljx9;->w()Lmz9;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lmz9;->A()Lt69;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Llz9;->h(Lt69;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lmz9;

    .line 45
    .line 46
    invoke-static {}, Lcq9;->b()Lwp9;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lgr9;->g:Lot9;

    .line 51
    .line 52
    invoke-virtual {v2, p0}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lzp9;

    .line 57
    .line 58
    iput-object p0, v1, Lwp9;->e:Lzp9;

    .line 59
    .line 60
    invoke-virtual {p1}, Lqx9;->A()Lby9;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lby9;->y()Ldy9;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-object v2, Lgr9;->i:Lot9;

    .line 69
    .line 70
    invoke-virtual {v2, p0}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lyp9;

    .line 75
    .line 76
    iput-object p0, v1, Lwp9;->a:Lyp9;

    .line 77
    .line 78
    invoke-virtual {p1}, Lqx9;->A()Lby9;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lby9;->z()Ljy9;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    sget-object v2, Lgr9;->h:Lot9;

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lxp9;

    .line 93
    .line 94
    iput-object p0, v1, Lwp9;->b:Lxp9;

    .line 95
    .line 96
    invoke-virtual {v0}, Lo69;->c()[B

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lnc8;->t0([B)Lbd9;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v1, p0}, Lwp9;->b(Lbd9;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lqx9;->A()Lby9;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lby9;->A()Lt69;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lt69;->w()[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget-object v0, p0, Ld2a;->a:[B

    .line 124
    .line 125
    array-length v0, v0

    .line 126
    const/4 v2, 0x0

    .line 127
    if-nez v0, :cond_0

    .line 128
    .line 129
    iput-object v2, v1, Lwp9;->f:Ld2a;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    iput-object p0, v1, Lwp9;->f:Ld2a;

    .line 133
    .line 134
    :goto_0
    invoke-virtual {p1}, Lqx9;->A()Lby9;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lby9;->y()Ldy9;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    sget-object v0, Ldy9;->f:Ldy9;

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_1

    .line 149
    .line 150
    sget-object p0, Lgr9;->j:Lot9;

    .line 151
    .line 152
    invoke-virtual {p1}, Lqx9;->t()Lkx9;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    check-cast p0, Laq9;

    .line 161
    .line 162
    iput-object p0, v1, Lwp9;->c:Laq9;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {p1}, Lqx9;->t()Lkx9;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    sget-object p1, Lkx9;->d:Lkx9;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_2

    .line 176
    .line 177
    :goto_1
    invoke-virtual {v1}, Lwp9;->a()Lcq9;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :cond_2
    const-string p0, "For CURVE25519 EcPointFormat must be compressed"

    .line 183
    .line 184
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v2
.end method

.method public static c(Lnq9;)Lwx9;
    .locals 5

    .line 1
    iget-object v0, p0, Lnq9;->d:Lcq9;

    .line 2
    .line 3
    iget-object v1, v0, Lcq9;->a:Lyp9;

    .line 4
    .line 5
    sget-object v2, Lyp9;->e:Lyp9;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lwx9;->A()Lvx9;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lj79;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 22
    .line 23
    check-cast v3, Lwx9;

    .line 24
    .line 25
    invoke-static {v3}, Lwx9;->v(Lwx9;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lgr9;->d(Lcq9;)Lqx9;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lj79;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v3, v1, Lj79;->b:Lk79;

    .line 36
    .line 37
    check-cast v3, Lwx9;

    .line 38
    .line 39
    invoke-static {v3, v0}, Lwx9;->x(Lwx9;Lqx9;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lnq9;->f:Ld2a;

    .line 43
    .line 44
    invoke-virtual {p0}, Ld2a;->b()[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    array-length v0, p0

    .line 49
    invoke-static {p0, v2, v0}, Lt69;->g([BII)Lx69;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1}, Lj79;->c()V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lj79;->b:Lk79;

    .line 57
    .line 58
    check-cast v0, Lwx9;

    .line 59
    .line 60
    invoke-static {v0, p0}, Lwx9;->w(Lwx9;Lt69;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lt69;->b:Lx69;

    .line 64
    .line 65
    invoke-virtual {v1}, Lj79;->c()V

    .line 66
    .line 67
    .line 68
    iget-object v0, v1, Lj79;->b:Lk79;

    .line 69
    .line 70
    check-cast v0, Lwx9;

    .line 71
    .line 72
    invoke-static {v0, p0}, Lwx9;->z(Lwx9;Lt69;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Lwx9;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_0
    iget-object v1, v0, Lcq9;->a:Lyp9;

    .line 83
    .line 84
    invoke-static {v1}, Lgr9;->a(Lyp9;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object p0, p0, Lnq9;->e:Ljava/security/spec/ECPoint;

    .line 89
    .line 90
    if-eqz p0, :cond_1

    .line 91
    .line 92
    invoke-static {}, Lwx9;->A()Lvx9;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lj79;->c()V

    .line 97
    .line 98
    .line 99
    iget-object v4, v3, Lj79;->b:Lk79;

    .line 100
    .line 101
    check-cast v4, Lwx9;

    .line 102
    .line 103
    invoke-static {v4}, Lwx9;->v(Lwx9;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lgr9;->d(Lcq9;)Lqx9;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v3}, Lj79;->c()V

    .line 111
    .line 112
    .line 113
    iget-object v4, v3, Lj79;->b:Lk79;

    .line 114
    .line 115
    check-cast v4, Lwx9;

    .line 116
    .line 117
    invoke-static {v4, v0}, Lwx9;->x(Lwx9;Lqx9;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v1, v0}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    array-length v4, v0

    .line 129
    invoke-static {v0, v2, v4}, Lt69;->g([BII)Lx69;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v3}, Lj79;->c()V

    .line 134
    .line 135
    .line 136
    iget-object v4, v3, Lj79;->b:Lk79;

    .line 137
    .line 138
    check-cast v4, Lwx9;

    .line 139
    .line 140
    invoke-static {v4, v0}, Lwx9;->w(Lwx9;Lt69;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v1, p0}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    array-length v0, p0

    .line 152
    invoke-static {p0, v2, v0}, Lt69;->g([BII)Lx69;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v3}, Lj79;->c()V

    .line 157
    .line 158
    .line 159
    iget-object v0, v3, Lj79;->b:Lk79;

    .line 160
    .line 161
    check-cast v0, Lwx9;

    .line 162
    .line 163
    invoke-static {v0, p0}, Lwx9;->z(Lwx9;Lt69;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lj79;->b()Lk79;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lwx9;

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_1
    const-string p0, "NistCurvePoint was null for NIST curve"

    .line 174
    .line 175
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/4 p0, 0x0

    .line 179
    return-object p0
.end method

.method public static d(Lcq9;)Lqx9;
    .locals 5

    .line 1
    invoke-static {}, Lby9;->t()Lay9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lgr9;->i:Lot9;

    .line 6
    .line 7
    iget-object v2, p0, Lcq9;->a:Lyp9;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ldy9;

    .line 14
    .line 15
    invoke-virtual {v0}, Lj79;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 19
    .line 20
    check-cast v2, Lby9;

    .line 21
    .line 22
    invoke-static {v2, v1}, Lby9;->v(Lby9;Ldy9;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lgr9;->h:Lot9;

    .line 26
    .line 27
    iget-object v2, p0, Lcq9;->b:Lxp9;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljy9;

    .line 34
    .line 35
    invoke-virtual {v0}, Lj79;->c()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 39
    .line 40
    check-cast v2, Lby9;

    .line 41
    .line 42
    invoke-static {v2, v1}, Lby9;->w(Lby9;Ljy9;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcq9;->f:Ld2a;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v2, v1, Ld2a;->a:[B

    .line 50
    .line 51
    array-length v2, v2

    .line 52
    if-lez v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Ld2a;->b()[B

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x0

    .line 59
    array-length v3, v1

    .line 60
    invoke-static {v1, v2, v3}, Lt69;->g([BII)Lx69;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lj79;->c()V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 68
    .line 69
    check-cast v2, Lby9;

    .line 70
    .line 71
    invoke-static {v2, v1}, Lby9;->u(Lby9;Lt69;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lby9;

    .line 79
    .line 80
    :try_start_0
    iget-object v1, p0, Lcq9;->e:Lbd9;

    .line 81
    .line 82
    invoke-static {v1}, Lnc8;->u0(Lbd9;)[B

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Lf79;->a:Lf79;

    .line 87
    .line 88
    invoke-static {v1, v2}, Lmz9;->u([BLf79;)Lmz9;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {}, Ljx9;->t()Lix9;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {}, Lmz9;->t()Llz9;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1}, Lmz9;->B()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Llz9;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v4, Lr0a;->c:Lr0a;

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Llz9;->e(Lr0a;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lmz9;->A()Lt69;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v3, v1}, Llz9;->h(Lt69;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lj79;->b()Lk79;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lmz9;

    .line 124
    .line 125
    invoke-virtual {v2}, Lj79;->c()V

    .line 126
    .line 127
    .line 128
    iget-object v3, v2, Lj79;->b:Lk79;

    .line 129
    .line 130
    check-cast v3, Ljx9;

    .line 131
    .line 132
    invoke-static {v3, v1}, Ljx9;->u(Ljx9;Lmz9;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lj79;->b()Lk79;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljx9;
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    iget-object p0, p0, Lcq9;->c:Laq9;

    .line 142
    .line 143
    if-nez p0, :cond_1

    .line 144
    .line 145
    sget-object p0, Laq9;->b:Laq9;

    .line 146
    .line 147
    :cond_1
    invoke-static {}, Lqx9;->y()Lpx9;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lj79;->c()V

    .line 152
    .line 153
    .line 154
    iget-object v3, v2, Lj79;->b:Lk79;

    .line 155
    .line 156
    check-cast v3, Lqx9;

    .line 157
    .line 158
    invoke-static {v3, v0}, Lqx9;->w(Lqx9;Lby9;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lj79;->c()V

    .line 162
    .line 163
    .line 164
    iget-object v0, v2, Lj79;->b:Lk79;

    .line 165
    .line 166
    check-cast v0, Lqx9;

    .line 167
    .line 168
    invoke-static {v0, v1}, Lqx9;->u(Lqx9;Ljx9;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lgr9;->j:Lot9;

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, Lkx9;

    .line 178
    .line 179
    invoke-virtual {v2}, Lj79;->c()V

    .line 180
    .line 181
    .line 182
    iget-object v0, v2, Lj79;->b:Lk79;

    .line 183
    .line 184
    check-cast v0, Lqx9;

    .line 185
    .line 186
    invoke-static {v0, p0}, Lqx9;->v(Lqx9;Lkx9;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lj79;->b()Lk79;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p0, Lqx9;

    .line 194
    .line 195
    return-object p0

    .line 196
    :catch_0
    move-exception p0

    .line 197
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 198
    .line 199
    const-string v1, "Parsing EciesParameters failed: "

    .line 200
    .line 201
    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    throw v0
.end method
