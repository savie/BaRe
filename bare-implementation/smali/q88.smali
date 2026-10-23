.class public final Lq88;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public M:Z

.field public final synthetic N:I

.field public final synthetic O:Lr88;


# direct methods
.method public constructor <init>(Lr88;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq88;->O:Lr88;

    .line 5
    .line 6
    iput p2, p0, Lq88;->N:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lq88;->M:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq88;->M:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lq88;->O:Lr88;

    .line 2
    .line 3
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq88;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq88;->O:Lr88;

    .line 6
    .line 7
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    iget p0, p0, Lq88;->N:I

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
