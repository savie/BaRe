.class public final synthetic Lu14;
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
    iput p2, p0, Lu14;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu14;->b:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Lu14;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object p0, p0, Lu14;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 14
    .line 15
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 16
    .line 17
    new-instance v0, Las8;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lur8;->f:Lyr8;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, p0, v1, v2}, Las8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Lyr8;Liu8;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 34
    .line 35
    sget-object v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-object p0, p0, Lno8;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 42
    .line 43
    invoke-static {p0, v4}, Lsz8;->e0(Landroid/view/View;Z)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_1
    check-cast p0, Lzn7;

    .line 48
    .line 49
    invoke-virtual {p0}, Lzn7;->v()Landroid/os/storage/StorageVolume;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v0, v3

    .line 61
    :goto_0
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v3, v0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lzn7;->n()Lq63;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-array v0, v4, [C

    .line 81
    .line 82
    const/16 v2, 0x2f

    .line 83
    .line 84
    aput-char v2, v0, v1

    .line 85
    .line 86
    invoke-static {p0, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0, v2}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string v0, "0"

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    move-object v3, p0

    .line 103
    :cond_3
    :goto_2
    return-object v3

    .line 104
    :pswitch_2
    return-object p0

    .line 105
    :pswitch_3
    check-cast p0, Lm37;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance v0, Lh47;

    .line 118
    .line 119
    invoke-direct {v0, p0, v4}, Lh47;-><init>(Lq47;Z)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    return-object v2

    .line 126
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 127
    .line 128
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 129
    .line 130
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iget-object p0, p0, Lf37;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 138
    .line 139
    sget v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 140
    .line 141
    new-instance v0, Lbs6;

    .line 142
    .line 143
    invoke-direct {v0, p0, v4}, Lbs6;-><init>(Lk28;Z)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 148
    .line 149
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    iget-object p0, p0, Lli7;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 156
    .line 157
    return-object p0

    .line 158
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 159
    .line 160
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 161
    .line 162
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    iget-object p0, p0, Lub5;->k:Lx00;

    .line 167
    .line 168
    iget-object p0, p0, Lx00;->d:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 174
    .line 175
    sget v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 176
    .line 177
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->K:Lgv7;

    .line 178
    .line 179
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Lr55;

    .line 184
    .line 185
    iget-object p0, p0, Lr55;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 189
    .line 190
    sget v0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    const v0, 0x7f0d00e0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    const v0, 0x7f0a00a9

    .line 204
    .line 205
    .line 206
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const v1, 0x7f0a0403

    .line 217
    .line 218
    .line 219
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    if-eqz v2, :cond_5

    .line 226
    .line 227
    new-instance v3, Lot4;

    .line 228
    .line 229
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 230
    .line 231
    invoke-direct {v3, p0, v0, v2}, Lot4;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_5
    move v0, v1

    .line 236
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    const-string v0, "Missing required view with ID: "

    .line 245
    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_3
    return-object v3

    .line 254
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 255
    .line 256
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 257
    .line 258
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N:Lgv7;

    .line 259
    .line 260
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 265
    .line 266
    if-eqz v0, :cond_7

    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    if-eqz v4, :cond_7

    .line 273
    .line 274
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 275
    .line 276
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .line 282
    :cond_7
    if-eqz v3, :cond_8

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v3, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 289
    .line 290
    .line 291
    :cond_8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->O()Lar4;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->P()Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {v0, p0}, Lar4;->j(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)V

    .line 300
    .line 301
    .line 302
    return-object v2

    .line 303
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 304
    .line 305
    sget-object v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 306
    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_9

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    sget-object v0, Lzn4;->a:Lzn4;

    .line 319
    .line 320
    new-instance v0, Lvs;

    .line 321
    .line 322
    const/4 v1, 0x3

    .line 323
    invoke-direct {v0, p0, v3, v1}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 324
    .line 325
    .line 326
    invoke-static {v3, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 327
    .line 328
    .line 329
    :goto_4
    return-object v2

    .line 330
    :pswitch_c
    check-cast p0, Lq63;

    .line 331
    .line 332
    sget-boolean v0, Lq63;->d:Z

    .line 333
    .line 334
    invoke-virtual {p0, v4}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    return-object p0

    .line 339
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
