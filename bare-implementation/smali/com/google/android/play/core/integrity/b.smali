.class final Lcom/google/android/play/core/integrity/b;
.super Lcom/google/android/play/core/integrity/bq;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/play/core/integrity/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/integrity/bq;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/integrity/y;)Lcom/google/android/play/core/integrity/bq;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/b;->b:Lcom/google/android/play/core/integrity/y;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/play/core/integrity/bq;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/integrity/b;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Null token"

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

.method public final c()Lcom/google/android/play/core/integrity/br;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/play/core/integrity/b;->b:Lcom/google/android/play/core/integrity/y;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lcom/google/android/play/core/integrity/br;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/google/android/play/core/integrity/br;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/y;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/play/core/integrity/b;->a:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const-string v1, " token"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p0, p0, Lcom/google/android/play/core/integrity/b;->b:Lcom/google/android/play/core/integrity/y;

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-string p0, " integrityDialogWrapper"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "Missing required properties:"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method
