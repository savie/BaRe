.class public final Ltf2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lz23;
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    .line 18
    iput p6, p0, Ltf2;->a:I

    iput-object p1, p0, Ltf2;->b:Ljava/lang/Object;

    iput-object p2, p0, Ltf2;->c:Ljava/lang/Object;

    iput-object p3, p0, Ltf2;->d:Ljava/lang/Object;

    iput-object p4, p0, Ltf2;->e:Ljava/lang/Object;

    iput-object p5, p0, Ltf2;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lea6;Lea6;Ll22;Lea6;Lea6;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltf2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ltf2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Ltf2;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Ltf2;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Ltf2;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Ltf2;->e:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Landroid/view/View;)Ltf2;
    .locals 7

    .line 1
    move-object v1, p0

    .line 2
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 3
    .line 4
    const v0, 0x7f0a04e8

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
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

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
    check-cast v5, Landroid/widget/CheckedTextView;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    new-instance v0, Ltf2;

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    move-object v2, v1

    .line 44
    invoke-direct/range {v0 .. v6}, Ltf2;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "Missing required view with ID: "

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ltf2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lea6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iget-object v0, p0, Ltf2;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lea6;

    .line 15
    .line 16
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lmf5;

    .line 22
    .line 23
    iget-object v0, p0, Ltf2;->f:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ll22;

    .line 26
    .line 27
    invoke-virtual {v0}, Ll22;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Le41;

    .line 33
    .line 34
    iget-object v0, p0, Ltf2;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lea6;

    .line 37
    .line 38
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Lmw6;

    .line 44
    .line 45
    iget-object p0, p0, Ltf2;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lea6;

    .line 48
    .line 49
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    move-object v6, p0

    .line 54
    check-cast v6, Lmw6;

    .line 55
    .line 56
    new-instance v1, Lsf2;

    .line 57
    .line 58
    invoke-direct/range {v1 .. v6}, Lsf2;-><init>(Ljava/util/concurrent/Executor;Lmf5;Le41;Lmw6;Lmw6;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Ltf2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ltf2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
