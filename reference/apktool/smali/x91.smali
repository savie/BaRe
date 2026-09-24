.class public final Lx91;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcl6;
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public static b(Ljava/util/List;Ljava/util/Map;Ljava/util/Comparator;)Lje6;
    .locals 8

    .line 1
    new-instance v0, Lx91;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lx91;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, v0, Lx91;->b:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lie6;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {p1, v1}, Lie6;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iget v1, p1, Lie6;->b:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v1, v2

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_0
    if-ltz v1, :cond_2

    .line 31
    .line 32
    shl-int v3, v2, v1

    .line 33
    .line 34
    int-to-long v3, v3

    .line 35
    iget-wide v5, p1, Lie6;->a:J

    .line 36
    .line 37
    and-long/2addr v3, v5

    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v3, v3, v5

    .line 41
    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    move v3, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    int-to-double v6, v1

    .line 50
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    double-to-int v4, v4

    .line 55
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    sub-int/2addr p0, v4

    .line 58
    const/4 v5, 0x2

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v5, v4, p0}, Lx91;->c(III)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0, v5, v4, p0}, Lx91;->c(III)V

    .line 66
    .line 67
    .line 68
    sub-int/2addr p0, v4

    .line 69
    invoke-virtual {v0, v2, v4, p0}, Lx91;->c(III)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p0, Lje6;

    .line 74
    .line 75
    iget-object p1, v0, Lx91;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Ljp4;

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    sget-object p1, Lsl4;->b:Lsl4;

    .line 82
    .line 83
    :cond_3
    invoke-direct {p0, p1, p2}, Lje6;-><init>(Lhp4;Ljava/util/Comparator;)V

    .line 84
    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public a(II)Lhp4;
    .locals 4

    .line 1
    iget-object v0, p0, Lx91;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    iget-object v1, p0, Lx91;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/List;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    sget-object p0, Lsl4;->b:Lsl4;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    if-ne p2, v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Lgp4;

    .line 22
    .line 23
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, p2, v0, v0}, Lgp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    div-int/lit8 p2, p2, 0x2

    .line 33
    .line 34
    add-int v2, p1, p2

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lx91;->a(II)Lhp4;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, v3, p2}, Lx91;->a(II)Lhp4;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v1, Lgp4;

    .line 51
    .line 52
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, p2, v0, p1, p0}, Lgp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method public c(III)V
    .locals 3

    .line 1
    add-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr p2, v1

    .line 5
    invoke-virtual {p0, v0, p2}, Lx91;->a(II)Lhp4;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lx91;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iget-object v0, p0, Lx91;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/Map;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lip4;

    .line 25
    .line 26
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, p3, v0, v2, p2}, Ljp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lgp4;

    .line 35
    .line 36
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, p3, v0, v2, p2}, Lgp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p2, p0, Lx91;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Ljp4;

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    iput-object p1, p0, Lx91;->c:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object p1, p0, Lx91;->d:Ljava/lang/Object;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object p2, p0, Lx91;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Ljp4;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljp4;->o(Ljp4;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lx91;->d:Ljava/lang/Object;

    .line 62
    .line 63
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lx91;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwj6;

    .line 4
    .line 5
    iget-object v1, p0, Lx91;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Lwc2;->b(Ljava/lang/String;Ljava/lang/String;)Lwc2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object p2, p0, Lx91;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Lwj6;

    .line 20
    .line 21
    iget-object p0, p0, Lx91;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lgy5;

    .line 24
    .line 25
    const-string v2, "Transaction"

    .line 26
    .line 27
    invoke-static {p2, v2, p0, p1}, Lwj6;->b(Lwj6;Ljava/lang/String;Lgy5;Lwc2;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lvj6;

    .line 57
    .line 58
    const/4 v4, 0x4

    .line 59
    iput v4, v3, Lvj6;->d:I

    .line 60
    .line 61
    iget-object v4, v3, Lvj6;->a:Lgy5;

    .line 62
    .line 63
    iget-object v5, p2, Lwj6;->n:Lbv7;

    .line 64
    .line 65
    iget-wide v6, v3, Lvj6;->n:J

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    iget-object v10, p2, Lwj6;->b:Lis5;

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    invoke-virtual/range {v5 .. v10}, Lbv7;->c(JZZLaa1;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    iget-object v5, v3, Lvj6;->r:Lqn5;

    .line 79
    .line 80
    new-instance v6, Lzc2;

    .line 81
    .line 82
    invoke-direct {v6, v0, v4}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Lsb4;->d(Lqn5;)Lsb4;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    new-instance v7, Leb2;

    .line 90
    .line 91
    invoke-direct {v7, v6, v5}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 92
    .line 93
    .line 94
    new-instance v5, Lu8;

    .line 95
    .line 96
    invoke-direct {v5, v3, v7}, Lu8;-><init>(Lvj6;Leb2;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance v5, Lbj8;

    .line 103
    .line 104
    iget-object v3, v3, Lvj6;->c:Lhx0;

    .line 105
    .line 106
    invoke-static {v4}, Lqc6;->a(Lgy5;)Lqc6;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-direct {v5, p2, v3, v4}, Lbj8;-><init>(Lwj6;Laj8;Lqc6;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v5}, Lwj6;->l(Lez2;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    iget-object v1, p2, Lwj6;->f:Lgd;

    .line 118
    .line 119
    invoke-virtual {v1, p0}, Lgd;->n(Lgy5;)Lgd;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p2, p0}, Lwj6;->k(Lgd;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p2, Lwj6;->f:Lgd;

    .line 127
    .line 128
    invoke-virtual {p2, p0}, Lwj6;->k(Lgd;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p0}, Lwj6;->o(Lgd;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lwj6;->j(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x0

    .line 138
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-ge p0, v0, :cond_2

    .line 143
    .line 144
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Runnable;

    .line 149
    .line 150
    invoke-virtual {p2, v0}, Lwj6;->i(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 p0, p0, 0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    return-void

    .line 157
    :cond_3
    iget v0, p1, Lwc2;->a:I

    .line 158
    .line 159
    const/4 v2, -0x1

    .line 160
    const/4 v3, 0x6

    .line 161
    if-ne v0, v2, :cond_5

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lvj6;

    .line 178
    .line 179
    iget v1, v0, Lvj6;->d:I

    .line 180
    .line 181
    const/4 v2, 0x5

    .line 182
    if-ne v1, v2, :cond_4

    .line 183
    .line 184
    iput v3, v0, Lvj6;->d:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    const/4 v1, 0x2

    .line 188
    iput v1, v0, Lvj6;->d:I

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lvj6;

    .line 206
    .line 207
    iput v3, v1, Lvj6;->d:I

    .line 208
    .line 209
    iput-object p1, v1, Lvj6;->k:Lwc2;

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_6
    invoke-virtual {p2, p0}, Lwj6;->m(Lgy5;)Lgy5;

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public e(Ls8;)Lgs7;
    .locals 5

    .line 1
    iget-object v0, p0, Lx91;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lgs7;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v4, v3, Lgs7;->b:Ls8;

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Lgs7;

    .line 29
    .line 30
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lgs7;-><init>(Landroid/content/Context;Ls8;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public f(Ljava/lang/Class;)Li98;
    .locals 8

    .line 1
    iget-object v0, p0, Lx91;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcz4;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-class v1, Ljava/lang/String;

    .line 13
    .line 14
    const-class v2, Ljava/lang/Character;

    .line 15
    .line 16
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object p0, p0, Lx91;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lom5;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne p1, v3, :cond_0

    .line 33
    .line 34
    new-instance v4, Ld51;

    .line 35
    .line 36
    invoke-direct {v4, p1}, Ld51;-><init>(Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-ne p1, v2, :cond_1

    .line 41
    .line 42
    new-instance v4, Ld51;

    .line 43
    .line 44
    invoke-direct {v4, p1}, Ld51;-><init>(Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-ne p1, v1, :cond_2

    .line 49
    .line 50
    new-instance v4, Lzp7;

    .line 51
    .line 52
    invoke-direct {v4}, Lzp7;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lx91;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lx91;->f(Ljava/lang/Class;)Li98;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-nez p0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v4, Ls50;

    .line 68
    .line 69
    invoke-direct {v4, p0, p1}, Ls50;-><init>(Li98;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-object v4

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v5, 0x2

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x1

    .line 80
    if-eqz v0, :cond_d

    .line 81
    .line 82
    iget-object p0, p0, Lx91;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lcz4;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    if-ne p1, p0, :cond_5

    .line 92
    .line 93
    new-instance v4, Lrt0;

    .line 94
    .line 95
    invoke-direct {v4, v7}, Lrt0;-><init>(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    if-ne p1, p0, :cond_6

    .line 102
    .line 103
    new-instance v4, Lrt0;

    .line 104
    .line 105
    invoke-direct {v4, v6}, Lrt0;-><init>(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 110
    .line 111
    if-ne p1, p0, :cond_7

    .line 112
    .line 113
    new-instance v4, Lbq0;

    .line 114
    .line 115
    invoke-direct {v4, v7}, Lbq0;-><init>(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 120
    .line 121
    if-ne p1, p0, :cond_8

    .line 122
    .line 123
    new-instance v4, Lq62;

    .line 124
    .line 125
    invoke-direct {v4, v7}, Lq62;-><init>(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_8
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 130
    .line 131
    if-ne p1, p0, :cond_9

    .line 132
    .line 133
    new-instance v4, Lzh3;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_9
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 140
    .line 141
    if-ne p1, p0, :cond_a

    .line 142
    .line 143
    new-instance v4, Lbq0;

    .line 144
    .line 145
    invoke-direct {v4, v5}, Lbq0;-><init>(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_a
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 150
    .line 151
    if-ne p1, p0, :cond_b

    .line 152
    .line 153
    new-instance v4, Lq81;

    .line 154
    .line 155
    invoke-direct {v4, v7}, Lq81;-><init>(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_b
    if-ne p1, v3, :cond_c

    .line 160
    .line 161
    new-instance v4, Lo70;

    .line 162
    .line 163
    invoke-direct {v4, v7}, Lo70;-><init>(I)V

    .line 164
    .line 165
    .line 166
    :cond_c
    :goto_1
    return-object v4

    .line 167
    :cond_d
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p0, Llv1;

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    const-string v0, "java.lang"

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_17

    .line 185
    .line 186
    const-class p0, Ljava/lang/Boolean;

    .line 187
    .line 188
    if-ne p1, p0, :cond_e

    .line 189
    .line 190
    new-instance v4, Lrt0;

    .line 191
    .line 192
    invoke-direct {v4, v6}, Lrt0;-><init>(I)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_e
    const-class p0, Ljava/lang/Integer;

    .line 198
    .line 199
    if-ne p1, p0, :cond_f

    .line 200
    .line 201
    new-instance v4, Lrt0;

    .line 202
    .line 203
    invoke-direct {v4, v7}, Lrt0;-><init>(I)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_f
    const-class p0, Ljava/lang/Long;

    .line 209
    .line 210
    if-ne p1, p0, :cond_10

    .line 211
    .line 212
    new-instance v4, Lbq0;

    .line 213
    .line 214
    invoke-direct {v4, v7}, Lbq0;-><init>(I)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_10
    const-class p0, Ljava/lang/Double;

    .line 220
    .line 221
    if-ne p1, p0, :cond_11

    .line 222
    .line 223
    new-instance v4, Lq62;

    .line 224
    .line 225
    invoke-direct {v4, v7}, Lq62;-><init>(I)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_2

    .line 229
    .line 230
    :cond_11
    const-class p0, Ljava/lang/Float;

    .line 231
    .line 232
    if-ne p1, p0, :cond_12

    .line 233
    .line 234
    new-instance v4, Lzh3;

    .line 235
    .line 236
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_12
    const-class p0, Ljava/lang/Short;

    .line 242
    .line 243
    if-ne p1, p0, :cond_13

    .line 244
    .line 245
    new-instance v4, Lbq0;

    .line 246
    .line 247
    invoke-direct {v4, v5}, Lbq0;-><init>(I)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_13
    const-class p0, Ljava/lang/Byte;

    .line 253
    .line 254
    if-ne p1, p0, :cond_14

    .line 255
    .line 256
    new-instance v4, Lq81;

    .line 257
    .line 258
    invoke-direct {v4, v7}, Lq81;-><init>(I)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_14
    if-ne p1, v2, :cond_15

    .line 264
    .line 265
    new-instance v4, Lo70;

    .line 266
    .line 267
    invoke-direct {v4, v7}, Lo70;-><init>(I)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_15
    if-ne p1, v1, :cond_16

    .line 273
    .line 274
    new-instance v4, Lbq0;

    .line 275
    .line 276
    const/4 p0, 0x3

    .line 277
    invoke-direct {v4, p0}, Lbq0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :cond_16
    const-class p0, Ljava/lang/Class;

    .line 283
    .line 284
    if-ne p1, p0, :cond_27

    .line 285
    .line 286
    new-instance v4, Lq81;

    .line 287
    .line 288
    invoke-direct {v4, v6}, Lq81;-><init>(I)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_17
    const-string v0, "java.util"

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_1e

    .line 300
    .line 301
    const-class p0, Ljava/util/Date;

    .line 302
    .line 303
    if-ne p1, p0, :cond_18

    .line 304
    .line 305
    new-instance v4, Lfd2;

    .line 306
    .line 307
    invoke-direct {v4, p1}, Lfd2;-><init>(Ljava/lang/Class;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :cond_18
    const-class p0, Ljava/util/Locale;

    .line 313
    .line 314
    if-ne p1, p0, :cond_19

    .line 315
    .line 316
    new-instance v4, Lo14;

    .line 317
    .line 318
    invoke-direct {v4, v7}, Lo14;-><init>(I)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_19
    const-class p0, Ljava/util/Currency;

    .line 324
    .line 325
    if-ne p1, p0, :cond_1a

    .line 326
    .line 327
    new-instance v4, Lq62;

    .line 328
    .line 329
    invoke-direct {v4, v6}, Lq62;-><init>(I)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_1a
    const-class p0, Ljava/util/GregorianCalendar;

    .line 335
    .line 336
    if-ne p1, p0, :cond_1b

    .line 337
    .line 338
    new-instance v4, Lo14;

    .line 339
    .line 340
    invoke-direct {v4, v6}, Lo14;-><init>(I)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :cond_1b
    const-class p0, Ljava/util/TimeZone;

    .line 346
    .line 347
    if-ne p1, p0, :cond_1c

    .line 348
    .line 349
    new-instance v4, Laq0;

    .line 350
    .line 351
    invoke-direct {v4, v7}, Laq0;-><init>(I)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_2

    .line 355
    .line 356
    :cond_1c
    const-class p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    .line 358
    if-ne p1, p0, :cond_1d

    .line 359
    .line 360
    new-instance v4, Ln70;

    .line 361
    .line 362
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :cond_1d
    const-class p0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 368
    .line 369
    if-ne p1, p0, :cond_27

    .line 370
    .line 371
    new-instance v4, Lo70;

    .line 372
    .line 373
    invoke-direct {v4, v6}, Lo70;-><init>(I)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_2

    .line 377
    .line 378
    :cond_1e
    const-string v0, "java.net"

    .line 379
    .line 380
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_1f

    .line 385
    .line 386
    const-class p0, Ljava/net/URL;

    .line 387
    .line 388
    if-ne p1, p0, :cond_27

    .line 389
    .line 390
    new-instance v4, Lhd8;

    .line 391
    .line 392
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_2

    .line 396
    .line 397
    :cond_1f
    const-string v0, "java.io"

    .line 398
    .line 399
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_20

    .line 404
    .line 405
    const-class p0, Ljava/io/File;

    .line 406
    .line 407
    if-ne p1, p0, :cond_27

    .line 408
    .line 409
    new-instance v4, Lia3;

    .line 410
    .line 411
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 412
    .line 413
    .line 414
    goto :goto_2

    .line 415
    :cond_20
    const-string v0, "java.sql"

    .line 416
    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_23

    .line 422
    .line 423
    const-class p0, Ljava/sql/Time;

    .line 424
    .line 425
    if-ne p1, p0, :cond_21

    .line 426
    .line 427
    new-instance v4, Lfd2;

    .line 428
    .line 429
    invoke-direct {v4, p1}, Lfd2;-><init>(Ljava/lang/Class;)V

    .line 430
    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_21
    const-class p0, Ljava/sql/Date;

    .line 434
    .line 435
    if-ne p1, p0, :cond_22

    .line 436
    .line 437
    new-instance v4, Lfd2;

    .line 438
    .line 439
    invoke-direct {v4, p1}, Lfd2;-><init>(Ljava/lang/Class;)V

    .line 440
    .line 441
    .line 442
    goto :goto_2

    .line 443
    :cond_22
    const-class p0, Ljava/sql/Timestamp;

    .line 444
    .line 445
    if-ne p1, p0, :cond_27

    .line 446
    .line 447
    new-instance v4, Lfd2;

    .line 448
    .line 449
    invoke-direct {v4, p1}, Lfd2;-><init>(Ljava/lang/Class;)V

    .line 450
    .line 451
    .line 452
    goto :goto_2

    .line 453
    :cond_23
    const-string v0, "java.math"

    .line 454
    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result p0

    .line 459
    if-eqz p0, :cond_25

    .line 460
    .line 461
    const-class p0, Ljava/math/BigDecimal;

    .line 462
    .line 463
    if-ne p1, p0, :cond_24

    .line 464
    .line 465
    new-instance v4, Laq0;

    .line 466
    .line 467
    invoke-direct {v4, v6}, Laq0;-><init>(I)V

    .line 468
    .line 469
    .line 470
    goto :goto_2

    .line 471
    :cond_24
    const-class p0, Ljava/math/BigInteger;

    .line 472
    .line 473
    if-ne p1, p0, :cond_27

    .line 474
    .line 475
    new-instance v4, Lbq0;

    .line 476
    .line 477
    invoke-direct {v4, v6}, Lbq0;-><init>(I)V

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    if-eqz p0, :cond_27

    .line 486
    .line 487
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    .line 488
    .line 489
    .line 490
    move-result p0

    .line 491
    if-eqz p0, :cond_26

    .line 492
    .line 493
    new-instance v4, Lqx2;

    .line 494
    .line 495
    invoke-direct {v4, p1}, Lqx2;-><init>(Ljava/lang/Class;)V

    .line 496
    .line 497
    .line 498
    goto :goto_2

    .line 499
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    if-eqz p0, :cond_27

    .line 504
    .line 505
    new-instance v4, Lqx2;

    .line 506
    .line 507
    invoke-direct {v4, p1}, Lqx2;-><init>(Ljava/lang/Class;)V

    .line 508
    .line 509
    .line 510
    :cond_27
    :goto_2
    return-object v4
.end method

.method public g(Ls8;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lx91;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lx91;->e(Ls8;)Lgs7;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lnc5;

    .line 10
    .line 11
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/content/Context;

    .line 14
    .line 15
    check-cast p2, Lls7;

    .line 16
    .line 17
    invoke-direct {v1, p0, p2}, Lnc5;-><init>(Landroid/content/Context;Lls7;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public h(Ls8;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lx91;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lx91;->e(Ls8;)Lgs7;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lx91;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ldg7;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/Menu;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lad5;

    .line 22
    .line 23
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroid/content/Context;

    .line 26
    .line 27
    move-object v3, p2

    .line 28
    check-cast v3, Lfc5;

    .line 29
    .line 30
    invoke-direct {v2, p0, v3}, Lad5;-><init>(Landroid/content/Context;Lfc5;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2, v2}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public i(Ljava/lang/Object;Ljava/io/StringWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx91;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvq3;

    .line 4
    .line 5
    sget-object v1, Lrn5;->a:Lfa6;

    .line 6
    .line 7
    new-instance v1, Ll22;

    .line 8
    .line 9
    invoke-direct {v1, p2, v0}, Ll22;-><init>(Ljava/io/StringWriter;Lvq3;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Lbv5;

    .line 13
    .line 14
    iget-object v0, v1, Ll22;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Liv5;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lfv5;

    .line 22
    .line 23
    invoke-direct {v2, p2}, Lfv5;-><init>(Lev5;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p2, Lbv5;->a:Lfv5;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    iput v2, p2, Lbv5;->e:I

    .line 30
    .line 31
    iput-object v1, p2, Lbv5;->b:Ll22;

    .line 32
    .line 33
    iput-object v0, p2, Lbv5;->c:Liv5;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, v1, Ll22;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lwq3;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lx91;->a:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lnh;

    .line 51
    .line 52
    invoke-virtual {v0}, Lnh;->l()Li87;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :try_start_0
    new-instance v2, Lai5;

    .line 57
    .line 58
    iget-object v3, p0, Lx91;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Lwc9;

    .line 61
    .line 62
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lx44;

    .line 65
    .line 66
    invoke-direct {v2, v3, p0, v1}, Lai5;-><init>(Lwc9;Lx44;Li87;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Lro;

    .line 70
    .line 71
    invoke-direct {p0, v2}, Lro;-><init>(Lai5;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p0, Lro;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v3, Lai5;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p0, Lro;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Lcz4;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p2, p1, v1, v2}, Lro;->w(Lev5;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lnh;->d()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    invoke-virtual {v0}, Lnh;->d()V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lx91;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v4, v0

    .line 4
    check-cast v4, Lcom/google/android/recaptcha/RecaptchaAction;

    .line 5
    .line 6
    iget-object v0, p0, Lx91;->b:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    iget-object v0, p0, Lx91;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lx91;->c:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v5, p0

    .line 19
    check-cast v5, Lzq8;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Ly49;->a:Landroid/util/SparseArray;

    .line 44
    .line 45
    instance-of p1, p0, Lmf3;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    move-object p1, p0

    .line 50
    check-cast p1, Lmf3;

    .line 51
    .line 52
    iget-object p1, p1, Lmf3;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "MISSING_RECAPTCHA_TOKEN"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p1, 0x0

    .line 62
    :goto_0
    if-eqz p1, :cond_4

    .line 63
    .line 64
    const-string p0, "RecaptchaCallWrapper"

    .line 65
    .line 66
    const/4 p1, 0x4

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    const-string p0, "RecaptchaCallWrapper"

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "Falling back to recaptcha enterprise flow for action "

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    monitor-enter v1

    .line 89
    :try_start_0
    iget-object p0, v1, Lcom/google/firebase/auth/FirebaseAuth;->j:Lyo1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    .line 91
    monitor-exit v1

    .line 92
    if-nez p0, :cond_3

    .line 93
    .line 94
    new-instance p0, Lyo1;

    .line 95
    .line 96
    iget-object p1, v1, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 97
    .line 98
    invoke-direct {p0, p1, v1}, Lyo1;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 99
    .line 100
    .line 101
    monitor-enter v1

    .line 102
    :try_start_1
    iput-object p0, v1, Lcom/google/firebase/auth/FirebaseAuth;->j:Lyo1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    monitor-exit v1

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    move-object p0, v0

    .line 108
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    throw p0

    .line 110
    :cond_3
    :goto_1
    monitor-enter v1

    .line 111
    :try_start_3
    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->j:Lyo1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .line 113
    monitor-exit v1

    .line 114
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v3, v2, p0, v4}, Lyo1;->q(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance v1, Lbs2;

    .line 121
    .line 122
    const/4 v6, 0x4

    .line 123
    invoke-direct/range {v1 .. v6}, Lbs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v5}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    move-object p0, v0

    .line 137
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    throw p0

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    move-object p0, v0

    .line 141
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    throw p0

    .line 143
    :cond_4
    const-string p1, "RecaptchaCallWrapper"

    .line 144
    .line 145
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v3, "Initial task failed for action "

    .line 156
    .line 157
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, "with exception - "

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0
.end method
