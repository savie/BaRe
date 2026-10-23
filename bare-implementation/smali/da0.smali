.class public final Lda0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lda0;

.field public static final b:Lh63;

.field public static final c:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lda0;->a:Lda0;

    .line 7
    .line 8
    const-string v0, "files"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lda0;->b:Lh63;

    .line 15
    .line 16
    const-string v0, "orgId"

    .line 17
    .line 18
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lda0;->c:Lh63;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lhz1;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Ldc0;

    .line 7
    .line 8
    iget-object p0, p0, Ldc0;->a:Ljava/util/List;

    .line 9
    .line 10
    sget-object v0, Lda0;->b:Lh63;

    .line 11
    .line 12
    invoke-interface {p2, v0, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 13
    .line 14
    .line 15
    check-cast p1, Ldc0;

    .line 16
    .line 17
    iget-object p0, p1, Ldc0;->b:Ljava/lang/String;

    .line 18
    .line 19
    sget-object p1, Lda0;->c:Lh63;

    .line 20
    .line 21
    invoke-interface {p2, p1, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 22
    .line 23
    .line 24
    return-void
.end method
