.class public final Lic;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Loc;


# instance fields
.field public final a:Lbc;

.field public final b:Lbc;


# direct methods
.method public constructor <init>(Lbc;Lbc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lic;->a:Lbc;

    .line 5
    .line 6
    iput-object p2, p0, Lic;->b:Lbc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n()Lyl0;
    .locals 2

    .line 1
    new-instance v0, Lck7;

    .line 2
    .line 3
    iget-object v1, p0, Lic;->a:Lbc;

    .line 4
    .line 5
    invoke-virtual {v1}, Lbc;->n()Lyl0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lic;->b:Lbc;

    .line 10
    .line 11
    invoke-virtual {p0}, Lbc;->n()Lyl0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast v1, Lxh3;

    .line 16
    .line 17
    check-cast p0, Lxh3;

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Lck7;-><init>(Lxh3;Lxh3;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lic;->a:Lbc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lol1;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lic;->b:Lbc;

    .line 10
    .line 11
    invoke-virtual {p0}, Lol1;->q()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method
