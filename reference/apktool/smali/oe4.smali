.class public final Loe4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyt3;


# direct methods
.method public synthetic constructor <init>(Lyt3;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Loe4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Loe4;->c:Lyt3;

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
    iget v0, p0, Loe4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Loe4;->c:Lyt3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Loe4;

    .line 9
    .line 10
    check-cast p0, Lqt3;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p2, v1}, Loe4;-><init>(Lyt3;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Loe4;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Loe4;

    .line 20
    .line 21
    check-cast p0, Lfj;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, p2, v1}, Loe4;-><init>(Lyt3;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Loe4;->b:Ljava/lang/Object;

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
    iget v0, p0, Loe4;->a:I

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
    invoke-virtual {p0, p1, p2}, Loe4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Loe4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Loe4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Loe4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Loe4;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Loe4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Loe4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Loe4;->c:Lyt3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Loe4;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lxx1;

    .line 16
    .line 17
    invoke-interface {p0}, Lxx1;->d()Lox1;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p1, Llv1;->b:Llv1;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lox1;->get(Lnx1;)Lmx1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast p0, Lrx1;

    .line 31
    .line 32
    invoke-static {}, Lly8;->a()Lbn1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v4, Lrq6;

    .line 37
    .line 38
    check-cast v1, Lqt3;

    .line 39
    .line 40
    invoke-direct {v4, v0, v1, v2}, Lrq6;-><init>(Lbn1;Lqt3;Ljv1;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Llv2;->a:Llv2;

    .line 44
    .line 45
    invoke-static {v1, p0, v3}, Lw13;->i(Lox1;Lox1;Z)Lox1;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v5, Lcn2;->a:Lrf2;

    .line 50
    .line 51
    if-eq v1, v5, :cond_0

    .line 52
    .line 53
    invoke-interface {v1, p1}, Lox1;->get(Lnx1;)Lmx1;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    invoke-interface {v1, v5}, Lox1;->plus(Lox1;)Lox1;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_0
    new-instance p1, Lbl7;

    .line 64
    .line 65
    invoke-direct {p1, v1, v3}, Lo3;-><init>(Lox1;Z)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lay1;->c:Lay1;

    .line 69
    .line 70
    invoke-virtual {p1, v1, p1, v4}, Lo3;->a0(Lay1;Lo3;Lqt3;)V

    .line 71
    .line 72
    .line 73
    :catch_0
    invoke-virtual {v0}, Lci4;->E()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    :try_start_0
    new-instance p1, Lff1;

    .line 80
    .line 81
    invoke-direct {p1, v0, v2, v3}, Lff1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lci4;->t()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_0
    return-object p0

    .line 94
    :pswitch_0
    iget-object p0, p0, Loe4;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lxx1;

    .line 97
    .line 98
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0}, Lxx1;->d()Lox1;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast v1, Lfj;

    .line 106
    .line 107
    :try_start_1
    new-instance p1, Lv28;

    .line 108
    .line 109
    invoke-direct {p1}, Lv28;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lsz8;->s(Lox1;)Loh4;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0, v3, p1}, Lsz8;->G(Loh4;ZLsh4;)Lin2;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    iput-object p0, p1, Lv28;->p:Lin2;

    .line 121
    .line 122
    sget-object p0, Lv28;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 123
    .line 124
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    const/4 p0, 0x2

    .line 131
    if-eq v0, p0, :cond_5

    .line 132
    .line 133
    const/4 p0, 0x3

    .line 134
    if-ne v0, p0, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-static {v0}, Lv28;->s(I)V

    .line 138
    .line 139
    .line 140
    throw v2

    .line 141
    :cond_4
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0, p1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lfj;->invoke()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    sget-object p0, Lbe8;->a:Lbe8;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .line 153
    :try_start_3
    invoke-virtual {p1}, Lv28;->r()V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    invoke-virtual {p1}, Lv28;->r()V

    .line 159
    .line 160
    .line 161
    throw p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 162
    :catch_1
    move-exception p0

    .line 163
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 164
    .line 165
    const-string v0, "Blocking call was interrupted due to parent cancellation"

    .line 166
    .line 167
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    throw p0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
