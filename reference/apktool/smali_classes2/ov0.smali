.class public final Lov0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lpv0;

.field public final synthetic c:Lg90;


# direct methods
.method public constructor <init>(Lpv0;Lg90;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lov0;->b:Lpv0;

    .line 2
    .line 3
    iput-object p2, p0, Lov0;->c:Lg90;

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
    new-instance v0, Lov0;

    .line 2
    .line 3
    iget-object v1, p0, Lov0;->b:Lpv0;

    .line 4
    .line 5
    iget-object p0, p0, Lov0;->c:Lg90;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lov0;-><init>(Lpv0;Lg90;Ljv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lov0;->a:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lov0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lov0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lov0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lov0;->a:Ljava/lang/Object;

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
    iget-object v1, p0, Lov0;->b:Lpv0;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lqo0;->h(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lov0;->c:Lg90;

    .line 17
    .line 18
    :try_start_0
    sget-object p1, Lzu0;->a:Lzu0;

    .line 19
    .line 20
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lzu0;->a()Luj;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lg90;->I()Ll58;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v2, v0, p0}, Luj;->d(Landroid/content/Context;Ll58;)Lvj;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1, p0}, Lzu0;->h(Lzu0;Lvj;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lzu0;->c()Lsv0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object p0, p0, Lsv0;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move-object p0, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    move p0, p1

    .line 63
    :goto_1
    xor-int/2addr p0, p1

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_3

    .line 69
    :goto_2
    new-instance p1, Lbn6;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    move-object p0, p1

    .line 75
    :goto_3
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    iget-object v3, v1, La55;->b:Ljava/lang/String;

    .line 84
    .line 85
    const/16 v7, 0x8

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    const-string v4, "Error while authenticating with Box"

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 95
    .line 96
    instance-of v0, p0, Lbn6;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    move-object p0, p1

    .line 101
    :cond_3
    check-cast p0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v1}, Lqo0;->f()V

    .line 104
    .line 105
    .line 106
    iget-object p1, v1, Lpv0;->g:Lix6;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lbe8;->a:Lbe8;

    .line 112
    .line 113
    return-object p0
.end method
