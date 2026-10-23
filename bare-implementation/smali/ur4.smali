.class public final Lur4;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:I

.field public final m:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lur4;->l:I

    .line 6
    .line 7
    iput-boolean p2, p0, Lur4;->m:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Ltr4;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvq4;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ltr4;->r(Lvq4;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00d9

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Ltr4;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Ltr4;-><init>(Lur4;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
