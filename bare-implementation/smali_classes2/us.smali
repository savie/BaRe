.class public final Lus;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lus;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lus;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lus;->c:Ljava/lang/Object;

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


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget p1, p0, Lus;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lus;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lus;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lus;

    .line 11
    .line 12
    check-cast p0, Lb11;

    .line 13
    .line 14
    check-cast v0, Lrz0;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {p1, p0, v0, p2, v1}, Lus;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p1, Lus;

    .line 22
    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    check-cast v0, Lr20;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {p1, p0, v0, p2, v1}, Lus;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, Lus;

    .line 33
    .line 34
    check-cast p0, Lji;

    .line 35
    .line 36
    check-cast v0, Lws;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {p1, p0, v0, p2, v1}, Lus;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lus;->a:I

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
    invoke-virtual {p0, p1, p2}, Lus;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lus;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lus;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lus;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lus;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lus;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lus;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lus;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lus;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lus;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lus;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lus;->b:Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v2, Lbe8;->a:Lbe8;

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
    check-cast p0, Lb11;

    .line 16
    .line 17
    const p1, 0x7f130209

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 21
    .line 22
    .line 23
    check-cast v1, Lrz0;

    .line 24
    .line 25
    invoke-static {v1}, Ld01;->d(Lrz0;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0}, Lqo0;->f()V

    .line 30
    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->P()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lb11;->e:Lix6;

    .line 39
    .line 40
    new-instance p1, Ly01;

    .line 41
    .line 42
    invoke-virtual {v1}, Lrz0;->getLocalFile()Lq63;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Ly01;-><init>(Lq63;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object v2

    .line 53
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    check-cast p0, Ljava/util/List;

    .line 57
    .line 58
    new-instance p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    const/16 v0, 0xa

    .line 61
    .line 62
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lji;

    .line 84
    .line 85
    new-instance v3, Lpw5;

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-direct {v3, v0, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    sget-object p0, Llr4;->a:Llr4;

    .line 96
    .line 97
    invoke-static {p1}, Llr4;->k(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    check-cast v1, Lr20;

    .line 101
    .line 102
    invoke-virtual {v1}, Lqo0;->d()V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lg00;->a:Lg00;

    .line 110
    .line 111
    check-cast p0, Lji;

    .line 112
    .line 113
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lji;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-static {p1, v0, v3}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    const/4 v0, 0x1

    .line 133
    xor-int/2addr p1, v0

    .line 134
    invoke-virtual {p0, p1}, Lji;->setEnabled(Z)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->T()V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lzn4;->a:Lzn4;

    .line 141
    .line 142
    check-cast v1, Lws;

    .line 143
    .line 144
    new-instance p1, Lxq;

    .line 145
    .line 146
    invoke-direct {p1, v0, v1, p0}, Lxq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
