.class public final synthetic Ln55;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln55;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ln55;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ln55;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Ln55;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 12
    .line 13
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 14
    .line 15
    new-instance v0, Lbs8;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Lur8;->k:Lyr8;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, p0, v1, v2}, Lbs8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Lyr8;Liu8;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 32
    .line 33
    sget v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->N()Lgh8;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Lgh8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_1
    check-cast p0, Lpa8;

    .line 43
    .line 44
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 45
    .line 46
    check-cast p0, Lqa8;

    .line 47
    .line 48
    iget-object p0, p0, Lqa8;->b:Landroid/widget/ImageView;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;

    .line 52
    .line 53
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N:I

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->M:Z

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-object v2

    .line 73
    :pswitch_3
    check-cast p0, Lzn7;

    .line 74
    .line 75
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 76
    .line 77
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lsz8;->u(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lzn7;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_4
    check-cast p0, Lpa7;

    .line 96
    .line 97
    const-string v0, "org.swiftapps.swiftbackup"

    .line 98
    .line 99
    invoke-static {v0}, Lhp0;->b(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_2

    .line 116
    .line 117
    new-instance v3, Lna7;

    .line 118
    .line 119
    invoke-direct {v3, p0, v0}, Lna7;-><init>(Lpa7;Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-object v2

    .line 126
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 127
    .line 128
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getAppsCompressionLevel()Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    const/4 v3, 0x0

    .line 142
    const/4 v4, 0x2

    .line 143
    if-ge v1, v4, :cond_5

    .line 144
    .line 145
    aget-object v4, v0, v1

    .line 146
    .line 147
    invoke-virtual {v4}, Lxp1;->getLevel()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez p0, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-ne v5, v6, :cond_4

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    move-object v4, v3

    .line 165
    :goto_3
    if-nez v4, :cond_6

    .line 166
    .line 167
    sget-object p0, Lxp1;->Companion:Lwp1;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Lxp1;->getLevel()I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    const-string v1, "compression_level_app_data"

    .line 188
    .line 189
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    .line 195
    .line 196
    return-object v2

    .line 197
    :cond_7
    const-string p0, "editor"

    .line 198
    .line 199
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v3

    .line 203
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 204
    .line 205
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 206
    .line 207
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    iget-object p0, p0, Lf37;->c:Ley2;

    .line 212
    .line 213
    return-object p0

    .line 214
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 215
    .line 216
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    const v0, 0x7f0700a6

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 235
    .line 236
    sget v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 237
    .line 238
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->L:Lgv7;

    .line 239
    .line 240
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Lth7;

    .line 245
    .line 246
    iget-object p0, p0, Lth7;->c:Lcom/l4digital/fastscroll/FastScroller;

    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 250
    .line 251
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->N:I

    .line 252
    .line 253
    new-instance v0, Lqo5;

    .line 254
    .line 255
    invoke-direct {v0, p0, v1, v1}, Lqo5;-><init>(Lk28;ZZ)V

    .line 256
    .line 257
    .line 258
    return-object v0

    .line 259
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 260
    .line 261
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {p0}, Loi7;->a(Landroid/view/LayoutInflater;)Loi7;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    return-object p0

    .line 272
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 273
    .line 274
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 275
    .line 276
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    iget-object p0, p0, Lub5;->f:Ld62;

    .line 281
    .line 282
    iget-object p0, p0, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 283
    .line 284
    return-object p0

    .line 285
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 286
    .line 287
    sget v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 288
    .line 289
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->K:Lgv7;

    .line 290
    .line 291
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    check-cast p0, Lr55;

    .line 296
    .line 297
    iget-object p0, p0, Lr55;->c:Lix0;

    .line 298
    .line 299
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 302
    .line 303
    return-object p0

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
