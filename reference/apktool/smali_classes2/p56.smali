.class public final Lp56;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lqo0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lo56;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lo56;-><init>(Lp56;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Llz3;->d:Llz3;

    .line 12
    .line 13
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 14
    .line 15
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget v4, Lmz3;->a:I

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Lmz3;->c(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-nez v3, :cond_1

    .line 31
    .line 32
    sget v4, Lu04;->e:I

    .line 33
    .line 34
    invoke-static {v2}, Lhs1;->q(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-lez v4, :cond_1

    .line 43
    .line 44
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 45
    .line 46
    const-string v4, "isGooglePlayServicesAvailable: "

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const/4 v9, 0x4

    .line 53
    const/4 v10, 0x0

    .line 54
    const-string v6, "GmsUtil"

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    if-nez v3, :cond_2

    .line 61
    .line 62
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 63
    .line 64
    iget-object v12, v0, La55;->b:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v15, 0x4

    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const-string v13, "No Google Play Services. Can\'t fetch purchases."

    .line 70
    .line 71
    const/4 v14, 0x0

    .line 72
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lwq0;->c:Lex6;

    .line 76
    .line 77
    new-instance v1, Lqq0;

    .line 78
    .line 79
    sget-object v2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-direct {v1, v2}, Lqq0;-><init>(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 93
    .line 94
    iget-object v4, v0, La55;->b:Ljava/lang/String;

    .line 95
    .line 96
    const/4 v7, 0x4

    .line 97
    const/4 v8, 0x0

    .line 98
    const-string v5, "Google Play services found, connecting with it."

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lwq0;->a:Lwq0;

    .line 105
    .line 106
    invoke-virtual {v0}, Lwq0;->f()V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lwq0;->b:Lex6;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lzy4;->f(Les5;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
