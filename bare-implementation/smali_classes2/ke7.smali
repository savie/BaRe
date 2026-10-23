.class public final Lke7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lke7;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lke7;->a:Landroid/content/ComponentName;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lke7;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "shizuku:user-service-arg-component"

    .line 7
    .line 8
    iget-object v2, p0, Lke7;->a:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "shizuku:user-service-arg-debuggable"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v1, "shizuku:user-service-arg-version-code"

    .line 20
    .line 21
    iget v3, p0, Lke7;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string v1, "shizuku:user-service-arg-daemon"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v1, "shizuku:user-service-arg-use-32-bit-app-process"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lke7;->c:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "process name suffix must not be null"

    .line 40
    .line 41
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v2, "shizuku:user-service-arg-process-name"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lke7;->d:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    const-string v1, "shizuku:user-service-arg-tag"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-object v0
.end method
