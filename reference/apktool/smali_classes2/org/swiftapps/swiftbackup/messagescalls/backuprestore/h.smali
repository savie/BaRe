.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

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
    new-instance p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->i:Lex6;

    .line 7
    .line 8
    sget-object v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;->Loading:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lud5;->a:Lgv7;

    .line 14
    .line 15
    new-instance v4, Lc7;

    .line 16
    .line 17
    const/16 v0, 0x15

    .line 18
    .line 19
    invoke-direct {v4, p0, v0}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->h:Lgv7;

    .line 23
    .line 24
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v3, v0

    .line 29
    check-cast v3, Lwg5$c;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lqv1;->Companion:Lqv1$a;

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lqv1$a;->getList$default(Lqv1$a;ZLwg5$c;Lmt3;ILjava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->j:Lex6;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->k:Lex6;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    new-instance v1, Lfm7;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/16 v6, 0x1f

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;->DataEmpty:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    const/16 v1, 0xa

    .line 80
    .line 81
    invoke-static {v8, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lqv1;

    .line 103
    .line 104
    invoke-virtual {v2}, Lqv1;->getItemId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    new-instance v7, Lfm7;

    .line 117
    .line 118
    const/4 v10, 0x0

    .line 119
    const/4 v11, 0x0

    .line 120
    const/16 v12, 0x1c

    .line 121
    .line 122
    invoke-direct/range {v7 .. v12}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v7}, Lex6;->k(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;->DataReceived:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 134
    .line 135
    return-object p0
.end method
