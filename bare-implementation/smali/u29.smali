.class public final Lu29;
.super Lkz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final l:Loe;


# instance fields
.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lq29;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Loe;

    .line 12
    .line 13
    const-string v3, "Auth.Api.Identity.SignIn.API"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1, v0}, Loe;-><init>(Ljava/lang/String;Lyc9;Lb05;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lu29;->l:Loe;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo39;)V
    .locals 6

    .line 1
    sget-object v5, Ljz3;->c:Ljz3;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lu29;->l:Loe;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lw29;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lu29;->k:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static c(Landroid/content/Intent;)Ljf7;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->k:Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    .line 7
    const-string v2, "status"

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v2, v1}, Lrs9;->d([BLandroid/os/Parcelable$Creator;)Lgx6;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    check-cast v1, Lcom/google/android/gms/common/api/Status;

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    sget-object v1, Ljf7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    const-string v2, "sign_in_credential"

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {p0, v1}, Lrs9;->d([BLandroid/os/Parcelable$Creator;)Lgx6;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :goto_1
    check-cast v3, Ljf7;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    new-instance p0, Lre;

    .line 53
    .line 54
    invoke-direct {p0, v0}, Lre;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_3
    new-instance p0, Lre;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Lre;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_4
    new-instance p0, Lre;

    .line 65
    .line 66
    sget-object v0, Lcom/google/android/gms/common/api/Status;->p:Lcom/google/android/gms/common/api/Status;

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lre;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_5
    new-instance p0, Lre;

    .line 73
    .line 74
    invoke-direct {p0, v0}, Lre;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method
