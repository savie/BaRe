.class public final Lhj9;
.super Lt39;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic g:Laz3;


# direct methods
.method public constructor <init>(Laz3;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhj9;->g:Laz3;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lt39;-><init>(Laz3;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lhj9;->g:Laz3;

    .line 2
    .line 3
    iget-object p0, p0, Laz3;->i:Lsl0;

    .line 4
    .line 5
    sget-object v0, Lhs1;->f:Lhs1;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lsl0;->i(Lhs1;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method

.method public final b(Lhs1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lhj9;->g:Laz3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laz3;->i:Lsl0;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lsl0;->i(Lhs1;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    return-void
.end method
