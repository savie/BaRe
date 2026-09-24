.class public final Lkw0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lnw0;


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkw0;->a:Lnw0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lkw0;->a:Lnw0;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "not attached to a buffer"

    .line 10
    .line 11
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
