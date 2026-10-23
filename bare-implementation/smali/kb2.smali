.class public final Lkb2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 221
    new-array v1, v0, [I

    .line 222
    iput-object v1, p0, Lkb2;->a:Ljava/lang/Object;

    .line 223
    new-array v1, v0, [I

    .line 224
    iput-object v1, p0, Lkb2;->b:Ljava/lang/Object;

    .line 225
    new-array v1, v0, [I

    .line 226
    iput-object v1, p0, Lkb2;->c:Ljava/lang/Object;

    .line 227
    new-array v0, v0, [I

    .line 228
    iput-object v0, p0, Lkb2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lof5;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkb2;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lkb2;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance p1, Lpf5;

    .line 9
    .line 10
    const/16 v0, 0x400

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lpf5;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lkb2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p1, 0x6

    .line 18
    invoke-virtual {p2, p1}, La65;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v2, p2, La65;->a:I

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    iget-object v2, p2, La65;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, v0

    .line 37
    iget-object v0, p2, La65;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v0, v1

    .line 47
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    new-array v0, v0, [C

    .line 50
    .line 51
    iput-object v0, p0, Lkb2;->b:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, La65;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget v0, p2, La65;->a:I

    .line 60
    .line 61
    add-int/2addr p1, v0

    .line 62
    iget-object v0, p2, La65;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v0, p1

    .line 71
    iget-object p1, p2, La65;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move p1, v1

    .line 81
    :goto_1
    move p2, v1

    .line 82
    :goto_2
    if-ge p2, p1, :cond_7

    .line 83
    .line 84
    new-instance v0, Lad8;

    .line 85
    .line 86
    invoke-direct {v0, p0, p2}, Lad8;-><init>(Lkb2;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lad8;->b()Lnf5;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v3, 0x4

    .line 94
    invoke-virtual {v2, v3}, La65;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    iget-object v4, v2, La65;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    iget v2, v2, La65;->a:I

    .line 105
    .line 106
    add-int/2addr v3, v2

    .line 107
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    goto :goto_3

    .line 112
    :cond_2
    move v2, v1

    .line 113
    :goto_3
    iget-object v3, p0, Lkb2;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, [C

    .line 116
    .line 117
    mul-int/lit8 v4, p2, 0x2

    .line 118
    .line 119
    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lad8;->b()Lnf5;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/16 v3, 0x10

    .line 127
    .line 128
    invoke-virtual {v2, v3}, La65;->a(I)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_3

    .line 133
    .line 134
    iget v5, v2, La65;->a:I

    .line 135
    .line 136
    add-int/2addr v4, v5

    .line 137
    iget-object v5, v2, La65;->d:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    add-int/2addr v5, v4

    .line 146
    iget-object v2, v2, La65;->d:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    move v2, v1

    .line 156
    :goto_4
    const/4 v4, 0x1

    .line 157
    if-lez v2, :cond_4

    .line 158
    .line 159
    move v2, v4

    .line 160
    goto :goto_5

    .line 161
    :cond_4
    move v2, v1

    .line 162
    :goto_5
    if-eqz v2, :cond_6

    .line 163
    .line 164
    iget-object v2, p0, Lkb2;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v2, Lpf5;

    .line 167
    .line 168
    invoke-virtual {v0}, Lad8;->b()Lnf5;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5, v3}, La65;->a(I)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    iget v6, v5, La65;->a:I

    .line 179
    .line 180
    add-int/2addr v3, v6

    .line 181
    iget-object v6, v5, La65;->d:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    add-int/2addr v6, v3

    .line 190
    iget-object v3, v5, La65;->d:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    goto :goto_6

    .line 199
    :cond_5
    move v3, v1

    .line 200
    :goto_6
    sub-int/2addr v3, v4

    .line 201
    invoke-virtual {v2, v0, v1, v3}, Lpf5;->a(Lad8;II)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 p2, p2, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    const-string p0, "invalid metadata codepoint length"

    .line 208
    .line 209
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 p0, 0x0

    .line 213
    throw p0

    .line 214
    :cond_7
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lkb2;->a:Ljava/lang/Object;

    .line 217
    iput-object p2, p0, Lkb2;->b:Ljava/lang/Object;

    .line 218
    iput-object p3, p0, Lkb2;->c:Ljava/lang/Object;

    .line 219
    iput-object p4, p0, Lkb2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lic2;Ljava/util/List;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lkb2;->d:Ljava/lang/Object;

    .line 237
    new-instance p1, Lmj5;

    invoke-direct {p1}, Lmj5;-><init>()V

    .line 238
    iput-object p1, p0, Lkb2;->a:Ljava/lang/Object;

    .line 239
    invoke-static {}, Lly8;->a()Lbn1;

    move-result-object p1

    iput-object p1, p0, Lkb2;->b:Ljava/lang/Object;

    .line 240
    invoke-static {p2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkb2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly8;)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iget-object v0, p1, Ly8;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 231
    iput-object v0, p0, Lkb2;->a:Ljava/lang/Object;

    .line 232
    iget-object v0, p1, Ly8;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lkb2;->b:Ljava/lang/Object;

    .line 233
    iget-object v0, p1, Ly8;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkb2;->c:Ljava/lang/Object;

    .line 234
    iget-object p1, p1, Ly8;->c:Ljava/lang/Object;

    check-cast p1, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    iput-object p1, p0, Lkb2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(IIZLmt3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lkb2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lkb2;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lkb2;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    new-instance p2, Luf1;

    .line 31
    .line 32
    const/4 p3, 0x2

    .line 33
    invoke-direct {p2, p3, p0, p4}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public b(Lkv1;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lkb2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lic2;

    .line 4
    .line 5
    instance-of v1, p1, Lgb2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lgb2;

    .line 11
    .line 12
    iget v2, v1, Lgb2;->d:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lgb2;->d:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lgb2;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lgb2;-><init>(Lkb2;Lkv1;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, v1, Lgb2;->b:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Lgb2;->d:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object p0, v1, Lgb2;->a:Lkb2;

    .line 43
    .line 44
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_2
    iget-object p0, v1, Lgb2;->a:Lkb2;

    .line 55
    .line 56
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lkb2;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Ljava/util/List;

    .line 66
    .line 67
    sget-object v2, Lyx1;->a:Lyx1;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {v0}, Lic2;->g()Lsd4;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v5, Ljb2;

    .line 83
    .line 84
    invoke-direct {v5, v0, p0, v3}, Ljb2;-><init>(Lic2;Lkb2;Ljv1;)V

    .line 85
    .line 86
    .line 87
    iput-object p0, v1, Lgb2;->a:Lkb2;

    .line 88
    .line 89
    iput v4, v1, Lgb2;->d:I

    .line 90
    .line 91
    invoke-interface {p1, v5, v1}, Lsd4;->a(Lmt3;Lkv1;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-ne p1, v2, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    :goto_1
    check-cast p1, Lga2;

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    :goto_2
    iput-object p0, v1, Lgb2;->a:Lkb2;

    .line 102
    .line 103
    iput v5, v1, Lgb2;->d:I

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-static {v0, p1, v1}, Lic2;->f(Lic2;ZLkv1;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v2, :cond_7

    .line 111
    .line 112
    :goto_3
    return-object v2

    .line 113
    :cond_7
    :goto_4
    check-cast p1, Lga2;

    .line 114
    .line 115
    :goto_5
    iget-object p0, p0, Lkb2;->d:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p0, Lic2;

    .line 118
    .line 119
    iget-object p0, p0, Lic2;->h:Ltr9;

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ltr9;->f(Lem7;)V

    .line 122
    .line 123
    .line 124
    sget-object p0, Lbe8;->a:Lbe8;

    .line 125
    .line 126
    return-object p0
.end method

.method public c(Lkv1;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Ltq6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ltq6;

    .line 7
    .line 8
    iget v1, v0, Ltq6;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ltq6;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ltq6;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ltq6;-><init>(Lkb2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Ltq6;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Ltq6;->e:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    sget-object v4, Lbe8;->a:Lbe8;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    sget-object v6, Lyx1;->a:Lyx1;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Ltq6;->b:Lkj5;

    .line 43
    .line 44
    iget-object v0, v0, Ltq6;->a:Lkb2;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_4

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v5

    .line 58
    :cond_2
    iget-object p0, v0, Ltq6;->b:Lkj5;

    .line 59
    .line 60
    iget-object v1, v0, Ltq6;->a:Lkb2;

    .line 61
    .line 62
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object p1, p0

    .line 66
    move-object p0, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lkb2;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lbn1;

    .line 74
    .line 75
    invoke-virtual {p1}, Lci4;->E()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    return-object v4

    .line 82
    :cond_4
    iget-object p1, p0, Lkb2;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lmj5;

    .line 85
    .line 86
    iput-object p0, v0, Ltq6;->a:Lkb2;

    .line 87
    .line 88
    iput-object p1, v0, Ltq6;->b:Lkj5;

    .line 89
    .line 90
    iput v3, v0, Ltq6;->e:I

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v6, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    :goto_1
    :try_start_1
    iget-object v1, p0, Lkb2;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lbn1;

    .line 102
    .line 103
    invoke-virtual {v1}, Lci4;->E()Z

    .line 104
    .line 105
    .line 106
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-interface {p1, v5}, Lkj5;->b(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v4

    .line 113
    :cond_6
    :try_start_2
    iput-object p0, v0, Ltq6;->a:Lkb2;

    .line 114
    .line 115
    iput-object p1, v0, Ltq6;->b:Lkj5;

    .line 116
    .line 117
    iput v2, v0, Ltq6;->e:I

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lkb2;->b(Lkv1;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    if-ne v0, v6, :cond_7

    .line 124
    .line 125
    :goto_2
    return-object v6

    .line 126
    :cond_7
    move-object v0, p0

    .line 127
    move-object p0, p1

    .line 128
    :goto_3
    :try_start_3
    iget-object p1, v0, Lkb2;->b:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Lbn1;

    .line 131
    .line 132
    invoke-virtual {p1, v4}, Lci4;->G(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-interface {p0, v5}, Lkj5;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-object v4

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    move-object v7, p1

    .line 141
    move-object p1, p0

    .line 142
    move-object p0, v7

    .line 143
    :goto_4
    invoke-interface {p0, v5}, Lkj5;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    throw p1
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    return-object p0
.end method
