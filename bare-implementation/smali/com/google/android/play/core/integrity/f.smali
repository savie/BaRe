.class final Lcom/google/android/play/core/integrity/f;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/integrity/h;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/play/core/integrity/f;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/integrity/h;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/g;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final setRequestHash(Ljava/lang/String;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
