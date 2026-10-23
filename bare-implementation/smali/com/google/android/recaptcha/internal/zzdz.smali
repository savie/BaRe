.class final synthetic Lcom/google/android/recaptcha/internal/zzdz;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v5, "isRetriable(Ljava/lang/Exception;)Z"

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const-class v3, Lcom/google/android/recaptcha/internal/zzec;

    .line 6
    .line 7
    const-string v4, "isRetriable"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    .line 2
    .line 3
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/recaptcha/internal/zzec;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/google/android/recaptcha/internal/zzec;->zzk(Lcom/google/android/recaptcha/internal/zzec;Ljava/lang/Exception;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
