.class public final Lzz;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lzz;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lzz;->b:Ljava/lang/Object;

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
    iget p1, p0, Lzz;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lzz;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lzz;

    .line 9
    .line 10
    check-cast p0, Lye5;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lzz;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lzz;

    .line 18
    .line 19
    check-cast p0, La00;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lzz;-><init>(Ljava/lang/Object;Ljv1;I)V

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
    iget v0, p0, Lzz;->a:I

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
    invoke-virtual {p0, p1, p2}, Lzz;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lzz;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lzz;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lzz;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lzz;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lzz;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lzz;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lzz;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lud5;->f()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p0, Lye5;

    .line 18
    .line 19
    iget-object p0, p0, Lye5;->f:Lex6;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object p1, Lwe5;->a:Lwe5;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lve5;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lve5;-><init>(Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v0

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lj94;->a:Ljava/util/Set;

    .line 44
    .line 45
    check-cast p0, La00;

    .line 46
    .line 47
    iget-object p0, p0, La00;->d:Lji;

    .line 48
    .line 49
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p1, p0}, Lj94;->f(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
