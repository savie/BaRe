.class public final Lorg/swiftapps/swiftbackup/settings/h;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcj5;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;Lcj5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/h;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/h;->a:Lcj5;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Lorg/swiftapps/swiftbackup/settings/h;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;ZLmt3;Leh2;I)V
    .locals 6

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    new-instance p4, Lgf1;

    .line 6
    .line 7
    const/4 p5, 0x3

    .line 8
    invoke-direct {p4, p5}, Lgf1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    move-object v4, p4

    .line 12
    new-instance v5, Lhw;

    .line 13
    .line 14
    const/4 p4, 0x5

    .line 15
    invoke-direct {v5, p4}, Lhw;-><init>(I)V

    .line 16
    .line 17
    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move-object v3, p3

    .line 22
    invoke-virtual/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/h;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;ZLmt3;Lmt3;Lmt3;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;ZLmt3;Lmt3;Lmt3;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/h;->a:Lcj5;

    .line 8
    .line 9
    iget-object v1, v0, Lcj5;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    iget-object v2, v0, Lcj5;->k:Landroid/widget/RadioGroup;

    .line 12
    .line 13
    iget-object v3, v0, Lcj5;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 14
    .line 15
    iget-object v4, v0, Lcj5;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const v6, 0x7f07005e

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v6, 0x7f07005d

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-static {v6}, Ltu0;->v(F)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v4, v6}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    const v6, 0x7f04014a

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const v6, 0x7f0400bc

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-static {v5, v6}, Lsz8;->y(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v4, v6}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object v7, v0, Lcj5;->r:Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-static {v5}, Lsz8;->x(Landroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-static {v5}, Lsz8;->z(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v8, 0x1

    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-static {v6, v5, v8, v9}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->displayTitle$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;ZILjava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v7, v0, Lcj5;->q:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-static {v6, v5, v8, v9}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->displaySubtitle$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;ZILjava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->isSingleBackup()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    const/16 v9, 0x8

    .line 109
    .line 110
    if-eqz v7, :cond_3

    .line 111
    .line 112
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_a

    .line 119
    .line 120
    :cond_3
    if-eqz p2, :cond_8

    .line 121
    .line 122
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcj5;->n:Lcom/google/android/material/slider/Slider;

    .line 126
    .line 127
    iget-object v7, v1, Lon0;->x:Ljava/util/ArrayList;

    .line 128
    .line 129
    iget-object v10, p0, Lorg/swiftapps/swiftbackup/settings/h;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 130
    .line 131
    iget-object v10, v10, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->R:Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    const/high16 v11, 0x40000000    # 2.0f

    .line 149
    .line 150
    cmpg-float v10, v10, v11

    .line 151
    .line 152
    if-nez v10, :cond_4

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    invoke-virtual {v1, v11}, Lcom/google/android/material/slider/Slider;->setValueFrom(F)V

    .line 156
    .line 157
    .line 158
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    const/high16 v11, 0x41200000    # 10.0f

    .line 163
    .line 164
    cmpg-float v10, v10, v11

    .line 165
    .line 166
    if-nez v10, :cond_5

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    invoke-virtual {v1, v11}, Lcom/google/android/material/slider/Slider;->setValueTo(F)V

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getStepSize()F

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    const/high16 v11, 0x3f800000    # 1.0f

    .line 177
    .line 178
    cmpg-float v10, v10, v11

    .line 179
    .line 180
    if-nez v10, :cond_6

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_6
    invoke-virtual {v1, v11}, Lcom/google/android/material/slider/Slider;->setStepSize(F)V

    .line 184
    .line 185
    .line 186
    :goto_5
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    int-to-float v10, v10

    .line 191
    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValue()F

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    cmpg-float v11, v11, v10

    .line 196
    .line 197
    if-nez v11, :cond_7

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_7
    invoke-virtual {v1, v10}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 201
    .line 202
    .line 203
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lzi5;

    .line 207
    .line 208
    move-object/from16 v10, p4

    .line 209
    .line 210
    invoke-direct {v1, v10, p0}, Lzi5;-><init>(Lmt3;Lorg/swiftapps/swiftbackup/settings/h;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_8
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    :goto_7
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v7, v0, Lcj5;->p:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    if-eqz p2, :cond_c

    .line 234
    .line 235
    instance-of p2, v6, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 236
    .line 237
    if-eqz p2, :cond_c

    .line 238
    .line 239
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    check-cast v6, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 243
    .line 244
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->getCondition()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/g;->a:[I

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    aget p2, v1, p2

    .line 255
    .line 256
    if-eq p2, v8, :cond_b

    .line 257
    .line 258
    const/4 v1, 0x2

    .line 259
    if-eq p2, v1, :cond_a

    .line 260
    .line 261
    const/4 v1, 0x3

    .line 262
    if-ne p2, v1, :cond_9

    .line 263
    .line 264
    iget-object p2, v0, Lcj5;->d:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 265
    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    goto :goto_8

    .line 271
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_a
    iget-object p2, v0, Lcj5;->f:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    goto :goto_8

    .line 282
    :cond_b
    iget-object p2, v0, Lcj5;->e:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 283
    .line 284
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    :goto_8
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eq v0, p2, :cond_d

    .line 293
    .line 294
    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_c
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    :cond_d
    :goto_9
    new-instance p2, Laj5;

    .line 302
    .line 303
    move-object/from16 v0, p5

    .line 304
    .line 305
    invoke-direct {p2, v0, p0}, Laj5;-><init>(Lmt3;Lorg/swiftapps/swiftbackup/settings/h;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 309
    .line 310
    .line 311
    :goto_a
    new-instance p0, Luf1;

    .line 312
    .line 313
    const/4 p2, 0x7

    .line 314
    invoke-direct {p0, p2, p3, p1}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    return-void
.end method
