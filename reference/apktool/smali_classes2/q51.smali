.class public final Lq51;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lq51;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq51;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lq51;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget p1, p0, Lq51;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lq51;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lq51;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lq51;

    .line 11
    .line 12
    check-cast p0, Ldd1;

    .line 13
    .line 14
    check-cast v0, Ltn2;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {p1, p0, v0, p2, v1}, Lq51;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p1, Lq51;

    .line 22
    .line 23
    check-cast p0, Lqv1;

    .line 24
    .line 25
    check-cast v0, Lr51;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p1, p0, v0, p2, v1}, Lq51;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq51;->a:I

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
    invoke-virtual {p0, p1, p2}, Lq51;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lq51;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lq51;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lq51;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lq51;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lq51;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lq51;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lq51;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lq51;->b:Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v2, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 16
    .line 17
    check-cast p0, Ldd1;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    check-cast v1, Ltn2;

    .line 30
    .line 31
    invoke-static {p0, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->a(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ltn2;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v2

    .line 35
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast p0, Lqv1;

    .line 39
    .line 40
    invoke-virtual {p0}, Lqv1;->getSmsItemList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lqv1;->getMmsItemList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p1, p0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v1, Lr51;

    .line 53
    .line 54
    iget-object p0, v1, Lr51;->f:Lex6;

    .line 55
    .line 56
    new-instance v3, Lfm7;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/16 v8, 0x1e

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-direct/range {v3 .. v8}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
