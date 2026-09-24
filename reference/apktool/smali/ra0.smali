.class public final Lra0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lra0;

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
    new-instance v0, Lra0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lra0;->a:Lra0;

    .line 7
    .line 8
    const-string v0, "batteryLevel"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lra0;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "batteryVelocity"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lra0;->c:Lh63;

    .line 23
    .line 24
    const-string v0, "proximityOn"

    .line 25
    .line 26
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lra0;->d:Lh63;

    .line 31
    .line 32
    const-string v0, "orientation"

    .line 33
    .line 34
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lra0;->e:Lh63;

    .line 39
    .line 40
    const-string v0, "ramUsed"

    .line 41
    .line 42
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lra0;->f:Lh63;

    .line 47
    .line 48
    const-string v0, "diskUsed"

    .line 49
    .line 50
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lra0;->g:Lh63;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ltz1;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lyc0;

    .line 7
    .line 8
    iget-object p0, p0, Lyc0;->a:Ljava/lang/Double;

    .line 9
    .line 10
    sget-object v0, Lra0;->b:Lh63;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 13
    .line 14
    .line 15
    check-cast p1, Lyc0;

    .line 16
    .line 17
    iget p0, p1, Lyc0;->b:I

    .line 18
    .line 19
    sget-object v0, Lra0;->c:Lh63;

    .line 20
    .line 21
    invoke-interface {p2, v0, p0}, Lgr5;->e(Lh63;I)Lgr5;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lra0;->d:Lh63;

    .line 25
    .line 26
    iget-boolean v0, p1, Lyc0;->c:Z

    .line 27
    .line 28
    invoke-interface {p2, p0, v0}, Lgr5;->d(Lh63;Z)Lgr5;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lra0;->e:Lh63;

    .line 32
    .line 33
    iget v0, p1, Lyc0;->d:I

    .line 34
    .line 35
    invoke-interface {p2, p0, v0}, Lgr5;->e(Lh63;I)Lgr5;

    .line 36
    .line 37
    .line 38
    sget-object p0, Lra0;->f:Lh63;

    .line 39
    .line 40
    iget-wide v0, p1, Lyc0;->e:J

    .line 41
    .line 42
    invoke-interface {p2, p0, v0, v1}, Lgr5;->g(Lh63;J)Lgr5;

    .line 43
    .line 44
    .line 45
    sget-object p0, Lra0;->g:Lh63;

    .line 46
    .line 47
    iget-wide v0, p1, Lyc0;->f:J

    .line 48
    .line 49
    invoke-interface {p2, p0, v0, v1}, Lgr5;->g(Lh63;J)Lgr5;

    .line 50
    .line 51
    .line 52
    return-void
.end method
