.class public abstract Ltv4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lu66;


# direct methods
.method public constructor <init>(Lu66;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltv4;->a:Lu66;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a()Lu66;
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ltv4;->a:Lu66;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltv4;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ltv4;->a:Lu66;

    .line 8
    .line 9
    invoke-virtual {p0}, Ltv4;->a()Lu66;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Ltv4;->a:Lu66;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
