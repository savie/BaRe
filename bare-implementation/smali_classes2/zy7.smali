.class public abstract Lzy7;
.super Lcz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_1
    invoke-direct {p0, v0, v1}, Lcz7;-><init>(ZZ)V

    .line 16
    .line 17
    .line 18
    iput-boolean v0, p0, Lzy7;->c:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lzy7;->d:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzy7;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzy7;->d:Z

    .line 2
    .line 3
    return p0
.end method
