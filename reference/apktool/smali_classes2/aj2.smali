.class public final Laj2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laj2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

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
    new-instance p1, Laj2;

    .line 2
    .line 3
    iget-object p0, p0, Laj2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Laj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Laj2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Laj2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Laj2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Laj2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Laj2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lmk2;->k()Lji;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v3, Lj94;->a:Ljava/util/Set;

    .line 35
    .line 36
    new-instance v3, Lsx3;

    .line 37
    .line 38
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0}, Lji;->isInstalled()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-direct {v3, v4, v5}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lj94;->a(Lsx3;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 56
    .line 57
    invoke-virtual {p1}, Lk28;->r()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v8, 0x4

    .line 62
    const/4 v9, 0x0

    .line 63
    const-string v6, "Error getting app icon (null)"

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    sget-object v4, Lzn4;->a:Lzn4;

    .line 71
    .line 72
    new-instance v4, Lj32;

    .line 73
    .line 74
    invoke-direct {v4, v2, p1, v0, v3}, Lj32;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput v2, p0, Laj2;->a:I

    .line 78
    .line 79
    invoke-static {v4, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object p1, Lyx1;->a:Lyx1;

    .line 84
    .line 85
    if-ne p0, p1, :cond_3

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_3
    return-object v1
.end method
