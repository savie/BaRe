.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->b:Ljava/lang/String;

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
    new-instance p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;Ljava/lang/String;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->h:Lex6;

    .line 7
    .line 8
    sget-object v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->Loading:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lq63;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;->b:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lp93;->a:Lp93;

    .line 22
    .line 23
    invoke-virtual {v1}, Lq63;->A()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    new-instance p0, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-direct {p0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 37
    .line 38
    iget-object v3, p1, La55;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, " ("

    .line 45
    .line 46
    const-string v6, ")"

    .line 47
    .line 48
    const-string v7, "Reading data from backup file "

    .line 49
    .line 50
    invoke-static {v7, v4, v5, p0, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/4 v6, 0x4

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ld01;->i(Lq63;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->i:Lex6;

    .line 69
    .line 70
    if-eqz p0, :cond_0

    .line 71
    .line 72
    new-instance v1, Lfm7;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/16 v6, 0x1f

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->DataEmpty:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 93
    .line 94
    const/16 v1, 0xa

    .line 95
    .line 96
    invoke-static {v9, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getItemId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    new-instance v8, Lfm7;

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    const/16 v13, 0x1c

    .line 136
    .line 137
    invoke-direct/range {v8 .. v13}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;->DataReceived:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 144
    .line 145
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 149
    .line 150
    return-object p0
.end method
