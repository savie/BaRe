.class public final Lob0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lob0;

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
    new-instance v0, Lob0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lob0;->a:Lob0;

    .line 7
    .line 8
    const-string v0, "sessionId"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lob0;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "firstSessionId"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lob0;->c:Lh63;

    .line 23
    .line 24
    const-string v0, "sessionIndex"

    .line 25
    .line 26
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lob0;->d:Lh63;

    .line 31
    .line 32
    const-string v0, "eventTimestampUs"

    .line 33
    .line 34
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lob0;->e:Lh63;

    .line 39
    .line 40
    const-string v0, "dataCollectionStatus"

    .line 41
    .line 42
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lob0;->f:Lh63;

    .line 47
    .line 48
    const-string v0, "firebaseInstallationId"

    .line 49
    .line 50
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lob0;->g:Lh63;

    .line 55
    .line 56
    const-string v0, "firebaseAuthenticationToken"

    .line 57
    .line 58
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lob0;->h:Lh63;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lc97;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    sget-object p0, Lob0;->b:Lh63;

    .line 6
    .line 7
    iget-object v0, p1, Lc97;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lob0;->c:Lh63;

    .line 13
    .line 14
    iget-object v0, p1, Lc97;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lob0;->d:Lh63;

    .line 20
    .line 21
    iget v0, p1, Lc97;->c:I

    .line 22
    .line 23
    invoke-interface {p2, p0, v0}, Lgr5;->e(Lh63;I)Lgr5;

    .line 24
    .line 25
    .line 26
    sget-object p0, Lob0;->e:Lh63;

    .line 27
    .line 28
    iget-wide v0, p1, Lc97;->d:J

    .line 29
    .line 30
    invoke-interface {p2, p0, v0, v1}, Lgr5;->g(Lh63;J)Lgr5;

    .line 31
    .line 32
    .line 33
    sget-object p0, Lob0;->f:Lh63;

    .line 34
    .line 35
    iget-object v0, p1, Lc97;->e:Loa2;

    .line 36
    .line 37
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 38
    .line 39
    .line 40
    sget-object p0, Lob0;->g:Lh63;

    .line 41
    .line 42
    iget-object v0, p1, Lc97;->f:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 45
    .line 46
    .line 47
    sget-object p0, Lob0;->h:Lh63;

    .line 48
    .line 49
    iget-object p1, p1, Lc97;->g:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p2, p0, p1}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 52
    .line 53
    .line 54
    return-void
.end method
