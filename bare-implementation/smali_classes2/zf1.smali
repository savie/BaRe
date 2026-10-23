.class public final synthetic Lzf1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lzf1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lzf1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lzf1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lzf1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Las8;

    .line 12
    .line 13
    iget-object p0, p0, Las8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->b0(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p0, Lto8;

    .line 20
    .line 21
    iget-object p1, p0, Lto8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 22
    .line 23
    new-instance v0, Lxq4;

    .line 24
    .line 25
    const/16 v3, 0x12

    .line 26
    .line 27
    invoke-direct {v0, p0, v3}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1, v0, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 35
    .line 36
    sget p1, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    check-cast p0, Lpa8;

    .line 43
    .line 44
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 49
    .line 50
    sget p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 51
    .line 52
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 53
    .line 54
    invoke-static {p0}, Lx13;->R(Lk28;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 59
    .line 60
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 61
    .line 62
    invoke-virtual {p0, v0, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 67
    .line 68
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lbb4;->y()Lxa4;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_0

    .line 79
    .line 80
    invoke-virtual {p0}, Lxa4;->getOnButtonClick()Lbt3;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-eqz p0, :cond_0

    .line 85
    .line 86
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void

    .line 90
    :pswitch_6
    check-cast p0, Lo85;

    .line 91
    .line 92
    invoke-virtual {p0}, Lo85;->m()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lo85;->y:Ll90;

    .line 96
    .line 97
    iget-object p0, p0, Ll90;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lqc5;

    .line 100
    .line 101
    invoke-virtual {p0}, Lqc5;->b()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lqc5;->f:Landroid/view/View;

    .line 109
    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0, v0, v0, v0, v0}, Lqc5;->d(IIZZ)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 117
    .line 118
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void

    .line 122
    :pswitch_7
    check-cast p0, Ldf4;

    .line 123
    .line 124
    invoke-virtual {p0}, Ldf4;->invoke()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 129
    .line 130
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const p1, 0x7f0a034a

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lol5;->setSelectedItemId(I)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_9
    check-cast p0, Lkl3;

    .line 144
    .line 145
    iget-object p0, p0, Lkl3;->c:Ldm3;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance p1, Lfj;

    .line 151
    .line 152
    const/16 v0, 0x19

    .line 153
    .line 154
    invoke-direct {p1, p0, v0}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 162
    .line 163
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_3

    .line 178
    .line 179
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    move-object p1, v1

    .line 185
    :goto_1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->S:Lgv7;

    .line 186
    .line 187
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    if-eqz v0, :cond_5

    .line 194
    .line 195
    new-instance v1, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_5

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 215
    .line 216
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-nez v2, :cond_4

    .line 221
    .line 222
    sget-object v2, Lov2;->a:Lov2;

    .line 223
    .line 224
    :cond_4
    invoke-static {v2, v1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .line 232
    .line 233
    if-eqz p1, :cond_7

    .line 234
    .line 235
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_6

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    .line 246
    .line 247
    const-string p1, "extra_selected_labels"

    .line 248
    .line 249
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 250
    .line 251
    .line 252
    :cond_7
    :goto_3
    if-eqz v1, :cond_9

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "extra_already_used_labels"

    .line 267
    .line 268
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 269
    .line 270
    .line 271
    :cond_9
    :goto_4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U:Lt9;

    .line 272
    .line 273
    invoke-virtual {p0, v0}, Lt9;->a(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_b
    check-cast p0, Lgg1;

    .line 278
    .line 279
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    sget-boolean p1, Ltb1;->f:Z

    .line 284
    .line 285
    if-nez p1, :cond_a

    .line 286
    .line 287
    iput-boolean v0, p0, Lng1;->e:Z

    .line 288
    .line 289
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    sget-object p1, Lzn4;->a:Lzn4;

    .line 297
    .line 298
    new-instance p1, Lsb1;

    .line 299
    .line 300
    invoke-direct {p1, p0, v2, v1}, Lsb1;-><init>(Ltb1;ZLjv1;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v1, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 304
    .line 305
    .line 306
    :cond_a
    return-void

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
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
