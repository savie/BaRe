.class public final Lxo7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lyo7;

.field public final synthetic c:Lq63;

.field public final synthetic d:Lq63;


# direct methods
.method public constructor <init>(ZLyo7;Lq63;Lq63;Ljv1;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxo7;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lxo7;->b:Lyo7;

    .line 4
    .line 5
    iput-object p3, p0, Lxo7;->c:Lq63;

    .line 6
    .line 7
    iput-object p4, p0, Lxo7;->d:Lq63;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Lxo7;

    .line 2
    .line 3
    iget-object v3, p0, Lxo7;->c:Lq63;

    .line 4
    .line 5
    iget-object v4, p0, Lxo7;->d:Lq63;

    .line 6
    .line 7
    iget-boolean v1, p0, Lxo7;->a:Z

    .line 8
    .line 9
    iget-object v2, p0, Lxo7;->b:Lyo7;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lxo7;-><init>(ZLyo7;Lq63;Lq63;Ljv1;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lxo7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lxo7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lxo7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lxo7;->c:Lq63;

    .line 2
    .line 3
    iget-boolean v1, p0, Lxo7;->a:Z

    .line 4
    .line 5
    iget-object v2, p0, Lxo7;->b:Lyo7;

    .line 6
    .line 7
    iget-object v3, v2, Lyo7;->f:Lix6;

    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance p1, Luo7;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {p1, v5, v1, v4}, Luo7;-><init>(IZZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lem2;

    .line 23
    .line 24
    iget-object p0, p0, Lxo7;->d:Lq63;

    .line 25
    .line 26
    invoke-direct {v4, v0, p0}, Lem2;-><init>(Lq63;Lq63;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Ljj2;

    .line 30
    .line 31
    const/16 v5, 0x9

    .line 32
    .line 33
    invoke-direct {p0, v5, v2, p1}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p0}, Lem2;->b(Ljj2;)V

    .line 37
    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lcy0;->e(Lq63;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 48
    .line 49
    iget-object v5, v2, La55;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "moveFilesToNewStorage: "

    .line 56
    .line 57
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v8, 0x4

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_0
    iget-object p0, v2, La55;->b:Ljava/lang/String;

    .line 68
    .line 69
    const-string p1, "moveFilesToNewStorage: Completed"

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    sget-object p0, Lto7;->a:Lto7;

    .line 75
    .line 76
    invoke-virtual {v3, p0}, Lix6;->k(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lbe8;->a:Lbe8;

    .line 80
    .line 81
    return-object p0
.end method
