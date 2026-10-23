.class public final Lu77;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lu77;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu77;

    .line 2
    .line 3
    const-class v1, Lyl4;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lu77;->c:Lu77;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lc87;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lyl4;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Lyl4;

    .line 2
    .line 3
    check-cast p1, Lgc8;

    .line 4
    .line 5
    invoke-virtual {p1}, Lgc8;->l0()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2, p0}, Lfk4;->b0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 0

    .line 1
    check-cast p1, Lyl4;

    .line 2
    .line 3
    check-cast p1, Lgc8;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p0, Lnw8;

    .line 9
    .line 10
    sget-object p3, Lmm4;->k:Lmm4;

    .line 11
    .line 12
    invoke-direct {p0, p1, p3}, Lnw8;-><init>(Ljava/lang/Object;Lmm4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lgc8;->l0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Lfk4;->b0(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4, p2, p0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 26
    .line 27
    .line 28
    return-void
.end method
