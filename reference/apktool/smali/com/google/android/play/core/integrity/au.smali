.class public final Lcom/google/android/play/core/integrity/au;
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
    iput-object p1, p0, Lcom/google/android/play/core/integrity/au;->a:Le09;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/integrity/au;->b:Le09;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/au;->b()Lcom/google/android/play/core/integrity/at;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b()Lcom/google/android/play/core/integrity/at;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/integrity/at;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/integrity/au;->a:Le09;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/play/core/integrity/au;->b:Le09;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lcom/google/android/play/core/integrity/at;-><init>(Le09;Le09;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
