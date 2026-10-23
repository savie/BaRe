.class public final Lcom/google/android/play/core/integrity/i;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/play/core/integrity/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lre;
    .locals 1

    .line 1
    const-string p0, "error"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
