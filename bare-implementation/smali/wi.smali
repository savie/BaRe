.class public final Lwi;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lk28;

.field public g:Lhj;

.field public final h:I


# direct methods
.method public constructor <init>(Lk28;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lr35;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwi;->f:Lk28;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lwi;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lr35;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lpi;

    .line 8
    .line 9
    instance-of v0, p1, Lki;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lwi;->h:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    instance-of p0, p1, Loi;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lvi;

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
    check-cast p0, Lpi;

    .line 10
    .line 11
    invoke-virtual {p1, p0, p2}, Lvi;->r(Lpi;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d0022

    .line 4
    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    const p0, 0x7f0d0021

    .line 8
    .line 9
    .line 10
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lui;

    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lui;-><init>(Lwi;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    new-instance p2, Lsi;

    .line 10
    .line 11
    invoke-direct {p2, p0, p1}, Lsi;-><init>(Lwi;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-object p2
.end method
