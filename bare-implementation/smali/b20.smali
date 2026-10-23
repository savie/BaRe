.class public final Lb20;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;ZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lb20;->c:Z

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
    .locals 1

    .line 1
    new-instance p1, Lb20;

    .line 2
    .line 3
    iget-object v0, p0, Lb20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    iget-boolean p0, p0, Lb20;->c:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lb20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;ZLjv1;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lb20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lb20;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lb20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lb20;->a:I

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
    goto :goto_2

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
    iget-object p1, p0, Lb20;->b:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 23
    .line 24
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 25
    .line 26
    if-eqz v0, :cond_8

    .line 27
    .line 28
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    :cond_2
    move v0, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lji;

    .line 56
    .line 57
    invoke-virtual {v1}, Lji;->getLocalBackups()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lgm;

    .line 85
    .line 86
    iget-object v4, v4, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 87
    .line 88
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_6

    .line 93
    .line 94
    move v0, v2

    .line 95
    :goto_1
    sget-object v1, Lzn4;->a:Lzn4;

    .line 96
    .line 97
    new-instance v1, Lz10;

    .line 98
    .line 99
    iget-boolean v4, p0, Lb20;->c:Z

    .line 100
    .line 101
    invoke-direct {v1, p1, v0, v4, v3}, Lz10;-><init>(Ljava/lang/Object;ZZI)V

    .line 102
    .line 103
    .line 104
    iput v2, p0, Lb20;->a:I

    .line 105
    .line 106
    invoke-static {v1, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object p1, Lyx1;->a:Lyx1;

    .line 111
    .line 112
    if-ne p0, p1, :cond_7

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_7
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_8
    const-string p0, "mAdapter"

    .line 119
    .line 120
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1
.end method
