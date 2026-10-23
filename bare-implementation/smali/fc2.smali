.class public final Lfc2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lic2;Ljv1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfc2;->a:I

    .line 13
    iput-object p1, p0, Lfc2;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Lzc6;Lnd6;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lfc2;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lfc2;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lfc2;->d:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lfc2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lfc2;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lfc2;

    .line 9
    .line 10
    iget-object p0, p0, Lfc2;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lzc6;

    .line 13
    .line 14
    check-cast v1, Lnd6;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1, p2}, Lfc2;-><init>(Lzc6;Lnd6;Ljv1;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    new-instance p0, Lfc2;

    .line 21
    .line 22
    check-cast v1, Lic2;

    .line 23
    .line 24
    invoke-direct {p0, v1, p2}, Lfc2;-><init>(Lic2;Ljv1;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lfc2;->c:Ljava/lang/Object;

    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lfc2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lxx1;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lfc2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lfc2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lfc2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lfd5;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lfc2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lfc2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lfc2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lfc2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lfc2;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lyx1;->a:Lyx1;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lfc2;->c:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v10, v0

    .line 19
    check-cast v10, Lzc6;

    .line 20
    .line 21
    iget v0, p0, Lfc2;->b:I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-ne v0, v6, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v10}, Lw13;->k(Lzc6;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {v10, p1}, Lw13;->f(Lzc6;I)Llk3;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    sget-object p1, Lzn4;->a:Lzn4;

    .line 52
    .line 53
    move-object v8, v2

    .line 54
    check-cast v8, Lnd6;

    .line 55
    .line 56
    new-instance v7, Lld6;

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    invoke-direct/range {v7 .. v12}, Lld6;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    iput v6, p0, Lfc2;->b:I

    .line 63
    .line 64
    invoke-static {v7, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-ne p0, v5, :cond_2

    .line 69
    .line 70
    move-object v1, v5

    .line 71
    :cond_2
    :goto_0
    return-object v1

    .line 72
    :pswitch_0
    iget v0, p0, Lfc2;->b:I

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    if-ne v0, v6, :cond_3

    .line 77
    .line 78
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v1, v3

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lfc2;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Lfd5;

    .line 93
    .line 94
    check-cast v2, Lic2;

    .line 95
    .line 96
    iput v6, p0, Lfc2;->b:I

    .line 97
    .line 98
    invoke-static {v2, p1, p0}, Lic2;->c(Lic2;Lfd5;Lkv1;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-ne p0, v5, :cond_5

    .line 103
    .line 104
    move-object v1, v5

    .line 105
    :cond_5
    :goto_1
    return-object v1

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
