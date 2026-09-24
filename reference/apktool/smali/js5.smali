.class public final Ljs5;
.super Lus2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final k:Lh75;

.field public final n:F


# direct methods
.method public constructor <init>(Lh75;F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lus2;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Ljs5;->k:Lh75;

    .line 6
    .line 7
    iput p2, p0, Ljs5;->n:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A(FFFLmc7;)V
    .locals 1

    .line 1
    iget v0, p0, Ljs5;->n:F

    .line 2
    .line 3
    sub-float/2addr p2, v0

    .line 4
    iget-object p0, p0, Ljs5;->k:Lh75;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lh75;->A(FFFLmc7;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final z()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
