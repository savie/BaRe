.class public final Lrv5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lsv5;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsv5;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv5;->a:Lsv5;

    .line 2
    .line 3
    iput-object p2, p0, Lrv5;->b:Ljava/lang/String;

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
    new-instance p1, Lrv5;

    .line 2
    .line 3
    iget-object v0, p0, Lrv5;->a:Lsv5;

    .line 4
    .line 5
    iget-object p0, p0, Lrv5;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lrv5;-><init>(Lsv5;Ljava/lang/String;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lrv5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lrv5;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lrv5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f13042d

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lrv5;->a:Lsv5;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lqo0;->h(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 13
    .line 14
    const/16 v6, 0xe

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    iget-object v2, p0, Lrv5;->b:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-direct/range {v1 .. v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lsv5;->g:Lov5;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lov5;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 31
    .line 32
    invoke-virtual {p0}, Lov5;->z()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v2, v0, La55;->b:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "onTokenReceived: loginResult="

    .line 41
    .line 42
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    instance-of p1, p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-static {p0}, Leh1;->d(Ljh1;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    invoke-static {p0, p1}, Leh1;->c(Ljh1;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/16 v6, 0xd

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v1 .. v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v3}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 94
    .line 95
    iget-object v2, v0, Lsv5;->f:Ldd1;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v2, p0}, Li58;->c(Ldd1;Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 104
    .line 105
    iget-object v5, v0, La55;->b:Ljava/lang/String;

    .line 106
    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v1, "CloudServiceId = "

    .line 110
    .line 111
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const/4 v8, 0x4

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    :goto_0
    iget-object p0, v0, Lsv5;->l:Lix6;

    .line 129
    .line 130
    if-nez p1, :cond_3

    .line 131
    .line 132
    const-string p1, ""

    .line 133
    .line 134
    :cond_3
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    const/4 p1, 0x0

    .line 138
    :goto_1
    iget-object p0, v0, Lsv5;->j:Lix6;

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lqo0;->f()V

    .line 148
    .line 149
    .line 150
    sget-object p0, Lbe8;->a:Lbe8;

    .line 151
    .line 152
    return-object p0
.end method
