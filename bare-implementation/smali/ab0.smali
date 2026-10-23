.class public final Lab0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfr5;


# static fields
.field public static final a:Lab0;

.field public static final b:Lh63;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lab0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lab0;->a:Lab0;

    .line 7
    .line 8
    new-instance v0, Lf70;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lf70;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-class v2, Lr96;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lh63;

    .line 25
    .line 26
    new-instance v2, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "storageMetrics"

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lh63;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lab0;->b:Lh63;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Luy3;

    .line 2
    .line 3
    check-cast p2, Lgr5;

    .line 4
    .line 5
    sget-object p0, Lab0;->b:Lh63;

    .line 6
    .line 7
    iget-object p1, p1, Luy3;->a:Lgo7;

    .line 8
    .line 9
    invoke-interface {p2, p0, p1}, Lgr5;->a(Lh63;Ljava/lang/Object;)Lgr5;

    .line 10
    .line 11
    .line 12
    return-void
.end method
