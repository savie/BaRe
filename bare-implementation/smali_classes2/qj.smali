.class public final Lqj;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lqj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Lqj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lqj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lqj;

    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lqj;

    .line 18
    .line 19
    check-cast p0, Lye5;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lqj;

    .line 27
    .line 28
    check-cast p0, Lmk2;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Lqj;

    .line 36
    .line 37
    check-cast p0, Lrj;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p1, p0, p2, v0}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lqj;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lqj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lqj;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lqj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lqj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lqj;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lqj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lqj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lqj;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lqj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lqj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lqj;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lqj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lqj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lqj;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;

    .line 13
    .line 14
    sget-object p1, Ljc2;->TIMEOUT:Ljc2;

    .line 15
    .line 16
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a(Ljc2;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "TaskService timeout"

    .line 22
    .line 23
    invoke-static {p0}, Lqc2;->g(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lbe8;->a:Lbe8;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_0
    sget-object v0, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lqj;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lye5;

    .line 37
    .line 38
    iget-object p0, p0, Lye5;->g:Lex6;

    .line 39
    .line 40
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 41
    .line 42
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lai8;->i(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    sget-object p1, Lte5;->a:Lte5;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    sget-object p1, Ltb1;->a:Ltb1;

    .line 59
    .line 60
    invoke-static {}, Lqb1;->m()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    sget-object p1, Lqe5;->a:Lqe5;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    sget-object p1, Lse5;->a:Lse5;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lud5;->e()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    sget-object v2, Lre5;->a:Lre5;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance v2, Lpe5;

    .line 91
    .line 92
    invoke-direct {v2, p1}, Lpe5;-><init>(Ljava/util/ArrayList;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-virtual {p0, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-nez p0, :cond_3

    .line 103
    .line 104
    invoke-static {}, Lre3;->i()Lzc2;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    new-instance v1, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-static {}, Lre3;->i()Lzc2;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 126
    .line 127
    .line 128
    :goto_1
    return-object v0

    .line 129
    :pswitch_1
    sget-object v0, Lbe8;->a:Lbe8;

    .line 130
    .line 131
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lqj;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Lmk2;

    .line 137
    .line 138
    iget-object p1, p0, Lmk2;->l:Lex6;

    .line 139
    .line 140
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 141
    .line 142
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v2}, Lai8;->i(Landroid/content/Context;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_4

    .line 151
    .line 152
    new-instance p0, Lyj2;

    .line 153
    .line 154
    sget-object v1, Lxj2;->NetworkError:Lxj2;

    .line 155
    .line 156
    invoke-direct {p0, v1}, Lyj2;-><init>(Lxj2;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    sget-object v2, Ltb1;->a:Ltb1;

    .line 164
    .line 165
    invoke-static {}, Lqb1;->m()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_5

    .line 170
    .line 171
    new-instance p0, Lyj2;

    .line 172
    .line 173
    sget-object v1, Lxj2;->DriveNotConnected:Lxj2;

    .line 174
    .line 175
    invoke-direct {p0, v1}, Lyj2;-><init>(Lxj2;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {p1}, Lzy4;->d()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Lyj2;

    .line 187
    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    iget-object v2, v2, Lyj2;->a:Lxj2;

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    move-object v2, v1

    .line 194
    :goto_2
    sget-object v3, Lxj2;->BackedUp:Lxj2;

    .line 195
    .line 196
    if-eq v2, v3, :cond_7

    .line 197
    .line 198
    new-instance v2, Lyj2;

    .line 199
    .line 200
    sget-object v3, Lxj2;->Loading:Lxj2;

    .line 201
    .line 202
    invoke-direct {v2, v3}, Lyj2;-><init>(Lxj2;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    sget-object p1, Lre3;->a:Lzc2;

    .line 209
    .line 210
    iget-object p1, p0, Lmk2;->m:Lzc2;

    .line 211
    .line 212
    iget-object v2, p0, Lmk2;->n:Llk2;

    .line 213
    .line 214
    invoke-static {p1, v2}, Lre3;->n(Lzc2;Laj8;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lmk2;->e:Lji;

    .line 218
    .line 219
    if-eqz p1, :cond_8

    .line 220
    .line 221
    invoke-virtual {p1}, Lji;->getAppId()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lre3;->c()Lzc2;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1, p1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iput-object p1, p0, Lmk2;->m:Lzc2;

    .line 237
    .line 238
    new-instance v1, Llk2;

    .line 239
    .line 240
    invoke-direct {v1, p0}, Llk2;-><init>(Lmk2;)V

    .line 241
    .line 242
    .line 243
    iput-object v1, p0, Lmk2;->n:Llk2;

    .line 244
    .line 245
    invoke-virtual {p1, v1}, Lzc2;->c(Laj8;)V

    .line 246
    .line 247
    .line 248
    :goto_3
    return-object v0

    .line 249
    :cond_8
    const-string p0, "app"

    .line 250
    .line 251
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v1

    .line 255
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    sget-object p1, Lg00;->a:Lg00;

    .line 259
    .line 260
    iget-object p0, p0, Lqj;->b:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Lrj;

    .line 263
    .line 264
    iget-object p0, p0, Lrj;->f:Lji;

    .line 265
    .line 266
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    const/4 p1, 0x0

    .line 271
    invoke-static {p0, p1}, Lg00;->c(Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    sget-object p0, Lbe8;->a:Lbe8;

    .line 275
    .line 276
    return-object p0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
