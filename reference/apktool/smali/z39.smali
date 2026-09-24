.class public final Lz39;
.super Lkz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Loe;

.field public static final l:Lu50;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lis9;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Lis9;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Loe;

    .line 13
    .line 14
    const-string v3, "GoogleAuthService.API"

    .line 15
    .line 16
    invoke-direct {v2, v3, v1, v0}, Loe;-><init>(Ljava/lang/String;Lyc9;Lb05;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lz39;->k:Loe;

    .line 20
    .line 21
    const-string v0, "GoogleAuthServiceClient"

    .line 22
    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lu50;

    .line 28
    .line 29
    const-string v2, "Auth"

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Lu50;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lz39;->l:Lu50;

    .line 35
    .line 36
    return-void
.end method

.method public static c(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lrs9;->f(Lcom/google/android/gms/common/api/Status;)Lre;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    if-nez p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    new-array p0, p0, [Ljava/lang/Object;

    .line 24
    .line 25
    sget-object p1, Lz39;->l:Lu50;

    .line 26
    .line 27
    const-string p2, "The task is already complete."

    .line 28
    .line 29
    invoke-virtual {p1, p2, p0}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
