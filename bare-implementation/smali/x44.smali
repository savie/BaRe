.class public final Lx44;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/appbar/MaterialToolbar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lx44;->a:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lx44;->b:Ljava/lang/Object;

    .line 108
    iput-object p3, p0, Lx44;->c:Ljava/lang/Object;

    .line 109
    iput-object p4, p0, Lx44;->d:Ljava/lang/Object;

    .line 110
    iput-object p5, p0, Lx44;->e:Ljava/lang/Object;

    .line 111
    iput-object p6, p0, Lx44;->f:Ljava/lang/Object;

    .line 112
    iput-object p7, p0, Lx44;->k:Ljava/lang/Object;

    .line 113
    iput-object p8, p0, Lx44;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcz4;Lvq3;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgp1;

    .line 5
    .line 6
    sget-object v1, Leg2;->a:Leg2;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lgp1;-><init>(Lx44;Leg2;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx44;->c:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Ls02;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lbq1;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Ls02;->a:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v1, Lbq1;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Ls02;->b:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v1, Lx91;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcz4;

    .line 38
    .line 39
    const/16 v3, 0x11

    .line 40
    .line 41
    invoke-direct {v2, v3}, Lcz4;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v2, v1, Lx91;->a:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v2, Llv1;

    .line 47
    .line 48
    const/16 v3, 0x12

    .line 49
    .line 50
    invoke-direct {v2, v3}, Llv1;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object v2, v1, Lx91;->c:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance v2, Lom5;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Lom5;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, v1, Lx91;->d:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object p1, v1, Lx91;->b:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v1, v0, Ls02;->c:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v0, p0, Lx44;->f:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance p1, Loe;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Loe;-><init>(Lx44;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lx44;->b:Ljava/lang/Object;

    .line 74
    .line 75
    new-instance p1, Lgp1;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-direct {p1, p0, v0}, Lgp1;-><init>(Lx44;Leg2;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lx44;->d:Ljava/lang/Object;

    .line 82
    .line 83
    new-instance p1, Lw00;

    .line 84
    .line 85
    invoke-direct {p1, p2}, Lw00;-><init>(Lvq3;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lx44;->e:Ljava/lang/Object;

    .line 89
    .line 90
    new-instance p1, Lom5;

    .line 91
    .line 92
    const/4 v0, 0x6

    .line 93
    invoke-direct {p1, v0}, Lom5;-><init>(I)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lx44;->a:Ljava/lang/Object;

    .line 97
    .line 98
    sget-object p1, Lby8;->a:Lfk8;

    .line 99
    .line 100
    iput-object p1, p0, Lx44;->k:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object p2, p0, Lx44;->n:Ljava/lang/Object;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Leg2;)Lbu1;
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lx44;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lgp1;

    .line 6
    .line 7
    iget-object p2, p0, Lgp1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lbq1;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lbu1;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lk63;

    .line 24
    .line 25
    iget-object p0, p0, Lgp1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lx44;

    .line 28
    .line 29
    invoke-direct {v1, v0, p0}, Lk63;-><init>(Lri2;Lx44;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    return-object v0

    .line 37
    :cond_1
    iget-object p0, p0, Lx44;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lgp1;

    .line 40
    .line 41
    iget-object p2, p0, Lgp1;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lbq1;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lbu1;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lk63;

    .line 58
    .line 59
    iget-object p0, p0, Lgp1;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lx44;

    .line 62
    .line 63
    invoke-direct {v1, v0, p0}, Lk63;-><init>(Lri2;Lx44;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    return-object v0
.end method

.method public b(Lau1;Ljava/lang/annotation/Annotation;)Luq4;
    .locals 1

    .line 1
    iget-object p0, p0, Lx44;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lw00;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ldr4;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Ldr4;-><init>(Lau1;Ljava/lang/annotation/Annotation;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lw00;->r(Lau1;Ljava/lang/annotation/Annotation;Ldr4;)Lcr4;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lcr4;->b:I

    .line 20
    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcr4;->a:Ljava/util/List;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Luq4;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public c(Ljava/lang/Class;Leg2;)Lbu1;
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lx44;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lgp1;

    .line 6
    .line 7
    iget-object p2, p0, Lgp1;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lbq1;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lbu1;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lwf5;

    .line 24
    .line 25
    iget-object p0, p0, Lgp1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lx44;

    .line 28
    .line 29
    invoke-direct {v1, v0, p0}, Lwf5;-><init>(Lri2;Lx44;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    return-object v0

    .line 37
    :cond_1
    iget-object p0, p0, Lx44;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lgp1;

    .line 40
    .line 41
    iget-object p2, p0, Lgp1;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lbq1;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lbu1;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lwf5;

    .line 58
    .line 59
    iget-object p0, p0, Lgp1;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lx44;

    .line 62
    .line 63
    invoke-direct {v1, v0, p0}, Lwf5;-><init>(Lri2;Lx44;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    return-object v0
.end method

.method public d(Ljava/lang/Class;)Lq27;
    .locals 5

    .line 1
    iget-object p0, p0, Lx44;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Loe;

    .line 4
    .line 5
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lx44;

    .line 8
    .line 9
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lbq1;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lq27;

    .line 18
    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    iget-object v1, v0, Lx44;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lgp1;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1}, Lx44;->e(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    new-instance v0, Lof2;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lof2;-><init>(Lri2;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v2, Ltr5;

    .line 42
    .line 43
    invoke-direct {v2, v1, v0}, Ltr5;-><init>(Lri2;Lx44;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v2, Ltr5;->c:Lbr7;

    .line 47
    .line 48
    iget-boolean v3, v3, Lbr7;->d:Z

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    const-class v3, Ljava/util/Collection;

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x1

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-class v3, Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    :goto_0
    if-nez v4, :cond_3

    .line 76
    .line 77
    new-instance v2, Lof2;

    .line 78
    .line 79
    invoke-direct {v2}, Lof2;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lee2;

    .line 83
    .line 84
    invoke-direct {v3, v1}, Lee2;-><init>(Lri2;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, v2, Lof2;->c:Lri2;

    .line 88
    .line 89
    new-instance v1, Ltr5;

    .line 90
    .line 91
    invoke-direct {v1, v3, v0}, Ltr5;-><init>(Lri2;Lx44;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v2, Lof2;->b:Ljava/lang/Object;

    .line 95
    .line 96
    :cond_3
    move-object v0, v2

    .line 97
    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_4
    return-object v1
.end method

.method public e(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-class v0, Ljava/lang/Float;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    const-class v0, Ljava/lang/Double;

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    const-class v0, Ljava/lang/Long;

    .line 18
    .line 19
    if-ne p1, v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const-class v0, Ljava/lang/Integer;

    .line 23
    .line 24
    if-ne p1, v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    if-ne p1, v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    return v1

    .line 39
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    return v1

    .line 46
    :cond_7
    iget-object p0, p0, Lx44;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Ls02;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ls02;->c(Ljava/lang/Class;)Li98;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_8

    .line 55
    .line 56
    return v1

    .line 57
    :cond_8
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lx44;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    return-object p0
.end method
