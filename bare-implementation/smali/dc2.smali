.class public final Ldc2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lic2;

.field public final synthetic d:Lqt3;


# direct methods
.method public constructor <init>(Lic2;Lqt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc2;->c:Lic2;

    .line 2
    .line 3
    iput-object p2, p0, Ldc2;->d:Lqt3;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance v0, Ldc2;

    .line 2
    .line 3
    iget-object v1, p0, Ldc2;->c:Lic2;

    .line 4
    .line 5
    iget-object p0, p0, Ldc2;->d:Lqt3;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Ldc2;-><init>(Lic2;Lqt3;Ljv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Ldc2;->b:Ljava/lang/Object;

    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Ldc2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ldc2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ldc2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Ldc2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Ldc2;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lxx1;

    .line 25
    .line 26
    invoke-static {}, Lly8;->a()Lbn1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v3, p0, Ldc2;->c:Lic2;

    .line 31
    .line 32
    iget-object v4, v3, Lic2;->h:Ltr9;

    .line 33
    .line 34
    invoke-virtual {v4}, Ltr9;->c()Lem7;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Lfd5;

    .line 39
    .line 40
    iget-object v6, p0, Ldc2;->d:Lqt3;

    .line 41
    .line 42
    invoke-interface {p1}, Lxx1;->d()Lox1;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v5, v6, v0, v4, p1}, Lfd5;-><init>(Lqt3;Lbn1;Lem7;Lox1;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v3, Lic2;->l:Lkc;

    .line 50
    .line 51
    iget-object v3, p1, Lkc;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Luw0;

    .line 54
    .line 55
    invoke-interface {v3, v5}, Lc77;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    instance-of v4, v3, Lq41;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    check-cast v3, Lq41;

    .line 64
    .line 65
    iget-object p0, v3, Lq41;->a:Ljava/lang/Throwable;

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    new-instance p0, Lma1;

    .line 70
    .line 71
    const-string p1, "Channel was closed normally"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    throw p0

    .line 77
    :cond_3
    instance-of v3, v3, Lr41;

    .line 78
    .line 79
    if-nez v3, :cond_6

    .line 80
    .line 81
    iget-object v3, p1, Lkc;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v3, Ltr9;

    .line 84
    .line 85
    iget-object v3, v3, Ltr9;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_4

    .line 94
    .line 95
    iget-object v3, p1, Lkc;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Lxx1;

    .line 98
    .line 99
    new-instance v4, Lu41;

    .line 100
    .line 101
    invoke-direct {v4, p1, v1, v2}, Lu41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x3

    .line 105
    invoke-static {v3, v1, v4, p1}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 106
    .line 107
    .line 108
    :cond_4
    iput v2, p0, Ldc2;->a:I

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Lci4;->k(Ljv1;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object p1, Lyx1;->a:Lyx1;

    .line 115
    .line 116
    if-ne p0, p1, :cond_5

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_5
    return-object p0

    .line 120
    :cond_6
    const-string p0, "Check failed."

    .line 121
    .line 122
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v1
.end method
