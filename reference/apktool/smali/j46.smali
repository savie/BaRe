.class public final Lj46;
.super Lhh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Lgh6;

.field public final h:Li46;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lhh6;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhh6;->e:Lgh6;

    .line 5
    .line 6
    iput-object v0, p0, Lj46;->g:Lgh6;

    .line 7
    .line 8
    new-instance v0, Li46;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Li46;-><init>(Lj46;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lj46;->h:Li46;

    .line 14
    .line 15
    iput-object p1, p0, Lj46;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final j()Lw5;
    .locals 0

    .line 1
    iget-object p0, p0, Lj46;->h:Li46;

    .line 2
    .line 3
    return-object p0
.end method
