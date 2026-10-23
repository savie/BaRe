.class public final Lrb5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lrb5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrb5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Lrb5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lrb5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lrb5;

    .line 9
    .line 10
    check-cast p0, Ljo6;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lrb5;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lrb5;

    .line 18
    .line 19
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lrb5;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lrb5;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lrb5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lrb5;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lrb5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lrb5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lrb5;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lrb5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lrb5;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lrb5;->c:Ljava/lang/Object;

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
    iget v0, p0, Lrb5;->b:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v2, Ljo6;

    .line 35
    .line 36
    iput v6, p0, Lrb5;->b:I

    .line 37
    .line 38
    invoke-static {v2, p0}, Ljo6;->l(Ljo6;Lkv1;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-ne p0, v5, :cond_2

    .line 43
    .line 44
    move-object v1, v5

    .line 45
    :cond_2
    :goto_0
    return-object v1

    .line 46
    :pswitch_0
    check-cast v2, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 47
    .line 48
    iget v0, p0, Lrb5;->b:I

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    if-ne v0, v6, :cond_3

    .line 53
    .line 54
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v1, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p1, p1, Ltb5;->g:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    sget-object p1, Lx95;->g:Lx95;

    .line 75
    .line 76
    invoke-static {}, Lx95;->p()Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :cond_5
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Ltb5;->k(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lzn4;->a:Lzn4;

    .line 88
    .line 89
    new-instance v0, Llx;

    .line 90
    .line 91
    const/16 v3, 0x9

    .line 92
    .line 93
    invoke-direct {v0, v3, v2, p1}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput v6, p0, Lrb5;->b:I

    .line 97
    .line 98
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-ne p0, v5, :cond_6

    .line 103
    .line 104
    move-object v1, v5

    .line 105
    :cond_6
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
