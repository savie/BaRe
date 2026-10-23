.class public final Lcom/google/android/recaptcha/internal/zznc;
.super Lcom/google/android/recaptcha/internal/zzmm;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final zza:Lcom/google/android/recaptcha/internal/zznb;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzoi;Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzoi;Lcom/google/android/recaptcha/internal/zznb;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzmm;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p4, Lcom/google/android/recaptcha/internal/zznb;->zzb:Lcom/google/android/recaptcha/internal/zzpw;

    .line 8
    .line 9
    sget-object p3, Lcom/google/android/recaptcha/internal/zzpw;->zzk:Lcom/google/android/recaptcha/internal/zzpw;

    .line 10
    .line 11
    if-eq p1, p3, :cond_0

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/recaptcha/internal/zznc;->zza:Lcom/google/android/recaptcha/internal/zznb;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "Null messageDefaultInstance"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p2

    .line 22
    :cond_1
    const-string p0, "Null containingTypeDefaultInstance"

    .line 23
    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method
