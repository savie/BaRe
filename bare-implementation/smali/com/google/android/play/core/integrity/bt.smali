.class final Lcom/google/android/play/core/integrity/bt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/bn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/bt;->a:Lcom/google/android/play/core/integrity/bn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic a(JJILcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/integrity/bt;->a:Lcom/google/android/play/core/integrity/bn;

    .line 2
    .line 3
    invoke-virtual {p6}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    const/4 p6, 0x0

    .line 8
    move-wide v0, p1

    .line 9
    move-object p1, p5

    .line 10
    move-wide p4, p3

    .line 11
    move-wide p2, v0

    .line 12
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/play/core/integrity/bn;->d(Ljava/lang/String;JJI)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
