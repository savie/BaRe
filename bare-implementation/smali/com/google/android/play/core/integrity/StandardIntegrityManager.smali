.class public interface abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;
    }
.end annotation


# virtual methods
.method public abstract prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;",
            ">;"
        }
    .end annotation
.end method
