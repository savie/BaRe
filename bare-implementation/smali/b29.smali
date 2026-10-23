.class public final Lb29;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final k:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Li19;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lb29;->k:Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)Lfn6;
    .locals 0

    .line 1
    iget-object p0, p0, Lb29;->k:Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    return-object p0
.end method
