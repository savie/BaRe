.class public final Lqg;
.super Lrg;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/pm/PackageInfo;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqg;->a:Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "null"

    .line 11
    .line 12
    :cond_0
    iput-object v0, p0, Lqg;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Ljd4;->r(Landroid/content/pm/PackageInfo;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lqg;->c:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    iget-object p0, p0, Lqg;->a:Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lg00;->v(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move p0, v0

    .line 27
    :goto_1
    xor-int/2addr p0, v0

    .line 28
    return p0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lqg;->a:Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lg42;->a:Z

    .line 14
    .line 15
    sget-object v0, Lg42;->t:Lgv7;

    .line 16
    .line 17
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqg;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
