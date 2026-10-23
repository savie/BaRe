.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;Ljv1;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->h:Lex6;

    .line 7
    .line 8
    sget-object v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->Loading:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ld01;->g()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->i:Lex6;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v3, Lfm7;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/16 v8, 0x1f

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-direct/range {v3 .. v8}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->DataEmpty:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 71
    .line 72
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getItemId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-instance v1, Lfm7;

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    const/16 v6, 0x1c

    .line 89
    .line 90
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->DataReceived:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 102
    .line 103
    return-object p0
.end method
