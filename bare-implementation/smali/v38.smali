.class public final Lv38;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ln38;


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public final a:Landroid/widget/LinearLayout;

.field public final b:Lj38;

.field public final c:Lq38;

.field public final d:Lr38;

.field public final e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final k:Landroid/widget/EditText;

.field public final n:Landroid/widget/EditText;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;

.field public final r:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lj38;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq38;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lq38;-><init>(Lv38;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv38;->c:Lq38;

    .line 10
    .line 11
    new-instance v1, Lr38;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lr38;-><init>(Lv38;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lv38;->d:Lr38;

    .line 17
    .line 18
    iput-object p1, p0, Lv38;->a:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    iput-object p2, p0, Lv38;->b:Lj38;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const v3, 0x7f0a0315

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 34
    .line 35
    iput-object v3, p0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 36
    .line 37
    const v4, 0x7f0a0312

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 45
    .line 46
    iput-object v4, p0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 47
    .line 48
    const v5, 0x7f0a0314

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v7, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 56
    .line 57
    check-cast v6, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v6, p0, Lv38;->p:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-object v8, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    .line 67
    check-cast v5, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v5, p0, Lv38;->q:Landroid/widget/TextView;

    .line 70
    .line 71
    const v9, 0x7f130339

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    const/4 v10, 0x2

    .line 82
    invoke-virtual {v6, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 83
    .line 84
    .line 85
    const v6, 0x7f130336

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iput-object v5, p0, Lv38;->r:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iput-object v5, p0, Lv38;->t:Ljava/lang/String;

    .line 109
    .line 110
    const v5, 0x7f13033a

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iput-object v5, p0, Lv38;->x:Ljava/lang/String;

    .line 118
    .line 119
    const v5, 0x7f130337

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    iput-object v5, p0, Lv38;->y:Ljava/lang/String;

    .line 127
    .line 128
    const v5, 0x7f130338

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iput-object v5, p0, Lv38;->G:Ljava/lang/String;

    .line 136
    .line 137
    const/16 v5, 0xc

    .line 138
    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const v10, 0x7f0a0446

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v10, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const/16 v5, 0xa

    .line 150
    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v4, v10, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget v5, p2, Lj38;->a:I

    .line 159
    .line 160
    if-nez v5, :cond_2

    .line 161
    .line 162
    const v5, 0x7f0a0311

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 170
    .line 171
    iput-object v5, p0, Lv38;->H:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 172
    .line 173
    new-instance v10, Lp38;

    .line 174
    .line 175
    invoke-direct {v10, p0}, Lp38;-><init>(Lv38;)V

    .line 176
    .line 177
    .line 178
    iget-object v5, v5, Lcom/google/android/material/button/MaterialButtonToggleGroup;->M:Ljava/util/LinkedHashSet;

    .line 179
    .line 180
    invoke-virtual {v5, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    iget-object v5, p0, Lv38;->H:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 184
    .line 185
    const/4 v10, 0x0

    .line 186
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget-object v5, p0, Lv38;->H:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 190
    .line 191
    if-nez v5, :cond_0

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_0
    iget v10, p2, Lj38;->e:I

    .line 195
    .line 196
    if-nez v10, :cond_1

    .line 197
    .line 198
    const v10, 0x7f0a030f

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_1
    const v10, 0x7f0a0310

    .line 203
    .line 204
    .line 205
    :goto_0
    const/4 v11, 0x1

    .line 206
    invoke-virtual {v5, v10, v11}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n(IZ)V

    .line 207
    .line 208
    .line 209
    :cond_2
    :goto_1
    new-instance v5, Li00;

    .line 210
    .line 211
    const/16 v10, 0xe

    .line 212
    .line 213
    invoke-direct {v5, p0, v10}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iput-object v5, p0, Lv38;->n:Landroid/widget/EditText;

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    new-instance v11, Lu38;

    .line 233
    .line 234
    invoke-direct {v11, v10, v6}, Lu38;-><init>(Landroid/content/res/Resources;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    iput-object v6, p0, Lv38;->k:Landroid/widget/EditText;

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    new-instance v11, Lu38;

    .line 251
    .line 252
    invoke-direct {v11, v10, v9}, Lu38;-><init>(Landroid/content/res/Resources;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 256
    .line 257
    .line 258
    new-instance v9, Lo38;

    .line 259
    .line 260
    invoke-direct {v9, v4, v3, p2}, Lo38;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lj38;)V

    .line 261
    .line 262
    .line 263
    new-instance v10, Ls38;

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-direct {v10, v11, v2, p2}, Ls38;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lj38;)V

    .line 270
    .line 271
    .line 272
    iget-object v4, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/chip/Chip;

    .line 273
    .line 274
    invoke-static {v4, v10}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 275
    .line 276
    .line 277
    new-instance v4, Lt38;

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-direct {v4, p1, v2, p2}, Lt38;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lj38;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/chip/Chip;

    .line 287
    .line 288
    invoke-static {p1, v4}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, p2}, Lv38;->h(Lj38;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const p2, 0x10000005

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 312
    .line 313
    .line 314
    const p2, 0x10000006

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 327
    .line 328
    .line 329
    return-void
.end method

.method public static a(Lv38;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv38;->q:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v2, p0, Lv38;->b:Lj38;

    .line 10
    .line 11
    iget v2, v2, Lj38;->a:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lv38;->G:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lv38;->y:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lv38;->i(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static i(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v1, 0x11

    .line 12
    .line 13
    :goto_0
    const/16 v2, 0x1b

    .line 14
    .line 15
    const/16 v3, 0x9

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    if-ge v0, v2, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    if-eq v1, v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v4

    .line 31
    :cond_2
    :goto_1
    if-ne v1, v4, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 35
    .line 36
    .line 37
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "accessibility"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "audio"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/media/AudioManager;

    .line 69
    .line 70
    if-eqz p0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv38;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv38;->b:Lj38;

    .line 8
    .line 9
    iget v0, v0, Lj38;->d:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lv38;->f(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object p0, p0, Lv38;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    const/16 v0, 0x8

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv38;->q:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object p0, p0, Lv38;->t:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv38;->p:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object p0, p0, Lv38;->r:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv38;->b:Lj38;

    .line 2
    .line 3
    iput p1, v0, Lj38;->d:I

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget-object v4, p0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    move v2, v3

    .line 24
    :cond_1
    iget-object p1, p0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lv38;->H:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 30
    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget p1, v0, Lj38;->e:I

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    const p1, 0x7f0a030f

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const p1, 0x7f0a0310

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n(IZ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv38;->b:Lj38;

    .line 2
    .line 3
    iget v1, v0, Lj38;->d:I

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    move v1, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    iget-object v2, p0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, v0, Lj38;->d:I

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    move v3, v4

    .line 26
    :cond_1
    iget-object p0, p0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h(Lj38;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv38;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    iget-object v1, p0, Lv38;->d:Lr38;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lv38;->k:Landroid/widget/EditText;

    .line 9
    .line 10
    iget-object v3, p0, Lv38;->c:Lq38;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Lv38;->a:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 26
    .line 27
    iget v5, p1, Lj38;->c:I

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "%02d"

    .line 38
    .line 39
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1}, Lj38;->e()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v6, p0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 60
    .line 61
    invoke-virtual {v6, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->b(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    .line 74
    .line 75
    iget p1, p1, Lj38;->d:I

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lv38;->f(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv38;->b:Lj38;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lv38;->h(Lj38;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
