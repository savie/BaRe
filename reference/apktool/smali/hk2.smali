.class public final Lhk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyv7;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lqt3;

.field public final synthetic c:Lgm1;

.field public final synthetic d:Lmt3;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lqt3;Lgm1;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhk2;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lhk2;->b:Lqt3;

    .line 7
    .line 8
    iput-object p3, p0, Lhk2;->c:Lgm1;

    .line 9
    .line 10
    iput-object p4, p0, Lhk2;->d:Lmt3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcw7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Lcw7;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhk2;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lgk2;

    .line 26
    .line 27
    iget-object v2, v2, Lgk2;->d:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcw7;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast v1, Lgk2;

    .line 40
    .line 41
    iget-object v0, p0, Lhk2;->b:Lqt3;

    .line 42
    .line 43
    invoke-interface {v0, p1, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lhk2;->c:Lgm1;

    .line 47
    .line 48
    iget-object p1, p1, Lcw7;->a:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p1, p0, Lgm1;->e:Ljava/lang/Object;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object p0, p1, Lcw7;->a:Ljava/lang/String;

    .line 54
    .line 55
    const-string p1, "Unable to find TabData with tag: "

    .line 56
    .line 57
    invoke-static {p0, p1}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 62
    .line 63
    const-string p1, "Collection contains no element matching the predicate."

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final c(Lcw7;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhk2;->d:Lmt3;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lhk2;->c:Lgm1;

    .line 10
    .line 11
    iget-object v0, p0, Lgm1;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_5

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcw7;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v4, v3, Lcw7;->d:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    iget-object v5, v3, Lcw7;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/4 v6, -0x1

    .line 49
    if-eq v5, v6, :cond_2

    .line 50
    .line 51
    iget v3, v3, Lcw7;->c:I

    .line 52
    .line 53
    if-ne v5, v3, :cond_2

    .line 54
    .line 55
    const/high16 v3, 0x3f800000    # 1.0f

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const v3, 0x3f333333    # 0.7f

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const-string p0, "Tab not attached to a TabLayout"

    .line 66
    .line 67
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    :goto_3
    iget-object p1, p1, Lcw7;->a:Ljava/lang/String;

    .line 75
    .line 76
    iput-object p1, p0, Lgm1;->e:Ljava/lang/Object;

    .line 77
    .line 78
    return-void
.end method
