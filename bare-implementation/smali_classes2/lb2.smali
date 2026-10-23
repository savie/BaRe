.class public final Llb2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Llb2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Llb2;->c:Ljava/lang/Object;

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
    iget p1, p0, Llb2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Llb2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Llb2;

    .line 9
    .line 10
    check-cast p0, Lpp8;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, p2, v0}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Llb2;

    .line 18
    .line 19
    check-cast p0, Lka7;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p1, p0, p2, v0}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Llb2;

    .line 27
    .line 28
    check-cast p0, Lkg4;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, p0, p2, v0}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Llb2;

    .line 36
    .line 37
    check-cast p0, Lic2;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p1, p0, p2, v0}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Llb2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lxx1;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Llb2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Llb2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Llb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lxx1;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Llb2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Llb2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Llb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lxx1;

    .line 39
    .line 40
    check-cast p2, Ljv1;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Llb2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Llb2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Llb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lli3;

    .line 54
    .line 55
    check-cast p2, Ljv1;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Llb2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Llb2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Llb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Llb2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    iget-object v4, p0, Llb2;->c:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v4, Lpp8;

    .line 17
    .line 18
    iget-object v0, v4, Lpp8;->h:Luv7;

    .line 19
    .line 20
    iget v7, p0, Llb2;->b:I

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    if-ne v7, v5, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v4, Lpp8;->r:Lex6;

    .line 39
    .line 40
    sget-object v2, Lwo8;->a:Lwo8;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput v5, p0, Llb2;->b:I

    .line 46
    .line 47
    const-wide/16 v7, 0x3e8

    .line 48
    .line 49
    invoke-static {v7, v8, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-ne p0, v3, :cond_2

    .line 54
    .line 55
    move-object v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    iget-object p0, v4, Lpp8;->k:Lop8;

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object p1, Luv7;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    new-instance p0, Lop8;

    .line 70
    .line 71
    invoke-direct {p0, v4}, Lop8;-><init>(Lpp8;)V

    .line 72
    .line 73
    .line 74
    iput-object p0, v4, Lpp8;->k:Lop8;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object p1, Lzn4;->a:Lzn4;

    .line 80
    .line 81
    new-instance p1, Lmg1;

    .line 82
    .line 83
    const/4 v0, 0x5

    .line 84
    invoke-direct {p1, p0, v6, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v6, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object v1

    .line 91
    :pswitch_0
    iget v0, p0, Llb2;->b:I

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    if-ne v0, v5, :cond_4

    .line 96
    .line 97
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object p1, v6

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    check-cast v4, Lka7;

    .line 110
    .line 111
    iget-object p1, v4, Lka7;->b:Lfb2;

    .line 112
    .line 113
    invoke-interface {p1}, Lfb2;->getData()Lji3;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput v5, p0, Llb2;->b:I

    .line 118
    .line 119
    invoke-static {p1, p0}, Lxx3;->d(Lji3;Lkv1;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v3, :cond_6

    .line 124
    .line 125
    move-object p1, v3

    .line 126
    :cond_6
    :goto_2
    return-object p1

    .line 127
    :pswitch_1
    iget v0, p0, Llb2;->b:I

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    if-ne v0, v5, :cond_7

    .line 132
    .line 133
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object v1, v6

    .line 141
    goto :goto_3

    .line 142
    :cond_8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    check-cast v4, Lkg4;

    .line 146
    .line 147
    iget-object p1, v4, Lkg4;->b:Lmb8;

    .line 148
    .line 149
    iput v5, p0, Llb2;->b:I

    .line 150
    .line 151
    invoke-virtual {p1, p0}, Lmb8;->e(Lkv1;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-ne p0, v3, :cond_9

    .line 156
    .line 157
    move-object v1, v3

    .line 158
    :cond_9
    :goto_3
    return-object v1

    .line 159
    :pswitch_2
    iget v0, p0, Llb2;->b:I

    .line 160
    .line 161
    if-eqz v0, :cond_b

    .line 162
    .line 163
    if-ne v0, v5, :cond_a

    .line 164
    .line 165
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_a
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v1, v6

    .line 173
    goto :goto_4

    .line 174
    :cond_b
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    check-cast v4, Lic2;

    .line 178
    .line 179
    iput v5, p0, Llb2;->b:I

    .line 180
    .line 181
    invoke-static {v4, p0}, Lic2;->d(Lic2;Lkv1;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    if-ne p0, v3, :cond_c

    .line 186
    .line 187
    move-object v1, v3

    .line 188
    :cond_c
    :goto_4
    return-object v1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
