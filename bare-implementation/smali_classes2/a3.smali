.class public final La3;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final p:Ljava/lang/String;

.field public q:I

.field public r:J

.field public final t:I

.field public x:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, La3;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, La3;->p:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    iput v0, p0, La3;->t:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_d

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :sswitch_0
    const-string v1, "notices"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-class p1, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 31
    .line 32
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :sswitch_1
    const-string v1, "changelog"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_1
    sget-object p1, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    new-instance p1, Lz2;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {p1, p0, v1, v2}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :sswitch_2
    const-string v1, "privacy_policy"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "https://www.swiftapps.org/privacy-policy"

    .line 73
    .line 74
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :sswitch_3
    const-string v1, "version"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    iget-wide v5, p0, La3;->r:J

    .line 93
    .line 94
    sub-long v5, v3, v5

    .line 95
    .line 96
    const-wide/16 v7, 0x3e8

    .line 97
    .line 98
    cmp-long p1, v5, v7

    .line 99
    .line 100
    if-gtz p1, :cond_4

    .line 101
    .line 102
    move p1, v0

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move p1, v2

    .line 105
    :goto_0
    iput-wide v3, p0, La3;->r:J

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    iget p1, p0, La3;->q:I

    .line 110
    .line 111
    add-int/2addr p1, v0

    .line 112
    iput p1, p0, La3;->q:I

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    iput v0, p0, La3;->q:I

    .line 116
    .line 117
    :goto_1
    iget p1, p0, La3;->q:I

    .line 118
    .line 119
    const/4 v1, 0x3

    .line 120
    iget v3, p0, La3;->t:I

    .line 121
    .line 122
    if-lt p1, v1, :cond_8

    .line 123
    .line 124
    sub-int p1, v3, p1

    .line 125
    .line 126
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 127
    .line 128
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    const-string v1, "disabling"

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    const-string v1, "enabling"

    .line 138
    .line 139
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v5, "You are "

    .line 142
    .line 143
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p1, " steps away from "

    .line 150
    .line 151
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, " test options"

    .line 158
    .line 159
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v1, p0, La3;->x:Landroid/widget/Toast;

    .line 179
    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 183
    .line 184
    .line 185
    :cond_7
    iput-object p1, p0, La3;->x:Landroid/widget/Toast;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 188
    .line 189
    .line 190
    :cond_8
    iget p1, p0, La3;->q:I

    .line 191
    .line 192
    if-lt p1, v3, :cond_d

    .line 193
    .line 194
    iput v2, p0, La3;->q:I

    .line 195
    .line 196
    const-wide/16 v1, 0x0

    .line 197
    .line 198
    iput-wide v1, p0, La3;->r:J

    .line 199
    .line 200
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 201
    .line 202
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    xor-int/2addr v1, v0

    .line 207
    invoke-virtual {p1, v1}, Lorg/swiftapps/swiftbackup/common/V;->setT(Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    const-string p1, "Enabled test options"

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_9
    const-string p1, "Disabled test options"

    .line 220
    .line 221
    :goto_3
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 222
    .line 223
    iget-object v2, p0, La3;->p:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    sget-object v3, Lvr6$a;->YELLOW:Lvr6$a;

    .line 229
    .line 230
    invoke-virtual {v1, v2, p1, v3}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, La3;->x:Landroid/widget/Toast;

    .line 234
    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 238
    .line 239
    .line 240
    :cond_a
    invoke-virtual {p0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    const-string v1, ", Restarting app..."

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {p0, v1, p1}, Lorg/swiftapps/swiftbackup/common/Const;->G(Lil0;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return v0

    .line 254
    :sswitch_4
    const-string v1, "tos"

    .line 255
    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-nez p1, :cond_b

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_b
    invoke-virtual {p0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    const-string p1, "https://www.swiftapps.org/tos"

    .line 268
    .line 269
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    return v0

    .line 273
    :sswitch_5
    const-string v1, "notes_from_developer"

    .line 274
    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_c

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_c
    invoke-virtual {p0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    const-class p1, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 287
    .line 288
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .line 290
    .line 291
    :cond_d
    :goto_4
    return v0

    .line 292
    nop

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x26f36d4d -> :sswitch_5
        0x1c158 -> :sswitch_4
        0x14f51cd8 -> :sswitch_3
        0x373ef5c9 -> :sswitch_2
        0x56bdb194 -> :sswitch_1
        0x7eeb449b -> :sswitch_0
    .end sparse-switch
.end method

.method public final l()V
    .locals 2

    .line 1
    const v0, 0x7f16000b

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
    const-string v0, "version"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const-string v0, "5.1.0 (620)"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 9
    .line 10
    return-object p0
.end method
