.class public final Lt01;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lv01;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lv01;Ljava/util/List;ZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt01;->b:Lv01;

    .line 2
    .line 3
    iput-object p2, p0, Lt01;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lt01;->d:Z

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
    .locals 2

    .line 1
    new-instance p1, Lt01;

    .line 2
    .line 3
    iget-object v0, p0, Lt01;->c:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v1, p0, Lt01;->d:Z

    .line 6
    .line 7
    iget-object p0, p0, Lt01;->b:Lv01;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lt01;-><init>(Lv01;Ljava/util/List;ZLjv1;)V

    .line 10
    .line 11
    .line 12
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lt01;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lt01;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lt01;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lt01;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Lt01;->d:Z

    .line 5
    .line 6
    iget-object v3, p0, Lt01;->c:Ljava/util/List;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, Lt01;->b:Lv01;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-ne v0, v4, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    const p1, 0x7f1301f8

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p1}, Lqo0;->h(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v2}, Ld01;->b(Ljava/util/List;Z)Z

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    sub-long/2addr v8, v6

    .line 46
    const-wide/16 v6, 0x1f4

    .line 47
    .line 48
    cmp-long p1, v8, v6

    .line 49
    .line 50
    if-gez p1, :cond_2

    .line 51
    .line 52
    sub-long/2addr v6, v8

    .line 53
    iput v4, p0, Lt01;->a:I

    .line 54
    .line 55
    invoke-static {v6, v7, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object p1, Lyx1;->a:Lyx1;

    .line 60
    .line 61
    if-ne p0, p1, :cond_2

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lqo0;->f()V

    .line 65
    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    sget-object p0, Lpz0;->LOCAL_AND_CLOUD:Lpz0;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    sget-object p0, Lpz0;->LOCAL:Lpz0;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance p1, Lqz0;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p0, p1, Lqz0;->a:Lpz0;

    .line 83
    .line 84
    invoke-static {}, Lny2;->b()Lny2;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, p1}, Lny2;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, v5, Lv01;->f:Lex6;

    .line 92
    .line 93
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ls01;

    .line 98
    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    iget-object p0, p0, Ls01;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-ne p1, p0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v5}, Lqo0;->d()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    sget-object p0, Lzn4;->a:Lzn4;

    .line 118
    .line 119
    new-instance p0, Lu01;

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    invoke-direct {p0, v5, v1, p1}, Lu01;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 126
    .line 127
    .line 128
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 129
    .line 130
    return-object p0
.end method
