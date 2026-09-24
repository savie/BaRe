.class public final Lwa0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lwa0;

.field public static final b:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwa0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwa0;->a:Lwa0;

    .line 7
    .line 8
    const-string v0, "assignments"

    .line 9
    .line 10
    invoke-static {v0}, Lh63;->a(Ljava/lang/String;)Lh63;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lwa0;->b:Lh63;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lxz1;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    check-cast p1, Ldd0;

    .line 6
    .line 7
    iget-object p0, p1, Ldd0;->a:Ljava/util/List;

    .line 8
    .line 9
    sget-object p1, Lwa0;->b:Lh63;

    .line 10
    .line 11
    invoke-interface {p2, p1, p0}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 12
    .line 13
    .line 14
    return-void
.end method
