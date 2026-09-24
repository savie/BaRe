.class public final Lr90;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lr90;

.field public static final b:Lh63;

.field public static final c:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr90;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr90;->a:Lr90;

    .line 7
    .line 8
    const-string v0, "privacyContext"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lr90;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "productIdOrigin"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lr90;->c:Lh63;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lpn1;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    check-cast p1, Lvb0;

    .line 6
    .line 7
    iget-object p0, p1, Lvb0;->a:Lod0;

    .line 8
    .line 9
    sget-object p1, Lr90;->b:Lh63;

    .line 10
    .line 11
    invoke-interface {p2, p1, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lr90;->c:Lh63;

    .line 15
    .line 16
    sget-object p1, Lon1;->a:Lon1;

    .line 17
    .line 18
    invoke-interface {p2, p0, p1}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 19
    .line 20
    .line 21
    return-void
.end method
