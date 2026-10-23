.class public final Lt72;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lem7;Ljv1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lt72;->a:I

    .line 13
    iput-object p1, p0, Lt72;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Lmt3;Ljv1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lt72;->a:I

    .line 12
    iput-object p1, p0, Lt72;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lqo0;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lt72;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lt72;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lt72;->c:Ljava/lang/Object;

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
    iget v0, p0, Lt72;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lt72;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lt72;

    .line 9
    .line 10
    iget-object p0, p0, Lt72;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ltp8;

    .line 13
    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-direct {p1, p0, v1, p2, v0}, Lt72;-><init>(Lqo0;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p1, Lt72;

    .line 22
    .line 23
    iget-object p0, p0, Lt72;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lme5;

    .line 26
    .line 27
    check-cast v1, Lvd5;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-direct {p1, p0, v1, p2, v0}, Lt72;-><init>(Lqo0;Ljava/lang/Object;Ljv1;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_1
    new-instance p0, Lt72;

    .line 35
    .line 36
    check-cast v1, Lem7;

    .line 37
    .line 38
    invoke-direct {p0, v1, p2}, Lt72;-><init>(Lem7;Ljv1;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lt72;->b:Ljava/lang/Object;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_2
    new-instance p0, Lt72;

    .line 45
    .line 46
    check-cast v1, Lmt3;

    .line 47
    .line 48
    invoke-direct {p0, v1, p2}, Lt72;-><init>(Lmt3;Ljv1;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lt72;->b:Ljava/lang/Object;

    .line 52
    .line 53
    return-object p0

    .line 54
    nop

    .line 55
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
    iget v0, p0, Lt72;->a:I

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
    invoke-virtual {p0, p1, p2}, Lt72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lt72;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lt72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lt72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lt72;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lt72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lem7;

    .line 37
    .line 38
    check-cast p2, Ljv1;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lt72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lt72;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lt72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Le98;

    .line 52
    .line 53
    check-cast p2, Ljv1;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lt72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lt72;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lt72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    nop

    .line 67
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
    iget v0, p0, Lt72;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lt72;->c:Ljava/lang/Object;

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
    iget-object p0, p0, Lt72;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ltp8;

    .line 16
    .line 17
    iget-boolean p1, p0, Ltp8;->h:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const p1, 0x7f1301f8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 28
    .line 29
    iget-boolean p1, p0, Ltp8;->h:Z

    .line 30
    .line 31
    iget-object v0, p0, Ltp8;->i:Ldv;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {v2, p1, v0}, Ldo8;->a(Ljava/util/List;ZLdv;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lqo0;->f()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Ltp8;->l:Lix6;

    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    const-string p0, "repo"

    .line 50
    .line 51
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    throw p0

    .line 56
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lt72;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lme5;

    .line 62
    .line 63
    const p1, 0x7f130426

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 67
    .line 68
    .line 69
    check-cast v2, Lvd5;

    .line 70
    .line 71
    invoke-virtual {v2}, Lvd5;->getLocalFile()Lq63;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lud5;->k(Lq63;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lqo0;->f()V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lff5;

    .line 83
    .line 84
    invoke-direct {v2, v0, p1}, Lff5;-><init>(Ljava/util/ArrayList;Lq63;)V

    .line 85
    .line 86
    .line 87
    const-class p1, Lff5;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v2}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lt72;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Lem7;

    .line 99
    .line 100
    instance-of p1, p0, Lga2;

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    iget p0, p0, Lem7;->a:I

    .line 105
    .line 106
    check-cast v2, Lem7;

    .line 107
    .line 108
    iget p1, v2, Lem7;->a:I

    .line 109
    .line 110
    if-gt p0, p1, :cond_2

    .line 111
    .line 112
    const/4 p0, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const/4 p0, 0x0

    .line 115
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lt72;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Le98;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    check-cast p0, Lgf6;

    .line 131
    .line 132
    invoke-interface {p0}, Lgf6;->d()Lfw6;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast v2, Lmt3;

    .line 137
    .line 138
    invoke-interface {v2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
