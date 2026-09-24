.class public Lcom/google/android/gms/auth/UserRecoverableAuthException;
.super Lrz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->a:Landroid/content/Intent;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p2, "null reference"

    .line 10
    .line 11
    invoke-static {p2}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iput p1, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->b:I

    .line 15
    .line 16
    return-void
.end method
