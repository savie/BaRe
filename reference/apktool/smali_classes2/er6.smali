.class public abstract Ler6;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public P:Z

.field public final Q:I

.field public final R:I

.field public final S:I

.field public T:Lzn7;

.field public U:Lhq0;

.field public V:Lmt3;

.field public W:Lmt3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4ed

    .line 5
    .line 6
    iput v0, p0, Ler6;->Q:I

    .line 7
    .line 8
    const/16 v0, 0x2006

    .line 9
    .line 10
    iput v0, p0, Ler6;->R:I

    .line 11
    .line 12
    const/16 v0, 0x5cd

    .line 13
    .line 14
    iput v0, p0, Ler6;->S:I

    .line 15
    .line 16
    return-void
.end method

.method public static final X(Lzn7;Ler6;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lzn7;->c()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p1, Ler6;->Q:I

    .line 6
    .line 7
    invoke-virtual {p1, p0, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    move-object p0, v0

    .line 13
    move-object v3, p0

    .line 14
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 15
    .line 16
    invoke-virtual {p1}, Lk28;->r()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v2, "requestStorageAccess"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {p1, v1, p0, v0}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final U(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    move-object v3, v0

    .line 7
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v5, 0x8

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v2, p3

    .line 18
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    instance-of p1, v3, Landroid/content/ActivityNotFoundException;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "System file picker not found."

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p2, Lgo0;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lgo0;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lqo0;->e()Lix6;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p2}, Lix6;->k(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final V(Ljava/lang/String;Ljava/lang/String;Lmt3;)V
    .locals 1

    .line 1
    iput-object p3, p0, Ler6;->V:Lmt3;

    .line 2
    .line 3
    new-instance p3, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    .line 6
    .line 7
    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "android.intent.category.OPENABLE"

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p1, "android.intent.extra.TITLE"

    .line 19
    .line 20
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget p1, p0, Ler6;->R:I

    .line 24
    .line 25
    const-string p2, "requestCreateFile"

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3, p2}, Ler6;->U(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final W(Ljava/lang/String;Lmt3;)V
    .locals 1

    .line 1
    iput-object p2, p0, Ler6;->W:Lmt3;

    .line 2
    .line 3
    new-instance p2, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "android.intent.category.OPENABLE"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget p1, p0, Ler6;->S:I

    .line 19
    .line 20
    const-string v0, "requestPickFile"

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v0}, Ler6;->U(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    iget v0, p0, Ler6;->Q:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne p1, v0, :cond_4

    .line 5
    .line 6
    if-eq p2, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Ler6;->T:Lzn7;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_1
    if-eqz p3, :cond_a

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 27
    .line 28
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Uri for requestCodeStorageAccess: "

    .line 35
    .line 36
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x4

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lzn7;->g()Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p3, 0x3

    .line 63
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    move-object p1, v0

    .line 69
    move-object v3, p1

    .line 70
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 71
    .line 72
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/16 v5, 0x8

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v2, "saveUriPermission"

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object p0, p0, Ler6;->U:Lhq0;

    .line 86
    .line 87
    if-eqz p0, :cond_a

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Lhq0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_3
    iget-object p1, p1, Lzn7;->f:Lgv7;

    .line 95
    .line 96
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const p2, 0x7f130546

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance p2, Ll30;

    .line 117
    .line 118
    const/16 p3, 0xf

    .line 119
    .line 120
    invoke-direct {p2, p3, p0, p1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p2}, Lzn4;->e(Lbt3;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    iget v0, p0, Ler6;->S:I

    .line 128
    .line 129
    if-ne p1, v0, :cond_7

    .line 130
    .line 131
    if-eq p2, v1, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    if-eqz p3, :cond_a

    .line 135
    .line 136
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_6

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 144
    .line 145
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string p3, "Uri for requestCodePickFile: "

    .line 152
    .line 153
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const/4 v4, 0x4

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v3, 0x0

    .line 166
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    new-instance p2, Lzg7;

    .line 170
    .line 171
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object p0, p2, Lzg7;->a:Ler6;

    .line 175
    .line 176
    iput-object p1, p2, Lzg7;->b:Landroid/net/Uri;

    .line 177
    .line 178
    iget-object p0, p0, Ler6;->W:Lmt3;

    .line 179
    .line 180
    if-eqz p0, :cond_a

    .line 181
    .line 182
    invoke-interface {p0, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    iget v0, p0, Ler6;->R:I

    .line 187
    .line 188
    if-ne p1, v0, :cond_b

    .line 189
    .line 190
    if-eq p2, v1, :cond_8

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    if-eqz p3, :cond_a

    .line 194
    .line 195
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-nez p1, :cond_9

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_9
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 203
    .line 204
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string p3, "Uri for requestCodeCreateFile: "

    .line 211
    .line 212
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const/4 v4, 0x4

    .line 223
    const/4 v5, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    new-instance p2, Lzg7;

    .line 229
    .line 230
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object p0, p2, Lzg7;->a:Ler6;

    .line 234
    .line 235
    iput-object p1, p2, Lzg7;->b:Landroid/net/Uri;

    .line 236
    .line 237
    iget-object p0, p0, Ler6;->V:Lmt3;

    .line 238
    .line 239
    if-eqz p0, :cond_a

    .line 240
    .line 241
    invoke-interface {p0, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_a
    :goto_1
    return-void

    .line 245
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lsa1;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method
