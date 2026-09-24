.class public final Lof2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq27;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Lri2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lof2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lri2;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lof2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lz56;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lz56;-><init>(Lof2;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lof2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lof2;->c:Lri2;

    .line 15
    .line 16
    return-void
.end method

.method private final m()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->d:Lri2;

    .line 13
    .line 14
    invoke-interface {p0}, Lri2;->a()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lai5;)Lyz0;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lyz0;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lyz0;-><init>(Lq27;Lai5;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ltr5;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lyz0;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lyz0;-><init>(Lq27;Lai5;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lwo1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->h:Lwo1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lny1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 13
    .line 14
    iget-object p0, p0, Lbr7;->a:Lny1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lxd2;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->a:Loe;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lwo1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->g:Lwo1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lvj8;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    invoke-virtual {p0}, Ltr5;->g()Lvj8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->c:Lri2;

    .line 9
    .line 10
    check-cast p0, Lee2;

    .line 11
    .line 12
    iget-object p0, p0, Lee2;->a:Lri2;

    .line 13
    .line 14
    invoke-interface {p0}, Lri2;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getText()V
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ltr5;

    .line 10
    .line 11
    invoke-virtual {p0}, Ltr5;->getText()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lof2;->c:Lri2;

    .line 7
    .line 8
    invoke-interface {p0}, Lri2;->getType()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ltr5;

    .line 16
    .line 17
    iget-object p0, p0, Ltr5;->d:Lri2;

    .line 18
    .line 19
    invoke-interface {p0}, Lri2;->getType()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getVersion()Luq4;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 13
    .line 14
    iget-object p0, p0, Lbr7;->b:Luq4;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lwo1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->e:Lwo1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Lwo1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->d:Lwo1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isPrimitive()Z
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 13
    .line 14
    iget-boolean p0, p0, Lbr7;->d:Z

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ld67;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lz56;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ltr5;

    .line 14
    .line 15
    invoke-virtual {p0}, Ltr5;->j()Ld67;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Lwo1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->f:Lwo1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Lwo1;
    .locals 1

    .line 1
    iget v0, p0, Lof2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lof2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ltr5;

    .line 11
    .line 12
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 13
    .line 14
    iget-object p0, p0, Lo81;->c:Lwo1;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
