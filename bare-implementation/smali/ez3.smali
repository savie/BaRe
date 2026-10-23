.class public final Lez3;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lez3;->b:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

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
    new-instance p1, Lez3;

    .line 2
    .line 3
    iget-object p0, p0, Lez3;->b:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lez3;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lez3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lez3;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lez3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lez3;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lez3;->b:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Lyv3; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lwv3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    move-object p0, v0

    .line 17
    move-object v7, p0

    .line 18
    goto :goto_1

    .line 19
    :catch_1
    move-exception v0

    .line 20
    move-object p0, v0

    .line 21
    move-object v7, p0

    .line 22
    goto :goto_2

    .line 23
    :catch_2
    move-exception v0

    .line 24
    move-object p0, v0

    .line 25
    move-object v7, p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;)Lzv3;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, v3, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->L:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lu22;

    .line 48
    .line 49
    iput v2, p0, Lez3;->a:I

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v3, p1, p0}, Lu22;->b(Landroid/content/Context;Lzv3;Lkv1;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_1
    .catch Lyv3; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lwv3; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    sget-object p0, Lyx1;->a:Lyx1;

    .line 59
    .line 60
    if-ne p1, p0, :cond_2

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_2
    :goto_0
    :try_start_2
    check-cast p1, Lbw3;

    .line 64
    .line 65
    iget-object p0, p1, Lbw3;->a:Lao;

    .line 66
    .line 67
    invoke-static {v3, p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->O(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Lao;)V
    :try_end_2
    .catch Lyv3; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lwv3; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :goto_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    invoke-virtual {v3}, Lk28;->r()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const/16 v9, 0x8

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    const-string v6, "Credential sign-in failed"

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v7}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1, v1}, Lgz3;->j(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :goto_2
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 99
    .line 100
    invoke-virtual {v3}, Lk28;->r()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const/16 v9, 0x8

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    const-string v6, "Credential sign-in failed"

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1, v1}, Lgz3;->j(Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_3
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 126
    .line 127
    invoke-virtual {v3}, Lk28;->r()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const/16 v9, 0x8

    .line 132
    .line 133
    const/4 v10, 0x0

    .line 134
    const-string v6, "Credential provider configuration failed"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1, v2}, Lgz3;->j(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 152
    .line 153
    return-object p0
.end method
