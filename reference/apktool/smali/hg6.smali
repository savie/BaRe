.class public abstract Lhg6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lig6;

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lig6;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhg6;->a:Lig6;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lhg6;->b:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lhg6;->c:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract b()I
.end method

.method public c(I)J
    .locals 0

    .line 1
    const-wide/16 p0, -0x1

    .line 2
    .line 3
    return-wide p0
.end method

.method public d(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e()V
    .locals 0

    .line 1
    iget-object p0, p0, Lhg6;->a:Lig6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lig6;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lhg6;->a:Lig6;

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, v0}, Lig6;->d(Ljava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract h(Lfh6;I)V
.end method

.method public i(Lfh6;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lhg6;->h(Lfh6;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract j(Landroid/view/ViewGroup;I)Lfh6;
.end method
