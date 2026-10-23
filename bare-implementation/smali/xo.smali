.class public final Lxo;
.super Lyq3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Lfp;

.field public final synthetic r:Lip;


# direct methods
.method public constructor <init>(Lip;Lip;Lfp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxo;->r:Lip;

    .line 2
    .line 3
    iput-object p3, p0, Lxo;->q:Lfp;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lyq3;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Laf7;
    .locals 0

    .line 1
    iget-object p0, p0, Lxo;->q:Lfp;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lxo;->r:Lip;

    .line 2
    .line 3
    invoke-virtual {p0}, Lip;->getInternalPopup()Lhp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lhp;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lip;->f:Lhp;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-interface {v0, v1, p0}, Lhp;->n(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method
