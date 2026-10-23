.class public final Lp60;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljb9;

.field public final c:Lda4;

.field public final d:Lcz4;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Lo60;

.field public h:I

.field public i:F

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljb9;Lcz4;Lda4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lp60;->k:Z

    .line 6
    .line 7
    iput-object p1, p0, Lp60;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lp60;->b:Ljb9;

    .line 10
    .line 11
    iput-object p3, p0, Lp60;->d:Lcz4;

    .line 12
    .line 13
    iput-object p4, p0, Lp60;->c:Lda4;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lp60;->e:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final b()V
    .locals 9

    .line 1
    iget v0, p0, Lp60;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp60;->j:Z

    .line 8
    .line 9
    iget-object v2, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-direct {v3, v1, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iput-boolean v1, p0, Lp60;->j:Z

    .line 54
    .line 55
    iget-object v0, p0, Lp60;->d:Lcz4;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v2, p0, Lp60;->h:I

    .line 67
    .line 68
    iget v3, p0, Lp60;->i:F

    .line 69
    .line 70
    iget-object v4, p0, Lp60;->c:Lda4;

    .line 71
    .line 72
    const/high16 v5, 0x3f000000    # 0.5f

    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-le v3, v2, :cond_8

    .line 81
    .line 82
    int-to-float v3, v3

    .line 83
    int-to-float v4, v2

    .line 84
    div-float/2addr v3, v4

    .line 85
    new-instance v4, Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    div-float/2addr v0, v3

    .line 93
    add-float/2addr v0, v5

    .line 94
    float-to-int v0, v0

    .line 95
    invoke-direct {v4, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 96
    .line 97
    .line 98
    move-object v0, v4

    .line 99
    goto :goto_5

    .line 100
    :cond_3
    iget-object v6, v4, Lda4;->a:Lca4;

    .line 101
    .line 102
    iget-object v4, v4, Lda4;->b:Lca4;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    int-to-float v7, v7

    .line 113
    int-to-float v8, v8

    .line 114
    div-float/2addr v7, v8

    .line 115
    const-string v8, "%"

    .line 116
    .line 117
    if-eqz v6, :cond_7

    .line 118
    .line 119
    iget-object v0, v6, Lca4;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    int-to-float v0, v2

    .line 128
    iget v2, v6, Lca4;->a:F

    .line 129
    .line 130
    const/high16 v6, 0x42c80000    # 100.0f

    .line 131
    .line 132
    div-float/2addr v2, v6

    .line 133
    mul-float/2addr v2, v0

    .line 134
    add-float/2addr v2, v5

    .line 135
    float-to-int v0, v2

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-static {v6, v3}, Lcz4;->j(Lca4;F)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    :goto_1
    if-eqz v4, :cond_6

    .line 142
    .line 143
    iget-object v2, v4, Lca4;->b:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-static {v4, v3}, Lcz4;->j(Lca4;F)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    goto :goto_3

    .line 157
    :cond_6
    :goto_2
    int-to-float v2, v0

    .line 158
    div-float/2addr v2, v7

    .line 159
    add-float/2addr v2, v5

    .line 160
    float-to-int v2, v2

    .line 161
    :goto_3
    new-instance v3, Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-direct {v3, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    .line 165
    .line 166
    :goto_4
    move-object v0, v3

    .line 167
    goto :goto_5

    .line 168
    :cond_7
    if-eqz v4, :cond_8

    .line 169
    .line 170
    iget-object v2, v4, Lca4;->b:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_8

    .line 177
    .line 178
    invoke-static {v4, v3}, Lcz4;->j(Lca4;F)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    int-to-float v2, v0

    .line 183
    mul-float/2addr v2, v7

    .line 184
    add-float/2addr v2, v5

    .line 185
    float-to-int v2, v2

    .line 186
    new-instance v3, Landroid/graphics/Rect;

    .line 187
    .line 188
    invoke-direct {v3, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    :goto_5
    iget-object v1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    iget-object v2, p0, Lp60;->g:Lo60;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lo60;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lo60;-><init>(Lp60;Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iput-object v1, p0, Lp60;->g:Lo60;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lp60;->g:Lo60;

    .line 17
    .line 18
    iget-object v1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    iget-object v2, p0, Lp60;->b:Ljb9;

    .line 21
    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    iget-object v0, p0, Lp60;->g:Lo60;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lp60;->e:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 51
    :goto_2
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lp60;->g:Lo60;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    instance-of v1, p1, Landroid/graphics/drawable/Animatable;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget-boolean v1, p0, Lp60;->k:Z

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 69
    .line 70
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 71
    .line 72
    .line 73
    :cond_4
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v2, p0}, Ljb9;->G(Lp60;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    return-void

    .line 79
    :cond_6
    if-eqz v1, :cond_7

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 91
    .line 92
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput-boolean v0, p0, Lp60;->k:Z

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-virtual {v2, p0}, Ljb9;->g(Lp60;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp60;->k:Z

    .line 3
    .line 4
    iget-object v0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {p0}, Lp60;->b()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp60;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp60;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp60;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp60;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x2

    .line 15
    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AsyncDrawable{destination=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lp60;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', imageSize="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lp60;->c:Lda4;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", result="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lp60;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", canvasWidth="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lp60;->h:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", textSize="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lp60;->i:F

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", waitingForDimensions="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean p0, p0, Lp60;->j:Z

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 p0, 0x7d

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
