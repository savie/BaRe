.class public final Ljb0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Ljb0;

.field public static final b:Lh63;

.field public static final c:Lh63;

.field public static final d:Lh63;

.field public static final e:Lh63;

.field public static final f:Lh63;

.field public static final g:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljb0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljb0;->a:Ljb0;

    .line 7
    .line 8
    const-string v0, "packageName"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Ljb0;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "versionName"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Ljb0;->c:Lh63;

    .line 23
    .line 24
    const-string v0, "appBuildVersion"

    .line 25
    .line 26
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ljb0;->d:Lh63;

    .line 31
    .line 32
    const-string v0, "deviceManufacturer"

    .line 33
    .line 34
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ljb0;->e:Lh63;

    .line 39
    .line 40
    const-string v0, "currentProcessDetails"

    .line 41
    .line 42
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Ljb0;->f:Lh63;

    .line 47
    .line 48
    const-string v0, "appProcessDetails"

    .line 49
    .line 50
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Ljb0;->g:Lh63;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljb;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    sget-object p0, Ljb0;->b:Lh63;

    .line 6
    .line 7
    iget-object v0, p1, Ljb;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 10
    .line 11
    .line 12
    sget-object p0, Ljb0;->c:Lh63;

    .line 13
    .line 14
    iget-object v0, p1, Ljb;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 17
    .line 18
    .line 19
    sget-object p0, Ljb0;->d:Lh63;

    .line 20
    .line 21
    iget-object v0, p1, Ljb;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 24
    .line 25
    .line 26
    sget-object p0, Ljb0;->e:Lh63;

    .line 27
    .line 28
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 31
    .line 32
    .line 33
    sget-object p0, Ljb0;->f:Lh63;

    .line 34
    .line 35
    iget-object v0, p1, Ljb;->d:Lk76;

    .line 36
    .line 37
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 38
    .line 39
    .line 40
    sget-object p0, Ljb0;->g:Lh63;

    .line 41
    .line 42
    iget-object p1, p1, Ljb;->e:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-interface {p2, p0, p1}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 45
    .line 46
    .line 47
    return-void
.end method
