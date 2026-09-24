.class public final Lz25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lb35;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lc35;


# direct methods
.method public constructor <init>(Lc35;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz25;->b:Lc35;

    .line 5
    .line 6
    iput p2, p0, Lz25;->a:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz25;->b:Lc35;

    .line 2
    .line 3
    iget-object v1, v0, Lc35;->b:Le25;

    .line 4
    .line 5
    iget p0, p0, Lz25;->a:F

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lc35;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v2, Lz25;

    .line 12
    .line 13
    invoke-direct {v2, v0, p0}, Lz25;-><init>(Lc35;F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v2, v1, Le25;->k:F

    .line 21
    .line 22
    iget v1, v1, Le25;->l:F

    .line 23
    .line 24
    invoke-static {v2, v1, p0}, Lsg5;->d(FFF)F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    float-to-int p0, p0

    .line 29
    invoke-virtual {v0, p0}, Lc35;->j(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
