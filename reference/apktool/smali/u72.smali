.class public final Lu72;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Lf98;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Leo6;

.field public final synthetic k:Lmt3;


# direct methods
.method public constructor <init>(Ljv1;Lmt3;Leo6;ZZ)V
    .locals 0

    .line 1
    iput-boolean p4, p0, Lu72;->d:Z

    .line 2
    .line 3
    iput-boolean p5, p0, Lu72;->e:Z

    .line 4
    .line 5
    iput-object p3, p0, Lu72;->f:Leo6;

    .line 6
    .line 7
    iput-object p2, p0, Lu72;->k:Lmt3;

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-direct {p0, p2, p1}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Lu72;

    .line 2
    .line 3
    iget-object v3, p0, Lu72;->f:Leo6;

    .line 4
    .line 5
    iget-object v2, p0, Lu72;->k:Lmt3;

    .line 6
    .line 7
    iget-boolean v4, p0, Lu72;->d:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Lu72;->e:Z

    .line 10
    .line 11
    move-object v1, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lu72;-><init>(Ljv1;Lmt3;Leo6;ZZ)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lu72;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg98;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lu72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lu72;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lu72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lu72;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lu72;->k:Lmt3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lu72;->f:Leo6;

    .line 7
    .line 8
    iget-boolean v4, p0, Lu72;->e:Z

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    sget-object v9, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    if-eq v0, v8, :cond_3

    .line 19
    .line 20
    if-eq v0, v7, :cond_2

    .line 21
    .line 22
    if-eq v0, v6, :cond_1

    .line 23
    .line 24
    if-ne v0, v5, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lu72;->c:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_7

    .line 32
    .line 33
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    iget-object v0, p0, Lu72;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lg98;

    .line 42
    .line 43
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lu72;->a:Lf98;

    .line 49
    .line 50
    iget-object v7, p0, Lu72;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, Lg98;

    .line 53
    .line 54
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    iget-object v0, p0, Lu72;->a:Lf98;

    .line 59
    .line 60
    iget-object v8, p0, Lu72;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Lg98;

    .line 63
    .line 64
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lu72;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lg98;

    .line 74
    .line 75
    iget-boolean v0, p0, Lu72;->d:Z

    .line 76
    .line 77
    if-eqz v0, :cond_f

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    sget-object v0, Lf98;->a:Lf98;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    sget-object v0, Lf98;->b:Lf98;

    .line 85
    .line 86
    :goto_0
    if-nez v4, :cond_a

    .line 87
    .line 88
    iput-object p1, p0, Lu72;->c:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v0, p0, Lu72;->a:Lf98;

    .line 91
    .line 92
    iput v8, p0, Lu72;->b:I

    .line 93
    .line 94
    invoke-interface {p1, p0}, Lg98;->b(Ljv1;)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    if-ne v8, v9, :cond_6

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    move-object v10, v8

    .line 102
    move-object v8, p1

    .line 103
    move-object p1, v10

    .line 104
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_9

    .line 111
    .line 112
    invoke-virtual {v3}, Leo6;->d()Lkg4;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object v8, p0, Lu72;->c:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v0, p0, Lu72;->a:Lf98;

    .line 119
    .line 120
    iput v7, p0, Lu72;->b:I

    .line 121
    .line 122
    iget-object p1, p1, Lkg4;->b:Lmb8;

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Lmb8;->e(Lkv1;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-ne p1, v9, :cond_7

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    sget-object p1, Lbe8;->a:Lbe8;

    .line 132
    .line 133
    :goto_2
    if-ne p1, v9, :cond_8

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_8
    move-object v7, v8

    .line 137
    :goto_3
    move-object p1, v0

    .line 138
    move-object v0, v7

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    move-object p1, v0

    .line 141
    move-object v0, v8

    .line 142
    goto :goto_4

    .line 143
    :cond_a
    move-object v10, v0

    .line 144
    move-object v0, p1

    .line 145
    move-object p1, v10

    .line 146
    :goto_4
    new-instance v7, Lt72;

    .line 147
    .line 148
    invoke-direct {v7, v1, v2}, Lt72;-><init>(Lmt3;Ljv1;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lu72;->c:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v2, p0, Lu72;->a:Lf98;

    .line 154
    .line 155
    iput v6, p0, Lu72;->b:I

    .line 156
    .line 157
    invoke-interface {v0, p1, v7, p0}, Lg98;->a(Lf98;Lqt3;Lws7;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-ne p1, v9, :cond_b

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_b
    :goto_5
    if-nez v4, :cond_e

    .line 165
    .line 166
    iput-object p1, p0, Lu72;->c:Ljava/lang/Object;

    .line 167
    .line 168
    iput v5, p0, Lu72;->b:I

    .line 169
    .line 170
    invoke-interface {v0, p0}, Lg98;->b(Ljv1;)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-ne p0, v9, :cond_c

    .line 175
    .line 176
    :goto_6
    return-object v9

    .line 177
    :cond_c
    move-object v10, p1

    .line 178
    move-object p1, p0

    .line 179
    move-object p0, v10

    .line 180
    :goto_7
    check-cast p1, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_d

    .line 187
    .line 188
    invoke-virtual {v3}, Leo6;->d()Lkg4;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lkg4;->a()V

    .line 193
    .line 194
    .line 195
    :cond_d
    return-object p0

    .line 196
    :cond_e
    return-object p1

    .line 197
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    check-cast p1, Lgf6;

    .line 201
    .line 202
    invoke-interface {p1}, Lgf6;->d()Lfw6;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-interface {v1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0
.end method
