.class public final La60;
.super Lsc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:La60;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La60;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lsc8;-><init>(Lmc8;Lkp0;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, La60;->c:La60;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lkp0;)Lrc8;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()Ltm4;
    .locals 0

    .line 1
    sget-object p0, Ltm4;->e:Ltm4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Lfk4;Lnw8;)Lnw8;
    .locals 0

    .line 1
    iget-object p0, p2, Lnw8;->f:Lmm4;

    .line 2
    .line 3
    iget-boolean p0, p0, Lmm4;->c:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lfk4;->g0(Lnw8;)V

    .line 11
    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final f(Lfk4;Lnw8;)Lnw8;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lfk4;->h0(Lnw8;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method
