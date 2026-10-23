.class public final Lvj1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lqo0;

.field public final synthetic b:Z

.field public final synthetic c:Lwj1;


# direct methods
.method public constructor <init>(Lqo0;ZLwj1;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvj1;->a:Lqo0;

    .line 2
    .line 3
    iput-boolean p2, p0, Lvj1;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lvj1;->c:Lwj1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lvj1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lvj1;->b:Z

    .line 4
    .line 5
    iget-object v1, p0, Lvj1;->c:Lwj1;

    .line 6
    .line 7
    iget-object p0, p0, Lvj1;->a:Lqo0;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lvj1;-><init>(Lqo0;ZLwj1;Ljv1;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lvj1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lvj1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lvj1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f13042d

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lvj1;->a:Lqo0;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lqo0;->h(I)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Ltb1;->a:Ltb1;

    .line 13
    .line 14
    iget-boolean p1, p0, Lvj1;->b:Z

    .line 15
    .line 16
    invoke-static {p1}, Lqb1;->o(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v2}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v1

    .line 33
    :goto_0
    if-eqz v3, :cond_1

    .line 34
    .line 35
    instance-of v4, v3, Lsi1;

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 40
    .line 41
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const v5, 0x7f13010d

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-object v6, Lzn4;->a:Lzn4;

    .line 56
    .line 57
    invoke-static {v4, v5}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eqz p1, :cond_2

    .line 61
    .line 62
    instance-of p1, v3, Lsi1;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-static {}, Lqb1;->m()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v2, 0x0

    .line 74
    :goto_1
    if-eqz v2, :cond_3

    .line 75
    .line 76
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 77
    .line 78
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const v3, 0x7f13010e

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v4, Lzn4;->a:Lzn4;

    .line 93
    .line 94
    invoke-static {p1, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object p0, p0, Lvj1;->c:Lwj1;

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Lwj1;->c:Lbt3;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    iput-object v1, p0, Lwj1;->c:Lbt3;

    .line 109
    .line 110
    invoke-virtual {v0}, Lqo0;->f()V

    .line 111
    .line 112
    .line 113
    sget-object p0, Lbe8;->a:Lbe8;

    .line 114
    .line 115
    return-object p0
.end method
