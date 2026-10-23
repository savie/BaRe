.class public final Lcf5;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final p:Lgv7;

.field public final q:Lgv7;

.field public final r:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxq4;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcf5;->p:Lgv7;

    .line 16
    .line 17
    new-instance v0, Las4;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, p0, v1}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcf5;->q:Lgv7;

    .line 29
    .line 30
    new-instance v0, Lpr4;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lgv7;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcf5;->r:Lgv7;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 11

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_a

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const v2, -0x3120c69a

    .line 11
    .line 12
    .line 13
    if-eq v1, v2, :cond_8

    .line 14
    .line 15
    const v2, 0x340467a9

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eq v1, v2, :cond_5

    .line 20
    .line 21
    const v2, 0x786a4bb0

    .line 22
    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    const-string v1, "max_sms_backups"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    const/4 p1, 0x1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 p1, 0x5

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const/16 p1, 0xa

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const/16 p1, 0x14

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const/16 p1, 0x32

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    const/16 p1, 0x64

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const/4 v4, 0x0

    .line 73
    filled-new-array/range {v4 .. v10}, [Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    const/4 v2, 0x7

    .line 80
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    move v4, v0

    .line 84
    :goto_0
    if-ge v4, v2, :cond_4

    .line 85
    .line 86
    aget-object v5, p1, v4

    .line 87
    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-nez v5, :cond_3

    .line 99
    .line 100
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    check-cast v5, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 108
    .line 109
    const v6, 0x7f1303cb

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    new-array v2, v0, [Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, [Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {}, Lz85;->u()Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {p1, v2}, Lx50;->r0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    new-instance v4, Ljh6;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    iput v2, v4, Ljh6;->a:I

    .line 147
    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    new-instance v6, Lhv1;

    .line 153
    .line 154
    const v7, 0x7f140160

    .line 155
    .line 156
    .line 157
    invoke-direct {v6, v5, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 158
    .line 159
    .line 160
    new-instance v8, Ls35;

    .line 161
    .line 162
    invoke-direct {v8, v5, v7, v6, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 163
    .line 164
    .line 165
    const v5, 0x7f130340

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v5}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    iget-object v6, v8, Lva;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v6, Lra;

    .line 175
    .line 176
    iput-object v5, v6, Lra;->d:Ljava/lang/CharSequence;

    .line 177
    .line 178
    check-cast v1, [Ljava/lang/CharSequence;

    .line 179
    .line 180
    new-instance v5, Lwi2;

    .line 181
    .line 182
    const/4 v6, 0x3

    .line 183
    invoke-direct {v5, v4, v6}, Lwi2;-><init>(Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v1, v2, v5}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lbf5;

    .line 190
    .line 191
    invoke-direct {v1, p1, v4, p0}, Lbf5;-><init>([Ljava/lang/Integer;Ljh6;Lcf5;)V

    .line 192
    .line 193
    .line 194
    const p0, 0x7f1303e6

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, p0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    const p0, 0x7f1300f1

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, p0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 207
    .line 208
    .line 209
    return v0

    .line 210
    :cond_5
    const-string v1, "messages_backup_mms"

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_6

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_6
    iget-object p0, p0, Lcf5;->r:Lgv7;

    .line 220
    .line 221
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 226
    .line 227
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 228
    .line 229
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 230
    .line 231
    if-eqz p1, :cond_7

    .line 232
    .line 233
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    .line 239
    .line 240
    return v0

    .line 241
    :cond_7
    const-string p0, "editor"

    .line 242
    .line 243
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v3

    .line 247
    :cond_8
    const-string v1, "compression_level_msgs"

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-nez p1, :cond_9

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {}, Lz85;->s()Lxp1;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    new-instance v2, Lc7;

    .line 265
    .line 266
    const/16 v3, 0x16

    .line 267
    .line 268
    invoke-direct {v2, p0, v3}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 269
    .line 270
    .line 271
    invoke-static {p1, v1, v2}, Lvp1;->a(Landroidx/fragment/app/u;Lxp1;Lmt3;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    :goto_1
    return v0
.end method

.method public final l()V
    .locals 3

    .line 1
    const v0, 0x7f160013

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lc46;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/preference/Preference;

    .line 26
    .line 27
    iput-object p0, v1, Landroidx/preference/Preference;->f:Lt36;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcf5;->r()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcf5;->q()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcf5;->r:Lgv7;

    .line 37
    .line 38
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 43
    .line 44
    const-string v0, "messages_backup_mms"

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v0, "prefs"

    .line 57
    .line 58
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcf5;->q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lz85;->s()Lxp1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lup1;->a:[I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    aget v0, v1, v0

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lq;->j()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    const v0, 0x7f1301a8

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    const v0, 0x7f1301a5

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    const v0, 0x7f1301a6

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_3
    const v0, 0x7f1301a3

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    const v0, 0x7f1301a4

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    const v0, 0x7f1301a7

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 55
    .line 56
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcf5;->p:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lz85;->u()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 34
    .line 35
    const v1, 0x7f1303cb

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
