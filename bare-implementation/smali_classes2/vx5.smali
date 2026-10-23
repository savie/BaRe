.class public final Lvx5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lil0;

.field public final b:Le38;

.field public final c:Lcom/google/android/material/card/MaterialCardView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Lil0;Le38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvx5;->a:Lil0;

    .line 5
    .line 6
    iput-object p2, p0, Lvx5;->b:Le38;

    .line 7
    .line 8
    iget-object p1, p2, Le38;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 11
    .line 12
    iput-object p1, p0, Lvx5;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 13
    .line 14
    iget-object p1, p2, Le38;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p1, p0, Lvx5;->d:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object p1, p2, Le38;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lvx5;->e:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p1, p2, Le38;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    iput-object p1, p0, Lvx5;->f:Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lux5;ZLmt3;Lox;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const v0, 0x7f07005e

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const v0, 0x7f07005d

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lvx5;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ltu0;->v(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    const v0, 0x7f04014a

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v0, 0x7f0400bc

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lvx5;->d:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-static {v1}, Lsz8;->x(Landroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-static {v1}, Lsz8;->z(Landroid/content/Context;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lxx5;->a:[I

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    aget v2, v1, v2

    .line 91
    .line 92
    const/4 v3, 0x2

    .line 93
    const/4 v4, 0x1

    .line 94
    if-eq v2, v4, :cond_4

    .line 95
    .line 96
    if-ne v2, v3, :cond_3

    .line 97
    .line 98
    const v2, 0x7f1303fe

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    const v2, 0x7f1303fc

    .line 107
    .line 108
    .line 109
    :goto_3
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 110
    .line 111
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    aget v0, v1, v0

    .line 130
    .line 131
    if-eq v0, v4, :cond_6

    .line 132
    .line 133
    if-ne v0, v3, :cond_5

    .line 134
    .line 135
    const v0, 0x7f1303fd

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    const v0, 0x7f1303fb

    .line 144
    .line 145
    .line 146
    :goto_4
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "\n"

    .line 151
    .line 152
    filled-new-array {v1}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const/4 v2, 0x6

    .line 157
    invoke-static {v0, v1, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    const/4 v9, 0x0

    .line 162
    const/16 v10, 0x3c

    .line 163
    .line 164
    const-string v6, "\n\n"

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    move-object v7, v6

    .line 168
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Lf75;

    .line 173
    .line 174
    iget-object v2, p0, Lvx5;->a:Lil0;

    .line 175
    .line 176
    const/16 v3, 0x3e

    .line 177
    .line 178
    invoke-direct {v1, v2, v3}, Lf75;-><init>(Lk28;I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v1, Lf75;->e:Lbp0;

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lbp0;->e(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v1, p0, Lvx5;->e:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    sget-object v0, Lux5;->USER_PASSWORD:Lux5;

    .line 193
    .line 194
    if-ne p1, v0, :cond_7

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    const/4 v4, 0x0

    .line 198
    :goto_5
    iget-object v0, p0, Lvx5;->f:Lcom/google/android/material/button/MaterialButton;

    .line 199
    .line 200
    invoke-static {v0, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    .line 211
    .line 212
    if-eqz p2, :cond_8

    .line 213
    .line 214
    const/high16 p2, 0x3f800000    # 1.0f

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_8
    const p2, 0x3f19999a    # 0.6f

    .line 218
    .line 219
    .line 220
    :goto_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 221
    .line 222
    .line 223
    const p2, 0x7f1304ef

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    if-eqz p4, :cond_9

    .line 241
    .line 242
    new-instance p2, Lof;

    .line 243
    .line 244
    const/16 v1, 0x8

    .line 245
    .line 246
    invoke-direct {p2, p4, v1}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_9
    const/4 p2, 0x0

    .line 251
    :goto_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    :cond_a
    iget-object p0, p0, Lvx5;->b:Le38;

    .line 255
    .line 256
    iget-object p0, p0, Le38;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 259
    .line 260
    new-instance p2, Lm51;

    .line 261
    .line 262
    const/4 p4, 0x5

    .line 263
    invoke-direct {p2, p4, p3, p1}, Lm51;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method
