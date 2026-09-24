.class public final Ldm2;
.super Lan6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lq63;


# direct methods
.method public constructor <init>(Lq63;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldm2;->f:Lq63;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lan6;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance v0, Ldm2;

    .line 2
    .line 3
    iget-object p0, p0, Ldm2;->f:Lq63;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Ldm2;-><init>(Lq63;Ljv1;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Ldm2;->e:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg77;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ldm2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ldm2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ldm2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ldm2;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg77;

    .line 4
    .line 5
    iget v1, p0, Ldm2;->d:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Lyx1;->a:Lyx1;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    if-eq v1, v6, :cond_3

    .line 17
    .line 18
    if-eq v1, v5, :cond_2

    .line 19
    .line 20
    if-eq v1, v4, :cond_1

    .line 21
    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_1
    iget v1, p0, Ldm2;->c:I

    .line 36
    .line 37
    iget v4, p0, Ldm2;->b:I

    .line 38
    .line 39
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_2
    iget v1, p0, Ldm2;->c:I

    .line 45
    .line 46
    iget v5, p0, Ldm2;->b:I

    .line 47
    .line 48
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget v1, p0, Ldm2;->c:I

    .line 53
    .line 54
    iget v6, p0, Ldm2;->b:I

    .line 55
    .line 56
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Ldm2;->f:Lq63;

    .line 64
    .line 65
    invoke-virtual {p1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    instance-of p1, p1, Lorg/swiftapps/filesystem/File$FileType$JavaFile;

    .line 70
    .line 71
    sget v1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 72
    .line 73
    invoke-static {}, Lk55;->k()Lzd7;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v8, 0x0

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ne v1, v6, :cond_5

    .line 85
    .line 86
    move v1, v6

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    move v1, v8

    .line 89
    :goto_0
    if-eqz p1, :cond_6

    .line 90
    .line 91
    sget-object v2, Lo93;->NORMAL:Lo93;

    .line 92
    .line 93
    iput-object v0, p0, Ldm2;->e:Ljava/lang/Object;

    .line 94
    .line 95
    iput p1, p0, Ldm2;->b:I

    .line 96
    .line 97
    iput v1, p0, Ldm2;->c:I

    .line 98
    .line 99
    iput v6, p0, Ldm2;->d:I

    .line 100
    .line 101
    invoke-virtual {v0, v2, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 102
    .line 103
    .line 104
    return-object v7

    .line 105
    :cond_6
    move v6, p1

    .line 106
    :goto_1
    if-nez v1, :cond_a

    .line 107
    .line 108
    sget p1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 109
    .line 110
    invoke-static {}, Lk55;->j()Lzd7;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    move v5, v6

    .line 122
    :goto_2
    sget-object p1, Lqe7;->a:Lgv7;

    .line 123
    .line 124
    invoke-static {}, Lle7;->f()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    invoke-static {}, Lqe7;->b()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_8

    .line 135
    .line 136
    sget-object p1, Lo93;->SHIZUKU:Lo93;

    .line 137
    .line 138
    iput-object v0, p0, Ldm2;->e:Ljava/lang/Object;

    .line 139
    .line 140
    iput v5, p0, Ldm2;->b:I

    .line 141
    .line 142
    iput v1, p0, Ldm2;->c:I

    .line 143
    .line 144
    iput v4, p0, Ldm2;->d:I

    .line 145
    .line 146
    invoke-virtual {v0, p1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 147
    .line 148
    .line 149
    return-object v7

    .line 150
    :cond_8
    move v4, v5

    .line 151
    :goto_3
    if-nez v4, :cond_9

    .line 152
    .line 153
    sget-object p1, Lo93;->NORMAL:Lo93;

    .line 154
    .line 155
    iput-object v2, p0, Ldm2;->e:Ljava/lang/Object;

    .line 156
    .line 157
    iput v4, p0, Ldm2;->b:I

    .line 158
    .line 159
    iput v1, p0, Ldm2;->c:I

    .line 160
    .line 161
    iput v3, p0, Ldm2;->d:I

    .line 162
    .line 163
    invoke-virtual {v0, p1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 164
    .line 165
    .line 166
    return-object v7

    .line 167
    :cond_9
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_a
    :goto_5
    sget-object p1, Lo93;->ROOT:Lo93;

    .line 171
    .line 172
    iput-object v0, p0, Ldm2;->e:Ljava/lang/Object;

    .line 173
    .line 174
    iput v6, p0, Ldm2;->b:I

    .line 175
    .line 176
    iput v1, p0, Ldm2;->c:I

    .line 177
    .line 178
    iput v5, p0, Ldm2;->d:I

    .line 179
    .line 180
    invoke-virtual {v0, p1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 181
    .line 182
    .line 183
    return-object v7
.end method
