.class public final Lp00;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lq00;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lq00;ILjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp00;->c:Lq00;

    .line 2
    .line 3
    iput p2, p0, Lp00;->d:I

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
    new-instance v0, Lp00;

    .line 2
    .line 3
    iget-object v1, p0, Lp00;->c:Lq00;

    .line 4
    .line 5
    iget p0, p0, Lp00;->d:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lp00;-><init>(Lq00;ILjv1;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lp00;->b:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lp00;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lp00;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lp00;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lp00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxx1;

    .line 4
    .line 5
    iget v0, p0, Lp00;->a:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Li6;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lv00;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    new-instance v0, Lbn6;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    move-object p1, v0

    .line 58
    :goto_0
    sget-object v0, Lzn4;->a:Lzn4;

    .line 59
    .line 60
    new-instance v0, Lo00;

    .line 61
    .line 62
    iget v3, p0, Lp00;->d:I

    .line 63
    .line 64
    iget-object v4, p0, Lp00;->c:Lq00;

    .line 65
    .line 66
    invoke-direct {v0, v3, v4, p1}, Lo00;-><init>(ILq00;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lp00;->b:Ljava/lang/Object;

    .line 70
    .line 71
    iput v1, p0, Lp00;->a:I

    .line 72
    .line 73
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object p1, Lyx1;->a:Lyx1;

    .line 78
    .line 79
    if-ne p0, p1, :cond_2

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_2
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 83
    .line 84
    return-object p0
.end method
