.class final Lcom/google/android/play/core/integrity/u;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/play/core/integrity/av;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/integrity/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/u;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/u;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-object p0
.end method

.method public final b()Lcom/google/android/play/core/integrity/aw;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/integrity/u;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/play/core/integrity/w;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/play/core/integrity/w;-><init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/v;)V

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    const-class p0, Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, " must be set"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
