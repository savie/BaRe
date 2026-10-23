.class public final Lcom/microsoft/identity/client/internal/AsyncResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/microsoft/identity/client/exception/MsalException;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mResult:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getException()Lcom/microsoft/identity/client/exception/MsalException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mResult:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

    .line 2
    .line 3
    if-nez p0, :cond_0

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
