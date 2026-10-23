.class public final Lj37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm37;

.field public final synthetic b:F


# direct methods
.method public constructor <init>(Lm37;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj37;->a:Lm37;

    .line 5
    .line 6
    iput p2, p0, Lj37;->b:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj37;->a:Lm37;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm37;->k()Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lj37;->b:F

    .line 8
    .line 9
    invoke-static {p0}, Ltu0;->v(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    rsub-int/lit8 v1, v1, 0x0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr p0, v3

    .line 25
    invoke-virtual {v0, v1, p0, v2}, Landroidx/core/widget/NestedScrollView;->u(IIZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
