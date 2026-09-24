.class public final Lic2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfb2;


# instance fields
.field public final a:Lx93;

.field public final b:Lnh;

.field public final c:Lxx1;

.field public final d:Ltr9;

.field public final e:Lmj5;

.field public f:I

.field public g:Lbl7;

.field public final h:Ltr9;

.field public final i:Lkb2;

.field public final j:Lgv7;

.field public final k:Lgv7;

.field public final l:Lkc;


# direct methods
.method public constructor <init>(Lx93;Ljava/util/List;Lnh;Lxx1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lic2;->a:Lx93;

    .line 5
    .line 6
    iput-object p3, p0, Lic2;->b:Lnh;

    .line 7
    .line 8
    iput-object p4, p0, Lic2;->c:Lxx1;

    .line 9
    .line 10
    new-instance p1, Lpb2;

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-direct {p1, p0, p3}, Lpb2;-><init>(Lic2;Ljv1;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ltr9;

    .line 17
    .line 18
    const/16 v1, 0xf

    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lic2;->d:Ltr9;

    .line 24
    .line 25
    new-instance p1, Lmj5;

    .line 26
    .line 27
    invoke-direct {p1}, Lmj5;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lic2;->e:Lmj5;

    .line 31
    .line 32
    new-instance p1, Ltr9;

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    invoke-direct {p1, v0}, Ltr9;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lic2;->h:Ltr9;

    .line 39
    .line 40
    new-instance p1, Lkb2;

    .line 41
    .line 42
    invoke-direct {p1, p0, p2}, Lkb2;-><init>(Lic2;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lic2;->i:Lkb2;

    .line 46
    .line 47
    new-instance p1, Lcg1;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-direct {p1, p0, p2}, Lcg1;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lgv7;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lic2;->j:Lgv7;

    .line 59
    .line 60
    new-instance p1, Lk7;

    .line 61
    .line 62
    invoke-direct {p1, p0, p2}, Lk7;-><init>(Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lgv7;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lic2;->k:Lgv7;

    .line 71
    .line 72
    new-instance p1, Lkc;

    .line 73
    .line 74
    new-instance p2, Lec2;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Lec2;-><init>(Lic2;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lfc2;

    .line 80
    .line 81
    invoke-direct {v0, p0, p3}, Lfc2;-><init>(Lic2;Ljv1;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p4, p2, v0}, Lkc;-><init>(Lxx1;Lec2;Lfc2;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lic2;->l:Lkc;

    .line 88
    .line 89
    return-void
.end method

.method public static final b(Lic2;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lqb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lqb2;

    .line 7
    .line 8
    iget v1, v0, Lqb2;->e:I

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
    iput v1, v0, Lqb2;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lqb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lqb2;-><init>(Lic2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lqb2;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lqb2;->e:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lqb2;->b:Lmj5;

    .line 36
    .line 37
    iget-object v0, v0, Lqb2;->a:Lic2;

    .line 38
    .line 39
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object p1, p0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lic2;->e:Lmj5;

    .line 55
    .line 56
    iput-object p0, v0, Lqb2;->a:Lic2;

    .line 57
    .line 58
    iput-object p1, v0, Lqb2;->b:Lmj5;

    .line 59
    .line 60
    iput v2, v0, Lqb2;->e:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v1, Lyx1;->a:Lyx1;

    .line 67
    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    iget v0, p0, Lic2;->f:I

    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    iput v0, p0, Lic2;->f:I

    .line 76
    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lic2;->g:Lbl7;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    :goto_2
    iput-object v3, p0, Lic2;->g:Lbl7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    :cond_5
    invoke-interface {p1, v3}, Lkj5;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object p0, Lbe8;->a:Lbe8;

    .line 95
    .line 96
    return-object p0

    .line 97
    :goto_3
    invoke-interface {p1, v3}, Lkj5;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static final c(Lic2;Lfd5;Lkv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lsb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lsb2;

    .line 7
    .line 8
    iget v1, v0, Lsb2;->f:I

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
    iput v1, v0, Lsb2;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lsb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lsb2;-><init>(Lic2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lsb2;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lsb2;->f:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    sget-object v6, Lyx1;->a:Lyx1;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v5, :cond_1

    .line 38
    .line 39
    if-eq v1, v4, :cond_3

    .line 40
    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    :cond_1
    iget-object p0, v0, Lsb2;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lan1;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_3
    iget-object p0, v0, Lsb2;->c:Lbn1;

    .line 62
    .line 63
    iget-object p1, v0, Lsb2;->b:Lic2;

    .line 64
    .line 65
    iget-object v1, v0, Lsb2;->a:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lfd5;

    .line 68
    .line 69
    :try_start_1
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    move-object p2, p0

    .line 73
    move-object p0, p1

    .line 74
    move-object p1, v1

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p1, Lfd5;->b:Lbn1;

    .line 80
    .line 81
    :try_start_2
    iget-object v1, p0, Lic2;->h:Ltr9;

    .line 82
    .line 83
    invoke-virtual {v1}, Ltr9;->c()Lem7;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    instance-of v7, v1, Lga2;

    .line 88
    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    iget-object v1, p1, Lfd5;->a:Lqt3;

    .line 92
    .line 93
    iget-object p1, p1, Lfd5;->d:Lox1;

    .line 94
    .line 95
    iput-object p2, v0, Lsb2;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iput v5, v0, Lsb2;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    .line 99
    :try_start_3
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v4, Lcc2;

    .line 104
    .line 105
    invoke-direct {v4, p0, p1, v1, v2}, Lcc2;-><init>(Lic2;Lox1;Lqt3;Ljv1;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v3, v4, v0}, Lsd4;->a(Lmt3;Lkv1;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    if-ne p0, v6, :cond_5

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    move-object v8, p2

    .line 116
    move-object p2, p0

    .line 117
    move-object p0, v8

    .line 118
    goto :goto_7

    .line 119
    :goto_1
    move-object p1, p0

    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :goto_2
    move-object p0, p2

    .line 124
    goto :goto_6

    .line 125
    :catchall_2
    move-exception p1

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    :try_start_4
    instance-of v7, v1, Ljf6;

    .line 128
    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    instance-of v5, v1, Lod8;

    .line 133
    .line 134
    :goto_3
    if-eqz v5, :cond_a

    .line 135
    .line 136
    iget-object v5, p1, Lfd5;->c:Lem7;

    .line 137
    .line 138
    if-ne v1, v5, :cond_9

    .line 139
    .line 140
    iput-object p1, v0, Lsb2;->a:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object p0, v0, Lsb2;->b:Lic2;

    .line 143
    .line 144
    iput-object p2, v0, Lsb2;->c:Lbn1;

    .line 145
    .line 146
    iput v4, v0, Lsb2;->f:I

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lic2;->h(Lkv1;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-ne v1, v6, :cond_8

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_8
    :goto_4
    iget-object v1, p1, Lfd5;->a:Lqt3;

    .line 156
    .line 157
    iget-object p1, p1, Lfd5;->d:Lox1;

    .line 158
    .line 159
    iput-object p2, v0, Lsb2;->a:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v2, v0, Lsb2;->b:Lic2;

    .line 162
    .line 163
    iput-object v2, v0, Lsb2;->c:Lbn1;

    .line 164
    .line 165
    iput v3, v0, Lsb2;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 166
    .line 167
    :try_start_5
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    new-instance v4, Lcc2;

    .line 172
    .line 173
    invoke-direct {v4, p0, p1, v1, v2}, Lcc2;-><init>(Lic2;Lox1;Lqt3;Ljv1;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v3, v4, v0}, Lsd4;->a(Lmt3;Lkv1;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    if-ne p0, v6, :cond_5

    .line 181
    .line 182
    :goto_5
    return-object v6

    .line 183
    :catchall_3
    move-exception p0

    .line 184
    goto :goto_1

    .line 185
    :cond_9
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    check-cast v1, Ljf6;

    .line 189
    .line 190
    iget-object p0, v1, Ljf6;->b:Ljava/lang/Throwable;

    .line 191
    .line 192
    throw p0

    .line 193
    :cond_a
    instance-of p0, v1, Lne3;

    .line 194
    .line 195
    if-eqz p0, :cond_b

    .line 196
    .line 197
    check-cast v1, Lne3;

    .line 198
    .line 199
    iget-object p0, v1, Lne3;->b:Ljava/lang/Throwable;

    .line 200
    .line 201
    throw p0

    .line 202
    :cond_b
    new-instance p0, Lmn5;

    .line 203
    .line 204
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 205
    .line 206
    .line 207
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 208
    :goto_6
    new-instance p2, Lbn6;

    .line 209
    .line 210
    invoke-direct {p2, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    :goto_7
    invoke-static {p2}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p0, Lbn1;

    .line 218
    .line 219
    if-nez p1, :cond_c

    .line 220
    .line 221
    invoke-virtual {p0, p2}, Lci4;->G(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_c
    invoke-virtual {p0, p1}, Lbn1;->Y(Ljava/lang/Throwable;)Z

    .line 226
    .line 227
    .line 228
    :goto_8
    sget-object p0, Lbe8;->a:Lbe8;

    .line 229
    .line 230
    return-object p0
.end method

.method public static final d(Lic2;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Ltb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ltb2;

    .line 7
    .line 8
    iget v1, v0, Ltb2;->e:I

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
    iput v1, v0, Ltb2;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ltb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ltb2;-><init>(Lic2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Ltb2;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Ltb2;->e:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Ltb2;->b:Lmj5;

    .line 36
    .line 37
    iget-object v0, v0, Ltb2;->a:Lic2;

    .line 38
    .line 39
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object p1, p0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lic2;->e:Lmj5;

    .line 55
    .line 56
    iput-object p0, v0, Ltb2;->a:Lic2;

    .line 57
    .line 58
    iput-object p1, v0, Ltb2;->b:Lmj5;

    .line 59
    .line 60
    iput v2, v0, Ltb2;->e:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lmj5;->a(Lkv1;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v1, Lyx1;->a:Lyx1;

    .line 67
    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    iget v0, p0, Lic2;->f:I

    .line 72
    .line 73
    add-int/2addr v0, v2

    .line 74
    iput v0, p0, Lic2;->f:I

    .line 75
    .line 76
    if-ne v0, v2, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Lic2;->c:Lxx1;

    .line 79
    .line 80
    new-instance v1, Lmg1;

    .line 81
    .line 82
    invoke-direct {v1, p0, v3, v2}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    invoke-static {v0, v3, v1, v2}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lic2;->g:Lbl7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    :goto_2
    invoke-interface {p1, v3}, Lkj5;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object p0, Lbe8;->a:Lbe8;

    .line 99
    .line 100
    return-object p0

    .line 101
    :goto_3
    invoke-interface {p1, v3}, Lkj5;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public static final e(Lic2;ZLjv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lwb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lwb2;

    .line 7
    .line 8
    iget v1, v0, Lwb2;->f:I

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
    iput v1, v0, Lwb2;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lwb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lwb2;-><init>(Lic2;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lwb2;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lwb2;->f:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    sget-object v6, Lyx1;->a:Lyx1;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v4, :cond_3

    .line 38
    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lwb2;->a:Lic2;

    .line 44
    .line 45
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v5

    .line 56
    :cond_2
    iget-object p0, v0, Lwb2;->a:Lic2;

    .line 57
    .line 58
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget-boolean p1, v0, Lwb2;->c:Z

    .line 63
    .line 64
    iget-object p0, v0, Lwb2;->b:Lem7;

    .line 65
    .line 66
    iget-object v1, v0, Lwb2;->a:Lic2;

    .line 67
    .line 68
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lic2;->h:Ltr9;

    .line 76
    .line 77
    invoke-virtual {p2}, Ltr9;->c()Lem7;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    instance-of v1, p2, Lod8;

    .line 82
    .line 83
    if-nez v1, :cond_c

    .line 84
    .line 85
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object p0, v0, Lwb2;->a:Lic2;

    .line 90
    .line 91
    iput-object p2, v0, Lwb2;->b:Lem7;

    .line 92
    .line 93
    iput-boolean p1, v0, Lwb2;->c:Z

    .line 94
    .line 95
    iput v4, v0, Lwb2;->f:I

    .line 96
    .line 97
    invoke-interface {v1, v0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-ne v1, v6, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    move-object v8, v1

    .line 105
    move-object v1, p0

    .line 106
    move-object p0, p2

    .line 107
    move-object p2, v8

    .line 108
    :goto_1
    check-cast p2, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    instance-of v4, p0, Lga2;

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    iget v7, p0, Lem7;->a:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    const/4 v7, -0x1

    .line 122
    :goto_2
    if-eqz v4, :cond_7

    .line 123
    .line 124
    if-ne p2, v7, :cond_7

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_7
    if-eqz p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {v1}, Lic2;->g()Lsd4;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Lxb2;

    .line 134
    .line 135
    invoke-direct {p1, v1, v5}, Lxb2;-><init>(Lic2;Ljv1;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, v0, Lwb2;->a:Lic2;

    .line 139
    .line 140
    iput-object v5, v0, Lwb2;->b:Lem7;

    .line 141
    .line 142
    iput v3, v0, Lwb2;->f:I

    .line 143
    .line 144
    invoke-interface {p0, p1, v0}, Lsd4;->a(Lmt3;Lkv1;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-ne p2, v6, :cond_8

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_8
    move-object p0, v1

    .line 152
    :goto_3
    check-cast p2, Lpw5;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_9
    invoke-virtual {v1}, Lic2;->g()Lsd4;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    new-instance p1, Lyb2;

    .line 160
    .line 161
    invoke-direct {p1, v1, v7, v5}, Lyb2;-><init>(Lic2;ILjv1;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, v0, Lwb2;->a:Lic2;

    .line 165
    .line 166
    iput-object v5, v0, Lwb2;->b:Lem7;

    .line 167
    .line 168
    iput v2, v0, Lwb2;->f:I

    .line 169
    .line 170
    invoke-interface {p0, p1, v0}, Lsd4;->d(Lqt3;Lkv1;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    if-ne p2, v6, :cond_a

    .line 175
    .line 176
    :goto_4
    return-object v6

    .line 177
    :cond_a
    move-object p0, v1

    .line 178
    :goto_5
    check-cast p2, Lpw5;

    .line 179
    .line 180
    :goto_6
    iget-object p1, p2, Lpw5;->a:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p1, Lem7;

    .line 183
    .line 184
    iget-object p2, p2, Lpw5;->b:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p2, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_b

    .line 193
    .line 194
    iget-object p0, p0, Lic2;->h:Ltr9;

    .line 195
    .line 196
    invoke-virtual {p0, p1}, Ltr9;->f(Lem7;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    return-object p1

    .line 200
    :cond_c
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 201
    .line 202
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v5
.end method

.method public static final f(Lic2;ZLkv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lzb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lzb2;

    .line 7
    .line 8
    iget v1, v0, Lzb2;->p:I

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
    iput v1, v0, Lzb2;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lzb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lzb2;-><init>(Lic2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lzb2;->k:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lzb2;->p:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    sget-object v4, Lyx1;->a:Lyx1;

    .line 32
    .line 33
    packed-switch v1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :pswitch_0
    iget-object p0, v0, Lzb2;->c:Ljava/io/Serializable;

    .line 43
    .line 44
    check-cast p0, Ljh6;

    .line 45
    .line 46
    iget-object p1, v0, Lzb2;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Llh6;

    .line 49
    .line 50
    iget-object v0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ldy1;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_c

    .line 61
    .line 62
    :pswitch_1
    iget-boolean p0, v0, Lzb2;->e:Z

    .line 63
    .line 64
    iget-object p1, v0, Lzb2;->d:Llh6;

    .line 65
    .line 66
    iget-object v1, v0, Lzb2;->c:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v1, Llh6;

    .line 69
    .line 70
    iget-object v5, v0, Lzb2;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Ldy1;

    .line 73
    .line 74
    iget-object v6, v0, Lzb2;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Lic2;

    .line 77
    .line 78
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :pswitch_2
    iget-boolean p1, v0, Lzb2;->e:Z

    .line 84
    .line 85
    iget-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lic2;

    .line 88
    .line 89
    :try_start_1
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catch Ldy1; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :catch_0
    move-exception p2

    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :pswitch_3
    iget-boolean p1, v0, Lzb2;->e:Z

    .line 98
    .line 99
    iget-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lic2;

    .line 102
    .line 103
    :try_start_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_2
    .catch Ldy1; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :pswitch_4
    iget p0, v0, Lzb2;->f:I

    .line 109
    .line 110
    iget-boolean p1, v0, Lzb2;->e:Z

    .line 111
    .line 112
    iget-object v1, v0, Lzb2;->b:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v5, v0, Lzb2;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v5, Lic2;

    .line 117
    .line 118
    :try_start_3
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_3
    .catch Ldy1; {:try_start_3 .. :try_end_3} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception p2

    .line 123
    move-object p0, v5

    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :pswitch_5
    iget-boolean p1, v0, Lzb2;->e:Z

    .line 127
    .line 128
    iget-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Lic2;

    .line 131
    .line 132
    :try_start_4
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_4
    .catch Ldy1; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_6
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    :try_start_5
    iput-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 142
    .line 143
    iput-boolean p1, v0, Lzb2;->e:Z

    .line 144
    .line 145
    const/4 p2, 0x1

    .line 146
    iput p2, v0, Lzb2;->p:I

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lic2;->i(Lkv1;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-ne p2, v4, :cond_1

    .line 153
    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    move v1, v2

    .line 164
    :goto_2
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iput-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object p2, v0, Lzb2;->b:Ljava/lang/Object;

    .line 171
    .line 172
    iput-boolean p1, v0, Lzb2;->e:Z

    .line 173
    .line 174
    iput v1, v0, Lzb2;->f:I

    .line 175
    .line 176
    const/4 v6, 0x2

    .line 177
    iput v6, v0, Lzb2;->p:I

    .line 178
    .line 179
    invoke-interface {v5, v0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5
    :try_end_5
    .catch Ldy1; {:try_start_5 .. :try_end_5} :catch_0

    .line 183
    if-ne v5, v4, :cond_3

    .line 184
    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :cond_3
    move-object v8, v5

    .line 188
    move-object v5, p0

    .line 189
    move p0, v1

    .line 190
    move-object v1, p2

    .line 191
    move-object p2, v8

    .line 192
    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Number;

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    new-instance v6, Lga2;

    .line 199
    .line 200
    invoke-direct {v6, v1, p0, p2}, Lga2;-><init>(Ljava/lang/Object;II)V
    :try_end_6
    .catch Ldy1; {:try_start_6 .. :try_end_6} :catch_1

    .line 201
    .line 202
    .line 203
    return-object v6

    .line 204
    :cond_4
    :try_start_7
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    iput-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 209
    .line 210
    iput-boolean p1, v0, Lzb2;->e:Z

    .line 211
    .line 212
    const/4 v1, 0x3

    .line 213
    iput v1, v0, Lzb2;->p:I

    .line 214
    .line 215
    invoke-interface {p2, v0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    if-ne p2, v4, :cond_5

    .line 220
    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :cond_5
    :goto_4
    check-cast p2, Ljava/lang/Number;

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-instance v5, Lac2;

    .line 234
    .line 235
    invoke-direct {v5, p0, p2, v3}, Lac2;-><init>(Lic2;ILjv1;)V

    .line 236
    .line 237
    .line 238
    iput-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 239
    .line 240
    iput-boolean p1, v0, Lzb2;->e:Z

    .line 241
    .line 242
    const/4 p2, 0x4

    .line 243
    iput p2, v0, Lzb2;->p:I

    .line 244
    .line 245
    invoke-interface {v1, v5, v0}, Lsd4;->d(Lqt3;Lkv1;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    if-ne p2, v4, :cond_6

    .line 250
    .line 251
    goto/16 :goto_a

    .line 252
    .line 253
    :cond_6
    :goto_5
    check-cast p2, Lga2;
    :try_end_7
    .catch Ldy1; {:try_start_7 .. :try_end_7} :catch_0

    .line 254
    .line 255
    return-object p2

    .line 256
    :goto_6
    new-instance v1, Llh6;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    iget-object v5, p0, Lic2;->b:Lnh;

    .line 262
    .line 263
    iput-object p0, v0, Lzb2;->a:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object p2, v0, Lzb2;->b:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v1, v0, Lzb2;->c:Ljava/io/Serializable;

    .line 268
    .line 269
    iput-object v1, v0, Lzb2;->d:Llh6;

    .line 270
    .line 271
    iput-boolean p1, v0, Lzb2;->e:Z

    .line 272
    .line 273
    const/4 v6, 0x5

    .line 274
    iput v6, v0, Lzb2;->p:I

    .line 275
    .line 276
    iget-object v5, v5, Lnh;->b:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v5, Lmt3;

    .line 279
    .line 280
    invoke-interface {v5, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    if-ne v5, v4, :cond_7

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_7
    move-object v6, v5

    .line 288
    move-object v5, p2

    .line 289
    move-object p2, v6

    .line 290
    move-object v6, p0

    .line 291
    move p0, p1

    .line 292
    move-object p1, v1

    .line 293
    :goto_7
    iput-object p2, p1, Llh6;->a:Ljava/lang/Object;

    .line 294
    .line 295
    new-instance p1, Ljh6;

    .line 296
    .line 297
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 298
    .line 299
    .line 300
    :try_start_8
    new-instance p2, Lbc2;

    .line 301
    .line 302
    invoke-direct {p2, v1, v6, p1, v3}, Lbc2;-><init>(Llh6;Lic2;Ljh6;Ljv1;)V

    .line 303
    .line 304
    .line 305
    iput-object v5, v0, Lzb2;->a:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v1, v0, Lzb2;->b:Ljava/lang/Object;

    .line 308
    .line 309
    iput-object p1, v0, Lzb2;->c:Ljava/io/Serializable;

    .line 310
    .line 311
    iput-object v3, v0, Lzb2;->d:Llh6;

    .line 312
    .line 313
    const/4 v7, 0x6

    .line 314
    iput v7, v0, Lzb2;->p:I

    .line 315
    .line 316
    if-eqz p0, :cond_8

    .line 317
    .line 318
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, v0}, Lbc2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    goto :goto_8

    .line 326
    :cond_8
    invoke-virtual {v6}, Lic2;->g()Lsd4;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    new-instance v6, Lrb2;

    .line 331
    .line 332
    invoke-direct {v6, p2, v3}, Lrb2;-><init>(Lbc2;Ljv1;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {p0, v6, v0}, Lsd4;->a(Lmt3;Lkv1;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 339
    :goto_8
    if-ne p0, v4, :cond_9

    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_9
    move-object p0, p1

    .line 343
    move-object p1, v1

    .line 344
    :goto_9
    new-instance v4, Lga2;

    .line 345
    .line 346
    iget-object p1, p1, Llh6;->a:Ljava/lang/Object;

    .line 347
    .line 348
    if-eqz p1, :cond_a

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    :cond_a
    iget p0, p0, Ljh6;->a:I

    .line 355
    .line 356
    invoke-direct {v4, p1, v2, p0}, Lga2;-><init>(Ljava/lang/Object;II)V

    .line 357
    .line 358
    .line 359
    :goto_a
    return-object v4

    .line 360
    :goto_b
    move-object v0, v5

    .line 361
    goto :goto_c

    .line 362
    :catchall_1
    move-exception p0

    .line 363
    goto :goto_b

    .line 364
    :goto_c
    invoke-static {v0, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    nop

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lqt3;Lkv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lfo8;->b:Lfo8;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lox1;->get(Lnx1;)Lmx1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lpf8;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lpf8;->b(Lic2;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Lpf8;

    .line 19
    .line 20
    invoke-direct {v1, v0, p0}, Lpf8;-><init>(Lpf8;Lic2;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ldc2;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, p0, p1, v2}, Ldc2;-><init>(Lic2;Lqt3;Ljv1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, p2}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final g()Lsd4;
    .locals 0

    .line 1
    iget-object p0, p0, Lic2;->k:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsd4;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getData()Lji3;
    .locals 0

    .line 1
    iget-object p0, p0, Lic2;->d:Ltr9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lkv1;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lvb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lvb2;

    .line 7
    .line 8
    iget v1, v0, Lvb2;->e:I

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
    iput v1, v0, Lvb2;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lvb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lvb2;-><init>(Lic2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lvb2;->c:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lvb2;->e:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    sget-object v4, Lyx1;->a:Lyx1;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget p0, v0, Lvb2;->b:I

    .line 40
    .line 41
    iget-object v0, v0, Lvb2;->a:Lic2;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_4

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_2
    iget-object p0, v0, Lvb2;->a:Lic2;

    .line 57
    .line 58
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lic2;->g()Lsd4;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p0, v0, Lvb2;->a:Lic2;

    .line 70
    .line 71
    iput v3, v0, Lvb2;->e:I

    .line 72
    .line 73
    invoke-interface {p1, v0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v4, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    :try_start_1
    iget-object v1, p0, Lic2;->i:Lkb2;

    .line 87
    .line 88
    iput-object p0, v0, Lvb2;->a:Lic2;

    .line 89
    .line 90
    iput p1, v0, Lvb2;->b:I

    .line 91
    .line 92
    iput v2, v0, Lvb2;->e:I

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lkb2;->c(Lkv1;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-ne p0, v4, :cond_5

    .line 99
    .line 100
    :goto_2
    return-object v4

    .line 101
    :cond_5
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 102
    .line 103
    return-object p0

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object v5, v0

    .line 106
    move-object v0, p0

    .line 107
    move p0, p1

    .line 108
    move-object p1, v5

    .line 109
    :goto_4
    iget-object v0, v0, Lic2;->h:Ltr9;

    .line 110
    .line 111
    new-instance v1, Ljf6;

    .line 112
    .line 113
    invoke-direct {v1, p0, p1}, Ljf6;-><init>(ILjava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ltr9;->f(Lem7;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final i(Lkv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lic2;->j:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Laa3;

    .line 8
    .line 9
    new-instance v0, Lbo7;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v0, v2, v1}, Lws7;-><init>(ILjv1;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Laa3;->a(Lbo7;Lkv1;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final j(Ljava/lang/Object;ZLkv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, Lgc2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lgc2;

    .line 7
    .line 8
    iget v1, v0, Lgc2;->d:I

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
    iput v1, v0, Lgc2;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lgc2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lgc2;-><init>(Lic2;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lgc2;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lgc2;->d:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lgc2;->a:Ljh6;

    .line 35
    .line 36
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljh6;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object p3, p0, Lic2;->j:Lgv7;

    .line 56
    .line 57
    invoke-virtual {p3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Laa3;

    .line 62
    .line 63
    new-instance v3, Lhc2;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    move-object v5, p0

    .line 67
    move-object v6, p1

    .line 68
    move v7, p2

    .line 69
    invoke-direct/range {v3 .. v8}, Lhc2;-><init>(Ljh6;Lic2;Ljava/lang/Object;ZLjv1;)V

    .line 70
    .line 71
    .line 72
    iput-object v4, v0, Lgc2;->a:Ljh6;

    .line 73
    .line 74
    iput v2, v0, Lgc2;->d:I

    .line 75
    .line 76
    invoke-virtual {p3, v3, v0}, Laa3;->b(Lhc2;Lkv1;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget-object p1, Lyx1;->a:Lyx1;

    .line 81
    .line 82
    if-ne p0, p1, :cond_3

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    move-object p0, v4

    .line 86
    :goto_1
    iget p0, p0, Ljh6;->a:I

    .line 87
    .line 88
    new-instance p1, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method
