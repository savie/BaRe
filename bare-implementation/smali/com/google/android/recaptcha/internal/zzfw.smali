.class public final Lcom/google/android/recaptcha/internal/zzfw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final zza:Landroid/webkit/WebView;

.field private final zzb:Lxx1;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lxx1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzfw;->zza:Landroid/webkit/WebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzfw;->zzb:Lxx1;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic zza(Lcom/google/android/recaptcha/internal/zzfw;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfw;->zza:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final varargs zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    check-cast p2, [Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/recaptcha/internal/zzfv;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p2, p0, p1, v1}, Lcom/google/android/recaptcha/internal/zzfv;-><init>([Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzfw;Ljava/lang/String;Ljv1;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfw;->zzb:Lxx1;

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-static {p0, v1, v0, p1}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 18
    .line 19
    .line 20
    return-void
.end method
