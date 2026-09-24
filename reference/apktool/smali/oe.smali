.class public final Loe;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Luk7;
.implements Lxd2;
.implements Lz23;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Lqa2;
.implements Ln59;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Loe;->a:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lty3;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-direct {p1, v0}, Lty3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Loe;->b:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p1, Ls27;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    .line 23
    .line 24
    return-void

    .line 25
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance p1, Llr6;

    .line 29
    .line 30
    const/16 v0, 0x80

    .line 31
    .line 32
    invoke-direct {p1, v0}, Lgo4;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Loe;->b:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance p1, Llr6;

    .line 38
    .line 39
    const/16 v0, 0x100

    .line 40
    .line 41
    invoke-direct {p1, v0}, Llr6;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Loe;->b:Ljava/lang/Object;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 76
    iput p1, p0, Loe;->a:I

    iput-object p2, p0, Loe;->b:Ljava/lang/Object;

    iput-object p3, p0, Loe;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 59
    iput p1, p0, Loe;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Loe;->a:I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Loe;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 60
    iput p3, p0, Loe;->a:I

    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    iput-object p2, p0, Loe;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyc9;Lb05;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Loe;->a:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    iput-object p2, p0, Loe;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr21;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Loe;->a:I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx44;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Loe;->a:I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lbq1;

    .line 73
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 74
    iput-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Luk7;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Loe;->a:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Loe;->b:Ljava/lang/Object;

    .line 65
    new-instance p1, Llk;

    .line 66
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Loe;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/View;)Loe;
    .locals 2

    .line 1
    const v0, 0x7f0a020c

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    .line 14
    new-instance v0, Loe;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1, p0, p0}, Loe;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Missing required view with ID: "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljj7;

    .line 4
    .line 5
    iget-object v1, p0, Loe;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lbh5;

    .line 8
    .line 9
    iget-object v0, v0, Ljj7;->f:Lbh5;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljj7;

    .line 18
    .line 19
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lbh5;

    .line 22
    .line 23
    iget-object v1, v0, Ljj7;->b:Ltd2;

    .line 24
    .line 25
    iget-object v0, v0, Ljj7;->k:Lia2;

    .line 26
    .line 27
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 28
    .line 29
    invoke-interface {p0}, Lra2;->e()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v0, p1, p0, v2}, Ltd2;->c(Ljo4;Ljava/lang/Exception;Lra2;I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public c(Lev5;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Loe;->e(Lev5;Lxd2;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 1
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ls27;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lr27;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lr27;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lr27;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    iget-object p0, v0, Lr27;->a:Ljava/lang/Class;

    .line 28
    .line 29
    :goto_0
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    :goto_1
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 54
    .line 55
    return-object p0
.end method

.method public e(Lev5;Lxd2;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lxd2;->c(Lev5;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Lev5;->c()Lx46;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljk5;

    .line 29
    .line 30
    invoke-interface {v1}, Ljk5;->reference()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1}, Ljk5;->prefix()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2, v2}, Lx46;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Ljk5;

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-interface {p0}, Ljk5;->reference()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p1, p0}, Lev5;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljj7;

    .line 4
    .line 5
    iget-object v1, p0, Loe;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lbh5;

    .line 8
    .line 9
    iget-object v0, v0, Ljj7;->f:Lbh5;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljj7;

    .line 18
    .line 19
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lbh5;

    .line 22
    .line 23
    iget-object v1, v0, Ljj7;->a:Lqd2;

    .line 24
    .line 25
    iget-object v1, v1, Lqd2;->p:Lkm2;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lbh5;->c:Lra2;

    .line 30
    .line 31
    invoke-interface {v2}, Lra2;->e()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Lkm2;->c(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iput-object p1, v0, Ljj7;->e:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p0, v0, Ljj7;->b:Ltd2;

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    iput p1, p0, Ltd2;->V:I

    .line 47
    .line 48
    iget-object p1, p0, Ltd2;->H:Ldx2;

    .line 49
    .line 50
    iget-boolean v0, p1, Ldx2;->x:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object p1, p1, Ldx2;->p:Ljy3;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p1, Ldx2;->n:Ljy3;

    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, p0}, Ljy3;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    move-object v1, v0

    .line 64
    iget-object v0, v1, Ljj7;->b:Ltd2;

    .line 65
    .line 66
    move-object v2, v1

    .line 67
    iget-object v1, p0, Lbh5;->a:Ljo4;

    .line 68
    .line 69
    iget-object v3, p0, Lbh5;->c:Lra2;

    .line 70
    .line 71
    invoke-interface {v3}, Lra2;->e()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget-object v5, v2, Ljj7;->k:Lia2;

    .line 76
    .line 77
    move-object v2, p1

    .line 78
    invoke-virtual/range {v0 .. v5}, Ltd2;->b(Ljo4;Ljava/lang/Object;Lra2;ILjo4;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public g(Lvb8;Ljava/lang/Class;)Lxv1;
    .locals 3

    .line 1
    const-class v0, Lxv1;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lxv1;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-class v2, Lat2;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lat2;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lyv1;

    .line 23
    .line 24
    const-string p2, "Element annotation required for %s"

    .line 25
    .line 26
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p2, p1}, Lyv1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0, p2, v0}, Loe;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lxv1;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    const-class v0, Lno6;

    .line 45
    .line 46
    invoke-virtual {p0, p2, v0}, Loe;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lno6;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Lyv1;

    .line 56
    .line 57
    const-string p1, "Root annotation required for %s"

    .line 58
    .line 59
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p0, p1, p2}, Lyv1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    :goto_1
    return-object p1

    .line 68
    :cond_4
    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v1, Lb05;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lsl4;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lea6;

    .line 14
    .line 15
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v5, p0

    .line 22
    check-cast v5, Lea6;

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    new-instance v0, Lmw6;

    .line 26
    .line 27
    move-object v4, p0

    .line 28
    check-cast v4, Lt57;

    .line 29
    .line 30
    sget-object v3, Lld0;->f:Lld0;

    .line 31
    .line 32
    invoke-direct/range {v0 .. v5}, Lmw6;-><init>(Lba1;Lba1;Lld0;Lt57;Lea6;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Loe;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lf59;)V
    .locals 9

    .line 1
    iget-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v7, v0

    .line 4
    check-cast v7, Lyf1;

    .line 5
    .line 6
    check-cast p1, Lv59;

    .line 7
    .line 8
    iget-object v0, p1, Lv59;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lwc9;

    .line 17
    .line 18
    iget-object v0, p1, Lv59;->f:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Lv59;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, p1, v1}, Lwc9;-><init>(Ljava/lang/String;Ljava/util/List;Lua9;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, p0}, Lyf1;->f(Lwc9;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v2, Lb69;

    .line 31
    .line 32
    iget-object v0, p1, Lv59;->b:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p1, Lv59;->a:Ljava/lang/String;

    .line 35
    .line 36
    iget-wide v3, p1, Lv59;->d:J

    .line 37
    .line 38
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "Bearer"

    .line 43
    .line 44
    invoke-direct {v2, v0, v1, v3, v4}, Lb69;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    check-cast v1, Lke;

    .line 51
    .line 52
    iget-boolean p1, p1, Lv59;->c:Z

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    move-object v8, p0

    .line 62
    invoke-virtual/range {v1 .. v8}, Lke;->t(Lb69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Ln59;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public i()Lw00;
    .locals 1

    .line 1
    iget-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw00;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lw00;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lw00;-><init>(Loe;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Loe;->c:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lw00;

    .line 17
    .line 18
    return-object p0
.end method

.method public j(IIII)V
    .locals 2

    .line 1
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lr21;

    .line 4
    .line 5
    iget-object v0, p0, Lr21;->d:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lr21;->c:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    add-int/2addr p1, v1

    .line 15
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    add-int/2addr p2, v1

    .line 18
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    add-int/2addr p3, v1

    .line 21
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    add-int/2addr p4, v0

    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lr21;->a(Lr21;IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public l([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x400

    .line 3
    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, [Luk7;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v3, p1

    .line 13
    :goto_0
    const/4 v4, 0x1

    .line 14
    if-ge v2, v4, :cond_2

    .line 15
    .line 16
    aget-object v4, v0, v2

    .line 17
    .line 18
    array-length v5, v3

    .line 19
    if-gt v5, v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v4, p1}, Luk7;->l([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    array-length p1, v3

    .line 30
    if-le p1, v1, :cond_3

    .line 31
    .line 32
    iget-object p0, p0, Loe;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Llk;

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Llk;->l([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    return-object v3
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Loe;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lf80;

    .line 6
    .line 7
    iget-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ls02;

    .line 10
    .line 11
    iget-object v0, v0, Ls02;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lo02;

    .line 14
    .line 15
    iget-object v0, v0, Lo02;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    new-instance v1, Lla7;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, v2}, Lla7;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/json/JSONObject;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iget-object v1, p1, Lf80;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ls79;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ls79;->o(Lorg/json/JSONObject;)Lfa7;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, p1, Lf80;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkm8;

    .line 47
    .line 48
    iget-wide v4, v1, Lfa7;->c:J

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v6, "Failed to close settings writer."

    .line 54
    .line 55
    const-string v7, "FirebaseCrashlytics"

    .line 56
    .line 57
    const/4 v8, 0x2

    .line 58
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    const-string v8, "Writing settings to cache file..."

    .line 65
    .line 66
    invoke-static {v7, v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :cond_0
    :try_start_0
    const-string v8, "expires_at"

    .line 70
    .line 71
    invoke-virtual {p0, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    new-instance v4, Ljava/io/FileWriter;

    .line 75
    .line 76
    iget-object v3, v3, Lkm8;->a:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .line 82
    .line 83
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-static {v4, v6}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    move-object v0, v4

    .line 99
    goto :goto_3

    .line 100
    :catch_0
    move-exception v3

    .line 101
    goto :goto_1

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    goto :goto_3

    .line 104
    :catch_1
    move-exception v3

    .line 105
    move-object v4, v0

    .line 106
    :goto_1
    :try_start_2
    const-string v5, "Failed to cache settings"

    .line 107
    .line 108
    invoke-static {v7, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_2
    const-string v3, "Loaded settings: "

    .line 113
    .line 114
    invoke-static {p0, v3}, Lf80;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p1, Lf80;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Lsa7;

    .line 120
    .line 121
    iget-object p0, p0, Lsa7;->f:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v3, p1, Lf80;->a:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v3, Landroid/content/Context;

    .line 126
    .line 127
    const-string v4, "com.google.firebase.crashlytics"

    .line 128
    .line 129
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "existing_instance_identifier"

    .line 138
    .line 139
    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    .line 144
    .line 145
    iget-object p0, p1, Lf80;->h:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p1, Lf80;->i:Ljava/io/Serializable;

    .line 153
    .line 154
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :goto_3
    invoke-static {v0, v6}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_1
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
