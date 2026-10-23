.class final Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
        "Ljava/lang/String;",
        "Lcom/microsoft/identity/common/java/exception/ClientException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$errorResult:[Lcom/microsoft/identity/common/java/exception/ClientException;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;[Lcom/microsoft/identity/common/java/exception/ClientException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$result:[Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$errorResult:[Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$errorResult:[Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput-object p1, v0, v1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onTaskCompleted(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$result:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput-object p1, v0, v1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
