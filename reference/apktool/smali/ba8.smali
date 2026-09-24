.class public final Lba8;
.super Laa8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lk50;

.field public final synthetic b:Lca8;


# direct methods
.method public constructor <init>(Lca8;Lk50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lba8;->b:Lca8;

    .line 5
    .line 6
    iput-object p2, p0, Lba8;->a:Lk50;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ly98;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lba8;->b:Lca8;

    .line 2
    .line 3
    iget-object v0, v0, Lca8;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v1, p0, Lba8;->a:Lk50;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ly98;->C(Lv98;)Ly98;

    .line 17
    .line 18
    .line 19
    return-void
.end method
