.class public final Lht;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:F

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(FZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr35;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lht;->f:F

    .line 5
    .line 6
    iput-boolean p2, p0, Lht;->g:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lht;->h:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lgt;

    .line 2
    .line 3
    iget-object p0, p0, Lr35;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lgt;->r(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d002c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 6

    .line 1
    new-instance v0, Lgt;

    .line 2
    .line 3
    iget-boolean v3, p0, Lht;->g:Z

    .line 4
    .line 5
    iget-boolean v4, p0, Lht;->h:Z

    .line 6
    .line 7
    iget v2, p0, Lht;->f:F

    .line 8
    .line 9
    move-object v5, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lgt;-><init>(Landroid/view/View;FZZLht;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
