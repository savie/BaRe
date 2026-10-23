.class public final Lz72;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Laz7;Lpp8;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lz72;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lz72;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lz72;->c:Ljava/lang/Object;

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

.method public constructor <init>(Lmt3;Ljv1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz72;->a:I

    .line 13
    iput-object p1, p0, Lz72;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lz72;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lz72;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lz72;

    .line 9
    .line 10
    iget-object p0, p0, Lz72;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Laz7;

    .line 13
    .line 14
    check-cast v1, Lpp8;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1, p2}, Lz72;-><init>(Laz7;Lpp8;Ljv1;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    new-instance p0, Lz72;

    .line 21
    .line 22
    check-cast v1, Lmt3;

    .line 23
    .line 24
    invoke-direct {p0, v1, p2}, Lz72;-><init>(Lmt3;Ljv1;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lz72;->b:Ljava/lang/Object;

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
    iget v0, p0, Lz72;->a:I

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
    invoke-virtual {p0, p1, p2}, Lz72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lz72;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lz72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Le98;

    .line 23
    .line 24
    check-cast p2, Ljv1;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lz72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lz72;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lz72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lz72;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lz72;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lz72;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Laz7;

    .line 14
    .line 15
    check-cast v1, Lpp8;

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    invoke-static {p0, v1, p1}, Lup8;->a(Laz7;Lqo0;I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lbe8;->a:Lbe8;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lz72;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Le98;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Lgf6;

    .line 35
    .line 36
    invoke-interface {p0}, Lgf6;->d()Lfw6;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast v1, Lmt3;

    .line 41
    .line 42
    invoke-interface {v1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
