.class public final Lfz3;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfz3;->c:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

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
    .locals 1

    .line 1
    new-instance v0, Lfz3;

    .line 2
    .line 3
    iget-object p0, p0, Lfz3;->c:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lfz3;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Ljv1;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lfz3;->b:Ljava/lang/Object;

    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lfz3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lfz3;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfz3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lfz3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxx1;

    .line 4
    .line 5
    iget v0, p0, Lfz3;->a:I

    .line 6
    .line 7
    sget-object v1, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    iget-object v2, p0, Lfz3;->c:Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object p1, v2, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->L:Lgv7;

    .line 34
    .line 35
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lu22;

    .line 40
    .line 41
    new-instance v0, Lf91;

    .line 42
    .line 43
    invoke-direct {v0}, Lf91;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v4, p0, Lfz3;->b:Ljava/lang/Object;

    .line 47
    .line 48
    iput v3, p0, Lfz3;->a:I

    .line 49
    .line 50
    invoke-virtual {p1, v0, p0}, Lu22;->a(Lf91;Lfz3;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-object p1, Lyx1;->a:Lyx1;

    .line 55
    .line 56
    if-ne p0, p1, :cond_2

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    :goto_0
    move-object p1, v1

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    new-instance p1, Lbn6;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-static {p1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 73
    .line 74
    invoke-virtual {v2}, Lk28;->r()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/16 v8, 0x8

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    const-string v5, "Failed to clear credential state"

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-object p1, p0, La55;->b:Ljava/lang/String;

    .line 92
    .line 93
    const-string v0, "signOutAfterCredentialClear() called"

    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lgz3;->f:Lgv7;

    .line 99
    .line 100
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ld45;

    .line 105
    .line 106
    invoke-virtual {p1}, Ld45;->c()V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lgz3;->g:Lix6;

    .line 110
    .line 111
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v1
.end method
