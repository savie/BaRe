.class final Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$2;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lmt3;"
    }
.end annotation


# instance fields
.field final synthetic $continuation:Lo21;


# direct methods
.method public constructor <init>(Lo21;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$2;->$continuation:Lo21;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1$2;->$continuation:Lo21;

    .line 7
    .line 8
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lho5;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lbn6;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 25
    .line 26
    return-object p0
.end method
