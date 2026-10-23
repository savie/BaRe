.class public final Lz37;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lgm1;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/TextView;

.field public final y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final synthetic z:Lee5;


# direct methods
.method public constructor <init>(Lee5;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lz37;->z:Lee5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0174

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p2, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object p1, p0, Lz37;->u:Lgm1;

    .line 22
    .line 23
    iget-object p2, p1, Lgm1;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object p2, p0, Lz37;->v:Landroid/widget/ImageView;

    .line 28
    .line 29
    iget-object p2, p1, Lgm1;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p2, p0, Lz37;->w:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object p2, p1, Lgm1;->f:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p2, p0, Lz37;->x:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object p1, p1, Lgm1;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 44
    .line 45
    iput-object p1, p0, Lz37;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p1, "Missing required view with ID: "

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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
    throw p0
.end method
