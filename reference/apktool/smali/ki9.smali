.class public abstract Lki9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lht9;

.field public static final b:Lft9;

.field public static final c:Lfs9;

.field public static final d:Lds9;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lhi9;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lhi9;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lht9;

    .line 14
    .line 15
    const-class v3, Ldi9;

    .line 16
    .line 17
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lki9;->a:Lht9;

    .line 21
    .line 22
    new-instance v1, Lns0;

    .line 23
    .line 24
    const/16 v2, 0x15

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lns0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lft9;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lft9;-><init>(Ld2a;Let9;)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lki9;->b:Lft9;

    .line 35
    .line 36
    new-instance v1, Lnh4;

    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lfs9;

    .line 44
    .line 45
    const-class v3, Lei9;

    .line 46
    .line 47
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Lki9;->c:Lfs9;

    .line 51
    .line 52
    new-instance v1, Lq34;

    .line 53
    .line 54
    const/16 v2, 0x11

    .line 55
    .line 56
    invoke-direct {v1, v2}, Lq34;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lds9;

    .line 60
    .line 61
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 62
    .line 63
    .line 64
    sput-object v2, Lki9;->d:Lds9;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Lo0a;Lr0a;)Ldi9;
    .locals 10

    .line 1
    invoke-static {}, Lmz9;->t()Llz9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lo0a;->t()Lmz9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lmz9;->B()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Llz9;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lo0a;->t()Lmz9;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lmz9;->A()Lt69;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Llz9;->h(Lt69;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lr0a;->e:Lr0a;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Llz9;->e(Lr0a;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lmz9;

    .line 37
    .line 38
    invoke-virtual {v0}, Lo69;->c()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lnc8;->t0([B)Lbd9;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    instance-of v1, v0, Lkg9;

    .line 47
    .line 48
    sget-object v2, Lbi9;->n:Lbi9;

    .line 49
    .line 50
    sget-object v3, Lbi9;->k:Lbi9;

    .line 51
    .line 52
    sget-object v4, Lbi9;->f:Lbi9;

    .line 53
    .line 54
    sget-object v5, Lbi9;->d:Lbi9;

    .line 55
    .line 56
    sget-object v6, Lbi9;->e:Lbi9;

    .line 57
    .line 58
    sget-object v7, Lbi9;->c:Lbi9;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    move-object v1, v7

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    instance-of v1, v0, Lah9;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    move-object v1, v6

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    instance-of v1, v0, Lik9;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    move-object v1, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    instance-of v1, v0, Lgf9;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    move-object v1, v4

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    instance-of v1, v0, Lsf9;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    move-object v1, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    instance-of v1, v0, Ltg9;

    .line 89
    .line 90
    if-eqz v1, :cond_14

    .line 91
    .line 92
    move-object v1, v2

    .line 93
    :goto_0
    sget-object v8, Lmi9;->a:[I

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    aget v8, v8, v9

    .line 100
    .line 101
    const/4 v9, 0x1

    .line 102
    if-eq v8, v9, :cond_6

    .line 103
    .line 104
    const/4 v9, 0x2

    .line 105
    if-ne v8, v9, :cond_5

    .line 106
    .line 107
    sget-object p1, Lci9;->d:Lci9;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 111
    .line 112
    invoke-virtual {p1}, Lr0a;->zza()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const-string v0, "Unable to parse OutputPrefixType: "

    .line 117
    .line 118
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_6
    sget-object p1, Lci9;->c:Lci9;

    .line 127
    .line 128
    :goto_1
    invoke-virtual {p0}, Lo0a;->z()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast v0, Lse9;

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    if-eqz p0, :cond_13

    .line 136
    .line 137
    invoke-virtual {v0}, Lbd9;->a()Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-nez v9, :cond_12

    .line 142
    .line 143
    if-eq v1, v7, :cond_7

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    instance-of v7, v0, Lkg9;

    .line 147
    .line 148
    if-eqz v7, :cond_8

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_8
    :goto_2
    if-eq v1, v6, :cond_9

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    instance-of v6, v0, Lah9;

    .line 155
    .line 156
    if-eqz v6, :cond_a

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_a
    :goto_3
    if-eq v1, v5, :cond_b

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_b
    instance-of v5, v0, Lik9;

    .line 163
    .line 164
    if-eqz v5, :cond_c

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_c
    :goto_4
    if-eq v1, v4, :cond_d

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_d
    instance-of v4, v0, Lgf9;

    .line 171
    .line 172
    if-eqz v4, :cond_e

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_e
    :goto_5
    if-eq v1, v3, :cond_f

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_f
    instance-of v3, v0, Lsf9;

    .line 179
    .line 180
    if-eqz v3, :cond_10

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_10
    :goto_6
    if-ne v1, v2, :cond_11

    .line 184
    .line 185
    instance-of v2, v0, Ltg9;

    .line 186
    .line 187
    if-eqz v2, :cond_11

    .line 188
    .line 189
    :goto_7
    new-instance v2, Ldi9;

    .line 190
    .line 191
    invoke-direct {v2, p1, p0, v1, v0}, Ldi9;-><init>(Lci9;Ljava/lang/String;Lbi9;Lse9;)V

    .line 192
    .line 193
    .line 194
    return-object v2

    .line 195
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 196
    .line 197
    iget-object p1, v1, Lbi9;->b:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, " when new keys are picked according to "

    .line 204
    .line 205
    const-string v2, "."

    .line 206
    .line 207
    const-string v3, "Cannot use parsing strategy "

    .line 208
    .line 209
    invoke-static {v3, p1, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_12
    const-string p0, "dekParametersForNewKeys must not have ID Requirements"

    .line 218
    .line 219
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object v8

    .line 223
    :cond_13
    const-string p0, "kekUri must be set"

    .line 224
    .line 225
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object v8

    .line 229
    :cond_14
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v0, "Unsupported DEK parameters when parsing "

    .line 236
    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p0
.end method

.method public static b(Ldi9;)Lo0a;
    .locals 3

    .line 1
    iget-object v0, p0, Ldi9;->d:Lse9;

    .line 2
    .line 3
    invoke-static {v0}, Lnc8;->u0(Lbd9;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    sget-object v1, Lf79;->a:Lf79;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lmz9;->u([BLf79;)Lmz9;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lo0a;->x()Ln0a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Ldi9;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Lj79;->c()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 23
    .line 24
    check-cast v2, Lo0a;

    .line 25
    .line 26
    invoke-static {v2, p0}, Lo0a;->v(Lo0a;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lj79;->c()V

    .line 30
    .line 31
    .line 32
    iget-object p0, v1, Lj79;->b:Lk79;

    .line 33
    .line 34
    check-cast p0, Lo0a;

    .line 35
    .line 36
    invoke-static {p0, v0}, Lo0a;->w(Lo0a;Lmz9;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lo0a;
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 48
    .line 49
    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    .line 50
    .line 51
    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method
