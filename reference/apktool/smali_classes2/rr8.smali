.class public final synthetic Lrr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrr8;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrr8;->b:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lrr8;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lrr8;->b:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lau8;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W:Lgv7;

    .line 13
    .line 14
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Las8;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Las8;->j:Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    iget-object v2, p0, Las8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 26
    .line 27
    iget-object v3, p0, Las8;->i:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v4, p0, Las8;->h:Lzx2;

    .line 30
    .line 31
    iget-object v4, v4, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    iget-object v5, p0, Las8;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    iget-object v6, p0, Las8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 36
    .line 37
    sget-object v7, Lyt8;->a:Lyt8;

    .line 38
    .line 39
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/16 v10, 0x8

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0, v8}, Las8;->a(Ljava/lang/Integer;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v6}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_0
    instance-of v7, p1, Lwt8;

    .line 67
    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v8}, Las8;->a(Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    const p0, 0x7f1303bd

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(I)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_1
    instance-of v7, p1, Lzt8;

    .line 91
    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    move-object v0, p1

    .line 95
    check-cast v0, Lzt8;

    .line 96
    .line 97
    iget-object v0, v0, Lzt8;->a:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {p0, v3}, Las8;->a(Ljava/lang/Integer;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lh71;

    .line 120
    .line 121
    invoke-static {v2, v0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->V(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/List;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v3, v2, v0}, Lh71;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/ArrayList;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lzr8;

    .line 129
    .line 130
    invoke-direct {v0, p0, p1}, Lzr8;-><init>(Las8;Lau8;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v3, Lh71;->g:Lqt3;

    .line 134
    .line 135
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Las8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 139
    .line 140
    const v2, 0x7f1301e2

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lzf1;

    .line 147
    .line 148
    const/16 v3, 0xc

    .line 149
    .line 150
    invoke-direct {v2, p0, v3}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Las8;->g:Lcom/google/android/material/button/MaterialButton;

    .line 157
    .line 158
    iget-object v2, p0, Las8;->k:Lus8;

    .line 159
    .line 160
    iget-object v2, v2, Lus8;->b:Ldt8;

    .line 161
    .line 162
    invoke-interface {v2}, Ldt8;->c()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_2

    .line 167
    .line 168
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_2
    const v2, 0x7f13045b

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lh10;

    .line 179
    .line 180
    const/4 v3, 0x7

    .line 181
    invoke-direct {v2, v3, p0, p1}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    instance-of v2, p1, Lxt8;

    .line 189
    .line 190
    if-eqz v2, :cond_5

    .line 191
    .line 192
    invoke-virtual {p0, v8}, Las8;->a(Ljava/lang/Integer;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    check-cast p1, Lxt8;

    .line 205
    .line 206
    iget-boolean v2, p1, Lxt8;->b:Z

    .line 207
    .line 208
    const/16 v4, 0x10

    .line 209
    .line 210
    if-eqz v2, :cond_4

    .line 211
    .line 212
    const v2, 0x7f1303c8

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    const v2, 0x7f13049a

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Li00;

    .line 228
    .line 229
    invoke-direct {v2, p0, v4}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    :cond_4
    iget-boolean p1, p1, Lxt8;->a:Z

    .line 236
    .line 237
    if-eqz p1, :cond_6

    .line 238
    .line 239
    const p1, 0x7f13016d

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    const p1, 0x7f1301b4

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    .line 253
    .line 254
    new-instance p1, Les;

    .line 255
    .line 256
    invoke-direct {p1, p0, v4}, Les;-><init>(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 264
    .line 265
    .line 266
    move-object v1, v8

    .line 267
    :cond_6
    :goto_0
    return-object v1

    .line 268
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 269
    .line 270
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 271
    .line 272
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const/4 v2, 0x1

    .line 277
    iput-boolean v2, v0, Liu8;->l:Z

    .line 278
    .line 279
    iget v0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->R:I

    .line 280
    .line 281
    if-nez p1, :cond_7

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-ne v2, v0, :cond_8

    .line 289
    .line 290
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->T:Let8;

    .line 291
    .line 292
    if-eqz p1, :cond_a

    .line 293
    .line 294
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->e0(Let8;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_8
    :goto_1
    iget v0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->S:I

    .line 299
    .line 300
    if-nez p1, :cond_9

    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-ne p1, v0, :cond_a

    .line 308
    .line 309
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->T:Let8;

    .line 310
    .line 311
    if-eqz p1, :cond_a

    .line 312
    .line 313
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Z(Let8;)V

    .line 314
    .line 315
    .line 316
    :cond_a
    :goto_2
    return-object v1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
