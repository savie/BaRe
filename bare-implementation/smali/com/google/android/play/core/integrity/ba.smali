.class public final Lcom/google/android/play/core/integrity/ba;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld09;


# instance fields
.field private final a:Le09;

.field private final b:Le09;


# direct methods
.method public constructor <init>(Le09;Le09;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/ba;->a:Le09;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/integrity/ba;->b:Le09;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ba;->b:Le09;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/integrity/ba;->a:Le09;

    .line 4
    .line 5
    invoke-interface {p0}, Le09;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0}, Le09;->a()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/play/core/integrity/az;

    .line 14
    .line 15
    check-cast p0, Lcom/google/android/play/core/integrity/bn;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/play/core/integrity/bt;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lcom/google/android/play/core/integrity/az;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/play/core/integrity/bt;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
