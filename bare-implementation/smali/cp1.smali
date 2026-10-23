.class public final Lcp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbw1;
.implements Ljk8;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxk1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p2, v1}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcp1;->a:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Lro;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lro;-><init>(Lai5;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcp1;->b:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p3, p0, Lcp1;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p2, p0, Lcp1;->e:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p4, p0, Lcp1;->c:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcp1;->a:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcp1;->b:Ljava/lang/Object;

    .line 29
    iput-object p3, p0, Lcp1;->c:Ljava/lang/Object;

    .line 30
    iput-object p4, p0, Lcp1;->d:Ljava/lang/Object;

    .line 31
    iput-object p5, p0, Lcp1;->e:Ljava/lang/Object;

    return-void
.end method

.method public static e(Landroid/view/View;)Lcp1;
    .locals 6

    .line 1
    move-object v1, p0

    .line 2
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 3
    .line 4
    const v0, 0x7f0a02b7

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const v0, 0x7f0a05ac

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v4, v2

    .line 24
    check-cast v4, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const v0, 0x7f0a05ba

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v5, v2

    .line 36
    check-cast v5, Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcp1;

    .line 41
    .line 42
    move-object v2, v1

    .line 43
    invoke-direct/range {v0 .. v5}, Lcp1;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "Missing required view with ID: "

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method


# virtual methods
.method public a(Lev5;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcp1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lln5;

    .line 4
    .line 5
    check-cast p2, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Lln5;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcp1;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lro;

    .line 40
    .line 41
    iget-object v4, p0, Lcp1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, p1, v1, v2, v4}, Lro;->w(Lev5;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Lkd5;

    .line 50
    .line 51
    iget-object p0, p0, Lcp1;->e:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lvb8;

    .line 54
    .line 55
    filled-new-array {v3, v0, p0}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p2, "Entry %s does not match %s for %s"

    .line 60
    .line 61
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    return-void
.end method

.method public b(Lmc4;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcp1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxk1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lxk1;->g(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lgd4;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0}, Lgd4;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    check-cast v0, Ljava/util/Collection;

    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcp1;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lln5;

    .line 29
    .line 30
    iget-object v2, v2, Lln5;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ljava/lang/Class;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    iget-object v3, p0, Lcp1;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lro;

    .line 40
    .line 41
    invoke-virtual {v3, v1, v2}, Lro;->r(Lmc4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v1
.end method

.method public c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcp1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxk1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lxk1;->g(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lgd4;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lgd4;->d()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-interface {v0, p2}, Lgd4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    move-object v0, p2

    .line 26
    check-cast v0, Ljava/util/Collection;

    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v1, p0, Lcp1;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lln5;

    .line 35
    .line 36
    iget-object v1, v1, Lln5;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Class;

    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    iget-object v2, p0, Lcp1;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lro;

    .line 46
    .line 47
    invoke-virtual {v2, p2, v1}, Lro;->r(Lmc4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object p2
.end method

.method public d(Lmc4;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcp1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxk1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lxk1;->g(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lgd4;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Lgd4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcp1;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lln5;

    .line 26
    .line 27
    iget-object v1, v1, Lln5;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Class;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v2, p0, Lcp1;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lro;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Lro;->v(Lmc4;Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcp1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method
