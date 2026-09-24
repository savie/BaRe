.class public final Lu41;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lu41;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu41;->d:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lu41;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lu41;

    .line 7
    .line 8
    iget-object p0, p0, Lu41;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lkc;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lu41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance v0, Lu41;

    .line 18
    .line 19
    iget-object p0, p0, Lu41;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lc77;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, p2, v1}, Lu41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lu41;->c:Ljava/lang/Object;

    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lu41;->a:I

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
    invoke-virtual {p0, p1, p2}, Lu41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lu41;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lu41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lu41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lu41;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lu41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lu41;->a:I

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
    iget-object v4, p0, Lu41;->d:Ljava/lang/Object;

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
    check-cast v4, Lkc;

    .line 17
    .line 18
    iget v0, p0, Lu41;->b:I

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-eq v0, v5, :cond_1

    .line 24
    .line 25
    if-ne v0, v7, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move-object v1, v6

    .line 35
    goto :goto_4

    .line 36
    :cond_1
    iget-object v0, p0, Lu41;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lfc2;

    .line 39
    .line 40
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v4, Lkc;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Ltr9;

    .line 50
    .line 51
    iget-object p1, p1, Ltr9;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-lez p1, :cond_6

    .line 60
    .line 61
    :cond_3
    iget-object p1, v4, Lkc;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lxx1;

    .line 64
    .line 65
    invoke-interface {p1}, Lxx1;->d()Lox1;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lsz8;->p(Lox1;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v4, Lkc;->c:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    check-cast v0, Lfc2;

    .line 76
    .line 77
    iget-object p1, v4, Lkc;->d:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Luw0;

    .line 80
    .line 81
    iput-object v0, p0, Lu41;->c:Ljava/lang/Object;

    .line 82
    .line 83
    iput v5, p0, Lu41;->b:I

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p0}, Luw0;->B(Luw0;Lu41;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-ne p1, v3, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    :goto_1
    iput-object v6, p0, Lu41;->c:Ljava/lang/Object;

    .line 96
    .line 97
    iput v7, p0, Lu41;->b:I

    .line 98
    .line 99
    invoke-interface {v0, p1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v3, :cond_5

    .line 104
    .line 105
    :goto_2
    move-object v1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    :goto_3
    iget-object p1, v4, Lkc;->e:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Ltr9;

    .line 110
    .line 111
    iget-object p1, p1, Ltr9;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_3

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    const-string p0, "Check failed."

    .line 123
    .line 124
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_4
    return-object v1

    .line 129
    :pswitch_0
    iget-object v0, p0, Lu41;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Lxx1;

    .line 132
    .line 133
    iget v0, p0, Lu41;->b:I

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    if-ne v0, v5, :cond_7

    .line 138
    .line 139
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    move-object v3, v6

    .line 149
    goto :goto_9

    .line 150
    :cond_8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    check-cast v4, Lc77;

    .line 154
    .line 155
    :try_start_1
    iput-object v6, p0, Lu41;->c:Ljava/lang/Object;

    .line 156
    .line 157
    iput v5, p0, Lu41;->b:I

    .line 158
    .line 159
    invoke-interface {v4, p0, v1}, Lc77;->c(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-ne p0, v3, :cond_9

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_9
    :goto_5
    move-object p1, v1

    .line 167
    goto :goto_7

    .line 168
    :goto_6
    new-instance p1, Lbn6;

    .line 169
    .line 170
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :goto_7
    instance-of p0, p1, Lbn6;

    .line 174
    .line 175
    if-nez p0, :cond_a

    .line 176
    .line 177
    goto :goto_8

    .line 178
    :cond_a
    invoke-static {p1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    new-instance v1, Lq41;

    .line 183
    .line 184
    invoke-direct {v1, p0}, Lq41;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :goto_8
    new-instance v3, Ls41;

    .line 188
    .line 189
    invoke-direct {v3, v1}, Ls41;-><init>(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :goto_9
    return-object v3

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
