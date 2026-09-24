.class public final Lxg3;
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
.method public constructor <init>(Lmb8;Ljv1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxg3;->a:I

    .line 13
    iput-object p1, p0, Lxg3;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Lyg3;Lj97;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxg3;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lxg3;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lxg3;->d:Ljava/lang/Object;

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
    iget v0, p0, Lxg3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lxg3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lxg3;

    .line 9
    .line 10
    check-cast v1, Lmb8;

    .line 11
    .line 12
    invoke-direct {p0, v1, p2}, Lxg3;-><init>(Lmb8;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lxg3;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p1, Lxg3;

    .line 19
    .line 20
    iget-object p0, p0, Lxg3;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lyg3;

    .line 23
    .line 24
    check-cast v1, Lj97;

    .line 25
    .line 26
    invoke-direct {p1, p0, v1, p2}, Lxg3;-><init>(Lyg3;Lj97;Ljv1;)V

    .line 27
    .line 28
    .line 29
    return-object p1

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
    iget v0, p0, Lxg3;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Le98;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lxg3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lxg3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lxg3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lxg3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lxg3;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lxg3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lxg3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lxg3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lyx1;->a:Lyx1;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lxg3;->b:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne v0, v5, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lxg3;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Le98;

    .line 35
    .line 36
    check-cast v1, Lmb8;

    .line 37
    .line 38
    iput v5, p0, Lxg3;->b:I

    .line 39
    .line 40
    invoke-static {v1, p1, p0}, Lmb8;->a(Lmb8;Lt26;Lkv1;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v4, :cond_2

    .line 45
    .line 46
    move-object p1, v4

    .line 47
    :cond_2
    :goto_0
    return-object p1

    .line 48
    :pswitch_0
    iget-object v0, p0, Lxg3;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lyg3;

    .line 51
    .line 52
    iget-object v6, v0, Lyg3;->b:Ll97;

    .line 53
    .line 54
    iget v7, p0, Lxg3;->b:I

    .line 55
    .line 56
    const-string v8, "FirebaseSessions"

    .line 57
    .line 58
    const/4 v9, 0x2

    .line 59
    if-eqz v7, :cond_5

    .line 60
    .line 61
    if-eq v7, v5, :cond_4

    .line 62
    .line 63
    if-ne v7, v9, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_8

    .line 73
    .line 74
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lch3;->a:Lch3;

    .line 82
    .line 83
    iput v5, p0, Lxg3;->b:I

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Lch3;->b(Lkv1;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v4, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_d

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Loy1;

    .line 122
    .line 123
    iget-object v2, v2, Loy1;->a:Lka2;

    .line 124
    .line 125
    invoke-virtual {v2}, Lka2;->b()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    iput v9, p0, Lxg3;->b:I

    .line 132
    .line 133
    invoke-virtual {v6, p0}, Ll97;->b(Lkv1;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-ne p0, v4, :cond_9

    .line 138
    .line 139
    :goto_2
    move-object v2, v4

    .line 140
    goto :goto_8

    .line 141
    :cond_9
    :goto_3
    iget-object p0, v6, Ll97;->a:Lra7;

    .line 142
    .line 143
    invoke-interface {p0}, Lra7;->b()Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_a

    .line 148
    .line 149
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    goto :goto_5

    .line 154
    :cond_a
    iget-object p0, v6, Ll97;->b:Lra7;

    .line 155
    .line 156
    invoke-interface {p0}, Lra7;->b()Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-eqz p0, :cond_b

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_b
    :goto_5
    if-nez v5, :cond_c

    .line 164
    .line 165
    const-string p0, "Sessions SDK disabled. Not listening to lifecycle events."

    .line 166
    .line 167
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-static {p0}, Lx13;->d(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_c
    iget-object p0, v0, Lyg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 176
    .line 177
    check-cast v1, Lj97;

    .line 178
    .line 179
    new-instance p1, Lwg3;

    .line 180
    .line 181
    invoke-direct {p1, v1}, Lwg3;-><init>(Lj97;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseApp;->addLifecycleEventListener(Lhf3;)V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_d
    :goto_6
    const-string p0, "No Sessions subscribers. Not listening to lifecycle events."

    .line 189
    .line 190
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    invoke-static {p0}, Lx13;->d(I)V

    .line 195
    .line 196
    .line 197
    :goto_7
    sget-object v2, Lbe8;->a:Lbe8;

    .line 198
    .line 199
    :goto_8
    return-object v2

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
