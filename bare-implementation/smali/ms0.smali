.class public final Lms0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

.field public final synthetic b:Ljh6;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Lbt3;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljh6;Ljava/util/ArrayList;Ljava/lang/Integer;Lbt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lms0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 2
    .line 3
    iput-object p2, p0, Lms0;->b:Ljh6;

    .line 4
    .line 5
    iput-object p3, p0, Lms0;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p4, p0, Lms0;->d:Ljava/lang/Integer;

    .line 8
    .line 9
    iput-object p5, p0, Lms0;->e:Lbt3;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lws7;-><init>(ILjv1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 7

    .line 1
    new-instance v0, Lms0;

    .line 2
    .line 3
    iget-object v4, p0, Lms0;->d:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v5, p0, Lms0;->e:Lbt3;

    .line 6
    .line 7
    iget-object v1, p0, Lms0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 8
    .line 9
    iget-object v2, p0, Lms0;->b:Ljh6;

    .line 10
    .line 11
    iget-object v3, p0, Lms0;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lms0;-><init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljh6;Ljava/util/ArrayList;Ljava/lang/Integer;Lbt3;Ljv1;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lms0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lms0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lms0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object p1, p0, Lms0;->b:Ljh6;

    .line 5
    .line 6
    iget v3, p1, Ljh6;->a:I

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v0, p0, Lms0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->copy$default(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Le7;

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-direct {v2, v1, v3}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lms0;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v3, v2}, Lel1;->h1(Ljava/util/ArrayList;Lmt3;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    sget-object v1, Lgs0;->a:Lgs0;

    .line 33
    .line 34
    sget-object v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->Companion:Lds0;

    .line 35
    .line 36
    invoke-static {v3}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lds0;->a(Ljava/util/List;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v1, v2, v3}, Lgs0;->d(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Z)V

    .line 49
    .line 50
    .line 51
    iget v1, p1, Ljh6;->a:I

    .line 52
    .line 53
    sget-object v2, Lis0;->Hide:Lis0;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ne v1, v3, :cond_0

    .line 60
    .line 61
    sget-object v1, Lkz4;->g:Lkz4;

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ldv;->o(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lua1;->g:Lua1;

    .line 71
    .line 72
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Ldv;->o(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v1, p0, Lms0;->d:Ljava/lang/Integer;

    .line 84
    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-ne v1, v0, :cond_2

    .line 93
    .line 94
    iget p1, p1, Ljh6;->a:I

    .line 95
    .line 96
    sget-object v0, Lis0;->NoData:Lis0;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ne p1, v0, :cond_2

    .line 103
    .line 104
    sget-object v1, Lkz4;->g:Lkz4;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    const/16 v6, 0xa

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x1

    .line 112
    invoke-static/range {v1 .. v6}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 113
    .line 114
    .line 115
    sget-object v7, Lua1;->g:Lua1;

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/16 v12, 0xa

    .line 119
    .line 120
    const/4 v8, 0x1

    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v10, 0x1

    .line 123
    invoke-static/range {v7 .. v12}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_0
    iget-object p0, p0, Lms0;->e:Lbt3;

    .line 127
    .line 128
    if-eqz p0, :cond_3

    .line 129
    .line 130
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 134
    .line 135
    return-object p0
.end method
