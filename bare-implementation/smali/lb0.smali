.class public final Llb0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Llb0;

.field public static final b:Lh63;

.field public static final c:Lh63;

.field public static final d:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llb0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llb0;->a:Llb0;

    .line 7
    .line 8
    const-string v0, "performance"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Llb0;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "crashlytics"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Llb0;->c:Lh63;

    .line 23
    .line 24
    const-string v0, "sessionSamplingRate"

    .line 25
    .line 26
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Llb0;->d:Lh63;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Loa2;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    sget-object p0, Llb0;->b:Lh63;

    .line 6
    .line 7
    iget-object v0, p1, Loa2;->a:Lna2;

    .line 8
    .line 9
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 10
    .line 11
    .line 12
    sget-object p0, Llb0;->c:Lh63;

    .line 13
    .line 14
    iget-object v0, p1, Loa2;->b:Lna2;

    .line 15
    .line 16
    invoke-interface {p2, p0, v0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 17
    .line 18
    .line 19
    sget-object p0, Llb0;->d:Lh63;

    .line 20
    .line 21
    iget-wide v0, p1, Loa2;->c:D

    .line 22
    .line 23
    invoke-interface {p2, p0, v0, v1}, Lgr5;->f(Lh63;D)Lgr5;

    .line 24
    .line 25
    .line 26
    return-void
.end method
