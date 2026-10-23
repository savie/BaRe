.class public final Lyz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lyz0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    .line 46
    iput p8, p0, Lyz0;->a:I

    iput-object p1, p0, Lyz0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lyz0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lyz0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lyz0;->e:Ljava/lang/Object;

    iput-object p5, p0, Lyz0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lyz0;->k:Ljava/lang/Object;

    iput-object p7, p0, Lyz0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq27;Lai5;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lyz0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lq27;->i()Lwo1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lyz0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p1}, Lq27;->k()Lwo1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lyz0;->e:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p1}, Lq27;->f()Lwo1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lyz0;->f:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-interface {p1}, Lq27;->c()Lwo1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lyz0;->k:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-interface {p1}, Lq27;->h()Lwo1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lyz0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {p1}, Lq27;->l()Lwo1;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lyz0;->b:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object p2, p0, Lyz0;->n:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method

.method public static a(Landroid/view/View;)Lyz0;
    .locals 9

    .line 1
    move-object v1, p0

    .line 2
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    .line 4
    const v0, 0x7f0a0270

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
    const v0, 0x7f0a02bd

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
    check-cast v4, Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const v0, 0x7f0a05ad

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
    const v0, 0x7f0a05ae

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v6, v2

    .line 48
    check-cast v6, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    const v0, 0x7f0a05ba

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v7, v2

    .line 60
    check-cast v7, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    new-instance v0, Lyz0;

    .line 65
    .line 66
    const/4 v8, 0x3

    .line 67
    move-object v2, v1

    .line 68
    invoke-direct/range {v0 .. v8}, Lyz0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "Missing required view with ID: "

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public static b(Luq4;Ler4;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Luq4;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Luq4;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Luq4;

    .line 20
    .line 21
    invoke-interface {v2}, Luq4;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1, v0, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p1, v1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public c(Ltw5;)Luq4;
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lhz0;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lyz0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ler4;

    .line 10
    .line 11
    check-cast p1, Lhz0;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Luq4;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    move-object v0, p0

    .line 30
    check-cast v0, Luq4;

    .line 31
    .line 32
    :cond_0
    return-object v0
.end method

.method public d(Ler4;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ler4;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Luq4;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Luq4;->k()Lau1;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lau1;->g()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Lwt1;

    .line 31
    .line 32
    iget-object p0, p0, Lyz0;->n:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lri2;

    .line 35
    .line 36
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "Default constructor can not accept read only %s in %s"

    .line 41
    .line 42
    invoke-direct {p1, v0, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    return-void
.end method

.method public e(Ler4;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ler4;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Luq4;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lwf7;

    .line 34
    .line 35
    iget-object v2, v2, Lwf7;->b:Luf7;

    .line 36
    .line 37
    invoke-interface {v0}, Luq4;->k()Lau1;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v0}, Luq4;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v3}, Lau1;->g()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v2, v2, Luf7;->a:Luw5;

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ltw5;

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    new-instance p1, Lwt1;

    .line 73
    .line 74
    iget-object p0, p0, Lyz0;->n:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lri2;

    .line 77
    .line 78
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p2, "No constructor accepts all read only values in %s"

    .line 83
    .line 84
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lyz0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lyz0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lyz0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

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
