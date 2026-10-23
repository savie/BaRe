.class public final Lcom/google/android/play/core/integrity/bu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld09;


# instance fields
.field private final a:Le09;


# direct methods
.method public constructor <init>(Le09;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/bu;->a:Le09;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/integrity/bu;->a:Le09;

    .line 2
    .line 3
    invoke-interface {p0}, Le09;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/google/android/play/core/integrity/bt;

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/play/core/integrity/bn;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/play/core/integrity/bt;-><init>(Lcom/google/android/play/core/integrity/bn;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
