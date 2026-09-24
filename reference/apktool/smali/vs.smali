.class public final Lvs;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lvs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lvs;->b:Ljava/lang/Object;

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
    iget p1, p0, Lvs;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lvs;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lvs;

    .line 9
    .line 10
    check-cast p0, Lod6;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lvs;

    .line 18
    .line 19
    check-cast p0, Lfi5;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lvs;

    .line 27
    .line 28
    check-cast p0, Lbt3;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Lvs;

    .line 36
    .line 37
    check-cast p0, Lji;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p1, p0, p2, v0}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

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
    iget v0, p0, Lvs;->a:I

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
    invoke-virtual {p0, p1, p2}, Lvs;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lvs;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lvs;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lvs;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lvs;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lvs;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lvs;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lvs;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lvs;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lvs;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lvs;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lvs;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lvs;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lvs;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    check-cast p0, Lod6;

    .line 14
    .line 15
    iget-object p1, p0, Lod6;->i:Lqo0;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const v0, 0x7f130426

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lqo0;->h(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Ld01;->e()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lod6;->j()Lix6;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lod6;->i:Lqo0;

    .line 44
    .line 45
    if-eqz p0, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0}, Lqo0;->f()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lrz0;

    .line 57
    .line 58
    invoke-virtual {p1}, Lrz0;->getLocalFile()Lq63;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lq63;->j()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lod6;->j()Lix6;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lrz0;->getLocalFile()Lq63;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lod6;->i:Lqo0;

    .line 80
    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lqo0;->f()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lod6;->i:Lqo0;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const v3, 0x7f130209

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lqo0;->h(I)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {p1}, Ld01;->d(Lrz0;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lrz0;->getLocalFile()Lq63;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lq63;->j()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Lod6;->j()Lix6;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lrz0;->getLocalFile()Lq63;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p0}, Lod6;->j()Lix6;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    iget-object p0, p0, Lod6;->i:Lqo0;

    .line 133
    .line 134
    if-eqz p0, :cond_5

    .line 135
    .line 136
    invoke-virtual {p0}, Lqo0;->f()V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    return-object v1

    .line 140
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    check-cast p0, Lfi5;

    .line 144
    .line 145
    iget-object p0, p0, Lfi5;->i:Lgv7;

    .line 146
    .line 147
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lxc7;

    .line 152
    .line 153
    sget-object p1, Lxc7;->b:Landroidx/datastore/core/NativeSharedCounter;

    .line 154
    .line 155
    iget-wide v0, p0, Lxc7;->a:J

    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Landroidx/datastore/core/NativeSharedCounter;->nativeGetCounterValue(J)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    new-instance p1, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    check-cast p0, Lbt3;

    .line 171
    .line 172
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    return-object v1

    .line 176
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object p1, Lg00;->a:Lg00;

    .line 180
    .line 181
    check-cast p0, Lji;

    .line 182
    .line 183
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {p0}, Lg00;->g(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v1

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
