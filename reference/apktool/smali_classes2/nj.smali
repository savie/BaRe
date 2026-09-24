.class public final Lnj;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Lnj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lnj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lnj;

    .line 9
    .line 10
    check-cast p0, Lpp8;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lnj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lnj;

    .line 18
    .line 19
    check-cast p0, Leb2;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lnj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lnj;

    .line 27
    .line 28
    check-cast p0, Lrj;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lnj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnj;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnj;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lnj;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lnj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lnj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lnj;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lnj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lnj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Lnj;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p0, Lpp8;

    .line 15
    .line 16
    iget-object p1, p0, Lpp8;->p:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    iget-boolean v0, p0, Lpp8;->q:Z

    .line 19
    .line 20
    iget-object v3, p0, Lpp8;->n:Lgv7;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/WallpaperManager;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/WallpaperManager;

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p1, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    .line 51
    .line 52
    iput-boolean v1, p0, Lpp8;->q:Z

    .line 53
    .line 54
    :cond_0
    move v1, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/app/WallpaperManager;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eq v6, v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    .line 74
    .line 75
    move v4, v1

    .line 76
    :cond_2
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/app/WallpaperManager;

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eq v3, v0, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    .line 94
    .line 95
    :goto_0
    if-eqz v1, :cond_3

    .line 96
    .line 97
    sget-object p1, Lzn4;->a:Lzn4;

    .line 98
    .line 99
    new-instance p1, Llb2;

    .line 100
    .line 101
    const/4 v0, 0x3

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-direct {p1, p0, v1, v0}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {p0}, Lpp8;->k()V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lua1;->g:Lua1;

    .line 117
    .line 118
    check-cast p0, Leb2;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {p0}, Lua1;->q(Leb2;)Lji;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-eqz p0, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0}, Lji;->getItemId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    iget-object v0, p1, Ldv;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p0}, Lji;->asString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v4, "onChildAdded = "

    .line 149
    .line 150
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ldv;->k(Lji;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_1
    return-object v2

    .line 167
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    sget-boolean p1, Lhp0;->a:Z

    .line 171
    .line 172
    check-cast p0, Lrj;

    .line 173
    .line 174
    iget-object p1, p0, Lrj;->f:Lji;

    .line 175
    .line 176
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Lhp0;->b(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    xor-int/lit8 v3, v0, 0x1

    .line 188
    .line 189
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4, v0}, Lhp0;->a(Ljava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {p1}, Lhp0;->b(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    xor-int/2addr p1, v1

    .line 208
    if-eq v3, p1, :cond_6

    .line 209
    .line 210
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->T()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lrj;->I()V

    .line 214
    .line 215
    .line 216
    :cond_6
    return-object v2

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
