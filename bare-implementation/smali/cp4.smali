.class public final Lcp4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ll28;


# static fields
.field public static final b:Lma2;


# instance fields
.field public final a:Lt40;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lma2;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lma2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcp4;->b:Lma2;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lt40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcp4;->a:Lt40;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcp4;->a:Lt40;

    .line 2
    .line 3
    sget-object v0, Lxs4;->b:Lev1;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lev1;->a(Lt40;)Lv57;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final get(Lnx1;)Lmx1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lod2;->k(Lmx1;Lnx1;)Lmx1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getKey()Lnx1;
    .locals 0

    .line 1
    sget-object p0, Lcp4;->b:Lma2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv57;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final minusKey(Lnx1;)Lox1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lod2;->r(Lmx1;Lnx1;)Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final plus(Lox1;)Lox1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
