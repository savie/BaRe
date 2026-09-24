.class final Lcom/google/android/play/core/integrity/s;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/s;

.field private final b:Le09;

.field private final c:Le09;

.field private final d:Le09;

.field private final e:Le09;

.field private final f:Le09;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/r;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/google/android/play/core/integrity/s;->a:Lcom/google/android/play/core/integrity/s;

    .line 5
    .line 6
    new-instance p2, Lid4;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lid4;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/play/core/integrity/s;->b:Le09;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/play/core/integrity/ac;->a()Lcom/google/android/play/core/integrity/ad;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lc09;->b(Ld09;)Lc09;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->c:Le09;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/play/core/integrity/l;->a()Lcom/google/android/play/core/integrity/m;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/google/android/play/core/integrity/au;

    .line 30
    .line 31
    invoke-direct {v1, p2, v0}, Lcom/google/android/play/core/integrity/au;-><init>(Le09;Le09;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/play/core/integrity/s;->d:Le09;

    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/play/core/integrity/l;->a()Lcom/google/android/play/core/integrity/m;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Lcom/google/android/play/core/integrity/al;

    .line 41
    .line 42
    invoke-direct {v2, p2, p1, v1, v0}, Lcom/google/android/play/core/integrity/al;-><init>(Le09;Le09;Le09;Le09;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lc09;->b(Ld09;)Lc09;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->e:Le09;

    .line 50
    .line 51
    new-instance p2, Lcom/google/android/play/core/integrity/ab;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lcom/google/android/play/core/integrity/ab;-><init>(Le09;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lc09;->b(Ld09;)Lc09;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->f:Le09;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    const-string p0, "instance cannot be null"

    .line 64
    .line 65
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/IntegrityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/integrity/s;->f:Le09;

    .line 2
    .line 3
    invoke-interface {p0}, Le09;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 8
    .line 9
    return-object p0
.end method
