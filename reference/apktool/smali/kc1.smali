.class public final Lkc1;
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
    iput p3, p0, Lkc1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkc1;->c:Ljava/lang/Object;

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
    iget p1, p0, Lkc1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lkc1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lkc1;

    .line 9
    .line 10
    check-cast p0, Lmt3;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lkc1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lkc1;

    .line 18
    .line 19
    check-cast p0, Lih4;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lkc1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lkc1;

    .line 27
    .line 28
    check-cast p0, Llc1;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lkc1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkc1;->a:I

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
    invoke-virtual {p0, p1, p2}, Lkc1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lkc1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lkc1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lkc1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lkc1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lkc1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lkc1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lkc1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lkc1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lkc1;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lkc1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lyx1;->a:Lyx1;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lkc1;->b:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lry5;->u:Ljava/lang/String;

    .line 35
    .line 36
    sget-object p1, Lzn7;->q:Lyn7;

    .line 37
    .line 38
    invoke-virtual {p1}, Lyn7;->d()Lzn7;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lqy5;->b(Lzn7;)Lry5;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast v2, Lmt3;

    .line 47
    .line 48
    sget-object v0, Lzn4;->a:Lzn4;

    .line 49
    .line 50
    new-instance v0, Lyq;

    .line 51
    .line 52
    const/4 v3, 0x7

    .line 53
    invoke-direct {v0, v3, v2, p1}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput v6, p0, Lkc1;->b:I

    .line 57
    .line 58
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-ne p0, v5, :cond_2

    .line 63
    .line 64
    move-object v1, v5

    .line 65
    :cond_2
    :goto_0
    return-object v1

    .line 66
    :pswitch_0
    iget v0, p0, Lkc1;->b:I

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    if-ne v0, v6, :cond_3

    .line 71
    .line 72
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    check-cast v2, Lih4;

    .line 84
    .line 85
    iget-object p1, v2, Lih4;->c:Lw36;

    .line 86
    .line 87
    iget-object p1, p1, Lw36;->a:Lfb2;

    .line 88
    .line 89
    invoke-interface {p1}, Lfb2;->getData()Lji3;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput v6, p0, Lkc1;->b:I

    .line 94
    .line 95
    invoke-static {p1, p0}, Lxx3;->e(Lji3;Lkv1;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v5, :cond_5

    .line 100
    .line 101
    move-object v3, v5

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    :goto_1
    check-cast p1, Lij5;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1}, Lij5;->a()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_2

    .line 112
    :cond_6
    sget-object v3, Lpv2;->a:Lpv2;

    .line 113
    .line 114
    :goto_2
    return-object v3

    .line 115
    :pswitch_1
    check-cast v2, Llc1;

    .line 116
    .line 117
    iget v0, p0, Lkc1;->b:I

    .line 118
    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    if-ne v0, v6, :cond_7

    .line 122
    .line 123
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move-object v1, v3

    .line 131
    goto :goto_4

    .line 132
    :cond_8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const p1, 0x7f13042d

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1}, Lqo0;->h(I)V

    .line 139
    .line 140
    .line 141
    iput v6, p0, Lkc1;->b:I

    .line 142
    .line 143
    const-wide/16 v3, 0x3e8

    .line 144
    .line 145
    invoke-static {v3, v4, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    if-ne p0, v5, :cond_9

    .line 150
    .line 151
    move-object v1, v5

    .line 152
    goto :goto_4

    .line 153
    :cond_9
    :goto_3
    iget-object p0, v2, Llc1;->g:Lix6;

    .line 154
    .line 155
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Lqo0;->f()V

    .line 161
    .line 162
    .line 163
    :goto_4
    return-object v1

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
