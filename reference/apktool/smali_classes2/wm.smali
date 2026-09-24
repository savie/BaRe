.class public final Lwm;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjv1;)V
    .locals 1

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lwm;->a:I

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lwm;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwm;->b:Ljava/lang/Object;

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
    iget v0, p0, Lwm;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lwm;

    .line 7
    .line 8
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lm87;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lwm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p0, Lwm;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, v0, p2}, Lwm;-><init>(ILjv1;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lwm;->b:Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_1
    new-instance p1, Lwm;

    .line 27
    .line 28
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lrs0;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-direct {p1, p0, p2, v0}, Lwm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_2
    new-instance p1, Lwm;

    .line 38
    .line 39
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lq63;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-direct {p1, p0, p2, v0}, Lwm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    nop

    .line 49
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
    iget v0, p0, Lwm;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lm87;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lwm;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lwm;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lwm;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lem7;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lwm;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lwm;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lwm;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lxx1;

    .line 39
    .line 40
    check-cast p2, Ljv1;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lwm;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lwm;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lwm;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :pswitch_2
    check-cast p1, Lxx1;

    .line 53
    .line 54
    check-cast p2, Ljv1;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lwm;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lwm;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lwm;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lwm;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lm87;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lem7;

    .line 23
    .line 24
    instance-of p0, p0, Lne3;

    .line 25
    .line 26
    xor-int/2addr p0, v2

    .line 27
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lrs0;

    .line 38
    .line 39
    iget-object p1, p0, Lrs0;->e:Lgs0;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object p1, v0

    .line 55
    :goto_0
    if-nez p1, :cond_1

    .line 56
    .line 57
    sget-object p1, Lov2;->a:Lov2;

    .line 58
    .line 59
    :cond_1
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 60
    .line 61
    invoke-direct {v3, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lg00;->a:Lg00;

    .line 65
    .line 66
    const-string p1, "show_system_apps"

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    invoke-interface {v5, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string p1, "prefs"

    .line 79
    .line 80
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move p1, v4

    .line 85
    :goto_1
    invoke-static {p1}, Lg00;->m(Z)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v0, Lqs0;

    .line 95
    .line 96
    invoke-direct {v0, v4}, Lqs0;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    const/16 v5, 0xa

    .line 106
    .line 107
    invoke-static {p1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_3

    .line 123
    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Lji;

    .line 129
    .line 130
    invoke-virtual {v7}, Lji;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    new-array v6, v4, [Ljava/lang/CharSequence;

    .line 139
    .line 140
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, [Ljava/lang/CharSequence;

    .line 145
    .line 146
    new-instance v6, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-static {p1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_7

    .line 164
    .line 165
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Lji;

    .line 170
    .line 171
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_5

    .line 176
    .line 177
    :cond_4
    move v7, v4

    .line 178
    goto :goto_4

    .line 179
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-eqz v9, :cond_4

    .line 188
    .line 189
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    check-cast v9, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 194
    .line 195
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-eqz v9, :cond_6

    .line 208
    .line 209
    move v7, v2

    .line 210
    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    invoke-static {v6}, Lel1;->r1(Ljava/util/ArrayList;)[Z

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {p0}, Lqo0;->f()V

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lrs0;->g:Lix6;

    .line 226
    .line 227
    new-instance v4, Los0;

    .line 228
    .line 229
    invoke-direct {v4, v0, v2, p1, v3}, Los0;-><init>([Ljava/lang/CharSequence;[ZLjava/util/List;Ljava/util/Set;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v4}, Lix6;->k(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-object v1

    .line 236
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Lwm;->b:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p0, Lq63;

    .line 242
    .line 243
    invoke-virtual {p0}, Lq63;->h()Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_8

    .line 248
    .line 249
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const-string p1, "Unable to fully delete deferred cloud cache at "

    .line 254
    .line 255
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    const-string p1, "AppCloudCacheCleaner"

    .line 260
    .line 261
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :cond_8
    return-object v1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
