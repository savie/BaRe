.class public final Lf30;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp53;


# instance fields
.field public final l:Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

.field public final m:Landroid/widget/TextView;

.field public final n:Le7;

.field public final o:Lk3;

.field public final p:I

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Z


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;Landroid/widget/TextView;Le7;Lk3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lf30;->l:Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 6
    .line 7
    iput-object p2, p0, Lf30;->m:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lf30;->n:Le7;

    .line 10
    .line 11
    iput-object p4, p0, Lf30;->o:Lk3;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lf30;->p:I

    .line 15
    .line 16
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 17
    .line 18
    const p2, 0x7f1302e7

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ldj7;->g(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput-object p2, p0, Lf30;->q:Ljava/lang/String;

    .line 26
    .line 27
    const p2, 0x7f1302ea

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ldj7;->g(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lf30;->r:Ljava/lang/String;

    .line 35
    .line 36
    sget-object p2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iput-boolean p2, p0, Lf30;->s:Z

    .line 43
    .line 44
    iput-boolean p1, p0, Lgm7;->k:Z

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Liy;->a:Liy;

    .line 2
    .line 3
    invoke-static {}, Liy;->b()Lsx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Le30;->b:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq;->j()V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    sget-object v0, Liy;->e:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lji;

    .line 30
    .line 31
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Long;

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :pswitch_1
    sget-object v0, Liy;->d:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lji;

    .line 60
    .line 61
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Long;

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    cmp-long p1, v2, v4

    .line 80
    .line 81
    if-lez p1, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move-object p0, v1

    .line 85
    :goto_0
    if-eqz p0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide p0

    .line 91
    sget-object v0, Lp93;->a:Lp93;

    .line 92
    .line 93
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :pswitch_2
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lji;

    .line 108
    .line 109
    invoke-virtual {p0}, Lji;->getSizeInfo()Lqx;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Lqx;->getTotalSizeString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :pswitch_3
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Lji;

    .line 126
    .line 127
    invoke-virtual {p0}, Lji;->getDateBackup()Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide p0

    .line 137
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :pswitch_4
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Lji;

    .line 148
    .line 149
    invoke-virtual {p0}, Lji;->getDateUpdated()Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-eqz p0, :cond_5

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide p0

    .line 159
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    goto :goto_4

    .line 164
    :pswitch_5
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Lji;

    .line 169
    .line 170
    invoke-virtual {p0}, Lji;->getDateInstalled()Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-eqz p0, :cond_5

    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide p0

    .line 180
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto :goto_4

    .line 185
    :pswitch_6
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    check-cast p0, Lji;

    .line 190
    .line 191
    invoke-virtual {p0}, Lji;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-static {p0}, Lnq7;->c0(Ljava/lang/String;)Ljava/lang/Character;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    if-nez p0, :cond_1

    .line 200
    .line 201
    const-string p0, "?"

    .line 202
    .line 203
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    const-string p1, "app_locale"

    .line 208
    .line 209
    :try_start_0
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 210
    .line 211
    if-eqz v0, :cond_2

    .line 212
    .line 213
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    goto :goto_1

    .line 218
    :cond_2
    const-string p1, "prefs"

    .line 219
    .line 220
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    :goto_1
    if-eqz v1, :cond_4

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-nez p1, :cond_3

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_3
    invoke-static {v1}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lis4;->a()Ljava/util/Locale;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    goto :goto_3

    .line 242
    :cond_4
    :goto_2
    invoke-static {}, Lxx3;->h()Lis4;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lis4;->a()Ljava/util/Locale;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 258
    .line 259
    return-object v1

    .line 260
    :cond_6
    const-string p0, "---"

    .line 261
    .line 262
    return-object p0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lji;

    .line 6
    .line 7
    invoke-virtual {p1}, Lji;->isCloudApp()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lf30;->p:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 1

    .line 1
    check-cast p1, Ltr;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lji;

    .line 8
    .line 9
    sget-object p2, Liy;->a:Liy;

    .line 10
    .line 11
    invoke-static {}, Liy;->b()Lsx;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p0, p2, v0}, Ltr;->s(Lji;Lsx;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d002b

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 14

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ltr;

    .line 4
    .line 5
    iget v2, p0, Lf30;->p:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    move v2, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v3

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lf30;->q:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lf30;->r:Ljava/lang/String;

    .line 20
    .line 21
    :goto_1
    sget-object v5, Ltr;->n0:Lqr;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Lqr;->c(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    new-instance v6, Lb30;

    .line 35
    .line 36
    invoke-direct {v6, p0, v3}, Lb30;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lrs;

    .line 40
    .line 41
    invoke-direct {v7, p0, v4}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lf30;->l:Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 45
    .line 46
    invoke-virtual {v3}, Lk28;->v()Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    const/16 v13, 0x1100

    .line 51
    .line 52
    iget-boolean v8, p0, Lf30;->s:Z

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x1

    .line 57
    move-object v4, v0

    .line 58
    move-object v0, v1

    .line 59
    move v3, v2

    .line 60
    move-object v2, p0

    .line 61
    move-object v1, p1

    .line 62
    invoke-direct/range {v0 .. v13}, Ltr;-><init>(Landroid/view/View;Lgm7;ZLjava/lang/String;ILqt3;Lqt3;ZLrs;Lss;ZZI)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf30;->m:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lgm7;->k()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Lgm7;->b()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const v3, 0x7f1304e7

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v3, "app_locale"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v3, "prefs"

    .line 38
    .line 39
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :goto_0
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v4}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "/"

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, " "

    .line 93
    .line 94
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
