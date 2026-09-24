.class public final synthetic Lcn5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lih6;

.field public final synthetic b:Lf80;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lih6;Lf80;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn5;->a:Lih6;

    .line 5
    .line 6
    iput-object p2, p0, Lcn5;->b:Lf80;

    .line 7
    .line 8
    iput-object p3, p0, Lcn5;->c:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lz80;)V
    .locals 14

    .line 1
    const/4 v1, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    invoke-static/range {p3 .. p3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v3, "refreshToken: "

    .line 11
    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v3, "NoGmsClient"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    const/4 v12, 0x4

    .line 28
    const/4 v13, 0x0

    .line 29
    const-string v9, "NoGmsClient"

    .line 30
    .line 31
    const-string v10, "Refresh token successful"

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v3, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    move v3, v2

    .line 50
    :goto_1
    xor-int/2addr v3, v2

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    invoke-static/range {p2 .. p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    :cond_3
    move v1, v2

    .line 60
    :cond_4
    xor-int/2addr v1, v2

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v5, "accessToken="

    .line 64
    .line 65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, ", idToken="

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    const/4 v12, 0x4

    .line 84
    const/4 v13, 0x0

    .line 85
    const-string v9, "NoGmsClient"

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    invoke-static/range {v8 .. v13}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcn5;->b:Lf80;

    .line 92
    .line 93
    invoke-static {v1}, Lhz3;->b(Lf80;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    const-string v3, "nogms_access_token"

    .line 101
    .line 102
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    .line 109
    move v1, v2

    .line 110
    :goto_2
    iget-object v0, p0, Lcn5;->a:Lih6;

    .line 111
    .line 112
    iput-boolean v1, v0, Lih6;->a:Z

    .line 113
    .line 114
    iget-object p0, p0, Lcn5;->c:Ljava/util/concurrent/CountDownLatch;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    const-string p0, "editor"

    .line 121
    .line 122
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 p0, 0x0

    .line 126
    throw p0
.end method
