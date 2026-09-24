.class public final Lf41;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcv3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf41;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lf41;Lrs5;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf41;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lf41;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lsl5;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lrs5;->e:Lf41;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lsl5;->e:Lw40;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lw40;->addFirst(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p0, p1, Lrs5;->e:Lf41;

    .line 31
    .line 32
    invoke-virtual {v0}, Lsl5;->b()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "Handler \'"

    .line 37
    .line 38
    const-string v0, "\' is already registered with a dispatcher"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Lc6;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lrl5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf41;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lf41;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lsl5;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, p0, p1, v1}, Lsl5;->a(Lf41;Lrl5;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public c(Lps5;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "Unsupported priority value: "

    .line 8
    .line 9
    invoke-static {p2, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lf41;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lf41;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lsl5;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p1, p2}, Lsl5;->a(Lf41;Lrl5;I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public d(Lrl5;Lpl5;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lf41;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lsl5;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lsl5;->g:I

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, v0}, Lsl5;->c(I)Lrs5;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lsl5;->f:Lrs5;

    .line 19
    .line 20
    iput v0, p0, Lsl5;->g:I

    .line 21
    .line 22
    iput-object p1, p0, Lsl5;->h:Lrl5;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object p1, v1, Lrs5;->f:Lss5;

    .line 29
    .line 30
    new-instance v0, Lxj0;

    .line 31
    .line 32
    invoke-direct {v0, p2}, Lxj0;-><init>(Lpl5;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lss5;->handleOnBackStarted(Lxj0;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lsl5;->a:Lkm7;

    .line 39
    .line 40
    new-instance p1, Lul5;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Lul5;-><init>(Lpl5;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p0, p2, p1}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public e(Ls65;Lk36;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf41;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk36;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lk36;->b(Ls65;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lf41;->a:Ljava/lang/Object;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, v0, Lk36;->a:Lud;

    .line 14
    .line 15
    iget-object p1, p2, Lk36;->a:Lud;

    .line 16
    .line 17
    filled-new-array {p3, p0, p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "Conflicting property-based creators: already had %s creator %s, encountered another: %s"

    .line 22
    .line 23
    invoke-static {p1, p0}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lf41;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    return-object p0
.end method
