.class final Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;


# instance fields
.field final synthetic val$receiverException:[Lcom/microsoft/identity/common/java/exception/BaseException;


# direct methods
.method public constructor <init>([Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;->val$receiverException:[Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1300(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;->val$receiverException:[Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 12
    .line 13
    aput-object p1, p0, v0

    .line 14
    .line 15
    return-void
.end method
