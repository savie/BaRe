.class public final Lgq5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lhq5;

.field public final synthetic c:Lg90;


# direct methods
.method public constructor <init>(Lhq5;Lg90;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgq5;->b:Lhq5;

    .line 2
    .line 3
    iput-object p2, p0, Lgq5;->c:Lg90;

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
    .locals 2

    .line 1
    new-instance v0, Lgq5;

    .line 2
    .line 3
    iget-object v1, p0, Lgq5;->b:Lhq5;

    .line 4
    .line 5
    iget-object p0, p0, Lgq5;->c:Lg90;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lgq5;-><init>(Lhq5;Lg90;Ljv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lgq5;->a:Ljava/lang/Object;

    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lgq5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lgq5;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lgq5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lgq5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxx1;

    .line 4
    .line 5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f13042d

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lgq5;->b:Lhq5;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lqo0;->h(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lgq5;->c:Lg90;

    .line 17
    .line 18
    :try_start_0
    iget-object p1, v1, Lhq5;->f:Luj;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 24
    .line 25
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lg90;->I()Ll58;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, v2, p0}, Luj;->d(Landroid/content/Context;Ll58;)Lvj;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p1, p0, Lvj;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object v2, v1, Lhq5;->g:Lnh4;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lvj;->c:Ljava/lang/String;

    .line 50
    .line 51
    iget-object p0, p0, Lvj;->b:Ljava/lang/Long;

    .line 52
    .line 53
    invoke-static {p1, v0, p0}, Lnh4;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    move-object p0, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const-string p0, "tokenProcessor"

    .line 65
    .line 66
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_1
    const/4 p0, 0x0

    .line 71
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const-string p0, "authProvider"

    .line 77
    .line 78
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    new-instance p1, Lbn6;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    move-object p0, p1

    .line 88
    :goto_2
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 95
    .line 96
    iget-object v3, v1, La55;->b:Ljava/lang/String;

    .line 97
    .line 98
    const/16 v7, 0x8

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const-string v4, "Error while authenticating"

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    instance-of v0, p0, Lbn6;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    move-object p0, p1

    .line 114
    :cond_4
    check-cast p0, Ljava/lang/Boolean;

    .line 115
    .line 116
    iget-object p1, v1, Lhq5;->i:Lix6;

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lqo0;->f()V

    .line 122
    .line 123
    .line 124
    sget-object p0, Lbe8;->a:Lbe8;

    .line 125
    .line 126
    return-object p0
.end method
