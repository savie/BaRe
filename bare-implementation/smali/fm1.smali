.class public final Lfm1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgm1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lgm1;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lfm1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v0, p0, Lfm1;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v0, p1, Lgm1;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lfm1;->d:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v0, p1, Lgm1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p0, Lfm1;->a:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v0, p1, Lgm1;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lfm1;->f:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object p1, p1, Lgm1;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object p1, p0, Lfm1;->e:Ljava/lang/Object;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f040129

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lsz8;->y(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const v2, 0x7f04012c

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Lsz8;->y(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lfm1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lfm1;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lfm1;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lfm1;->f:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lfm1;->e:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfm1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f04014a

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lsz8;->y(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const v2, 0x7f04011f

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Lsz8;->y(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lfm1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lfm1;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lfm1;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lfm1;->f:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lfm1;->e:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public c()Lgf9;
    .locals 10

    .line 1
    iget-object v0, p0, Lfm1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    iget-object v0, p0, Lfm1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v0, :cond_e

    .line 13
    .line 14
    iget-object v0, p0, Lfm1;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v0, :cond_d

    .line 19
    .line 20
    iget-object v0, p0, Lfm1;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v0, :cond_c

    .line 25
    .line 26
    iget-object v2, p0, Lfm1;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lff9;

    .line 29
    .line 30
    if-eqz v2, :cond_b

    .line 31
    .line 32
    iget-object v2, p0, Lfm1;->f:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lef9;

    .line 35
    .line 36
    if-eqz v2, :cond_a

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lfm1;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lff9;

    .line 45
    .line 46
    sget-object v4, Lff9;->c:Lff9;

    .line 47
    .line 48
    if-ne v3, v4, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x14

    .line 51
    .line 52
    if-gt v2, v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 56
    .line 57
    const-string v1, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 58
    .line 59
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    sget-object v4, Lff9;->d:Lff9;

    .line 72
    .line 73
    if-ne v3, v4, :cond_3

    .line 74
    .line 75
    const/16 v1, 0x1c

    .line 76
    .line 77
    if-gt v2, v1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 81
    .line 82
    const-string v1, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 83
    .line 84
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    sget-object v4, Lff9;->e:Lff9;

    .line 97
    .line 98
    if-ne v3, v4, :cond_5

    .line 99
    .line 100
    const/16 v1, 0x20

    .line 101
    .line 102
    if-gt v2, v1, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 106
    .line 107
    const-string v1, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 108
    .line 109
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_5
    sget-object v4, Lff9;->f:Lff9;

    .line 122
    .line 123
    if-ne v3, v4, :cond_7

    .line 124
    .line 125
    const/16 v1, 0x30

    .line 126
    .line 127
    if-gt v2, v1, :cond_6

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 131
    .line 132
    const-string v1, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 133
    .line 134
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_7
    sget-object v4, Lff9;->k:Lff9;

    .line 147
    .line 148
    if-ne v3, v4, :cond_9

    .line 149
    .line 150
    const/16 v1, 0x40

    .line 151
    .line 152
    if-gt v2, v1, :cond_8

    .line 153
    .line 154
    :goto_0
    new-instance v3, Lgf9;

    .line 155
    .line 156
    iget-object v0, p0, Lfm1;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iget-object v0, p0, Lfm1;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    iget-object v0, p0, Lfm1;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    iget-object v0, p0, Lfm1;->e:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    iget-object v0, p0, Lfm1;->f:Ljava/lang/Object;

    .line 189
    .line 190
    move-object v8, v0

    .line 191
    check-cast v8, Lef9;

    .line 192
    .line 193
    iget-object p0, p0, Lfm1;->a:Ljava/lang/Object;

    .line 194
    .line 195
    move-object v9, p0

    .line 196
    check-cast v9, Lff9;

    .line 197
    .line 198
    invoke-direct/range {v3 .. v9}, Lgf9;-><init>(IIIILef9;Lff9;)V

    .line 199
    .line 200
    .line 201
    return-object v3

    .line 202
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 203
    .line 204
    const-string v1, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 205
    .line 206
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_9
    const-string p0, "unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512"

    .line 219
    .line 220
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-object v1

    .line 224
    :cond_a
    const-string p0, "variant is not set"

    .line 225
    .line 226
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-object v1

    .line 230
    :cond_b
    const-string p0, "hash type is not set"

    .line 231
    .line 232
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object v1

    .line 236
    :cond_c
    const-string p0, "tag size is not set"

    .line 237
    .line 238
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-object v1

    .line 242
    :cond_d
    const-string p0, "iv size is not set"

    .line 243
    .line 244
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v1

    .line 248
    :cond_e
    const-string p0, "HMAC key size is not set"

    .line 249
    .line 250
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :cond_f
    const-string p0, "AES key size is not set"

    .line 255
    .line 256
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-object v1
.end method

.method public d(I)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    .line 25
    .line 26
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lfm1;->b:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lfm1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Invalid key size in bytes %d; HMAC key must be at least 16 bytes"

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public f(I)V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lfm1;->d:Ljava/lang/Object;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes"

    .line 27
    .line 28
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public g(I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lfm1;->e:Ljava/lang/Object;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Invalid tag size in bytes %d; must be at least 10 bytes"

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lfm1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    return-object p0
.end method
