.class public final Lmj;
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
    iput p3, p0, Lmj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmj;->b:Ljava/lang/Object;

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
    iget p1, p0, Lmj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lmj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmj;

    .line 9
    .line 10
    check-cast p0, Lod6;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lmj;

    .line 18
    .line 19
    check-cast p0, Lhe5;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lmj;

    .line 27
    .line 28
    check-cast p0, Lbt3;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Lmj;

    .line 36
    .line 37
    check-cast p0, Lrj;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p1, p0, p2, v0}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

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
    iget v0, p0, Lmj;->a:I

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
    invoke-virtual {p0, p1, p2}, Lmj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lmj;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lmj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lmj;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lmj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lmj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lmj;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lmj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lmj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lmj;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lmj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lmj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Lmj;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p0, Lod6;

    .line 15
    .line 16
    invoke-static {}, Lud5;->f()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lvd5;

    .line 31
    .line 32
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lq63;->j()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    iget-object p0, p0, Lod6;->e:Lgv7;

    .line 49
    .line 50
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lix6;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast p0, Lhe5;

    .line 64
    .line 65
    iget-boolean p1, p0, Lhe5;->g:Z

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-static {}, Lud5;->e()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {}, Lud5;->f()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lqo0;->d()V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    iget-object p0, p0, Lhe5;->f:Lex6;

    .line 89
    .line 90
    new-instance v0, Lfe5;

    .line 91
    .line 92
    invoke-direct {v0, p1, v1}, Lfe5;-><init>(Ljava/util/ArrayList;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-object v2

    .line 99
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    check-cast p0, Lbt3;

    .line 103
    .line 104
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lg00;->a:Lg00;

    .line 112
    .line 113
    check-cast p0, Lrj;

    .line 114
    .line 115
    iget-object p1, p0, Lrj;->f:Lji;

    .line 116
    .line 117
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lg00;->g(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lrj;->I()V

    .line 125
    .line 126
    .line 127
    return-object v2

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
