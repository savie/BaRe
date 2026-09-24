.class public final Lx72;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lhe5;Ljava/util/List;ZLjv1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx72;->a:I

    .line 15
    iput-object p1, p0, Lx72;->d:Ljava/lang/Object;

    iput-object p2, p0, Lx72;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lx72;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Ljv1;Lmt3;Leo6;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx72;->a:I

    .line 3
    .line 4
    iput-object p3, p0, Lx72;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p4, p0, Lx72;->c:Z

    .line 7
    .line 8
    iput-object p2, p0, Lx72;->e:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-direct {p0, p2, p1}, Lws7;-><init>(ILjv1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget p1, p0, Lx72;->a:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lx72;->c:Z

    .line 4
    .line 5
    iget-object v1, p0, Lx72;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lx72;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lx72;

    .line 13
    .line 14
    check-cast p0, Lhe5;

    .line 15
    .line 16
    check-cast v1, Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, v0, p2}, Lx72;-><init>(Lhe5;Ljava/util/List;ZLjv1;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Lx72;

    .line 23
    .line 24
    check-cast p0, Leo6;

    .line 25
    .line 26
    check-cast v1, Lmt3;

    .line 27
    .line 28
    invoke-direct {p1, p2, v1, p0, v0}, Lx72;-><init>(Ljv1;Lmt3;Leo6;Z)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lx72;->a:I

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
    invoke-virtual {p0, p1, p2}, Lx72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lx72;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lx72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lx72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lx72;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lx72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 12

    .line 1
    iget v0, p0, Lx72;->a:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    sget-object v2, Lyx1;->a:Lyx1;

    .line 6
    .line 7
    iget-object v3, p0, Lx72;->d:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, Lx72;->e:Ljava/lang/Object;

    .line 11
    .line 12
    iget-boolean v6, p0, Lx72;->c:Z

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v5, Ljava/util/List;

    .line 19
    .line 20
    check-cast v3, Lhe5;

    .line 21
    .line 22
    iget-object v0, v3, Lhe5;->f:Lex6;

    .line 23
    .line 24
    iget v8, p0, Lx72;->b:I

    .line 25
    .line 26
    if-eqz v8, :cond_1

    .line 27
    .line 28
    if-ne v8, v4, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v2, v7

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    const p1, 0x7f1301f8

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Lqo0;->h(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v6}, Lud5;->b(Ljava/util/List;Z)Z

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    sub-long/2addr v10, v8

    .line 61
    const-wide/16 v8, 0x1f4

    .line 62
    .line 63
    cmp-long p1, v10, v8

    .line 64
    .line 65
    if-gez p1, :cond_2

    .line 66
    .line 67
    sub-long/2addr v8, v10

    .line 68
    iput v4, p0, Lx72;->b:I

    .line 69
    .line 70
    invoke-static {v8, v9, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-ne p0, v2, :cond_2

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lqo0;->f()V

    .line 78
    .line 79
    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    sget-object p0, Lze5;->LOCAL_AND_CLOUD:Lze5;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    sget-object p0, Lze5;->LOCAL:Lze5;

    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance p1, Laf5;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p0, p1, Laf5;->a:Lze5;

    .line 96
    .line 97
    invoke-static {}, Lny2;->b()Lny2;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p1}, Lny2;->e(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lfe5;

    .line 109
    .line 110
    if-eqz p0, :cond_4

    .line 111
    .line 112
    iget-object p0, p0, Lfe5;->b:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-ne p1, p0, :cond_4

    .line 123
    .line 124
    invoke-virtual {v3}, Lqo0;->d()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    new-instance p0, Lfe5;

    .line 129
    .line 130
    new-instance p1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1, v4}, Lfe5;-><init>(Ljava/util/ArrayList;Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object p0, Lzn4;->a:Lzn4;

    .line 142
    .line 143
    new-instance p0, Lmj;

    .line 144
    .line 145
    const/4 p1, 0x2

    .line 146
    invoke-direct {p0, v3, v7, p1}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v7, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 150
    .line 151
    .line 152
    :goto_2
    sget-object v2, Lbe8;->a:Lbe8;

    .line 153
    .line 154
    :goto_3
    return-object v2

    .line 155
    :pswitch_0
    iget v0, p0, Lx72;->b:I

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    if-ne v0, v4, :cond_5

    .line 160
    .line 161
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    move-object p1, v7

    .line 169
    goto :goto_4

    .line 170
    :cond_6
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    check-cast v3, Leo6;

    .line 174
    .line 175
    new-instance p1, La82;

    .line 176
    .line 177
    check-cast v5, Lmt3;

    .line 178
    .line 179
    invoke-direct {p1, v7, v5, v3, v6}, La82;-><init>(Ljv1;Lmt3;Leo6;Z)V

    .line 180
    .line 181
    .line 182
    iput v4, p0, Lx72;->b:I

    .line 183
    .line 184
    invoke-virtual {v3, v6, p1, p0}, Leo6;->k(ZLqt3;Lkv1;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v2, :cond_7

    .line 189
    .line 190
    move-object p1, v2

    .line 191
    :cond_7
    :goto_4
    return-object p1

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
