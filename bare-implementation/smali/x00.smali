.class public final Lx00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lgd4;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lx00;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lai5;Lwi8;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lx00;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lwi8;->getType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lx00;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lx00;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, p0, Lx00;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p4, p0, Lx00;->a:I

    iput-object p1, p0, Lx00;->b:Ljava/lang/Object;

    iput-object p2, p0, Lx00;->c:Ljava/lang/Object;

    iput-object p3, p0, Lx00;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldr;Lri2;Lx44;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lx00;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object p3, p3, Lx44;->n:Ljava/lang/Object;

    check-cast p3, Lvq3;

    .line 22
    iput-object p3, p0, Lx00;->c:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lx00;->b:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lx00;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/View;)Lx00;
    .locals 4

    .line 1
    const v0, 0x7f0a03ea

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a043f

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a04e7

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-static {v2}, Ltf2;->a(Landroid/view/View;)Ltf2;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Lx00;

    .line 37
    .line 38
    check-cast p0, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, p0, v1, v0, v3}, Lx00;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "Missing required view with ID: "

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public static b(Ldb8;Ls03;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ls03;->getPrefix()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ls03;->getFirst()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1}, Ls03;->getIndex()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {p1}, Ls03;->Y()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2, v1, v0}, Ldb8;->e(ILjava/lang/String;Ljava/lang/String;)Ldb8;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1}, Ls03;->a()Ls03;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lx00;->b(Ldb8;Ls03;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-interface {p1}, Ls03;->getFirst()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Ldb8;->b:Ler4;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lx00;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    invoke-interface {p0}, Lwi8;->c()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lx00;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwi8;

    .line 4
    .line 5
    invoke-interface {v0}, Lwi8;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lwi8;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v1, p0, Lx00;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Class;

    .line 19
    .line 20
    iget-object p0, p0, Lx00;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lai5;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lai5;->k(Ljava/lang/Class;)Lgd;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lgd;->d()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {v0, p0}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lx00;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p1
.end method

.method public f(Ldb8;Ls03;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ls03;->getPrefix()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Ls03;->getFirst()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p2}, Ls03;->getIndex()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2, v1, v0}, Ldb8;->e(ILjava/lang/String;Ljava/lang/String;)Ldb8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p2}, Ls03;->a()Ls03;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p2}, Ls03;->Y()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lx00;->f(Ldb8;Ls03;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {p2}, Ls03;->getPrefix()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p2}, Ls03;->getFirst()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p2}, Ls03;->getIndex()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x1

    .line 45
    if-le v2, v3, :cond_2

    .line 46
    .line 47
    add-int/lit8 v3, v2, -0x1

    .line 48
    .line 49
    iget-object v4, p1, Ldb8;->d:Lfh5;

    .line 50
    .line 51
    invoke-virtual {v4, v3, v1}, Lfh5;->d(ILjava/lang/String;)Ldb8;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Lsf5;

    .line 59
    .line 60
    iget-object p0, p0, Lx00;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lri2;

    .line 63
    .line 64
    filled-new-array {v1, p2, p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p2, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    .line 69
    .line 70
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    :goto_0
    invoke-virtual {p1, v2, v1, v0}, Ldb8;->e(ILjava/lang/String;Ljava/lang/String;)Ldb8;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lx00;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lx00;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lx00;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lx00;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    return-object p0
.end method
