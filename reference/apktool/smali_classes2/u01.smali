.class public final Lu01;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjv1;)V
    .locals 1

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lu01;->a:I

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lu01;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu01;->b:Ljava/lang/Object;

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
    iget v0, p0, Lu01;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lu01;

    .line 7
    .line 8
    iget-object p0, p0, Lu01;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lq47;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lu01;

    .line 18
    .line 19
    iget-object p0, p0, Lu01;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcs6;

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-direct {p1, p0, p2, v0}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p0, Lu01;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-direct {p0, v0, p2}, Lu01;-><init>(ILjv1;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lu01;->b:Ljava/lang/Object;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_2
    new-instance p1, Lu01;

    .line 38
    .line 39
    iget-object p0, p0, Lu01;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Leb2;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p1, p0, p2, v0}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_3
    new-instance p1, Lu01;

    .line 49
    .line 50
    iget-object p0, p0, Lu01;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lv01;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {p1, p0, p2, v0}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lu01;->a:I

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
    invoke-virtual {p0, p1, p2}, Lu01;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lu01;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lu01;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lxx1;

    .line 23
    .line 24
    check-cast p2, Ljv1;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lu01;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lu01;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lu01;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    check-cast p2, Ljv1;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lu01;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lu01;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lu01;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_2
    check-cast p1, Lxx1;

    .line 51
    .line 52
    check-cast p2, Ljv1;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lu01;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lu01;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lu01;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_3
    check-cast p1, Lxx1;

    .line 65
    .line 66
    check-cast p2, Ljv1;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lu01;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lu01;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lu01;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu01;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v4, 0x3e8

    .line 15
    .line 16
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    iget-object v0, v0, Lu01;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lq47;

    .line 22
    .line 23
    new-instance v1, Lh47;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lh47;-><init>(Lq47;Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :pswitch_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 36
    .line 37
    invoke-virtual {v4}, Lvr6;->getMessages()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v0, v0, Lu01;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcs6;

    .line 44
    .line 45
    iget-boolean v6, v0, Lcs6;->f:Z

    .line 46
    .line 47
    const/16 v9, 0x8

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    move v7, v6

    .line 52
    invoke-static/range {v4 .. v10}, Lvr6;->filterLogs$default(Lvr6;Ljava/util/List;ZZZILjava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    iget-object v0, v0, Lcs6;->e:Lex6;

    .line 57
    .line 58
    new-instance v11, Lfm7;

    .line 59
    .line 60
    const/4 v15, 0x0

    .line 61
    const/16 v16, 0x1e

    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v14, 0x0

    .line 65
    invoke-direct/range {v11 .. v16}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v11}, Lex6;->k(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :pswitch_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lu01;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Ljava/lang/String;

    .line 78
    .line 79
    const-string v1, "FirebaseSessions"

    .line 80
    .line 81
    const-string v2, "Error failed to fetch the remote configs: "

    .line 82
    .line 83
    invoke-static {v2, v0, v1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :pswitch_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lua1;->g:Lua1;

    .line 91
    .line 92
    iget-object v0, v0, Lu01;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Leb2;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lua1;->q(Leb2;)Lji;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    .line 105
    iget-object v2, v1, Ldv;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0}, Lji;->asString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v6, "onChildRemoved = "

    .line 114
    .line 115
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ldv;->n(Ljl0;)V

    .line 129
    .line 130
    .line 131
    :cond_0
    return-object v3

    .line 132
    :pswitch_3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v0, Lu01;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lv01;

    .line 138
    .line 139
    iget-object v1, v0, Lv01;->f:Lex6;

    .line 140
    .line 141
    new-instance v4, Ls01;

    .line 142
    .line 143
    new-instance v5, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    invoke-direct {v4, v5, v6}, Ls01;-><init>(Ljava/util/ArrayList;Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-boolean v4, v0, Lv01;->g:Z

    .line 156
    .line 157
    if-eqz v4, :cond_1

    .line 158
    .line 159
    invoke-static {}, Ld01;->e()Ljava/util/ArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Ld01;->f()Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_2

    .line 173
    .line 174
    invoke-virtual {v0}, Lqo0;->d()V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_2
    new-instance v0, Ls01;

    .line 179
    .line 180
    invoke-direct {v0, v4, v2}, Ls01;-><init>(Ljava/util/ArrayList;Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :goto_1
    return-object v3

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
