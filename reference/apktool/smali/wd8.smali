.class public final Lwd8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmx1;
.implements Lnx1;


# static fields
.field public static final a:Lwd8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwd8;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwd8;->a:Lwd8;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
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

.method public final bridge get(Lnx1;)Lmx1;
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
    return-object p0
.end method

.method public final bridge minusKey(Lnx1;)Lox1;
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

.method public final bridge plus(Lox1;)Lox1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lod2;->u(Lmx1;Lox1;)Lox1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
