.class public final Lfa0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lfa0;

.field public static final b:Lh63;

.field public static final c:Lh63;

.field public static final d:Lh63;

.field public static final e:Lh63;

.field public static final f:Lh63;

.field public static final g:Lh63;

.field public static final h:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfa0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfa0;->a:Lfa0;

    .line 7
    .line 8
    const-string v0, "identifier"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lfa0;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "version"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lfa0;->c:Lh63;

    .line 23
    .line 24
    const-string v0, "displayVersion"

    .line 25
    .line 26
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lfa0;->d:Lh63;

    .line 31
    .line 32
    const-string v0, "organization"

    .line 33
    .line 34
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lfa0;->e:Lh63;

    .line 39
    .line 40
    const-string v0, "installationUuid"

    .line 41
    .line 42
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lfa0;->f:Lh63;

    .line 47
    .line 48
    const-string v0, "developmentPlatform"

    .line 49
    .line 50
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lfa0;->g:Lh63;

    .line 55
    .line 56
    const-string v0, "developmentPlatformVersion"

    .line 57
    .line 58
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lfa0;->h:Lh63;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljz1;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lhc0;

    .line 7
    .line 8
    iget-object p0, p0, Lhc0;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lfa0;->b:Lh63;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 13
    .line 14
    .line 15
    check-cast p1, Lhc0;

    .line 16
    .line 17
    iget-object p0, p1, Lhc0;->b:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lfa0;->c:Lh63;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lfa0;->d:Lh63;

    .line 25
    .line 26
    iget-object v0, p1, Lhc0;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lfa0;->e:Lh63;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 35
    .line 36
    .line 37
    sget-object p0, Lfa0;->f:Lh63;

    .line 38
    .line 39
    iget-object v0, p1, Lhc0;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 42
    .line 43
    .line 44
    sget-object p0, Lfa0;->g:Lh63;

    .line 45
    .line 46
    iget-object v0, p1, Lhc0;->e:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 49
    .line 50
    .line 51
    sget-object p0, Lfa0;->h:Lh63;

    .line 52
    .line 53
    iget-object p1, p1, Lhc0;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {p2, p0, p1}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 56
    .line 57
    .line 58
    return-void
.end method
