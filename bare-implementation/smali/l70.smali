.class public final Ll70;
.super Lan6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public b:I

.field public c:Z

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lq63;


# direct methods
.method public constructor <init>(Lq63;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll70;->f:Lq63;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lan6;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance v0, Ll70;

    .line 2
    .line 3
    iget-object p0, p0, Ll70;->f:Lq63;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Ll70;-><init>(Lq63;Ljv1;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Ll70;->e:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg77;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ll70;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ll70;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ll70;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ll70;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg77;

    .line 4
    .line 5
    iget v1, p0, Ll70;->d:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Lyx1;->a:Lyx1;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    if-eq v1, v6, :cond_2

    .line 17
    .line 18
    if-eq v1, v4, :cond_1

    .line 19
    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lbe8;->a:Lbe8;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    iget-boolean v1, p0, Ll70;->c:Z

    .line 35
    .line 36
    iget v4, p0, Ll70;->b:I

    .line 37
    .line 38
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_2
    iget v1, p0, Ll70;->b:I

    .line 44
    .line 45
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move p1, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 54
    .line 55
    invoke-static {}, Lk55;->k()Lzd7;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, v6, :cond_4

    .line 66
    .line 67
    move p1, v6

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move p1, v5

    .line 70
    :goto_0
    if-nez p1, :cond_9

    .line 71
    .line 72
    iget-object v1, p0, Ll70;->f:Lq63;

    .line 73
    .line 74
    invoke-virtual {v1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    instance-of v1, v1, Lorg/swiftapps/filesystem/File$FileType$LibsuFile;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_5
    :goto_1
    :try_start_0
    sget-object v1, Lqe7;->a:Lgv7;

    .line 84
    .line 85
    invoke-static {}, Lle7;->f()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-static {}, Lqe7;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    move v5, v6

    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    goto :goto_4

    .line 106
    :goto_3
    new-instance v5, Lbn6;

    .line 107
    .line 108
    invoke-direct {v5, v1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    move-object v1, v5

    .line 112
    :goto_4
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    .line 114
    instance-of v6, v1, Lbn6;

    .line 115
    .line 116
    if-eqz v6, :cond_7

    .line 117
    .line 118
    move-object v1, v5

    .line 119
    :cond_7
    check-cast v1, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_8

    .line 126
    .line 127
    sget-object v2, Lo93;->SHIZUKU:Lo93;

    .line 128
    .line 129
    iput-object v0, p0, Ll70;->e:Ljava/lang/Object;

    .line 130
    .line 131
    iput p1, p0, Ll70;->b:I

    .line 132
    .line 133
    iput-boolean v1, p0, Ll70;->c:Z

    .line 134
    .line 135
    iput v4, p0, Ll70;->d:I

    .line 136
    .line 137
    invoke-virtual {v0, v2, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 138
    .line 139
    .line 140
    return-object v7

    .line 141
    :cond_8
    move v4, p1

    .line 142
    :goto_5
    sget-object p1, Lo93;->NORMAL:Lo93;

    .line 143
    .line 144
    iput-object v2, p0, Ll70;->e:Ljava/lang/Object;

    .line 145
    .line 146
    iput v4, p0, Ll70;->b:I

    .line 147
    .line 148
    iput-boolean v1, p0, Ll70;->c:Z

    .line 149
    .line 150
    iput v3, p0, Ll70;->d:I

    .line 151
    .line 152
    invoke-virtual {v0, p1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 153
    .line 154
    .line 155
    return-object v7

    .line 156
    :cond_9
    :goto_6
    sget-object v1, Lo93;->ROOT:Lo93;

    .line 157
    .line 158
    iput-object v0, p0, Ll70;->e:Ljava/lang/Object;

    .line 159
    .line 160
    iput p1, p0, Ll70;->b:I

    .line 161
    .line 162
    iput v6, p0, Ll70;->d:I

    .line 163
    .line 164
    invoke-virtual {v0, v1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 165
    .line 166
    .line 167
    return-object v7
.end method
