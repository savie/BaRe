.class public final Lc60;
.super Lsc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmc8;Lkp0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsc8;-><init>(Lmc8;Lkp0;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lc60;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lkp0;)Lrc8;
    .locals 2

    .line 1
    iget-object v0, p0, Lsc8;->b:Lkp0;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lc60;

    .line 7
    .line 8
    iget-object v1, p0, Lsc8;->a:Lmc8;

    .line 9
    .line 10
    iget-object p0, p0, Lc60;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, p0}, Lc60;-><init>(Lmc8;Lkp0;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc60;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ltm4;
    .locals 0

    .line 1
    sget-object p0, Ltm4;->d:Ltm4;

    .line 2
    .line 3
    return-object p0
.end method
