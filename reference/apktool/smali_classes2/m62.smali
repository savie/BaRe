.class public final Lm62;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Lmj1;

.field public f:Ldd1;

.field public g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

.field public final h:Lix6;

.field public final i:Lex6;

.field public final j:Lex6;

.field public final k:Lex6;

.field public final l:Lix6;

.field public final m:Lix6;

.field public final n:Lex6;

.field public final o:Lex6;

.field public final p:Lix6;

.field public final q:Lix6;

.field public final r:Lix6;

.field public final s:Lix6;

.field public final t:Lex6;

.field public final u:Lex6;

.field public v:Lbl7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lix6;

    .line 5
    .line 6
    invoke-direct {v0}, Lix6;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm62;->h:Lix6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm62;->i:Lex6;

    .line 17
    .line 18
    new-instance v0, Lex6;

    .line 19
    .line 20
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lm62;->j:Lex6;

    .line 24
    .line 25
    new-instance v0, Lex6;

    .line 26
    .line 27
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lm62;->k:Lex6;

    .line 31
    .line 32
    new-instance v0, Lix6;

    .line 33
    .line 34
    invoke-direct {v0}, Lix6;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lm62;->l:Lix6;

    .line 38
    .line 39
    new-instance v0, Lix6;

    .line 40
    .line 41
    invoke-direct {v0}, Lix6;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lm62;->m:Lix6;

    .line 45
    .line 46
    new-instance v0, Lex6;

    .line 47
    .line 48
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lm62;->n:Lex6;

    .line 52
    .line 53
    new-instance v0, Lex6;

    .line 54
    .line 55
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lm62;->o:Lex6;

    .line 59
    .line 60
    new-instance v0, Lix6;

    .line 61
    .line 62
    invoke-direct {v0}, Lix6;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lm62;->p:Lix6;

    .line 66
    .line 67
    new-instance v0, Lix6;

    .line 68
    .line 69
    invoke-direct {v0}, Lix6;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lm62;->q:Lix6;

    .line 73
    .line 74
    new-instance v0, Lix6;

    .line 75
    .line 76
    invoke-direct {v0}, Lix6;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lm62;->r:Lix6;

    .line 80
    .line 81
    new-instance v0, Lix6;

    .line 82
    .line 83
    invoke-direct {v0}, Lix6;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lm62;->s:Lix6;

    .line 87
    .line 88
    new-instance v0, Lex6;

    .line 89
    .line 90
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lm62;->t:Lex6;

    .line 94
    .line 95
    new-instance v0, Lex6;

    .line 96
    .line 97
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lm62;->u:Lex6;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm62;->v:Lbl7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, La55;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm62;->f:Ldd1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-static {v0}, Lz85;->j(Ldd1;)Lh80;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lm62;->v:Lbl7;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lci4;->isActive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lm62;->u:Lex6;

    .line 26
    .line 27
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lzn4;->a:Lzn4;

    .line 33
    .line 34
    new-instance v0, Lk62;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lk62;-><init>(Lm62;Ljv1;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lm62;->v:Lbl7;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const-string p0, "cloudType"

    .line 47
    .line 48
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method public final k(ZZ)V
    .locals 6

    .line 1
    iget-object v2, p0, Lm62;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ".testConnection"

    .line 6
    .line 7
    invoke-static {v0, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    sget-object v0, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    new-instance v0, Ll62;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v1, p0

    .line 29
    move v3, p1

    .line 30
    move v4, p2

    .line 31
    invoke-direct/range {v0 .. v5}, Ll62;-><init>(Lm62;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZZLjv1;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-static {p0, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string p0, ": Invalid credentials!"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lm62;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    :cond_0
    move v2, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    move v2, v0

    .line 20
    :goto_0
    const/4 v3, 0x0

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_3

    .line 28
    .line 29
    :cond_2
    iget-object v4, p0, Lm62;->f:Ldd1;

    .line 30
    .line 31
    if-eqz v4, :cond_12

    .line 32
    .line 33
    invoke-virtual {v4}, Ldd1;->getProtocols()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lfd1;

    .line 42
    .line 43
    :cond_3
    iget-object v5, p0, Lm62;->n:Lex6;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move-object v5, v3

    .line 56
    :goto_1
    iget-object v6, p0, Lm62;->j:Lex6;

    .line 57
    .line 58
    if-eqz v5, :cond_9

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_5

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    invoke-virtual {v4}, Lfd1;->getScheme()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v7, "://"

    .line 72
    .line 73
    invoke-static {v4, v7, v5}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-lez v5, :cond_6

    .line 82
    .line 83
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_6

    .line 88
    .line 89
    move v5, v0

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v5, v1

    .line 92
    :goto_2
    if-nez v5, :cond_7

    .line 93
    .line 94
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 95
    .line 96
    const-string v7, "Invalid url: "

    .line 97
    .line 98
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move v2, v1

    .line 106
    :cond_7
    if-eqz v5, :cond_8

    .line 107
    .line 108
    move-object v4, v3

    .line 109
    goto :goto_3

    .line 110
    :cond_8
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 111
    .line 112
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const v5, 0x7f1302da

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    :goto_3
    invoke-virtual {v6, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_9
    :goto_4
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 128
    .line 129
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const v4, 0x7f13044f

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v6, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move v2, v1

    .line 144
    :goto_5
    if-eqz p1, :cond_a

    .line 145
    .line 146
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    goto :goto_6

    .line 151
    :cond_a
    move-object v4, v3

    .line 152
    :goto_6
    iget-object v5, p0, Lm62;->k:Lex6;

    .line 153
    .line 154
    if-nez v4, :cond_b

    .line 155
    .line 156
    invoke-virtual {v5, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-gt v0, v4, :cond_c

    .line 165
    .line 166
    const/high16 v6, 0x10000

    .line 167
    .line 168
    if-ge v4, v6, :cond_c

    .line 169
    .line 170
    move v4, v0

    .line 171
    goto :goto_7

    .line 172
    :cond_c
    move v4, v1

    .line 173
    :goto_7
    if-nez v4, :cond_d

    .line 174
    .line 175
    move v2, v1

    .line 176
    :cond_d
    if-eqz v4, :cond_e

    .line 177
    .line 178
    move-object v4, v3

    .line 179
    goto :goto_8

    .line 180
    :cond_e
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 181
    .line 182
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    const v6, 0x7f1302d8

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    :goto_8
    invoke-virtual {v5, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_9
    if-eqz p1, :cond_f

    .line 197
    .line 198
    invoke-static {p1, v1, v0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    :cond_f
    if-nez v3, :cond_10

    .line 203
    .line 204
    const-string v3, ""

    .line 205
    .line 206
    :cond_10
    iget-object p1, p0, Lm62;->o:Lex6;

    .line 207
    .line 208
    invoke-virtual {p1, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    if-eqz v2, :cond_11

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-lez p1, :cond_11

    .line 218
    .line 219
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_11

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_11
    move v0, v1

    .line 227
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object p0, p0, Lm62;->i:Lex6;

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_12
    const-string p0, "cloudType"

    .line 238
    .line 239
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v3
.end method
