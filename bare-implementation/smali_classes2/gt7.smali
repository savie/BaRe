.class public final Lgt7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgt7;

.field public static b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

.field public static final c:Lgv7;

.field public static final d:Lgv7;

.field public static final e:Lgv7;

.field public static final f:Lgv7;

.field public static final g:Lgv7;

.field public static h:Lgh;

.field public static i:Lvq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lgt7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgt7;->a:Lgt7;

    .line 7
    .line 8
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v0, v1, v1, v2, v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 16
    .line 17
    new-instance v0, Lzk;

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgv7;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lgt7;->c:Lgv7;

    .line 30
    .line 31
    new-instance v0, Lfl;

    .line 32
    .line 33
    const/16 v1, 0xf

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lgv7;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lgt7;->d:Lgv7;

    .line 44
    .line 45
    new-instance v0, Lq9;

    .line 46
    .line 47
    const/16 v1, 0x10

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lgv7;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lgt7;->e:Lgv7;

    .line 58
    .line 59
    new-instance v0, Ljx;

    .line 60
    .line 61
    const/16 v1, 0x18

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lgv7;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 69
    .line 70
    .line 71
    sput-object v1, Lgt7;->f:Lgv7;

    .line 72
    .line 73
    new-instance v0, Lzj;

    .line 74
    .line 75
    const/16 v1, 0x11

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lgv7;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lgt7;->g:Lgv7;

    .line 86
    .line 87
    return-void
.end method

.method public static g(Lgh;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession;

    .line 2
    .line 3
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lgh;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lgh;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, [B

    .line 27
    .line 28
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v0, p1, v1, v2, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lw14;->a:Lgv7;

    .line 51
    .line 52
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Lx95;->g:Lx95;

    .line 61
    .line 62
    sget-object p1, Ly32;->a:Lgv7;

    .line 63
    .line 64
    invoke-static {p0}, Ly32;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lx95;->s(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a(Lgh;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;
    .locals 1

    .line 1
    sput-object p1, Lgt7;->h:Lgh;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lgt7;->i:Lvq;

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lgt7;->d()Lvq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-static {p1, p2}, Lgt7;->g(Lgh;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lbe8;->a:Lbe8;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    new-instance p1, Lbn6;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    move-object p0, p1

    .line 24
    :goto_0
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    sget-object p0, Lx95;->g:Lx95;

    .line 31
    .line 32
    invoke-static {v0}, Lx95;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    sget-object p1, Lgt7;->h:Lgh;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p1, Lgh;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, [B

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 49
    .line 50
    .line 51
    :cond_1
    sput-object v0, Lgt7;->h:Lgh;

    .line 52
    .line 53
    sput-object v0, Lgt7;->i:Lvq;

    .line 54
    .line 55
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;-><init>(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    move-object p0, p1

    .line 61
    :goto_1
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x2f

    .line 6
    .line 7
    aput-char v3, v1, v2

    .line 8
    .line 9
    invoke-static {p1, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    monitor-enter p0

    .line 21
    :try_start_0
    sget-object v1, Lgt7;->a:Lgt7;

    .line 22
    .line 23
    invoke-virtual {v1}, Lgt7;->f()Lgh;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v4, ""

    .line 28
    .line 29
    new-array v5, v0, [C

    .line 30
    .line 31
    aput-char v3, v5, v2

    .line 32
    .line 33
    const/4 v3, 0x6

    .line 34
    invoke-static {p1, v5, v3}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v7, v6

    .line 58
    check-cast v7, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object p1, v0

    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_9

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_4

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    move-object v9, v8

    .line 118
    check-cast v9, Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v9}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_3

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const-string v8, "/"

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    const/16 v12, 0x3e

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    sget-object v7, Lgt7;->a:Lgt7;

    .line 142
    .line 143
    invoke-virtual {v7}, Lgt7;->d()Lvq;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v8, v6}, Lvq;->m(Ljava/lang/String;)Lpa5;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-nez v8, :cond_6

    .line 152
    .line 153
    invoke-virtual {v7}, Lgt7;->d()Lvq;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v7, v4}, Lvq;->m(Ljava/lang/String;)Lpa5;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_5

    .line 162
    .line 163
    sget-object v4, Lgt7;->e:Lgv7;

    .line 164
    .line 165
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lsa5;

    .line 170
    .line 171
    invoke-virtual {v4, v1, v7, v5}, Lsa5;->a(Lgh;Lpa5;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    sput-object v4, Lgt7;->i:Lvq;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v1, "MEGA parent folder does not exist: "

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_6
    iget v4, v8, Lpa5;->f:I

    .line 206
    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    move v4, v0

    .line 210
    goto :goto_3

    .line 211
    :cond_7
    move v4, v2

    .line 212
    :goto_3
    if-eqz v4, :cond_8

    .line 213
    .line 214
    :goto_4
    move-object v4, v6

    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v0, "MEGA path exists but is not a folder: "

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_9
    monitor-exit p0

    .line 245
    invoke-virtual {p0, p1}, Lgt7;->c(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    return p0

    .line 250
    :goto_5
    monitor-exit p0

    .line 251
    throw p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lgt7;->d()Lvq;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lvq;->m(Ljava/lang/String;)Lpa5;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    new-instance p1, Lbn6;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    move-object p0, p1

    .line 29
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    instance-of v0, p0, Lbn6;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move-object p0, p1

    .line 36
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final declared-synchronized d()Lvq;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lgt7;->f()Lgh;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lgt7;->i:Lvq;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lgt7;->e:Lgv7;

    .line 11
    .line 12
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lsa5;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lsa5;->c(Lgh;)Lvq;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lgt7;->i:Lvq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-object v1

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public final e(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;
    .locals 7

    .line 1
    sget-object v0, Lgt7;->h:Lgh;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->isValid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "MEGA credentials are missing"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;-><init>(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object v0, Lgt7;->d:Lgv7;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_a

    .line 38
    .line 39
    :cond_2
    sget-object v1, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lx95;->g:Lx95;

    .line 46
    .line 47
    const-string v2, "mega_swift_session"

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v2, "prefs"

    .line 60
    .line 61
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    move-object v2, v3

    .line 66
    :goto_0
    if-nez v2, :cond_4

    .line 67
    .line 68
    :goto_1
    move-object v2, v3

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    :try_start_1
    sget-object v4, Ly32;->a:Lgv7;

    .line 71
    .line 72
    invoke-static {v2}, Ly32;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v2

    .line 78
    new-instance v4, Lbn6;

    .line 79
    .line 80
    invoke-direct {v4, v2}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    move-object v2, v4

    .line 84
    :goto_2
    invoke-static {v2}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-nez v4, :cond_6

    .line 89
    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    :try_start_2
    sget-object v4, Lw14;->a:Lgv7;

    .line 93
    .line 94
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-class v5, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession;

    .line 99
    .line 100
    invoke-virtual {v4, v2, v5}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catchall_1
    move-exception v2

    .line 108
    new-instance v4, Lbn6;

    .line 109
    .line 110
    invoke-direct {v4, v2}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    move-object v2, v4

    .line 114
    :goto_3
    nop

    .line 115
    instance-of v4, v2, Lbn6;

    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    move-object v2, v3

    .line 120
    :cond_5
    check-cast v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession;

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    sget-object v2, Lx95;->g:Lx95;

    .line 124
    .line 125
    invoke-static {v3}, Lx95;->s(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_4
    if-eqz v2, :cond_7

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/SwiftMegaSavedSession;->validatedForEmail(Ljava/lang/String;)Lti8;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    goto :goto_5

    .line 136
    :cond_7
    move-object v1, v3

    .line 137
    :goto_5
    if-nez v1, :cond_8

    .line 138
    .line 139
    sget-object v1, Lx95;->g:Lx95;

    .line 140
    .line 141
    invoke-static {v3}, Lx95;->s(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_6
    move-object v5, v3

    .line 145
    goto/16 :goto_8

    .line 146
    .line 147
    :cond_8
    :try_start_3
    iget-object v2, v1, Lti8;->b:Ljava/lang/String;

    .line 148
    .line 149
    const/16 v4, 0x2b

    .line 150
    .line 151
    const/16 v5, 0x2d

    .line 152
    .line 153
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/16 v4, 0x2f

    .line 161
    .line 162
    const/16 v5, 0x5f

    .line 163
    .line 164
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    rem-int/lit8 v4, v4, 0x4

    .line 176
    .line 177
    rsub-int/lit8 v4, v4, 0x4

    .line 178
    .line 179
    rem-int/lit8 v4, v4, 0x4

    .line 180
    .line 181
    const-string v5, "="

    .line 182
    .line 183
    invoke-static {v4, v5}, Luq7;->R(ILjava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :catchall_2
    move-exception v2

    .line 215
    new-instance v4, Lbn6;

    .line 216
    .line 217
    invoke-direct {v4, v2}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    move-object v2, v4

    .line 221
    :goto_7
    invoke-static {v2}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    if-nez v4, :cond_9

    .line 226
    .line 227
    check-cast v2, [B

    .line 228
    .line 229
    const/4 v4, 0x0

    .line 230
    :try_start_4
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Loa5;

    .line 235
    .line 236
    iget-object v6, v1, Lti8;->a:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Loa5;->j(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    new-instance v5, Lgh;

    .line 242
    .line 243
    iget-object v6, v1, Lti8;->a:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v1, v1, Lti8;->c:Ljava/lang/String;

    .line 246
    .line 247
    invoke-direct {v5, v6, v2, v1}, Lgh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lca5; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 248
    .line 249
    .line 250
    goto :goto_8

    .line 251
    :catch_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :catch_2
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 256
    .line 257
    .line 258
    sget-object v1, Lx95;->g:Lx95;

    .line 259
    .line 260
    invoke-static {v3}, Lx95;->s(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_9
    sget-object v1, Lx95;->g:Lx95;

    .line 265
    .line 266
    invoke-static {v3}, Lx95;->s(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :goto_8
    if-eqz v5, :cond_a

    .line 271
    .line 272
    sget-object p0, Lgt7;->a:Lgt7;

    .line 273
    .line 274
    invoke-virtual {p0, v5, v3}, Lgt7;->a(Lgh;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0

    .line 279
    :cond_a
    :try_start_5
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Loa5;

    .line 284
    .line 285
    sget-object v1, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 286
    .line 287
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    sget-object v2, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 292
    .line 293
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getPassword()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2, p1}, Loa5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgh;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    sget-object v0, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 302
    .line 303
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {p0, p1, v0}, Lgt7;->a(Lgh;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;

    .line 308
    .line 309
    .line 310
    move-result-object p0
    :try_end_5
    .catch Lca5; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 311
    goto :goto_c

    .line 312
    :catch_3
    move-exception p0

    .line 313
    goto :goto_9

    .line 314
    :catch_4
    move-exception p0

    .line 315
    goto :goto_b

    .line 316
    :goto_9
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 317
    .line 318
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;-><init>(Ljava/lang/Exception;)V

    .line 319
    .line 320
    .line 321
    :goto_a
    move-object p0, p1

    .line 322
    goto :goto_c

    .line 323
    :goto_b
    const/16 p1, -0x1a

    .line 324
    .line 325
    iget v0, p0, Lca5;->a:I

    .line 326
    .line 327
    if-eq v0, p1, :cond_b

    .line 328
    .line 329
    const/4 p1, -0x8

    .line 330
    if-eq v0, p1, :cond_b

    .line 331
    .line 332
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 333
    .line 334
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;-><init>(Ljava/lang/Exception;)V

    .line 335
    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_b
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;

    .line 339
    .line 340
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;-><init>(Ljava/lang/Exception;)V

    .line 341
    .line 342
    .line 343
    goto :goto_a

    .line 344
    :goto_c
    return-object p0
.end method

.method public final declared-synchronized f()Lgh;
    .locals 4

    .line 1
    const-string v0, "Swift MEGA login failed: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lgt7;->h:Lgh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_1
    invoke-virtual {p0, v1}, Lgt7;->e(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    sget-object v0, Lgt7;->h:Lgh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :cond_1
    :try_start_2
    const-string v0, "Swift MEGA login succeeded without session state"

    .line 26
    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v2

    .line 53
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method
