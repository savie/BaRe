.class public final La11;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, La11;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La11;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, La11;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lxt4;Ljv1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La11;->a:I

    .line 12
    iput-object p1, p0, La11;->c:Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, La11;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La11;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, La11;

    .line 9
    .line 10
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Luo8;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-direct {p1, p0, v1, p2, v0}, La11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p0, La11;

    .line 22
    .line 23
    check-cast v1, Lxt4;

    .line 24
    .line 25
    invoke-direct {p0, v1, p2}, La11;-><init>(Lxt4;Ljv1;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, La11;->b:Ljava/lang/Object;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_1
    new-instance p1, La11;

    .line 32
    .line 33
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 36
    .line 37
    check-cast v1, Ltn2;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p1, p0, v1, p2, v0}, La11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, La11;

    .line 45
    .line 46
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lb11;

    .line 49
    .line 50
    check-cast v1, Lrz0;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {p1, p0, v1, p2, v0}, La11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
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
    iget v0, p0, La11;->a:I

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
    invoke-virtual {p0, p1, p2}, La11;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, La11;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, La11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, La11;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, La11;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, La11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, La11;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, La11;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, La11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_2
    invoke-virtual {p0, p1, p2}, La11;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, La11;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, La11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
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
    iget v0, p0, La11;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, La11;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lq63;

    .line 16
    .line 17
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0, v2}, Lqy5;->f(ZLzn7;)Lry5;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v5, v5, Lry5;->q:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p1, v5, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    array-length v2, p1

    .line 49
    move v5, v0

    .line 50
    :goto_0
    if-ge v5, v2, :cond_1

    .line 51
    .line 52
    aget-object v6, p1, v5

    .line 53
    .line 54
    const-string v7, "wal"

    .line 55
    .line 56
    invoke-static {v6, v7, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    new-instance v2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    sget-object p1, Lzn4;->a:Lzn4;

    .line 78
    .line 79
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Luo8;

    .line 82
    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    new-instance p1, Lyi0;

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    invoke-direct {p1, v0, p0, v2, v4}, Lyi0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Lxx1;

    .line 101
    .line 102
    check-cast v4, Lxt4;

    .line 103
    .line 104
    iget-object p1, v4, Lxt4;->a:Lhu4;

    .line 105
    .line 106
    iget-object v0, p1, Lhu4;->d:Lst4;

    .line 107
    .line 108
    sget-object v1, Lst4;->b:Lst4;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ltz v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1, v4}, Lhu4;->a(Leu4;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-interface {p0}, Lxx1;->d()Lox1;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    sget-object p1, Lnh4;->b:Lnh4;

    .line 125
    .line 126
    invoke-interface {p0, p1}, Lox1;->get(Lnx1;)Lmx1;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    check-cast p0, Loh4;

    .line 131
    .line 132
    if-eqz p0, :cond_4

    .line 133
    .line 134
    invoke-interface {p0, v2}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_1
    return-object v3

    .line 138
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 142
    .line 143
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iget-object p0, p0, Lm62;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 152
    .line 153
    check-cast v4, Ltn2;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {p0, v4}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->a(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ltn2;)V

    .line 159
    .line 160
    .line 161
    return-object v3

    .line 162
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, La11;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p0, Lb11;

    .line 168
    .line 169
    const p1, 0x7f130426

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 173
    .line 174
    .line 175
    check-cast v4, Lrz0;

    .line 176
    .line 177
    invoke-virtual {v4}, Lrz0;->getLocalFile()Lq63;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance v0, Lq63;

    .line 186
    .line 187
    invoke-direct {v0, p1, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Ld01;->i(Lq63;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lqo0;->f()V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lz11;

    .line 198
    .line 199
    invoke-direct {v1, p1, v0}, Lz11;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    const-class p1, Lz11;

    .line 203
    .line 204
    invoke-virtual {p0, p1, v1}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 205
    .line 206
    .line 207
    return-object v3

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
