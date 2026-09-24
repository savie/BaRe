.class public final Lxn4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ZILjava/util/ArrayList;Ljv1;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxn4;->c:Z

    .line 2
    .line 3
    iput p2, p0, Lxn4;->d:I

    .line 4
    .line 5
    iput-object p3, p0, Lxn4;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, Lxn4;

    .line 2
    .line 3
    iget v1, p0, Lxn4;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Lxn4;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-boolean p0, p0, Lxn4;->c:Z

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lxn4;-><init>(ZILjava/util/ArrayList;Ljv1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lxn4;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lxn4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lxn4;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lxn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lxn4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxx1;

    .line 4
    .line 5
    iget v1, p0, Lxn4;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, p0, Lxn4;->c:Z

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    iget-object v4, p0, Lxn4;->e:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz p1, :cond_6

    .line 33
    .line 34
    iget p1, p0, Lxn4;->d:I

    .line 35
    .line 36
    if-ge p1, v2, :cond_2

    .line 37
    .line 38
    move p1, v2

    .line 39
    :cond_2
    sget v5, La77;->a:I

    .line 40
    .line 41
    new-instance v5, Lz67;

    .line 42
    .line 43
    invoke-direct {v5, p1}, Ly67;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v4, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lvn4;

    .line 70
    .line 71
    new-instance v6, Lwn4;

    .line 72
    .line 73
    invoke-direct {v6, v5, v4, v3}, Lwn4;-><init>(Lz67;Lvn4;Ljv1;)V

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x3

    .line 77
    invoke-static {v0, v3, v6, v4}, Ll73;->e(Lxx1;Lrx1;Lqt3;I)Lkg2;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iput-object v3, p0, Lxn4;->b:Ljava/lang/Object;

    .line 86
    .line 87
    iput v2, p0, Lxn4;->a:I

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    sget-object p0, Lov2;->a:Lov2;

    .line 96
    .line 97
    :goto_1
    move-object p1, p0

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    new-instance v0, Lze0;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    new-array v1, v1, [Ljg2;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, [Ljg2;

    .line 109
    .line 110
    invoke-direct {v0, p1}, Lze0;-><init>([Ljg2;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Lze0;->a(Lws7;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_1

    .line 118
    :goto_2
    sget-object p0, Lyx1;->a:Lyx1;

    .line 119
    .line 120
    if-ne p1, p0, :cond_5

    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_5
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v4, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lvn4;

    .line 150
    .line 151
    iget-object v0, v0, Lvn4;->a:Lbt3;

    .line 152
    .line 153
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    return-object p0
.end method
