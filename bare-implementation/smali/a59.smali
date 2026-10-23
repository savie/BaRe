.class public interface abstract La59;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final E:Lu50;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu50;

    .line 2
    .line 3
    const-string v1, "GetAuthDomainTaskResponseHandler"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "FirebaseAuth"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lu50;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, La59;->E:Lu50;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/Status;)V
.end method

.method public abstract b(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
.end method

.method public abstract c(Landroid/net/Uri;Ljava/lang/String;Lga6;)V
.end method

.method public abstract d(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract zza()Landroid/content/Context;
.end method

.method public abstract zza(Ljava/lang/String;)Ljava/lang/String;
.end method
