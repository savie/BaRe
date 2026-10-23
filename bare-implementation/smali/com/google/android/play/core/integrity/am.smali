.class final Lcom/google/android/play/core/integrity/am;
.super Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/integrity/IntegrityTokenRequest;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/am;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v2, Lcom/google/android/play/core/integrity/ao;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/play/core/integrity/am;->b:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-direct {v2, v0, p0, v1, v1}, Lcom/google/android/play/core/integrity/ao;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Object;Lcom/google/android/play/core/integrity/an;)V

    .line 11
    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    const-string p0, "Missing required properties: nonce"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public final setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/play/core/integrity/am;->b:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setNonce(Ljava/lang/String;)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/integrity/am;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Null nonce"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method
