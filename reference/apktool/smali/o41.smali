.class public final Lo41;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 13
    iput p3, p0, Lo41;->a:I

    iput-object p1, p0, Lo41;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Lqt3;Lb36;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo41;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lo41;->d:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lo41;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo41;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lo41;

    .line 9
    .line 10
    check-cast v1, Lmt3;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p0, v1, p2, v0}, Lo41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Lo41;

    .line 20
    .line 21
    check-cast v1, Ljava/util/List;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {p0, v1, p2, v0}, Lo41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance p1, Lo41;

    .line 31
    .line 32
    iget-object p0, p0, Lo41;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lqt3;

    .line 35
    .line 36
    check-cast v1, Lb36;

    .line 37
    .line 38
    invoke-direct {p1, p0, v1, p2}, Lo41;-><init>(Lqt3;Lb36;Ljv1;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_2
    new-instance p0, Lo41;

    .line 43
    .line 44
    check-cast v1, Lp41;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v1, p2, v0}, Lo41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 51
    .line 52
    return-object p0

    .line 53
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
    iget v0, p0, Lo41;->a:I

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
    invoke-virtual {p0, p1, p2}, Lo41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lo41;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lo41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lib2;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lo41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lo41;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lo41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lo41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lo41;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lo41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lo41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lo41;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lo41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lo41;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lo41;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lyx1;->a:Lyx1;

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
    iget v0, p0, Lo41;->b:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    move-object p1, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lxx1;

    .line 37
    .line 38
    invoke-interface {p1}, Lxx1;->d()Lox1;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lc98;->b:Lsl4;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    check-cast v2, Lmt3;

    .line 51
    .line 52
    iput v5, p0, Lo41;->b:I

    .line 53
    .line 54
    invoke-interface {v2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v4, :cond_3

    .line 59
    .line 60
    move-object p1, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string p0, "Expected a TransactionElement in the CoroutineContext but none was found."

    .line 63
    .line 64
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    return-object p1

    .line 69
    :pswitch_0
    iget v0, p0, Lo41;->b:I

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    if-ne v0, v5, :cond_4

    .line 74
    .line 75
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v1, v6

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lib2;

    .line 90
    .line 91
    check-cast v2, Ljava/util/List;

    .line 92
    .line 93
    iput v5, p0, Lo41;->b:I

    .line 94
    .line 95
    invoke-static {v2, p1, p0}, Lzh8;->a(Ljava/util/List;Lib2;Lkv1;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-ne p0, v4, :cond_6

    .line 100
    .line 101
    move-object v1, v4

    .line 102
    :cond_6
    :goto_2
    return-object v1

    .line 103
    :pswitch_1
    iget v0, p0, Lo41;->b:I

    .line 104
    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    if-ne v0, v5, :cond_7

    .line 108
    .line 109
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object p1, v6

    .line 117
    goto :goto_3

    .line 118
    :cond_8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lo41;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Lqt3;

    .line 124
    .line 125
    check-cast v2, Lb36;

    .line 126
    .line 127
    iput v5, p0, Lo41;->b:I

    .line 128
    .line 129
    invoke-interface {p1, v2, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v4, :cond_9

    .line 134
    .line 135
    move-object p1, v4

    .line 136
    :cond_9
    :goto_3
    return-object p1

    .line 137
    :pswitch_2
    iget-object v0, p0, Lo41;->c:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lli3;

    .line 140
    .line 141
    iget v7, p0, Lo41;->b:I

    .line 142
    .line 143
    if-eqz v7, :cond_b

    .line 144
    .line 145
    if-ne v7, v5, :cond_a

    .line 146
    .line 147
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_a
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v1, v6

    .line 155
    goto :goto_5

    .line 156
    :cond_b
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    check-cast v2, Lp41;

    .line 160
    .line 161
    iput-object v6, p0, Lo41;->c:Ljava/lang/Object;

    .line 162
    .line 163
    iput v5, p0, Lo41;->b:I

    .line 164
    .line 165
    iget-object p1, v2, Lp41;->d:Lji3;

    .line 166
    .line 167
    invoke-interface {p1, v0, p0}, Lji3;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    if-ne p0, v4, :cond_c

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_c
    move-object p0, v1

    .line 175
    :goto_4
    if-ne p0, v4, :cond_d

    .line 176
    .line 177
    move-object v1, v4

    .line 178
    :cond_d
    :goto_5
    return-object v1

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
