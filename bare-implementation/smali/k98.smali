.class public final Lk98;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Lyl0;

.field public g:Lyl0;

.field public h:Lyl0;

.field public i:Lyl0;

.field public j:Lyl0;

.field public k:Lxh3;

.field public l:Lxh3;

.field public m:Lyl0;

.field public n:Lyl0;


# direct methods
.method public constructor <init>(Lmc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk98;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    iget-object v0, p1, Lmc;->a:Lzq8;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lzq8;->n()Lyl0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    iput-object v0, p0, Lk98;->f:Lyl0;

    .line 23
    .line 24
    iget-object v0, p1, Lmc;->b:Loc;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-interface {v0}, Loc;->n()Lyl0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    iput-object v0, p0, Lk98;->g:Lyl0;

    .line 35
    .line 36
    iget-object v0, p1, Lmc;->c:Lgc;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v0}, Lgc;->n()Lyl0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_2
    iput-object v0, p0, Lk98;->h:Lyl0;

    .line 47
    .line 48
    iget-object v0, p1, Lmc;->d:Lbc;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    move-object v0, v1

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v0}, Lbc;->n()Lyl0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_3
    iput-object v0, p0, Lk98;->i:Lyl0;

    .line 59
    .line 60
    iget-object v0, p1, Lmc;->f:Lbc;

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    move-object v0, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    invoke-virtual {v0}, Lbc;->n()Lyl0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lxh3;

    .line 71
    .line 72
    :goto_4
    iput-object v0, p0, Lk98;->k:Lxh3;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lk98;->b:Landroid/graphics/Matrix;

    .line 82
    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lk98;->c:Landroid/graphics/Matrix;

    .line 89
    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lk98;->d:Landroid/graphics/Matrix;

    .line 96
    .line 97
    const/16 v0, 0x9

    .line 98
    .line 99
    new-array v0, v0, [F

    .line 100
    .line 101
    iput-object v0, p0, Lk98;->e:[F

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    iput-object v1, p0, Lk98;->b:Landroid/graphics/Matrix;

    .line 105
    .line 106
    iput-object v1, p0, Lk98;->c:Landroid/graphics/Matrix;

    .line 107
    .line 108
    iput-object v1, p0, Lk98;->d:Landroid/graphics/Matrix;

    .line 109
    .line 110
    iput-object v1, p0, Lk98;->e:[F

    .line 111
    .line 112
    :goto_5
    iget-object v0, p1, Lmc;->g:Lbc;

    .line 113
    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    move-object v0, v1

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    invoke-virtual {v0}, Lbc;->n()Lyl0;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lxh3;

    .line 123
    .line 124
    :goto_6
    iput-object v0, p0, Lk98;->l:Lxh3;

    .line 125
    .line 126
    iget-object v0, p1, Lmc;->e:Ldc;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {v0}, Ldc;->n()Lyl0;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lk98;->j:Lyl0;

    .line 135
    .line 136
    :cond_7
    iget-object v0, p1, Lmc;->h:Lbc;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {v0}, Lbc;->n()Lyl0;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lk98;->m:Lyl0;

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_8
    iput-object v1, p0, Lk98;->m:Lyl0;

    .line 148
    .line 149
    :goto_7
    iget-object p1, p1, Lmc;->i:Lbc;

    .line 150
    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p1}, Lbc;->n()Lyl0;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lk98;->n:Lyl0;

    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    iput-object v1, p0, Lk98;->n:Lyl0;

    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method public final a(Lam0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk98;->j:Lyl0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk98;->m:Lyl0;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lk98;->n:Lyl0;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lk98;->f:Lyl0;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lk98;->g:Lyl0;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lk98;->h:Lyl0;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lk98;->i:Lyl0;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lk98;->k:Lxh3;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lam0;->g(Lyl0;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lk98;->l:Lxh3;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lam0;->g(Lyl0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b(Lul0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk98;->j:Lyl0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lk98;->m:Lyl0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lk98;->n:Lyl0;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lk98;->f:Lyl0;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lk98;->g:Lyl0;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p0, Lk98;->h:Lyl0;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p0, Lk98;->i:Lyl0;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 48
    .line 49
    .line 50
    :cond_6
    iget-object v0, p0, Lk98;->k:Lxh3;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lyl0;->a(Lul0;)V

    .line 55
    .line 56
    .line 57
    :cond_7
    iget-object p0, p0, Lk98;->l:Lxh3;

    .line 58
    .line 59
    if-eqz p0, :cond_8

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lyl0;->a(Lul0;)V

    .line 62
    .line 63
    .line 64
    :cond_8
    return-void
.end method

.method public final c(Lcd;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lf35;->a:Landroid/graphics/PointF;

    .line 13
    .line 14
    if-ne p2, v2, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lk98;->f:Lyl0;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    new-instance p2, Lxi8;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/PointF;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lk98;->f:Lyl0;

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    sget-object v2, Lf35;->b:Landroid/graphics/PointF;

    .line 40
    .line 41
    if-ne p2, v2, :cond_3

    .line 42
    .line 43
    iget-object p2, p0, Lk98;->g:Lyl0;

    .line 44
    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    new-instance p2, Lxi8;

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/PointF;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lk98;->g:Lyl0;

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    sget-object v2, Lf35;->c:Ljava/lang/Float;

    .line 67
    .line 68
    if-ne p2, v2, :cond_4

    .line 69
    .line 70
    iget-object v2, p0, Lk98;->g:Lyl0;

    .line 71
    .line 72
    instance-of v3, v2, Lck7;

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    check-cast v2, Lck7;

    .line 77
    .line 78
    iput-object p1, v2, Lck7;->m:Lcd;

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_4
    sget-object v2, Lf35;->d:Ljava/lang/Float;

    .line 83
    .line 84
    if-ne p2, v2, :cond_5

    .line 85
    .line 86
    iget-object v2, p0, Lk98;->g:Lyl0;

    .line 87
    .line 88
    instance-of v3, v2, Lck7;

    .line 89
    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    check-cast v2, Lck7;

    .line 93
    .line 94
    iput-object p1, v2, Lck7;->n:Lcd;

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_5
    sget-object v2, Lf35;->j:Lp27;

    .line 99
    .line 100
    if-ne p2, v2, :cond_7

    .line 101
    .line 102
    iget-object p2, p0, Lk98;->h:Lyl0;

    .line 103
    .line 104
    if-nez p2, :cond_6

    .line 105
    .line 106
    new-instance p2, Lxi8;

    .line 107
    .line 108
    new-instance v0, Lp27;

    .line 109
    .line 110
    invoke-direct {v0}, Lp27;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iput-object p2, p0, Lk98;->h:Lyl0;

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_6
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_7
    sget-object v2, Lf35;->k:Ljava/lang/Float;

    .line 126
    .line 127
    if-ne p2, v2, :cond_9

    .line 128
    .line 129
    iget-object p2, p0, Lk98;->i:Lyl0;

    .line 130
    .line 131
    if-nez p2, :cond_8

    .line 132
    .line 133
    new-instance p2, Lxi8;

    .line 134
    .line 135
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iput-object p2, p0, Lk98;->i:Lyl0;

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_8
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_9
    const/4 v2, 0x3

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-ne p2, v2, :cond_b

    .line 153
    .line 154
    iget-object p2, p0, Lk98;->j:Lyl0;

    .line 155
    .line 156
    if-nez p2, :cond_a

    .line 157
    .line 158
    new-instance p2, Lxi8;

    .line 159
    .line 160
    const/16 v0, 0x64

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iput-object p2, p0, Lk98;->j:Lyl0;

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_a
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_b
    sget-object v2, Lf35;->x:Ljava/lang/Float;

    .line 177
    .line 178
    if-ne p2, v2, :cond_d

    .line 179
    .line 180
    iget-object p2, p0, Lk98;->m:Lyl0;

    .line 181
    .line 182
    if-nez p2, :cond_c

    .line 183
    .line 184
    new-instance p2, Lxi8;

    .line 185
    .line 186
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iput-object p2, p0, Lk98;->m:Lyl0;

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_c
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_d
    sget-object v2, Lf35;->y:Ljava/lang/Float;

    .line 197
    .line 198
    if-ne p2, v2, :cond_f

    .line 199
    .line 200
    iget-object p2, p0, Lk98;->n:Lyl0;

    .line 201
    .line 202
    if-nez p2, :cond_e

    .line 203
    .line 204
    new-instance p2, Lxi8;

    .line 205
    .line 206
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iput-object p2, p0, Lk98;->n:Lyl0;

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_e
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_f
    sget-object v0, Lf35;->l:Ljava/lang/Float;

    .line 217
    .line 218
    if-ne p2, v0, :cond_11

    .line 219
    .line 220
    iget-object p2, p0, Lk98;->k:Lxh3;

    .line 221
    .line 222
    if-nez p2, :cond_10

    .line 223
    .line 224
    new-instance p2, Lxh3;

    .line 225
    .line 226
    new-instance v0, Lwo4;

    .line 227
    .line 228
    invoke-direct {v0, v1}, Lwo4;-><init>(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {p2, v0}, Lyl0;-><init>(Ljava/util/List;)V

    .line 236
    .line 237
    .line 238
    iput-object p2, p0, Lk98;->k:Lxh3;

    .line 239
    .line 240
    :cond_10
    iget-object p0, p0, Lk98;->k:Lxh3;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_11
    sget-object v0, Lf35;->m:Ljava/lang/Float;

    .line 247
    .line 248
    if-ne p2, v0, :cond_13

    .line 249
    .line 250
    iget-object p2, p0, Lk98;->l:Lxh3;

    .line 251
    .line 252
    if-nez p2, :cond_12

    .line 253
    .line 254
    new-instance p2, Lxh3;

    .line 255
    .line 256
    new-instance v0, Lwo4;

    .line 257
    .line 258
    invoke-direct {v0, v1}, Lwo4;-><init>(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-direct {p2, v0}, Lyl0;-><init>(Ljava/util/List;)V

    .line 266
    .line 267
    .line 268
    iput-object p2, p0, Lk98;->l:Lxh3;

    .line 269
    .line 270
    :cond_12
    iget-object p0, p0, Lk98;->l:Lxh3;

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 273
    .line 274
    .line 275
    :goto_0
    const/4 p0, 0x1

    .line 276
    return p0

    .line 277
    :cond_13
    const/4 p0, 0x0

    .line 278
    return p0
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lk98;->e:[F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput v2, v1, v0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final e()Landroid/graphics/Matrix;
    .locals 14

    .line 1
    iget-object v0, p0, Lk98;->a:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lk98;->g:Lyl0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lyl0;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/graphics/PointF;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 20
    .line 21
    cmpl-float v4, v3, v2

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    cmpl-float v4, v4, v2

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    :cond_0
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 32
    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lk98;->i:Lyl0;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    instance-of v3, v1, Lxi8;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lyl0;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Float;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    check-cast v1, Lxh3;

    .line 56
    .line 57
    invoke-virtual {v1}, Lxh3;->l()F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_0
    cmpl-float v3, v1, v2

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v1, p0, Lk98;->k:Lxh3;

    .line 69
    .line 70
    const/high16 v3, 0x3f800000    # 1.0f

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iget-object v4, p0, Lk98;->l:Lxh3;

    .line 75
    .line 76
    const/high16 v5, 0x42b40000    # 90.0f

    .line 77
    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    move v4, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v4}, Lxh3;->l()F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    neg-float v4, v4

    .line 87
    add-float/2addr v4, v5

    .line 88
    float-to-double v6, v4

    .line 89
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    double-to-float v4, v6

    .line 98
    :goto_1
    iget-object v6, p0, Lk98;->l:Lxh3;

    .line 99
    .line 100
    if-nez v6, :cond_5

    .line 101
    .line 102
    move v5, v3

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {v6}, Lxh3;->l()F

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    neg-float v6, v6

    .line 109
    add-float/2addr v6, v5

    .line 110
    float-to-double v5, v6

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    double-to-float v5, v5

    .line 120
    :goto_2
    invoke-virtual {v1}, Lxh3;->l()F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    float-to-double v6, v1

    .line 125
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    double-to-float v1, v6

    .line 134
    invoke-virtual {p0}, Lk98;->d()V

    .line 135
    .line 136
    .line 137
    iget-object v6, p0, Lk98;->e:[F

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    aput v4, v6, v7

    .line 141
    .line 142
    const/4 v8, 0x1

    .line 143
    aput v5, v6, v8

    .line 144
    .line 145
    neg-float v9, v5

    .line 146
    const/4 v10, 0x3

    .line 147
    aput v9, v6, v10

    .line 148
    .line 149
    const/4 v11, 0x4

    .line 150
    aput v4, v6, v11

    .line 151
    .line 152
    const/16 v12, 0x8

    .line 153
    .line 154
    aput v3, v6, v12

    .line 155
    .line 156
    iget-object v13, p0, Lk98;->b:Landroid/graphics/Matrix;

    .line 157
    .line 158
    invoke-virtual {v13, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lk98;->d()V

    .line 162
    .line 163
    .line 164
    aput v3, v6, v7

    .line 165
    .line 166
    aput v1, v6, v10

    .line 167
    .line 168
    aput v3, v6, v11

    .line 169
    .line 170
    aput v3, v6, v12

    .line 171
    .line 172
    iget-object v1, p0, Lk98;->c:Landroid/graphics/Matrix;

    .line 173
    .line 174
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lk98;->d()V

    .line 178
    .line 179
    .line 180
    aput v4, v6, v7

    .line 181
    .line 182
    aput v9, v6, v8

    .line 183
    .line 184
    aput v5, v6, v10

    .line 185
    .line 186
    aput v4, v6, v11

    .line 187
    .line 188
    aput v3, v6, v12

    .line 189
    .line 190
    iget-object v4, p0, Lk98;->d:Landroid/graphics/Matrix;

    .line 191
    .line 192
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 202
    .line 203
    .line 204
    :cond_6
    iget-object v1, p0, Lk98;->h:Lyl0;

    .line 205
    .line 206
    if-eqz v1, :cond_8

    .line 207
    .line 208
    invoke-virtual {v1}, Lyl0;->f()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lp27;

    .line 213
    .line 214
    iget v4, v1, Lp27;->a:F

    .line 215
    .line 216
    cmpl-float v5, v4, v3

    .line 217
    .line 218
    if-nez v5, :cond_7

    .line 219
    .line 220
    iget v5, v1, Lp27;->b:F

    .line 221
    .line 222
    cmpl-float v3, v5, v3

    .line 223
    .line 224
    if-eqz v3, :cond_8

    .line 225
    .line 226
    :cond_7
    iget v1, v1, Lp27;->b:F

    .line 227
    .line 228
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 229
    .line 230
    .line 231
    :cond_8
    iget-object p0, p0, Lk98;->f:Lyl0;

    .line 232
    .line 233
    if-eqz p0, :cond_a

    .line 234
    .line 235
    invoke-virtual {p0}, Lyl0;->f()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Landroid/graphics/PointF;

    .line 240
    .line 241
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 242
    .line 243
    cmpl-float v3, v1, v2

    .line 244
    .line 245
    if-nez v3, :cond_9

    .line 246
    .line 247
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 248
    .line 249
    cmpl-float v2, v3, v2

    .line 250
    .line 251
    if-eqz v2, :cond_a

    .line 252
    .line 253
    :cond_9
    neg-float v1, v1

    .line 254
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 255
    .line 256
    neg-float p0, p0

    .line 257
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 258
    .line 259
    .line 260
    :cond_a
    return-object v0
.end method

.method public final f(F)Landroid/graphics/Matrix;
    .locals 8

    .line 1
    iget-object v0, p0, Lk98;->g:Lyl0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lyl0;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/PointF;

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lk98;->h:Lyl0;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lyl0;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lp27;

    .line 25
    .line 26
    :goto_1
    iget-object v3, p0, Lk98;->a:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 34
    .line 35
    mul-float/2addr v4, p1

    .line 36
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    mul-float/2addr v0, p1

    .line 39
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget v0, v2, Lp27;->a:F

    .line 45
    .line 46
    float-to-double v4, v0

    .line 47
    float-to-double v6, p1

    .line 48
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    double-to-float v0, v4

    .line 53
    iget v2, v2, Lp27;->b:F

    .line 54
    .line 55
    float-to-double v4, v2

    .line 56
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    double-to-float v2, v4

    .line 61
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lk98;->i:Lyl0;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lyl0;->f()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Float;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object p0, p0, Lk98;->f:Lyl0;

    .line 79
    .line 80
    if-nez p0, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {p0}, Lyl0;->f()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    move-object v1, p0

    .line 88
    check-cast v1, Landroid/graphics/PointF;

    .line 89
    .line 90
    :goto_2
    mul-float/2addr v0, p1

    .line 91
    const/4 p0, 0x0

    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    move p1, p0

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget p1, v1, Landroid/graphics/PointF;->x:F

    .line 97
    .line 98
    :goto_3
    if-nez v1, :cond_6

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    iget p0, v1, Landroid/graphics/PointF;->y:F

    .line 102
    .line 103
    :goto_4
    invoke-virtual {v3, v0, p1, p0}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 104
    .line 105
    .line 106
    :cond_7
    return-object v3
.end method
