.class public final synthetic Lnf;
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
    iput p2, p0, Lnf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnf;->b:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget p1, p0, Lnf;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lnf;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 12
    .line 13
    sget p1, Lcom/ferfalk/simplesearchview/SimpleSearchView;->O:I

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p0, Lbt3;

    .line 20
    .line 21
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 28
    .line 29
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 36
    .line 37
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 38
    .line 39
    new-instance p1, Lu45;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Q()Lif4;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lif4;->n:Landroid/widget/ImageView;

    .line 46
    .line 47
    const/16 v1, 0xc

    .line 48
    .line 49
    invoke-direct {p1, p0, v0, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0f001c

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ll90;->f(I)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lfs;

    .line 59
    .line 60
    const/4 v1, 0x7

    .line 61
    invoke-direct {v0, p0, v1}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p1, Ll90;->e:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p1}, Lu45;->j()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 71
    .line 72
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_4
    check-cast p0, Lsc3;

    .line 79
    .line 80
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_5
    check-cast p0, Lfh2;

    .line 85
    .line 86
    iget-object p1, p0, Lfh2;->k:La20;

    .line 87
    .line 88
    new-instance v0, Lly7;

    .line 89
    .line 90
    iget-object v1, p0, Lfh2;->p:Lkb2;

    .line 91
    .line 92
    iget-object v1, v1, Lkb2;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget-object v3, p0, Lfh2;->q:Lkb2;

    .line 101
    .line 102
    iget-object v3, v3, Lkb2;->d:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-direct {v0, v1, v3}, Lly7;-><init>(ZZ)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, La20;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Lol1;->j(Z)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_6
    check-cast p0, Luj1;

    .line 121
    .line 122
    iget-object p1, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 123
    .line 124
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    const v0, 0x7f1302f6

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lil0;->M(I)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lzn4;->a:Lzn4;

    .line 138
    .line 139
    new-instance p1, Ldk;

    .line 140
    .line 141
    const/16 v0, 0x10

    .line 142
    .line 143
    invoke-direct {p1, p0, v0}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void

    .line 150
    :pswitch_7
    check-cast p0, Llh;

    .line 151
    .line 152
    invoke-virtual {p0}, Llh;->invoke()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 157
    .line 158
    sget p1, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 159
    .line 160
    sget-object p1, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 161
    .line 162
    if-eqz p1, :cond_1

    .line 163
    .line 164
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_1

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    :cond_1
    const/16 p1, 0x64

    .line 175
    .line 176
    if-lt v0, p1, :cond_2

    .line 177
    .line 178
    const p1, 0x7f130341

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p1, " (100/100)"

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const/16 v0, 0xa

    .line 203
    .line 204
    invoke-static {p0, v1, p1, v0}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O()Lrs0;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const p1, 0x7f13042d

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 216
    .line 217
    .line 218
    sget-object p1, Lzn4;->a:Lzn4;

    .line 219
    .line 220
    new-instance p1, Lwm;

    .line 221
    .line 222
    invoke-direct {p1, p0, v1, v2}, Lwm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 226
    .line 227
    .line 228
    :goto_1
    return-void

    .line 229
    :pswitch_9
    check-cast p0, Luy;

    .line 230
    .line 231
    sget-object p1, Lxy;->Right:Lxy;

    .line 232
    .line 233
    sget-object v0, Luy$a;->Primary:Luy$a;

    .line 234
    .line 235
    invoke-virtual {p0, p1, v0}, Luy;->m(Lxy;Luy$a;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 240
    .line 241
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->M:Lzf;

    .line 242
    .line 243
    if-nez p1, :cond_3

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    new-instance v3, Lfg;

    .line 251
    .line 252
    const v4, 0x7f13004f

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Lmg;->l()Lbg;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-direct {v3, v4, v5}, Lfg;-><init>(ILbg;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v3}, Lmg;->o(Lig;)V

    .line 263
    .line 264
    .line 265
    sget-object v2, Lzn4;->a:Lzn4;

    .line 266
    .line 267
    new-instance v2, Lsf;

    .line 268
    .line 269
    invoke-direct {v2, p0, p1, v1, v0}, Lsf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 273
    .line 274
    .line 275
    :goto_2
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
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
