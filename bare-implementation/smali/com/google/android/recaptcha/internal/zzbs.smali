.class public final Lcom/google/android/recaptcha/internal/zzbs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final zza:Lmz3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lmz3;->b:Lmz3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzbs;->zza:Lmz3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lmz3;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbs;->zza:Lmz3;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbs;->zza:Lmz3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lmz3;->b(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x1

    .line 8
    if-eq p0, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq p0, p1, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x9

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p0, 0x4

    .line 19
    return p0
.end method
