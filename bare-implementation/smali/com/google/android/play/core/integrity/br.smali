.class final Lcom/google/android/play/core/integrity/br;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/play/core/integrity/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/br;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/integrity/br;->b:Lcom/google/android/play/core/integrity/y;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final showDialog(Landroid/app/Activity;I)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/integrity/br;->b:Lcom/google/android/play/core/integrity/y;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/integrity/y;->a(Landroid/app/Activity;I)Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final token()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/integrity/br;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
