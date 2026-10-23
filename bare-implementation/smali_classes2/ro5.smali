.class public final Lro5;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final onDataChange(Leb2;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Leb2;->b()Ldb2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ldb2;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/Iterator;

    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lhk5;

    .line 25
    .line 26
    new-instance v2, Leb2;

    .line 27
    .line 28
    iget-object v3, p0, Ldb2;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Leb2;

    .line 31
    .line 32
    iget-object v3, v3, Leb2;->b:Lzc2;

    .line 33
    .line 34
    iget-object v4, v1, Lhk5;->a:Lm61;

    .line 35
    .line 36
    iget-object v4, v4, Lm61;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v1, v1, Lhk5;->b:Lqn5;

    .line 43
    .line 44
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v2, v3, v1}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Las4;

    .line 52
    .line 53
    const/4 v3, 0x6

    .line 54
    invoke-direct {v1, v2, v3}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    const/16 v2, 0xa

    .line 58
    .line 59
    const-string v3, "NoticeRepo"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-static {v3, v4, v5, v1, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    sget-object p0, Lso5;->d:Lex6;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lex6;->l(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
