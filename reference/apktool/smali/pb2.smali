.class public final Lpb2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Lga2;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lic2;


# direct methods
.method public constructor <init>(Lic2;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpb2;->d:Lic2;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance v0, Lpb2;

    .line 2
    .line 3
    iget-object p0, p0, Lpb2;->d:Lic2;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lpb2;-><init>(Lic2;Ljv1;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lpb2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lli3;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lpb2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lpb2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lpb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lpb2;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, Lpb2;->d:Lic2;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    sget-object v7, Lyx1;->a:Lyx1;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    if-eq v0, v5, :cond_1

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v6

    .line 31
    :cond_1
    iget-object v0, p0, Lpb2;->a:Lga2;

    .line 32
    .line 33
    iget-object v2, p0, Lpb2;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lli3;

    .line 36
    .line 37
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lpb2;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lli3;

    .line 44
    .line 45
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object v2, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lpb2;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lli3;

    .line 56
    .line 57
    iput-object p1, p0, Lpb2;->c:Ljava/lang/Object;

    .line 58
    .line 59
    iput v2, p0, Lpb2;->b:I

    .line 60
    .line 61
    iget-object v0, v4, Lic2;->c:Lxx1;

    .line 62
    .line 63
    invoke-interface {v0}, Lxx1;->d()Lox1;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v8, Lzq1;

    .line 68
    .line 69
    invoke-direct {v8, v4, v6, v2}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v8, p0}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-ne v0, v7, :cond_4

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_4
    move-object v2, p1

    .line 81
    move-object p1, v0

    .line 82
    :goto_0
    move-object v0, p1

    .line 83
    check-cast v0, Lem7;

    .line 84
    .line 85
    instance-of p1, v0, Lga2;

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    move-object p1, v0

    .line 90
    check-cast p1, Lga2;

    .line 91
    .line 92
    iget-object v8, p1, Lga2;->b:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object v2, p0, Lpb2;->c:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object p1, p0, Lpb2;->a:Lga2;

    .line 97
    .line 98
    iput v5, p0, Lpb2;->b:I

    .line 99
    .line 100
    invoke-interface {v2, v8, p0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v7, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    instance-of p1, v0, Lod8;

    .line 108
    .line 109
    if-nez p1, :cond_b

    .line 110
    .line 111
    instance-of p1, v0, Ljf6;

    .line 112
    .line 113
    if-nez p1, :cond_a

    .line 114
    .line 115
    instance-of p1, v0, Lne3;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    :goto_1
    iget-object p1, v4, Lic2;->h:Ltr9;

    .line 121
    .line 122
    iget-object p1, p1, Ltr9;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Lkm7;

    .line 125
    .line 126
    new-instance v8, Llb2;

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    invoke-direct {v8, v4, v6, v9}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 130
    .line 131
    .line 132
    new-instance v10, Lcd;

    .line 133
    .line 134
    const/4 v11, 0x6

    .line 135
    invoke-direct {v10, v11, v8, p1}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lwm;

    .line 139
    .line 140
    invoke-direct {p1, v5, v6}, Lwm;-><init>(ILjv1;)V

    .line 141
    .line 142
    .line 143
    new-instance v5, Lla;

    .line 144
    .line 145
    invoke-direct {v5, v10, p1}, Lla;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lt72;

    .line 149
    .line 150
    invoke-direct {p1, v0, v6}, Lt72;-><init>(Lem7;Ljv1;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lc00;

    .line 154
    .line 155
    const/4 v8, 0x5

    .line 156
    invoke-direct {v0, v8, v5, p1}, Lc00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Ljq6;

    .line 160
    .line 161
    const/16 v5, 0x9

    .line 162
    .line 163
    invoke-direct {p1, v0, v5}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lmb2;

    .line 167
    .line 168
    invoke-direct {v0, v4, v6}, Lmb2;-><init>(Lic2;Ljv1;)V

    .line 169
    .line 170
    .line 171
    new-instance v4, Lh80;

    .line 172
    .line 173
    const/16 v5, 0x8

    .line 174
    .line 175
    invoke-direct {v4, p1, v0, v5, v9}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 176
    .line 177
    .line 178
    iput-object v6, p0, Lpb2;->c:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v6, p0, Lpb2;->a:Lga2;

    .line 181
    .line 182
    iput v1, p0, Lpb2;->b:I

    .line 183
    .line 184
    instance-of p1, v2, Ly28;

    .line 185
    .line 186
    if-nez p1, :cond_9

    .line 187
    .line 188
    invoke-virtual {v4, v2, p0}, Lh80;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-ne p0, v7, :cond_7

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    move-object p0, v3

    .line 196
    :goto_2
    if-ne p0, v7, :cond_8

    .line 197
    .line 198
    :goto_3
    return-object v7

    .line 199
    :cond_8
    :goto_4
    return-object v3

    .line 200
    :cond_9
    check-cast v2, Ly28;

    .line 201
    .line 202
    iget-object p0, v2, Ly28;->a:Ljava/lang/Throwable;

    .line 203
    .line 204
    throw p0

    .line 205
    :cond_a
    check-cast v0, Ljf6;

    .line 206
    .line 207
    iget-object p0, v0, Ljf6;->b:Ljava/lang/Throwable;

    .line 208
    .line 209
    throw p0

    .line 210
    :cond_b
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 211
    .line 212
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-object v6
.end method
